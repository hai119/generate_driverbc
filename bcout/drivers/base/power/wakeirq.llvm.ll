; ModuleID = '../bcout/drivers/base/power/wakeirq.llvm.bc'
source_filename = "drivers/base/power/wakeirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%struct.vdso_image = type opaque
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque

@.str = private unnamed_addr constant [10 x i8] c"%s:wakeup\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@dev_pm_attach_wake_irq.__warned = internal global i8 0, section ".data.once", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [37 x i8] c"%s %s: wake irq already initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"drivers/base/power/wakeirq.c\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"wake IRQ with no resume: %i\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_set_wake_irq(%struct.device* %dev, i32 %irq) #0 !dbg !2164 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %wirq = alloca %struct.wake_irq*, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2167, metadata !DIExpression()), !dbg !2168
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2173, metadata !DIExpression()), !dbg !2174
  %0 = load i32, i32* %irq.addr, align 4, !dbg !2175
  %cmp = icmp slt i32 %0, 0, !dbg !2177
  br i1 %cmp, label %if.then, label %if.end, !dbg !2178

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2179
  br label %return, !dbg !2179

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 24, i32 3264) #9, !dbg !2180
  %1 = bitcast i8* %call to %struct.wake_irq*, !dbg !2180
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2181
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2182
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2182
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2184

if.then1:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2185
  br label %return, !dbg !2185

if.end2:                                          ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2186
  %4 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2187
  %dev3 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %4, i32 0, i32 0, !dbg !2188
  store %struct.device* %3, %struct.device** %dev3, align 8, !dbg !2189
  %5 = load i32, i32* %irq.addr, align 4, !dbg !2190
  %6 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2191
  %irq4 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %6, i32 0, i32 2, !dbg !2192
  store i32 %5, i32* %irq4, align 4, !dbg !2193
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2194
  %8 = load i32, i32* %irq.addr, align 4, !dbg !2195
  %9 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2196
  %call5 = call i32 @dev_pm_attach_wake_irq(%struct.device* %7, i32 %8, %struct.wake_irq* %9) #9, !dbg !2197
  store i32 %call5, i32* %err, align 4, !dbg !2198
  %10 = load i32, i32* %err, align 4, !dbg !2199
  %tobool6 = icmp ne i32 %10, 0, !dbg !2199
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2201

if.then7:                                         ; preds = %if.end2
  %11 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2202
  %12 = bitcast %struct.wake_irq* %11 to i8*, !dbg !2202
  call void @kfree(i8* %12) #9, !dbg !2203
  br label %if.end8, !dbg !2203

if.end8:                                          ; preds = %if.then7, %if.end2
  %13 = load i32, i32* %err, align 4, !dbg !2204
  store i32 %13, i32* %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

return:                                           ; preds = %if.end8, %if.then1, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2206
  ret i32 %14, !dbg !2206
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2207 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2210, metadata !DIExpression()), !dbg !2214
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2220, metadata !DIExpression()), !dbg !2221
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2222, metadata !DIExpression()), !dbg !2223
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2224, metadata !DIExpression()), !dbg !2225
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2226, metadata !DIExpression()), !dbg !2230
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2232, metadata !DIExpression()), !dbg !2236
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2238, metadata !DIExpression()), !dbg !2242
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2247, metadata !DIExpression()), !dbg !2248
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2249, metadata !DIExpression()), !dbg !2250
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2251, metadata !DIExpression()), !dbg !2252
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2253, metadata !DIExpression()), !dbg !2254
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2255, metadata !DIExpression()), !dbg !2256
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2257, metadata !DIExpression()), !dbg !2258
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2259, metadata !DIExpression()), !dbg !2260
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2261, metadata !DIExpression()), !dbg !2262
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2263, metadata !DIExpression()), !dbg !2264
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2265, metadata !DIExpression()), !dbg !2266
  %0 = load i64, i64* %size.addr, align 8, !dbg !2267
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2268
  %or = or i32 %1, 256, !dbg !2269
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2270
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !2271
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2272

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2273
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2274
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2275

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2276
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2277
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2278
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2279
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2256
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2280
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2281
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2282
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2283
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2284
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2285
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2286
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2286
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2286
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2286
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2286
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2287
  br label %kmalloc.exit, !dbg !2287

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2288
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2289
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2289
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2291

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2292
  br label %kmalloc_index.exit.i, !dbg !2292

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2293
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2295
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2296

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2297
  br label %kmalloc_index.exit.i, !dbg !2297

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2298
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2300
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2301

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2302
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2303
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2304

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2305
  br label %kmalloc_index.exit.i, !dbg !2305

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2306
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2308
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2309

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2310
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2311
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2312

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2313
  br label %kmalloc_index.exit.i, !dbg !2313

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2314
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2316
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2317

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2318
  br label %kmalloc_index.exit.i, !dbg !2318

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2319
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2321
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2322

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2323
  br label %kmalloc_index.exit.i, !dbg !2323

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2324
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2326
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2327

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2328
  br label %kmalloc_index.exit.i, !dbg !2328

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2329
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2331
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2332

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2333
  br label %kmalloc_index.exit.i, !dbg !2333

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2334
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2336
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2337

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2338
  br label %kmalloc_index.exit.i, !dbg !2338

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2339
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2341
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2342

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2343
  br label %kmalloc_index.exit.i, !dbg !2343

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2344
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2346
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2347

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2348
  br label %kmalloc_index.exit.i, !dbg !2348

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2349
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2351
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2352

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2353
  br label %kmalloc_index.exit.i, !dbg !2353

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2354
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2356
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2357

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2358
  br label %kmalloc_index.exit.i, !dbg !2358

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2359
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2361
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2362

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2363
  br label %kmalloc_index.exit.i, !dbg !2363

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2364
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2366
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2367

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2368
  br label %kmalloc_index.exit.i, !dbg !2368

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2369
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2371
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2372

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2373
  br label %kmalloc_index.exit.i, !dbg !2373

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2374
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2376
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2377

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2378
  br label %kmalloc_index.exit.i, !dbg !2378

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2379
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2381
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2382

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2383
  br label %kmalloc_index.exit.i, !dbg !2383

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2384
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2386
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2387

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2388
  br label %kmalloc_index.exit.i, !dbg !2388

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2389
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2391
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2392

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2393
  br label %kmalloc_index.exit.i, !dbg !2393

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2394
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2396
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2397

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2398
  br label %kmalloc_index.exit.i, !dbg !2398

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2399
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2401
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2402

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2403
  br label %kmalloc_index.exit.i, !dbg !2403

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2404
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2406
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2407

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2408
  br label %kmalloc_index.exit.i, !dbg !2408

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2409
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2411
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2412

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2413
  br label %kmalloc_index.exit.i, !dbg !2413

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2414
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2416
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2417

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2418
  br label %kmalloc_index.exit.i, !dbg !2418

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2419
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2421
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2422

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2423
  br label %kmalloc_index.exit.i, !dbg !2423

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2424
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2426
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2427

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2428
  br label %kmalloc_index.exit.i, !dbg !2428

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2429
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2431
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2432

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2433
  br label %kmalloc_index.exit.i, !dbg !2433

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2434, !srcloc !2437
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #7, !dbg !2438, !srcloc !2441
  unreachable, !dbg !2442

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2443
  store i32 %45, i32* %index.i, align 4, !dbg !2444
  %46 = load i32, i32* %index.i, align 4, !dbg !2445
  %tobool.i = icmp ne i32 %46, 0, !dbg !2445
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2447

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2448
  br label %kmalloc.exit, !dbg !2448

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2449
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2450
  %and.i.i = and i32 %48, 17, !dbg !2450
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2450
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2450
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2450
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2450
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2452

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2453
  br label %kmalloc_type.exit.i, !dbg !2453

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2454
  %and2.i.i = and i32 %49, 1, !dbg !2455
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2454
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2454
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2454
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2456
  br label %kmalloc_type.exit.i, !dbg !2456

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2457
  %idxprom.i = zext i32 %51 to i64, !dbg !2458
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2458
  %52 = load i32, i32* %index.i, align 4, !dbg !2459
  %idxprom6.i = zext i32 %52 to i64, !dbg !2458
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2458
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2458
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2460
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2461
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2462
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2463
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2464
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2464
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2464
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2464
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2464
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2225
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2465
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2466
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2467
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2468
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2469
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2470
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2471
  store i8* %62, i8** %retval.i, align 8, !dbg !2472
  br label %kmalloc.exit, !dbg !2472

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2473
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2474
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2475
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2475
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2475
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2475
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2475
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2476
  br label %kmalloc.exit, !dbg !2476

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2477
  ret i8* %65, !dbg !2478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_pm_attach_wake_irq(%struct.device* %dev, i32 %irq, %struct.wake_irq* %wirq) #0 !dbg !2 {
entry:
  %lock.addr.i85 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i85, metadata !2479, metadata !DIExpression()), !dbg !2485
  %flags.addr.i86 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i86, metadata !2489, metadata !DIExpression()), !dbg !2490
  %tmp.i87 = alloca i32, align 4
  %tmp8.i88 = alloca i32, align 4
  %lock.addr.i83 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i83, metadata !2479, metadata !DIExpression()), !dbg !2491
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2489, metadata !DIExpression()), !dbg !2493
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2494, metadata !DIExpression()), !dbg !2499
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %wirq.addr = alloca %struct.wake_irq*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  %tmp67 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  store %struct.wake_irq* %wirq, %struct.wake_irq** %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq.addr, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2514
  %tobool = icmp ne %struct.device* %0, null, !dbg !2514
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2516

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2517
  %tobool1 = icmp ne %struct.wake_irq* %1, null, !dbg !2517
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2518

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2519
  br label %return, !dbg !2519

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !2520

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !2521

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2525, metadata !DIExpression()), !dbg !2524
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2524
  %conv = zext i1 %cmp to i32, !dbg !2524
  store i32 1, i32* %tmp, align 4, !dbg !2524
  %2 = load i32, i32* %tmp, align 4, !dbg !2524
  br label %do.body3, !dbg !2526

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2527

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2528

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2530, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2534, metadata !DIExpression()), !dbg !2533
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2533
  %conv9 = zext i1 %cmp8 to i32, !dbg !2533
  store i32 1, i32* %tmp10, align 4, !dbg !2533
  %3 = load i32, i32* %tmp10, align 4, !dbg !2533
  %call = call i64 @arch_local_irq_save() #9, !dbg !2535
  store i64 %call, i64* %flags, align 8, !dbg !2535
  br label %do.end, !dbg !2535

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !2528

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2527

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2536, !srcloc !2537
  br label %do.body13, !dbg !2536

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2538
  %power = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 11, !dbg !2538
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2538
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2539
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !2540
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !2540
  br label %do.end15, !dbg !2538

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2536

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2527

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2526

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2521

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !2541, metadata !DIExpression()), !dbg !2543
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2543
  %power20 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 11, !dbg !2543
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power20, i32 0, i32 12, !dbg !2543
  %8 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2543
  %tobool21 = icmp ne %struct.wake_irq* %8, null, !dbg !2543
  %lnot = xor i1 %tobool21, true, !dbg !2543
  %lnot22 = xor i1 %lnot, true, !dbg !2543
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !2543
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !2543
  %9 = load i32, i32* %__ret_warn_once, align 4, !dbg !2544
  %tobool23 = icmp ne i32 %9, 0, !dbg !2544
  br i1 %tobool23, label %land.rhs, label %land.end, !dbg !2544

land.rhs:                                         ; preds = %do.end19
  %10 = load i8, i8* @dev_pm_attach_wake_irq.__warned, align 1, !dbg !2544
  %tobool24 = trunc i8 %10 to i1, !dbg !2544
  %lnot25 = xor i1 %tobool24, true, !dbg !2544
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end19
  %11 = phi i1 [ false, %do.end19 ], [ %lnot25, %land.rhs ], !dbg !2546
  %lnot27 = xor i1 %11, true, !dbg !2544
  %lnot29 = xor i1 %lnot27, true, !dbg !2544
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !2544
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !2544
  %tobool32 = icmp ne i64 %conv31, 0, !dbg !2544
  br i1 %tobool32, label %if.then33, label %if.end66, !dbg !2543

if.then33:                                        ; preds = %land.end
  store i8 1, i8* @dev_pm_attach_wake_irq.__warned, align 1, !dbg !2547
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2549, metadata !DIExpression()), !dbg !2551
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !2551
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !2552
  %tobool34 = icmp ne i32 %12, 0, !dbg !2552
  %lnot35 = xor i1 %tobool34, true, !dbg !2552
  %lnot37 = xor i1 %lnot35, true, !dbg !2552
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2552
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2552
  %tobool40 = icmp ne i64 %conv39, 0, !dbg !2552
  br i1 %tobool40, label %if.then41, label %if.end58, !dbg !2551

if.then41:                                        ; preds = %if.then33
  br label %do.body42, !dbg !2552

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !2554

do.body43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2556

do.end44:                                         ; preds = %do.body43
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2554
  %call45 = call i8* @dev_driver_string(%struct.device* %13) #9, !dbg !2554
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2554
  %call46 = call i8* @dev_name(%struct.device* %14) #9, !dbg !2554
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %call45, i8* %call46) #9, !dbg !2554
  br label %do.body47, !dbg !2554

do.body47:                                        ; preds = %do.end44
  br label %do.body48, !dbg !2558

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !2560

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !2558

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 31, i32 2313, i64 12) #7, !dbg !2562, !srcloc !2564
  br label %do.end51, !dbg !2562

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #7, !dbg !2565, !srcloc !2567
  br label %do.body52, !dbg !2558

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !2568

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !2558

do.end54:                                         ; preds = %do.end53
  br label %do.body55, !dbg !2554

do.body55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !2570

do.end56:                                         ; preds = %do.body55
  br label %do.end57, !dbg !2554

do.end57:                                         ; preds = %do.end56
  br label %if.end58, !dbg !2554

if.end58:                                         ; preds = %do.end57, %if.then33
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !2551
  %tobool60 = icmp ne i32 %15, 0, !dbg !2551
  %lnot61 = xor i1 %tobool60, true, !dbg !2551
  %lnot63 = xor i1 %lnot61, true, !dbg !2551
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !2551
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !2551
  store i64 %conv65, i64* %tmp59, align 8, !dbg !2552
  %16 = load i64, i64* %tmp59, align 8, !dbg !2551
  br label %if.end66, !dbg !2547

if.end66:                                         ; preds = %if.end58, %land.end
  %17 = load i32, i32* %__ret_warn_once, align 4, !dbg !2543
  %tobool68 = icmp ne i32 %17, 0, !dbg !2543
  %lnot69 = xor i1 %tobool68, true, !dbg !2543
  %lnot71 = xor i1 %lnot69, true, !dbg !2543
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !2543
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !2543
  store i64 %conv73, i64* %tmp67, align 8, !dbg !2544
  %18 = load i64, i64* %tmp67, align 8, !dbg !2543
  %tobool74 = icmp ne i64 %18, 0, !dbg !2572
  br i1 %tobool74, label %if.then75, label %if.end78, !dbg !2573

if.then75:                                        ; preds = %if.end66
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2574
  %power76 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 11, !dbg !2575
  %lock77 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power76, i32 0, i32 3, !dbg !2576
  %20 = load i64, i64* %flags, align 8, !dbg !2577
  store %struct.spinlock* %lock77, %struct.spinlock** %lock.addr.i85, align 8
  store i64 %20, i64* %flags.addr.i86, align 8
  call void @llvm.dbg.declare(metadata !48, metadata !2578, metadata !DIExpression()) #7, !dbg !2581
  call void @llvm.dbg.declare(metadata !48, metadata !2582, metadata !DIExpression()) #7, !dbg !2581
  store i32 1, i32* %tmp.i87, align 4, !dbg !2581
  %21 = load i32, i32* %tmp.i87, align 4, !dbg !2581
  call void @llvm.dbg.declare(metadata !48, metadata !2583, metadata !DIExpression()) #7, !dbg !2588
  call void @llvm.dbg.declare(metadata !48, metadata !2589, metadata !DIExpression()) #7, !dbg !2588
  store i32 1, i32* %tmp8.i88, align 4, !dbg !2588
  %22 = load i32, i32* %tmp8.i88, align 4, !dbg !2588
  %23 = load i64, i64* %flags.addr.i86, align 8, !dbg !2590
  call void @arch_local_irq_restore(i64 %23) #11, !dbg !2590
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2591, !srcloc !2593
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i85, align 8, !dbg !2594
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !2594
  %rlock.i89 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !2594
  store i32 -17, i32* %retval, align 4, !dbg !2596
  br label %return, !dbg !2596

if.end78:                                         ; preds = %if.end66
  %26 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2597
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2598
  %power79 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 11, !dbg !2599
  %wakeirq80 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power79, i32 0, i32 12, !dbg !2600
  store %struct.wake_irq* %26, %struct.wake_irq** %wakeirq80, align 8, !dbg !2601
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2602
  %29 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2603
  call void @device_wakeup_attach_irq(%struct.device* %28, %struct.wake_irq* %29) #9, !dbg !2604
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2605
  %power81 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 11, !dbg !2606
  %lock82 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power81, i32 0, i32 3, !dbg !2607
  %31 = load i64, i64* %flags, align 8, !dbg !2608
  store %struct.spinlock* %lock82, %struct.spinlock** %lock.addr.i83, align 8
  store i64 %31, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !48, metadata !2578, metadata !DIExpression()) #7, !dbg !2609
  call void @llvm.dbg.declare(metadata !48, metadata !2582, metadata !DIExpression()) #7, !dbg !2609
  store i32 1, i32* %tmp.i, align 4, !dbg !2609
  %32 = load i32, i32* %tmp.i, align 4, !dbg !2609
  call void @llvm.dbg.declare(metadata !48, metadata !2583, metadata !DIExpression()) #7, !dbg !2610
  call void @llvm.dbg.declare(metadata !48, metadata !2589, metadata !DIExpression()) #7, !dbg !2610
  store i32 1, i32* %tmp8.i, align 4, !dbg !2610
  %33 = load i32, i32* %tmp8.i, align 4, !dbg !2610
  %34 = load i64, i64* %flags.addr.i, align 8, !dbg !2611
  call void @arch_local_irq_restore(i64 %34) #11, !dbg !2611
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2612, !srcloc !2593
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i83, align 8, !dbg !2613
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !2613
  %rlock.i84 = bitcast %union.anon* %36 to %struct.raw_spinlock*, !dbg !2613
  store i32 0, i32* %retval, align 4, !dbg !2614
  br label %return, !dbg !2614

return:                                           ; preds = %if.end78, %if.then75, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !2615
  ret i32 %37, !dbg !2615
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_clear_wake_irq(%struct.device* %dev) #0 !dbg !2616 {
entry:
  %lock.addr.i33 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i33, metadata !2479, metadata !DIExpression()), !dbg !2617
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2489, metadata !DIExpression()), !dbg !2619
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2494, metadata !DIExpression()), !dbg !2620
  %dev.addr = alloca %struct.device*, align 8
  %wirq = alloca %struct.wake_irq*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2629, metadata !DIExpression()), !dbg !2630
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2631
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2632
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 12, !dbg !2633
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2633
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2634, metadata !DIExpression()), !dbg !2635
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2636
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2636
  br i1 %tobool, label %if.end, label %if.then, !dbg !2638

if.then:                                          ; preds = %entry
  br label %return, !dbg !2639

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2640

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2641

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2645, metadata !DIExpression()), !dbg !2644
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2644
  %conv = zext i1 %cmp to i32, !dbg !2644
  store i32 1, i32* %tmp, align 4, !dbg !2644
  %3 = load i32, i32* %tmp, align 4, !dbg !2644
  br label %do.body2, !dbg !2646

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2647

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2648

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2654, metadata !DIExpression()), !dbg !2653
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2653
  %conv8 = zext i1 %cmp7 to i32, !dbg !2653
  store i32 1, i32* %tmp9, align 4, !dbg !2653
  %4 = load i32, i32* %tmp9, align 4, !dbg !2653
  %call = call i64 @arch_local_irq_save() #9, !dbg !2655
  store i64 %call, i64* %flags, align 8, !dbg !2655
  br label %do.end, !dbg !2655

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2648

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2647

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2656, !srcloc !2657
  br label %do.body12, !dbg !2656

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2658
  %power13 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2658
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power13, i32 0, i32 3, !dbg !2658
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2659
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !2660
  %rlock.i = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !2660
  br label %do.end15, !dbg !2658

do.end15:                                         ; preds = %do.body12
  br label %do.end16, !dbg !2656

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2647

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2646

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2641

do.end19:                                         ; preds = %do.end18
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2661
  call void @device_wakeup_detach_irq(%struct.device* %8) #9, !dbg !2662
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2663
  %power20 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 11, !dbg !2664
  %wakeirq21 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power20, i32 0, i32 12, !dbg !2665
  store %struct.wake_irq* null, %struct.wake_irq** %wakeirq21, align 8, !dbg !2666
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2667
  %power22 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 11, !dbg !2668
  %lock23 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power22, i32 0, i32 3, !dbg !2669
  %11 = load i64, i64* %flags, align 8, !dbg !2670
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i33, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !48, metadata !2578, metadata !DIExpression()) #7, !dbg !2671
  call void @llvm.dbg.declare(metadata !48, metadata !2582, metadata !DIExpression()) #7, !dbg !2671
  store i32 1, i32* %tmp.i, align 4, !dbg !2671
  %12 = load i32, i32* %tmp.i, align 4, !dbg !2671
  call void @llvm.dbg.declare(metadata !48, metadata !2583, metadata !DIExpression()) #7, !dbg !2672
  call void @llvm.dbg.declare(metadata !48, metadata !2589, metadata !DIExpression()) #7, !dbg !2672
  store i32 1, i32* %tmp8.i, align 4, !dbg !2672
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !2672
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !2673
  call void @arch_local_irq_restore(i64 %14) #11, !dbg !2673
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2674, !srcloc !2593
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i33, align 8, !dbg !2675
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !2675
  %rlock.i34 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2675
  %17 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2676
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %17, i32 0, i32 1, !dbg !2678
  %18 = load i32, i32* %status, align 8, !dbg !2678
  %conv24 = zext i32 %18 to i64, !dbg !2676
  %and = and i64 %conv24, 1, !dbg !2679
  %tobool25 = icmp ne i64 %and, 0, !dbg !2679
  br i1 %tobool25, label %if.then26, label %if.end32, !dbg !2680

if.then26:                                        ; preds = %do.end19
  %19 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2681
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %19, i32 0, i32 2, !dbg !2683
  %20 = load i32, i32* %irq, align 4, !dbg !2683
  %21 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2684
  %22 = bitcast %struct.wake_irq* %21 to i8*, !dbg !2684
  %call27 = call i8* @free_irq(i32 %20, i8* %22) #9, !dbg !2685
  %23 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2686
  %status28 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %23, i32 0, i32 1, !dbg !2687
  %24 = load i32, i32* %status28, align 8, !dbg !2688
  %conv29 = zext i32 %24 to i64, !dbg !2688
  %and30 = and i64 %conv29, -4, !dbg !2688
  %conv31 = trunc i64 %and30 to i32, !dbg !2688
  store i32 %conv31, i32* %status28, align 8, !dbg !2688
  br label %if.end32, !dbg !2689

if.end32:                                         ; preds = %if.then26, %do.end19
  %25 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2690
  %name = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %25, i32 0, i32 3, !dbg !2691
  %26 = load i8*, i8** %name, align 8, !dbg !2691
  call void @kfree(i8* %26) #9, !dbg !2692
  %27 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2693
  %28 = bitcast %struct.wake_irq* %27 to i8*, !dbg !2693
  call void @kfree(i8* %28) #9, !dbg !2694
  br label %return, !dbg !2695

return:                                           ; preds = %if.end32, %if.then
  ret void, !dbg !2695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2696 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2700, metadata !DIExpression()), !dbg !2701
  %call = call i64 @arch_local_save_flags() #9, !dbg !2702
  store i64 %call, i64* %f, align 8, !dbg !2703
  call void @arch_local_irq_disable() #9, !dbg !2704
  %0 = load i64, i64* %f, align 8, !dbg !2705
  ret i64 %0, !dbg !2706
}

; Function Attrs: noredzone
declare dso_local void @device_wakeup_detach_irq(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_set_dedicated_wake_irq(%struct.device* %dev, i32 %irq) #0 !dbg !2707 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %wirq = alloca %struct.wake_irq*, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2714, metadata !DIExpression()), !dbg !2715
  %0 = load i32, i32* %irq.addr, align 4, !dbg !2716
  %cmp = icmp slt i32 %0, 0, !dbg !2718
  br i1 %cmp, label %if.then, label %if.end, !dbg !2719

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 24, i32 3264) #9, !dbg !2721
  %1 = bitcast i8* %call to %struct.wake_irq*, !dbg !2721
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2722
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2723
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2723
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2725

if.then1:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2726
  br label %return, !dbg !2726

if.end2:                                          ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2727
  %call3 = call i8* @dev_name(%struct.device* %3) #9, !dbg !2728
  %call4 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %call3) #9, !dbg !2729
  %4 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2730
  %name = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %4, i32 0, i32 3, !dbg !2731
  store i8* %call4, i8** %name, align 8, !dbg !2732
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2733
  %name5 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 3, !dbg !2735
  %6 = load i8*, i8** %name5, align 8, !dbg !2735
  %tobool6 = icmp ne i8* %6, null, !dbg !2733
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2736

if.then7:                                         ; preds = %if.end2
  store i32 -12, i32* %err, align 4, !dbg !2737
  br label %err_free, !dbg !2739

if.end8:                                          ; preds = %if.end2
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2740
  %8 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2741
  %dev9 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %8, i32 0, i32 0, !dbg !2742
  store %struct.device* %7, %struct.device** %dev9, align 8, !dbg !2743
  %9 = load i32, i32* %irq.addr, align 4, !dbg !2744
  %10 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2745
  %irq10 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %10, i32 0, i32 2, !dbg !2746
  store i32 %9, i32* %irq10, align 4, !dbg !2747
  %11 = load i32, i32* %irq.addr, align 4, !dbg !2748
  call void @irq_set_status_flags(i32 %11, i64 4096) #9, !dbg !2749
  %12 = load i32, i32* %irq.addr, align 4, !dbg !2750
  call void @irq_set_status_flags(i32 %12, i64 524288) #9, !dbg !2751
  %13 = load i32, i32* %irq.addr, align 4, !dbg !2752
  %14 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2753
  %name11 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %14, i32 0, i32 3, !dbg !2754
  %15 = load i8*, i8** %name11, align 8, !dbg !2754
  %16 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2755
  %17 = bitcast %struct.wake_irq* %16 to i8*, !dbg !2755
  %call12 = call i32 @request_threaded_irq(i32 %13, i32 (i32, i8*)* null, i32 (i32, i8*)* @handle_threaded_wake_irq, i64 8192, i8* %15, i8* %17) #9, !dbg !2756
  store i32 %call12, i32* %err, align 4, !dbg !2757
  %18 = load i32, i32* %err, align 4, !dbg !2758
  %tobool13 = icmp ne i32 %18, 0, !dbg !2758
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2760

if.then14:                                        ; preds = %if.end8
  br label %err_free_name, !dbg !2761

if.end15:                                         ; preds = %if.end8
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2762
  %20 = load i32, i32* %irq.addr, align 4, !dbg !2763
  %21 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2764
  %call16 = call i32 @dev_pm_attach_wake_irq(%struct.device* %19, i32 %20, %struct.wake_irq* %21) #9, !dbg !2765
  store i32 %call16, i32* %err, align 4, !dbg !2766
  %22 = load i32, i32* %err, align 4, !dbg !2767
  %tobool17 = icmp ne i32 %22, 0, !dbg !2767
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2769

if.then18:                                        ; preds = %if.end15
  br label %err_free_irq, !dbg !2770

if.end19:                                         ; preds = %if.end15
  %23 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2771
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %23, i32 0, i32 1, !dbg !2772
  store i32 1, i32* %status, align 8, !dbg !2773
  %24 = load i32, i32* %err, align 4, !dbg !2774
  store i32 %24, i32* %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

err_free_irq:                                     ; preds = %if.then18
  call void @llvm.dbg.label(metadata !2776), !dbg !2777
  %25 = load i32, i32* %irq.addr, align 4, !dbg !2778
  %26 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2779
  %27 = bitcast %struct.wake_irq* %26 to i8*, !dbg !2779
  %call20 = call i8* @free_irq(i32 %25, i8* %27) #9, !dbg !2780
  br label %err_free_name, !dbg !2780

err_free_name:                                    ; preds = %err_free_irq, %if.then14
  call void @llvm.dbg.label(metadata !2781), !dbg !2782
  %28 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2783
  %name21 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %28, i32 0, i32 3, !dbg !2784
  %29 = load i8*, i8** %name21, align 8, !dbg !2784
  call void @kfree(i8* %29) #9, !dbg !2785
  br label %err_free, !dbg !2785

err_free:                                         ; preds = %err_free_name, %if.then7
  call void @llvm.dbg.label(metadata !2786), !dbg !2787
  %30 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2788
  %31 = bitcast %struct.wake_irq* %30 to i8*, !dbg !2788
  call void @kfree(i8* %31) #9, !dbg !2789
  %32 = load i32, i32* %err, align 4, !dbg !2790
  store i32 %32, i32* %retval, align 4, !dbg !2791
  br label %return, !dbg !2791

return:                                           ; preds = %err_free, %if.end19, %if.then1, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !2792
  ret i32 %33, !dbg !2792
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2793 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2798
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2800
  %1 = load i8*, i8** %init_name, align 8, !dbg !2800
  %tobool = icmp ne i8* %1, null, !dbg !2798
  br i1 %tobool, label %if.then, label %if.end, !dbg !2801

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2802
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2803
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2803
  store i8* %3, i8** %retval, align 8, !dbg !2804
  br label %return, !dbg !2804

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2805
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2806
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !2807
  store i8* %call, i8** %retval, align 8, !dbg !2808
  br label %return, !dbg !2808

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2809
  ret i8* %5, !dbg !2809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @irq_set_status_flags(i32 %irq, i64 %set) #0 !dbg !2810 {
entry:
  %irq.addr = alloca i32, align 4
  %set.addr = alloca i64, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i64 %set, i64* %set.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %set.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  %0 = load i32, i32* %irq.addr, align 4, !dbg !2817
  %1 = load i64, i64* %set.addr, align 8, !dbg !2818
  call void @irq_modify_status(i32 %0, i64 0, i64 %1) #9, !dbg !2819
  ret void, !dbg !2820
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @handle_threaded_wake_irq(i32 %irq, i8* %_wirq) #0 !dbg !2821 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %_wirq.addr = alloca i8*, align 8
  %wirq = alloca %struct.wake_irq*, align 8
  %res = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  store i8* %_wirq, i8** %_wirq.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_wirq.addr, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2829, metadata !DIExpression()), !dbg !2830
  %0 = load i8*, i8** %_wirq.addr, align 8, !dbg !2831
  %1 = bitcast i8* %0 to %struct.wake_irq*, !dbg !2831
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2830
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2832, metadata !DIExpression()), !dbg !2833
  %2 = load i32, i32* %irq.addr, align 4, !dbg !2834
  %call = call %struct.irq_data* @irq_get_irq_data(i32 %2) #9, !dbg !2836
  %call1 = call zeroext i1 @irqd_is_wakeup_set(%struct.irq_data* %call) #9, !dbg !2837
  br i1 %call1, label %if.then, label %if.end, !dbg !2838

if.then:                                          ; preds = %entry
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2839
  %dev = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 0, !dbg !2841
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2841
  call void @pm_wakeup_event(%struct.device* %4, i32 0) #9, !dbg !2842
  store i32 1, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end:                                           ; preds = %entry
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2844
  %dev2 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 0, !dbg !2845
  %6 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !2845
  %call3 = call i32 @pm_runtime_resume(%struct.device* %6) #9, !dbg !2846
  store i32 %call3, i32* %res, align 4, !dbg !2847
  %7 = load i32, i32* %res, align 4, !dbg !2848
  %cmp = icmp slt i32 %7, 0, !dbg !2850
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2851

if.then4:                                         ; preds = %if.end
  %8 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2852
  %dev5 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %8, i32 0, i32 0, !dbg !2852
  %9 = load %struct.device*, %struct.device** %dev5, align 8, !dbg !2852
  %10 = load i32, i32* %res, align 4, !dbg !2852
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %10) #12, !dbg !2852
  br label %if.end6, !dbg !2852

if.end6:                                          ; preds = %if.then4, %if.end
  store i32 1, i32* %retval, align 4, !dbg !2853
  br label %return, !dbg !2853

return:                                           ; preds = %if.end6, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2854
  ret i32 %11, !dbg !2854
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_enable_wake_irq(%struct.device* %dev) #0 !dbg !2855 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %wirq = alloca %struct.wake_irq*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2858, metadata !DIExpression()), !dbg !2859
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2860
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2861
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 12, !dbg !2862
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2862
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2859
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2863
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2863
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2865

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2866
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 1, !dbg !2867
  %4 = load i32, i32* %status, align 8, !dbg !2867
  %conv = zext i32 %4 to i64, !dbg !2866
  %and = and i64 %conv, 1, !dbg !2868
  %tobool1 = icmp ne i64 %and, 0, !dbg !2868
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2869

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2870
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 2, !dbg !2871
  %6 = load i32, i32* %irq, align 4, !dbg !2871
  call void @enable_irq(i32 %6) #9, !dbg !2872
  br label %if.end, !dbg !2872

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2873
}

; Function Attrs: noredzone
declare dso_local void @enable_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_disable_wake_irq(%struct.device* %dev) #0 !dbg !2874 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %wirq = alloca %struct.wake_irq*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2877, metadata !DIExpression()), !dbg !2878
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2879
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2880
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 12, !dbg !2881
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2881
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2878
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2882
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2882
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2884

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2885
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 1, !dbg !2886
  %4 = load i32, i32* %status, align 8, !dbg !2886
  %conv = zext i32 %4 to i64, !dbg !2885
  %and = and i64 %conv, 1, !dbg !2887
  %tobool1 = icmp ne i64 %and, 0, !dbg !2887
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2888

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2889
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 2, !dbg !2890
  %6 = load i32, i32* %irq, align 4, !dbg !2890
  call void @disable_irq_nosync(i32 %6) #9, !dbg !2891
  br label %if.end, !dbg !2891

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2892
}

; Function Attrs: noredzone
declare dso_local void @disable_irq_nosync(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_enable_wake_irq_check(%struct.device* %dev, i1 zeroext %can_change_status) #0 !dbg !2893 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %can_change_status.addr = alloca i8, align 1
  %wirq = alloca %struct.wake_irq*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  %frombool = zext i1 %can_change_status to i8
  store i8 %frombool, i8* %can_change_status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %can_change_status.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2898, metadata !DIExpression()), !dbg !2899
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2900
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2901
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 12, !dbg !2902
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2902
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2899
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2903
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2903
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2905

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2906
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 1, !dbg !2907
  %4 = load i32, i32* %status, align 8, !dbg !2907
  %conv = zext i32 %4 to i64, !dbg !2906
  %and = and i64 %conv, 3, !dbg !2908
  %tobool1 = icmp ne i64 %and, 0, !dbg !2908
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2909

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2910

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2911
  %status2 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 1, !dbg !2911
  %6 = load i32, i32* %status2, align 8, !dbg !2911
  %conv3 = zext i32 %6 to i64, !dbg !2911
  %and4 = and i64 %conv3, 2, !dbg !2911
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2911
  %lnot = xor i1 %tobool5, true, !dbg !2911
  %lnot6 = xor i1 %lnot, true, !dbg !2911
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2911
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2911
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !2911
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2913

if.then9:                                         ; preds = %if.end
  br label %enable, !dbg !2914

if.else:                                          ; preds = %if.end
  %7 = load i8, i8* %can_change_status.addr, align 1, !dbg !2916
  %tobool10 = trunc i8 %7 to i1, !dbg !2916
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !2918

if.then11:                                        ; preds = %if.else
  %8 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2919
  %status12 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %8, i32 0, i32 1, !dbg !2921
  %9 = load i32, i32* %status12, align 8, !dbg !2922
  %conv13 = zext i32 %9 to i64, !dbg !2922
  %or = or i64 %conv13, 2, !dbg !2922
  %conv14 = trunc i64 %or to i32, !dbg !2922
  store i32 %conv14, i32* %status12, align 8, !dbg !2922
  br label %enable, !dbg !2923

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %return, !dbg !2924

enable:                                           ; preds = %if.then11, %if.then9
  call void @llvm.dbg.label(metadata !2925), !dbg !2926
  %10 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2927
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %10, i32 0, i32 2, !dbg !2928
  %11 = load i32, i32* %irq, align 4, !dbg !2928
  call void @enable_irq(i32 %11) #9, !dbg !2929
  br label %return, !dbg !2930

return:                                           ; preds = %enable, %if.end16, %if.then
  ret void, !dbg !2930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_disable_wake_irq_check(%struct.device* %dev) #0 !dbg !2931 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %wirq = alloca %struct.wake_irq*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq, metadata !2934, metadata !DIExpression()), !dbg !2935
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2936
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2937
  %wakeirq = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 12, !dbg !2938
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wakeirq, align 8, !dbg !2938
  store %struct.wake_irq* %1, %struct.wake_irq** %wirq, align 8, !dbg !2935
  %2 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2939
  %tobool = icmp ne %struct.wake_irq* %2, null, !dbg !2939
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2941

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2942
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 1, !dbg !2943
  %4 = load i32, i32* %status, align 8, !dbg !2943
  %conv = zext i32 %4 to i64, !dbg !2942
  %and = and i64 %conv, 3, !dbg !2944
  %tobool1 = icmp ne i64 %and, 0, !dbg !2944
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2945

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end7, !dbg !2946

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2947
  %status2 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 1, !dbg !2949
  %6 = load i32, i32* %status2, align 8, !dbg !2949
  %conv3 = zext i32 %6 to i64, !dbg !2947
  %and4 = and i64 %conv3, 2, !dbg !2950
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2950
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2951

if.then6:                                         ; preds = %if.end
  %7 = load %struct.wake_irq*, %struct.wake_irq** %wirq, align 8, !dbg !2952
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %7, i32 0, i32 2, !dbg !2953
  %8 = load i32, i32* %irq, align 4, !dbg !2953
  call void @disable_irq_nosync(i32 %8) #9, !dbg !2954
  br label %if.end7, !dbg !2954

if.end7:                                          ; preds = %if.then, %if.then6, %if.end
  ret void, !dbg !2955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_arm_wake_irq(%struct.wake_irq* %wirq) #0 !dbg !2956 {
entry:
  %wirq.addr = alloca %struct.wake_irq*, align 8
  store %struct.wake_irq* %wirq, %struct.wake_irq** %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  %0 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2961
  %tobool = icmp ne %struct.wake_irq* %0, null, !dbg !2961
  br i1 %tobool, label %if.end, label %if.then, !dbg !2963

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !2964

if.end:                                           ; preds = %entry
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2965
  %dev = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %1, i32 0, i32 0, !dbg !2967
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2967
  %call = call zeroext i1 @device_may_wakeup(%struct.device* %2) #9, !dbg !2968
  br i1 %call, label %if.then1, label %if.end9, !dbg !2969

if.then1:                                         ; preds = %if.end
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2970
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 1, !dbg !2973
  %4 = load i32, i32* %status, align 8, !dbg !2973
  %conv = zext i32 %4 to i64, !dbg !2970
  %and = and i64 %conv, 1, !dbg !2974
  %tobool2 = icmp ne i64 %and, 0, !dbg !2974
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !2975

land.lhs.true:                                    ; preds = %if.then1
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2976
  %dev3 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 0, !dbg !2977
  %6 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !2977
  %call4 = call zeroext i1 @pm_runtime_status_suspended(%struct.device* %6) #9, !dbg !2978
  br i1 %call4, label %if.end6, label %if.then5, !dbg !2979

if.then5:                                         ; preds = %land.lhs.true
  %7 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2980
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %7, i32 0, i32 2, !dbg !2981
  %8 = load i32, i32* %irq, align 4, !dbg !2981
  call void @enable_irq(i32 %8) #9, !dbg !2982
  br label %if.end6, !dbg !2982

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.then1
  %9 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !2983
  %irq7 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %9, i32 0, i32 2, !dbg !2984
  %10 = load i32, i32* %irq7, align 4, !dbg !2984
  %call8 = call i32 @enable_irq_wake(i32 %10) #9, !dbg !2985
  br label %if.end9, !dbg !2986

if.end9:                                          ; preds = %if.then, %if.end6, %if.end
  ret void, !dbg !2987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !2988 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2991, metadata !DIExpression()), !dbg !2992
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2993
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2994
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2995
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2995
  %bf.clear = and i16 %bf.load, 1, !dbg !2995
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2995
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2993
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2996

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2997
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2998
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2999
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2999
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !3000
  %lnot = xor i1 %tobool2, true, !dbg !3000
  %lnot3 = xor i1 %lnot, true, !dbg !3001
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !3002
  ret i1 %3, !dbg !3003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pm_runtime_status_suspended(%struct.device* %dev) #0 !dbg !3004 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3008
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3009
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 18, !dbg !3010
  %1 = load i32, i32* %runtime_status, align 4, !dbg !3010
  %cmp = icmp eq i32 %1, 2, !dbg !3011
  ret i1 %cmp, !dbg !3012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enable_irq_wake(i32 %irq) #0 !dbg !3013 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3016, metadata !DIExpression()), !dbg !3017
  %0 = load i32, i32* %irq.addr, align 4, !dbg !3018
  %call = call i32 @irq_set_irq_wake(i32 %0, i32 1) #9, !dbg !3019
  ret i32 %call, !dbg !3020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_disarm_wake_irq(%struct.wake_irq* %wirq) #0 !dbg !3021 {
entry:
  %wirq.addr = alloca %struct.wake_irq*, align 8
  store %struct.wake_irq* %wirq, %struct.wake_irq** %wirq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wake_irq** %wirq.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  %0 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3024
  %tobool = icmp ne %struct.wake_irq* %0, null, !dbg !3024
  br i1 %tobool, label %if.end, label %if.then, !dbg !3026

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !3027

if.end:                                           ; preds = %entry
  %1 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3028
  %dev = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %1, i32 0, i32 0, !dbg !3030
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3030
  %call = call zeroext i1 @device_may_wakeup(%struct.device* %2) #9, !dbg !3031
  br i1 %call, label %if.then1, label %if.end9, !dbg !3032

if.then1:                                         ; preds = %if.end
  %3 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3033
  %irq = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %3, i32 0, i32 2, !dbg !3035
  %4 = load i32, i32* %irq, align 4, !dbg !3035
  %call2 = call i32 @disable_irq_wake(i32 %4) #9, !dbg !3036
  %5 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3037
  %status = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %5, i32 0, i32 1, !dbg !3039
  %6 = load i32, i32* %status, align 8, !dbg !3039
  %conv = zext i32 %6 to i64, !dbg !3037
  %and = and i64 %conv, 1, !dbg !3040
  %tobool3 = icmp ne i64 %and, 0, !dbg !3040
  br i1 %tobool3, label %land.lhs.true, label %if.end8, !dbg !3041

land.lhs.true:                                    ; preds = %if.then1
  %7 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3042
  %dev4 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %7, i32 0, i32 0, !dbg !3043
  %8 = load %struct.device*, %struct.device** %dev4, align 8, !dbg !3043
  %call5 = call zeroext i1 @pm_runtime_status_suspended(%struct.device* %8) #9, !dbg !3044
  br i1 %call5, label %if.end8, label %if.then6, !dbg !3045

if.then6:                                         ; preds = %land.lhs.true
  %9 = load %struct.wake_irq*, %struct.wake_irq** %wirq.addr, align 8, !dbg !3046
  %irq7 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %9, i32 0, i32 2, !dbg !3047
  %10 = load i32, i32* %irq7, align 4, !dbg !3047
  call void @disable_irq_nosync(i32 %10) #9, !dbg !3048
  br label %if.end8, !dbg !3048

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.then1
  br label %if.end9, !dbg !3049

if.end9:                                          ; preds = %if.then, %if.end8, %if.end
  ret void, !dbg !3050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @disable_irq_wake(i32 %irq) #0 !dbg !3051 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3052, metadata !DIExpression()), !dbg !3053
  %0 = load i32, i32* %irq.addr, align 4, !dbg !3054
  %call = call i32 @irq_set_irq_wake(i32 %0, i32 0) #9, !dbg !3055
  ret i32 %call, !dbg !3056
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3057 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3061, metadata !DIExpression()), !dbg !3066
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3068, metadata !DIExpression()), !dbg !3069
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3070, metadata !DIExpression()), !dbg !3071
  %0 = load i64, i64* %size.addr, align 8, !dbg !3072
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3074
  br i1 %1, label %if.then, label %if.end447, !dbg !3075

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3076
  %tobool = icmp ne i64 %2, 0, !dbg !3076
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3079

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3080
  br label %return, !dbg !3080

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3081
  %cmp = icmp ult i64 %3, 4096, !dbg !3083
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3084

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3085
  br label %return, !dbg !3085

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub = sub i64 %4, 1, !dbg !3086
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3086
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3086

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub4 = sub i64 %6, 1, !dbg !3086
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3086
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3086

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub6 = sub i64 %8, 1, !dbg !3086
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3086
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3086

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3086

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub9 = sub i64 %9, 1, !dbg !3086
  %and = and i64 %sub9, -9223372036854775808, !dbg !3086
  %tobool10 = icmp ne i64 %and, 0, !dbg !3086
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3086

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3086

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub13 = sub i64 %10, 1, !dbg !3086
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3086
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3086
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3086

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3086

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub18 = sub i64 %11, 1, !dbg !3086
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3086
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3086
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3086

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3086

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub23 = sub i64 %12, 1, !dbg !3086
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3086
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3086
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3086

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3086

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub28 = sub i64 %13, 1, !dbg !3086
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3086
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3086
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3086

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3086

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub33 = sub i64 %14, 1, !dbg !3086
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3086
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3086
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3086

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3086

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub38 = sub i64 %15, 1, !dbg !3086
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3086
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3086
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3086

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3086

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub43 = sub i64 %16, 1, !dbg !3086
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3086
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3086
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3086

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3086

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub48 = sub i64 %17, 1, !dbg !3086
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3086
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3086
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3086

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3086

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub53 = sub i64 %18, 1, !dbg !3086
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3086
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3086
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3086

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3086

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub58 = sub i64 %19, 1, !dbg !3086
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3086
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3086
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3086

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3086

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub63 = sub i64 %20, 1, !dbg !3086
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3086
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3086
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3086

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3086

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub68 = sub i64 %21, 1, !dbg !3086
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3086
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3086
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3086

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3086

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub73 = sub i64 %22, 1, !dbg !3086
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3086
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3086
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3086

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3086

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub78 = sub i64 %23, 1, !dbg !3086
  %and79 = and i64 %sub78, 562949953421312, !dbg !3086
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3086
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3086

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3086

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub83 = sub i64 %24, 1, !dbg !3086
  %and84 = and i64 %sub83, 281474976710656, !dbg !3086
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3086
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3086

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3086

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub88 = sub i64 %25, 1, !dbg !3086
  %and89 = and i64 %sub88, 140737488355328, !dbg !3086
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3086
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3086

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3086

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub93 = sub i64 %26, 1, !dbg !3086
  %and94 = and i64 %sub93, 70368744177664, !dbg !3086
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3086
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3086

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3086

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub98 = sub i64 %27, 1, !dbg !3086
  %and99 = and i64 %sub98, 35184372088832, !dbg !3086
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3086
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3086

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3086

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub103 = sub i64 %28, 1, !dbg !3086
  %and104 = and i64 %sub103, 17592186044416, !dbg !3086
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3086
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3086

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3086

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub108 = sub i64 %29, 1, !dbg !3086
  %and109 = and i64 %sub108, 8796093022208, !dbg !3086
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3086
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3086

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3086

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub113 = sub i64 %30, 1, !dbg !3086
  %and114 = and i64 %sub113, 4398046511104, !dbg !3086
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3086
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3086

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3086

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub118 = sub i64 %31, 1, !dbg !3086
  %and119 = and i64 %sub118, 2199023255552, !dbg !3086
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3086
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3086

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3086

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub123 = sub i64 %32, 1, !dbg !3086
  %and124 = and i64 %sub123, 1099511627776, !dbg !3086
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3086
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3086

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3086

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub128 = sub i64 %33, 1, !dbg !3086
  %and129 = and i64 %sub128, 549755813888, !dbg !3086
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3086
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3086

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3086

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub133 = sub i64 %34, 1, !dbg !3086
  %and134 = and i64 %sub133, 274877906944, !dbg !3086
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3086
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3086

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3086

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub138 = sub i64 %35, 1, !dbg !3086
  %and139 = and i64 %sub138, 137438953472, !dbg !3086
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3086
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3086

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3086

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub143 = sub i64 %36, 1, !dbg !3086
  %and144 = and i64 %sub143, 68719476736, !dbg !3086
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3086
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3086

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3086

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub148 = sub i64 %37, 1, !dbg !3086
  %and149 = and i64 %sub148, 34359738368, !dbg !3086
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3086
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3086

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3086

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub153 = sub i64 %38, 1, !dbg !3086
  %and154 = and i64 %sub153, 17179869184, !dbg !3086
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3086
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3086

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3086

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub158 = sub i64 %39, 1, !dbg !3086
  %and159 = and i64 %sub158, 8589934592, !dbg !3086
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3086
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3086

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3086

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub163 = sub i64 %40, 1, !dbg !3086
  %and164 = and i64 %sub163, 4294967296, !dbg !3086
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3086
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3086

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3086

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub168 = sub i64 %41, 1, !dbg !3086
  %and169 = and i64 %sub168, 2147483648, !dbg !3086
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3086
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3086

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3086

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub173 = sub i64 %42, 1, !dbg !3086
  %and174 = and i64 %sub173, 1073741824, !dbg !3086
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3086
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3086

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3086

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub178 = sub i64 %43, 1, !dbg !3086
  %and179 = and i64 %sub178, 536870912, !dbg !3086
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3086
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3086

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3086

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub183 = sub i64 %44, 1, !dbg !3086
  %and184 = and i64 %sub183, 268435456, !dbg !3086
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3086
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3086

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3086

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub188 = sub i64 %45, 1, !dbg !3086
  %and189 = and i64 %sub188, 134217728, !dbg !3086
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3086
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3086

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3086

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub193 = sub i64 %46, 1, !dbg !3086
  %and194 = and i64 %sub193, 67108864, !dbg !3086
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3086
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3086

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3086

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub198 = sub i64 %47, 1, !dbg !3086
  %and199 = and i64 %sub198, 33554432, !dbg !3086
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3086
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3086

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3086

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub203 = sub i64 %48, 1, !dbg !3086
  %and204 = and i64 %sub203, 16777216, !dbg !3086
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3086
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3086

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3086

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub208 = sub i64 %49, 1, !dbg !3086
  %and209 = and i64 %sub208, 8388608, !dbg !3086
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3086
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3086

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3086

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub213 = sub i64 %50, 1, !dbg !3086
  %and214 = and i64 %sub213, 4194304, !dbg !3086
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3086
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3086

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3086

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub218 = sub i64 %51, 1, !dbg !3086
  %and219 = and i64 %sub218, 2097152, !dbg !3086
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3086
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3086

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3086

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub223 = sub i64 %52, 1, !dbg !3086
  %and224 = and i64 %sub223, 1048576, !dbg !3086
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3086
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3086

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3086

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub228 = sub i64 %53, 1, !dbg !3086
  %and229 = and i64 %sub228, 524288, !dbg !3086
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3086
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3086

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3086

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub233 = sub i64 %54, 1, !dbg !3086
  %and234 = and i64 %sub233, 262144, !dbg !3086
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3086
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3086

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3086

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub238 = sub i64 %55, 1, !dbg !3086
  %and239 = and i64 %sub238, 131072, !dbg !3086
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3086
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3086

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3086

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub243 = sub i64 %56, 1, !dbg !3086
  %and244 = and i64 %sub243, 65536, !dbg !3086
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3086
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3086

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3086

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub248 = sub i64 %57, 1, !dbg !3086
  %and249 = and i64 %sub248, 32768, !dbg !3086
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3086
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3086

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3086

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub253 = sub i64 %58, 1, !dbg !3086
  %and254 = and i64 %sub253, 16384, !dbg !3086
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3086
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3086

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3086

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub258 = sub i64 %59, 1, !dbg !3086
  %and259 = and i64 %sub258, 8192, !dbg !3086
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3086
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3086

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3086

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub263 = sub i64 %60, 1, !dbg !3086
  %and264 = and i64 %sub263, 4096, !dbg !3086
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3086
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3086

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3086

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub268 = sub i64 %61, 1, !dbg !3086
  %and269 = and i64 %sub268, 2048, !dbg !3086
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3086
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3086

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3086

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub273 = sub i64 %62, 1, !dbg !3086
  %and274 = and i64 %sub273, 1024, !dbg !3086
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3086
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3086

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3086

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub278 = sub i64 %63, 1, !dbg !3086
  %and279 = and i64 %sub278, 512, !dbg !3086
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3086
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3086

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3086

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub283 = sub i64 %64, 1, !dbg !3086
  %and284 = and i64 %sub283, 256, !dbg !3086
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3086
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3086

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3086

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub288 = sub i64 %65, 1, !dbg !3086
  %and289 = and i64 %sub288, 128, !dbg !3086
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3086
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3086

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3086

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub293 = sub i64 %66, 1, !dbg !3086
  %and294 = and i64 %sub293, 64, !dbg !3086
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3086
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3086

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3086

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub298 = sub i64 %67, 1, !dbg !3086
  %and299 = and i64 %sub298, 32, !dbg !3086
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3086
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3086

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3086

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub303 = sub i64 %68, 1, !dbg !3086
  %and304 = and i64 %sub303, 16, !dbg !3086
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3086
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3086

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3086

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub308 = sub i64 %69, 1, !dbg !3086
  %and309 = and i64 %sub308, 8, !dbg !3086
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3086
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3086

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3086

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub313 = sub i64 %70, 1, !dbg !3086
  %and314 = and i64 %sub313, 4, !dbg !3086
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3086
  %71 = zext i1 %tobool315 to i64, !dbg !3086
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3086
  br label %cond.end, !dbg !3086

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3086
  br label %cond.end317, !dbg !3086

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3086
  br label %cond.end319, !dbg !3086

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3086
  br label %cond.end321, !dbg !3086

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3086
  br label %cond.end323, !dbg !3086

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3086
  br label %cond.end325, !dbg !3086

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3086
  br label %cond.end327, !dbg !3086

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3086
  br label %cond.end329, !dbg !3086

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3086
  br label %cond.end331, !dbg !3086

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3086
  br label %cond.end333, !dbg !3086

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3086
  br label %cond.end335, !dbg !3086

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3086
  br label %cond.end337, !dbg !3086

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3086
  br label %cond.end339, !dbg !3086

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3086
  br label %cond.end341, !dbg !3086

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3086
  br label %cond.end343, !dbg !3086

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3086
  br label %cond.end345, !dbg !3086

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3086
  br label %cond.end347, !dbg !3086

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3086
  br label %cond.end349, !dbg !3086

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3086
  br label %cond.end351, !dbg !3086

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3086
  br label %cond.end353, !dbg !3086

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3086
  br label %cond.end355, !dbg !3086

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3086
  br label %cond.end357, !dbg !3086

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3086
  br label %cond.end359, !dbg !3086

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3086
  br label %cond.end361, !dbg !3086

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3086
  br label %cond.end363, !dbg !3086

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3086
  br label %cond.end365, !dbg !3086

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3086
  br label %cond.end367, !dbg !3086

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3086
  br label %cond.end369, !dbg !3086

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3086
  br label %cond.end371, !dbg !3086

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3086
  br label %cond.end373, !dbg !3086

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3086
  br label %cond.end375, !dbg !3086

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3086
  br label %cond.end377, !dbg !3086

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3086
  br label %cond.end379, !dbg !3086

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3086
  br label %cond.end381, !dbg !3086

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3086
  br label %cond.end383, !dbg !3086

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3086
  br label %cond.end385, !dbg !3086

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3086
  br label %cond.end387, !dbg !3086

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3086
  br label %cond.end389, !dbg !3086

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3086
  br label %cond.end391, !dbg !3086

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3086
  br label %cond.end393, !dbg !3086

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3086
  br label %cond.end395, !dbg !3086

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3086
  br label %cond.end397, !dbg !3086

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3086
  br label %cond.end399, !dbg !3086

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3086
  br label %cond.end401, !dbg !3086

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3086
  br label %cond.end403, !dbg !3086

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3086
  br label %cond.end405, !dbg !3086

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3086
  br label %cond.end407, !dbg !3086

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3086
  br label %cond.end409, !dbg !3086

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3086
  br label %cond.end411, !dbg !3086

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3086
  br label %cond.end413, !dbg !3086

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3086
  br label %cond.end415, !dbg !3086

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3086
  br label %cond.end417, !dbg !3086

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3086
  br label %cond.end419, !dbg !3086

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3086
  br label %cond.end421, !dbg !3086

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3086
  br label %cond.end423, !dbg !3086

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3086
  br label %cond.end425, !dbg !3086

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3086
  br label %cond.end427, !dbg !3086

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3086
  br label %cond.end429, !dbg !3086

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3086
  br label %cond.end431, !dbg !3086

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3086
  br label %cond.end433, !dbg !3086

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3086
  br label %cond.end435, !dbg !3086

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3086
  br label %cond.end437, !dbg !3086

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3086
  br label %cond.end440, !dbg !3086

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3086

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3086
  br label %cond.end444, !dbg !3086

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3086
  %sub443 = sub i64 %72, 1, !dbg !3086
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3086
  br label %cond.end444, !dbg !3086

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3086
  %sub446 = sub i32 %cond445, 12, !dbg !3087
  %add = add i32 %sub446, 1, !dbg !3088
  store i32 %add, i32* %retval, align 4, !dbg !3089
  br label %return, !dbg !3089

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3090
  %dec = add i64 %73, -1, !dbg !3090
  store i64 %dec, i64* %size.addr, align 8, !dbg !3090
  %74 = load i64, i64* %size.addr, align 8, !dbg !3091
  %shr = lshr i64 %74, 12, !dbg !3091
  store i64 %shr, i64* %size.addr, align 8, !dbg !3091
  %75 = load i64, i64* %size.addr, align 8, !dbg !3092
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3069
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3093
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3094
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !3093, !srcloc !3095
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3093
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3096
  %add.i = add i32 %79, 1, !dbg !3097
  store i32 %add.i, i32* %retval, align 4, !dbg !3098
  br label %return, !dbg !3098

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3099
  ret i32 %80, !dbg !3099
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3100 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3061, metadata !DIExpression()), !dbg !3104
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3068, metadata !DIExpression()), !dbg !3106
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3107, metadata !DIExpression()), !dbg !3108
  %0 = load i64, i64* %n.addr, align 8, !dbg !3109
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3106
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3110
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3111
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !3110, !srcloc !3095
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3110
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3112
  %add.i = add i32 %4, 1, !dbg !3113
  %sub = sub i32 %add.i, 1, !dbg !3114
  ret i32 %sub, !dbg !3115
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3116 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3124, metadata !DIExpression()), !dbg !3125
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3126, metadata !DIExpression()), !dbg !3127
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3128
  ret i8* %0, !dbg !3129
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @device_wakeup_attach_irq(%struct.device*, %struct.wake_irq*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3130 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3134, metadata !DIExpression()), !dbg !3133
  %0 = load i64, i64* %__edi, align 8, !dbg !3133
  store i64 %0, i64* %__edi, align 8, !dbg !3133
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3135, metadata !DIExpression()), !dbg !3133
  %1 = load i64, i64* %__esi, align 8, !dbg !3133
  store i64 %1, i64* %__esi, align 8, !dbg !3133
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3136, metadata !DIExpression()), !dbg !3133
  %2 = load i64, i64* %__edx, align 8, !dbg !3133
  store i64 %2, i64* %__edx, align 8, !dbg !3133
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3137, metadata !DIExpression()), !dbg !3133
  %3 = load i64, i64* %__ecx, align 8, !dbg !3133
  store i64 %3, i64* %__ecx, align 8, !dbg !3133
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3138, metadata !DIExpression()), !dbg !3133
  %4 = load i64, i64* %__eax, align 8, !dbg !3133
  store i64 %4, i64* %__eax, align 8, !dbg !3133
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3133
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3139
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3139, !srcloc !3142
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3139
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3139
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3139
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3139
  %8 = load i64, i64* %__eax, align 8, !dbg !3139
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3143, metadata !DIExpression()), !dbg !3145
  store i64 -1, i64* %__mask, align 8, !dbg !3145
  %9 = load i64, i64* %__mask, align 8, !dbg !3145
  store i64 %9, i64* %tmp, align 8, !dbg !3145
  %10 = load i64, i64* %tmp, align 8, !dbg !3145
  %and = and i64 %8, %10, !dbg !3139
  store i64 %and, i64* %__ret, align 8, !dbg !3139
  %11 = load i64, i64* %__ret, align 8, !dbg !3133
  store i64 %11, i64* %tmp2, align 8, !dbg !3146
  %12 = load i64, i64* %tmp2, align 8, !dbg !3133
  ret i64 %12, !dbg !3147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3148 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3151, metadata !DIExpression()), !dbg !3153
  %0 = load i64, i64* %__edi, align 8, !dbg !3153
  store i64 %0, i64* %__edi, align 8, !dbg !3153
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3154, metadata !DIExpression()), !dbg !3153
  %1 = load i64, i64* %__esi, align 8, !dbg !3153
  store i64 %1, i64* %__esi, align 8, !dbg !3153
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3155, metadata !DIExpression()), !dbg !3153
  %2 = load i64, i64* %__edx, align 8, !dbg !3153
  store i64 %2, i64* %__edx, align 8, !dbg !3153
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3156, metadata !DIExpression()), !dbg !3153
  %3 = load i64, i64* %__ecx, align 8, !dbg !3153
  store i64 %3, i64* %__ecx, align 8, !dbg !3153
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3157, metadata !DIExpression()), !dbg !3153
  %4 = load i64, i64* %__eax, align 8, !dbg !3153
  store i64 %4, i64* %__eax, align 8, !dbg !3153
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3153
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3153
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !3153, !srcloc !3158
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3153
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3153
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3153
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3153
  ret void, !dbg !3159
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3160 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3165, metadata !DIExpression()), !dbg !3167
  %0 = load i64, i64* %__edi, align 8, !dbg !3167
  store i64 %0, i64* %__edi, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3168, metadata !DIExpression()), !dbg !3167
  %1 = load i64, i64* %__esi, align 8, !dbg !3167
  store i64 %1, i64* %__esi, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3169, metadata !DIExpression()), !dbg !3167
  %2 = load i64, i64* %__edx, align 8, !dbg !3167
  store i64 %2, i64* %__edx, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3170, metadata !DIExpression()), !dbg !3167
  %3 = load i64, i64* %__ecx, align 8, !dbg !3167
  store i64 %3, i64* %__ecx, align 8, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3171, metadata !DIExpression()), !dbg !3167
  %4 = load i64, i64* %__eax, align 8, !dbg !3167
  store i64 %4, i64* %__eax, align 8, !dbg !3167
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3167
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3167
  %7 = load i64, i64* %f.addr, align 8, !dbg !3167
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !3167, !srcloc !3172
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3167
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3167
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3167
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3167
  ret void, !dbg !3173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3174 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3179, metadata !DIExpression()), !dbg !3180
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3181
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3182
  %1 = load i8*, i8** %name, align 8, !dbg !3182
  ret i8* %1, !dbg !3183
}

; Function Attrs: noredzone
declare dso_local void @irq_modify_status(i32, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @irqd_is_wakeup_set(%struct.irq_data* %d) #0 !dbg !3184 {
entry:
  %d.addr = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %d, %struct.irq_data** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %d.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3291
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i32 0, i32 3, !dbg !3291
  %1 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8, !dbg !3291
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %1, i32 0, i32 0, !dbg !3291
  %2 = load i32, i32* %state_use_accessors, align 8, !dbg !3291
  %and = and i32 %2, 16384, !dbg !3292
  %tobool = icmp ne i32 %and, 0, !dbg !3291
  ret i1 %tobool, !dbg !3293
}

; Function Attrs: noredzone
declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_wakeup_event(%struct.device* %dev, i32 %msec) #0 !dbg !3294 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %msec.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i32 %msec, i32* %msec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msec.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3301
  %1 = load i32, i32* %msec.addr, align 4, !dbg !3302
  call void @pm_wakeup_dev_event(%struct.device* %0, i32 %1, i1 zeroext false) #9, !dbg !3303
  ret void, !dbg !3304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_resume(%struct.device* %dev) #0 !dbg !3305 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3308
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 0) #9, !dbg !3309
  ret i32 %call, !dbg !3310
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #8

; Function Attrs: noredzone
declare dso_local void @pm_wakeup_dev_event(%struct.device*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @irq_set_irq_wake(i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!2077}
!llvm.named.register.rsp = !{!2158}
!llvm.module.flags = !{!2159, !2160, !2161, !2162}
!llvm.ident = !{!2163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__warned", scope: !2, file: !3, line: 30, type: !915, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "dev_pm_attach_wake_irq", scope: !3, file: !3, line: 21, type: !4, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3 = !DIFile(filename: "drivers/base/power/wakeirq.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !6, !1709}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !9, line: 461, size: 5568, elements: !10)
!9 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !1521, !1522, !1525, !1526, !1578, !1662, !1663, !1664, !1665, !1666, !1681, !1894, !1907, !1910, !1911, !1915, !1917, !1918, !1919, !1923, !1929, !1930, !1933, !1937, !2027, !2030, !2031, !2032, !2033, !2065, !2066, !2067, !2070, !2073, !2074, !2075, !2076}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !8, file: !9, line: 462, baseType: !12, size: 512)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !13, line: 64, size: 512, elements: !14)
!13 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !19, !26, !28, !88, !1357, !1511, !1516, !1517, !1518, !1519, !1520}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 65, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !12, file: !13, line: 66, baseType: !20, size: 128, offset: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !21, line: 178, size: 128, elements: !22)
!21 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !25}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !21, line: 179, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !20, file: !21, line: 179, baseType: !24, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !12, file: !13, line: 67, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !12, file: !13, line: 68, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !13, line: 192, size: 704, elements: !31)
!31 = !{!32, !33, !49, !50}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !30, file: !13, line: 193, baseType: !20, size: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !30, file: !13, line: 194, baseType: !34, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !35, line: 83, baseType: !36)
!35 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !35, line: 71, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !35, line: 72, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !35, line: 72, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !39, file: !35, line: 73, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !35, line: 20, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !42, file: !35, line: 21, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !46, line: 25, baseType: !47)
!46 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 25, elements: !48)
!48 = !{}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !30, file: !13, line: 195, baseType: !12, size: 512, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !30, file: !13, line: 196, baseType: !51, size: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !13, line: 156, size: 192, elements: !54)
!54 = !{!55, !60, !65}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !53, file: !13, line: 157, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!6, !29, !27}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !13, line: 158, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !29, !27}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !53, file: !13, line: 159, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!6, !29, !27, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !13, line: 148, size: 20736, elements: !72)
!72 = !{!73, !78, !82, !83, !87}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !71, file: !13, line: 149, baseType: !74, size: 192)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, elements: !76)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !71, file: !13, line: 150, baseType: !79, size: 4096, offset: 192)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 4096, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !71, file: !13, line: 151, baseType: !6, size: 32, offset: 4288)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !71, file: !13, line: 152, baseType: !84, size: 16384, offset: 4320)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 2048)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !71, file: !13, line: 153, baseType: !6, size: 32, offset: 20704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !12, file: !13, line: 69, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !13, line: 138, size: 448, elements: !91)
!91 = !{!92, !96, !126, !128, !1299, !1336, !1340}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !90, file: !13, line: 139, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !27}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !90, file: !13, line: 140, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !100, line: 230, size: 128, elements: !101)
!100 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !118}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !99, file: !100, line: 231, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !27, !111, !75}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 60, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !108, line: 73, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !108, line: 15, baseType: !110)
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !100, line: 30, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !100, line: 31, baseType: !16, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !112, file: !100, line: 32, baseType: !116, size: 16, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !21, line: 19, baseType: !117)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !99, file: !100, line: 232, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!106, !27, !111, !16, !122}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 55, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !108, line: 72, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !108, line: 16, baseType: !125)
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !90, file: !13, line: 141, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !90, file: !13, line: 142, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !100, line: 84, size: 320, elements: !133)
!133 = !{!134, !135, !139, !1296, !1297}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !100, line: 85, baseType: !16, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !132, file: !100, line: 86, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!116, !27, !111, !6}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !132, file: !100, line: 88, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!116, !27, !143, !6}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !100, line: 168, size: 448, elements: !145)
!145 = !{!146, !147, !148, !150, !160, !161}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !144, file: !100, line: 169, baseType: !112, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !100, line: 170, baseType: !122, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !144, file: !100, line: 171, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !144, file: !100, line: 172, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!106, !154, !27, !143, !75, !157, !122}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !156, line: 526, flags: DIFlagFwdDecl)
!156 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !21, line: 46, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !108, line: 88, baseType: !159)
!159 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !144, file: !100, line: 174, baseType: !151, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !144, file: !100, line: 176, baseType: !162, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!6, !154, !27, !143, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !167, line: 305, size: 1472, elements: !168)
!167 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !170, !171, !172, !173, !181, !182, !1270, !1276, !1277, !1282, !1283, !1286, !1290, !1291, !1292, !1293, !1294}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !166, file: !167, line: 308, baseType: !125, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !166, file: !167, line: 309, baseType: !125, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !166, file: !167, line: 313, baseType: !165, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !166, file: !167, line: 313, baseType: !165, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !166, file: !167, line: 315, baseType: !174, size: 192, align: 64, offset: 256)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !175, line: 24, size: 192, align: 64, elements: !176)
!175 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !178, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !174, file: !175, line: 25, baseType: !125, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !174, file: !175, line: 26, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !174, file: !175, line: 27, baseType: !179, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !166, file: !167, line: 323, baseType: !125, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !166, file: !167, line: 327, baseType: !183, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !167, line: 388, size: 7296, elements: !185)
!185 = !{!186, !1266}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !167, line: 389, baseType: !187, size: 7296)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !184, file: !167, line: 389, size: 7296, elements: !188)
!188 = !{!189, !190, !194, !200, !204, !205, !206, !207, !208, !216, !221, !222, !223, !224, !233, !234, !235, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !270, !278, !281, !313, !314, !1236, !1237, !1240, !1244, !1245, !1248, !1249, !1250, !1253, !1265}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !187, file: !167, line: 390, baseType: !165, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !187, file: !167, line: 391, baseType: !191, size: 64, offset: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !175, line: 31, size: 64, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !191, file: !175, line: 32, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !187, file: !167, line: 392, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !196, line: 23, baseType: !197)
!196 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !198, line: 31, baseType: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!199 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !187, file: !167, line: 394, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!125, !154, !125, !125, !125, !125}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !187, file: !167, line: 398, baseType: !125, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !187, file: !167, line: 399, baseType: !125, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !187, file: !167, line: 405, baseType: !125, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !187, file: !167, line: 406, baseType: !125, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !187, file: !167, line: 407, baseType: !209, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !156, line: 286, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 286, size: 64, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !211, file: !156, line: 286, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !215, line: 18, baseType: !125)
!215 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !187, file: !167, line: 416, baseType: !217, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !21, line: 168, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 166, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !218, file: !21, line: 167, baseType: !6, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !187, file: !167, line: 428, baseType: !217, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !187, file: !167, line: 437, baseType: !217, size: 32, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !187, file: !167, line: 447, baseType: !217, size: 32, offset: 672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !187, file: !167, line: 450, baseType: !225, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !226, line: 13, baseType: !227)
!226 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !21, line: 175, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 173, size: 64, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !228, file: !21, line: 174, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !196, line: 22, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !198, line: 30, baseType: !159)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !187, file: !167, line: 452, baseType: !6, size: 32, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !187, file: !167, line: 454, baseType: !34, offset: 800)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !187, file: !167, line: 457, baseType: !236, size: 256, offset: 832)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !237, line: 35, size: 256, elements: !238)
!237 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !240, !241, !243}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !236, file: !237, line: 36, baseType: !225, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !236, file: !237, line: 42, baseType: !225, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !236, file: !237, line: 46, baseType: !242, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !35, line: 29, baseType: !42)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !236, file: !237, line: 47, baseType: !20, size: 128, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !187, file: !167, line: 459, baseType: !20, size: 128, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !187, file: !167, line: 466, baseType: !125, size: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !187, file: !167, line: 467, baseType: !125, size: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !187, file: !167, line: 469, baseType: !125, size: 64, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !187, file: !167, line: 470, baseType: !125, size: 64, offset: 1408)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !187, file: !167, line: 471, baseType: !227, size: 64, offset: 1472)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !187, file: !167, line: 472, baseType: !125, size: 64, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !187, file: !167, line: 473, baseType: !125, size: 64, offset: 1600)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !187, file: !167, line: 474, baseType: !125, size: 64, offset: 1664)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !187, file: !167, line: 475, baseType: !125, size: 64, offset: 1728)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !187, file: !167, line: 477, baseType: !34, offset: 1792)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !187, file: !167, line: 478, baseType: !125, size: 64, offset: 1792)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !187, file: !167, line: 478, baseType: !125, size: 64, offset: 1856)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !187, file: !167, line: 478, baseType: !125, size: 64, offset: 1920)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !187, file: !167, line: 478, baseType: !125, size: 64, offset: 1984)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !187, file: !167, line: 479, baseType: !125, size: 64, offset: 2048)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !187, file: !167, line: 479, baseType: !125, size: 64, offset: 2112)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !187, file: !167, line: 479, baseType: !125, size: 64, offset: 2176)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !187, file: !167, line: 480, baseType: !125, size: 64, offset: 2240)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !187, file: !167, line: 480, baseType: !125, size: 64, offset: 2304)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !187, file: !167, line: 480, baseType: !125, size: 64, offset: 2368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !187, file: !167, line: 480, baseType: !125, size: 64, offset: 2432)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !187, file: !167, line: 482, baseType: !267, size: 2816, offset: 2496)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2816, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 44)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !187, file: !167, line: 488, baseType: !271, size: 256, offset: 5312)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !272, line: 60, size: 256, elements: !273)
!272 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !271, file: !272, line: 61, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 4)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !187, file: !167, line: 490, baseType: !279, size: 64, offset: 5568)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !167, line: 490, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !187, file: !167, line: 493, baseType: !282, size: 896, offset: 5632)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !283, line: 53, baseType: !284)
!283 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 896, elements: !285)
!285 = !{!286, !287, !288, !289, !292, !293, !300, !301, !305, !306, !309}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !284, file: !283, line: 18, baseType: !195, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !284, file: !283, line: 28, baseType: !227, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !284, file: !283, line: 31, baseType: !236, size: 256, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !284, file: !283, line: 32, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !283, line: 32, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !284, file: !283, line: 37, baseType: !117, size: 16, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !284, file: !283, line: 40, baseType: !294, size: 192, offset: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !295, line: 53, size: 192, elements: !296)
!295 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !298, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !294, file: !295, line: 54, baseType: !225, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !294, file: !295, line: 55, baseType: !34, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !294, file: !295, line: 59, baseType: !20, size: 128, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !284, file: !283, line: 41, baseType: !149, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !284, file: !283, line: 42, baseType: !302, size: 64, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !283, line: 42, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !284, file: !283, line: 44, baseType: !217, size: 32, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !284, file: !283, line: 50, baseType: !307, size: 16, offset: 864)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !196, line: 19, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !198, line: 24, baseType: !117)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !284, file: !283, line: 51, baseType: !310, size: 16, offset: 880)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !196, line: 18, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !198, line: 23, baseType: !312)
!312 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !167, line: 495, baseType: !125, size: 64, offset: 6528)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !187, file: !167, line: 497, baseType: !315, size: 64, offset: 6592)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !167, line: 381, size: 384, elements: !317)
!317 = !{!318, !319, !1235}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !316, file: !167, line: 382, baseType: !217, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !316, file: !167, line: 383, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !167, line: 376, size: 128, elements: !321)
!321 = !{!322, !1233}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !320, file: !167, line: 377, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !325, line: 640, size: 48640, elements: !326)
!325 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !336, !338, !339, !345, !346, !347, !348, !349, !350, !351, !352, !356, !374, !385, !485, !486, !487, !498, !499, !501, !502, !503, !504, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !589, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !645, !647, !648, !649, !661, !663, !664, !665, !666, !667, !673, !674, !675, !676, !677, !678, !679, !691, !696, !700, !701, !702, !705, !709, !712, !715, !718, !721, !724, !727, !730, !736, !737, !738, !744, !745, !746, !747, !748, !757, !758, !759, !760, !761, !766, !767, !768, !771, !772, !775, !778, !781, !784, !787, !790, !791, !871, !874, !877, !878, !881, !882, !883, !889, !890, !891, !904, !905, !906, !918, !923, !926, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !324, file: !325, line: 646, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !329, line: 56, size: 128, elements: !330)
!329 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !329, line: 57, baseType: !125, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !328, file: !329, line: 58, baseType: !333, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !196, line: 21, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !198, line: 27, baseType: !335)
!335 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !325, line: 649, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !324, file: !325, line: 657, baseType: !149, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !324, file: !325, line: 658, baseType: !340, size: 32, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !341, line: 113, baseType: !342)
!341 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !341, line: 111, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !342, file: !341, line: 112, baseType: !217, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !325, line: 660, baseType: !335, size: 32, offset: 288)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !324, file: !325, line: 661, baseType: !335, size: 32, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !324, file: !325, line: 684, baseType: !6, size: 32, offset: 352)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !324, file: !325, line: 686, baseType: !6, size: 32, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !324, file: !325, line: 687, baseType: !6, size: 32, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !324, file: !325, line: 688, baseType: !6, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !324, file: !325, line: 689, baseType: !335, size: 32, offset: 480)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !324, file: !325, line: 691, baseType: !353, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !325, line: 691, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !324, file: !325, line: 692, baseType: !357, size: 832, offset: 576)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !325, line: 451, size: 832, elements: !358)
!358 = !{!359, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !357, file: !325, line: 453, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !325, line: 325, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !360, file: !325, line: 326, baseType: !125, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !360, file: !325, line: 327, baseType: !333, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !357, file: !325, line: 454, baseType: !174, size: 192, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !357, file: !325, line: 455, baseType: !20, size: 128, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !357, file: !325, line: 456, baseType: !335, size: 32, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !357, file: !325, line: 458, baseType: !195, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !357, file: !325, line: 459, baseType: !195, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !357, file: !325, line: 460, baseType: !195, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !357, file: !325, line: 461, baseType: !195, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !357, file: !325, line: 463, baseType: !195, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !357, file: !325, line: 465, baseType: !373, offset: 832)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !325, line: 415, elements: !48)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !324, file: !325, line: 693, baseType: !375, size: 384, offset: 1408)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !325, line: 489, size: 384, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !375, file: !325, line: 490, baseType: !20, size: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !375, file: !325, line: 491, baseType: !125, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !375, file: !325, line: 492, baseType: !125, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !375, file: !325, line: 493, baseType: !335, size: 32, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !375, file: !325, line: 494, baseType: !117, size: 16, offset: 288)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !375, file: !325, line: 495, baseType: !117, size: 16, offset: 304)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !375, file: !325, line: 497, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !324, file: !325, line: 697, baseType: !386, size: 1792, offset: 1792)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !325, line: 507, size: 1792, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !482, !483}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !386, file: !325, line: 508, baseType: !174, size: 192, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !386, file: !325, line: 515, baseType: !195, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !386, file: !325, line: 516, baseType: !195, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !386, file: !325, line: 517, baseType: !195, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !386, file: !325, line: 518, baseType: !195, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !386, file: !325, line: 519, baseType: !195, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !386, file: !325, line: 526, baseType: !231, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !386, file: !325, line: 527, baseType: !195, size: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !325, line: 528, baseType: !335, size: 32, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !386, file: !325, line: 554, baseType: !335, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !386, file: !325, line: 555, baseType: !335, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !386, file: !325, line: 556, baseType: !335, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !386, file: !325, line: 557, baseType: !335, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !386, file: !325, line: 563, baseType: !402, size: 512, offset: 704)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !403, line: 118, size: 512, elements: !404)
!403 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !413, !414, !423, !475, !479, !480, !481}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !402, file: !403, line: 119, baseType: !406, size: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !407, line: 9, size: 256, elements: !408)
!407 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !406, file: !407, line: 10, baseType: !174, size: 192, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !406, file: !407, line: 11, baseType: !411, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !412, line: 29, baseType: !231)
!412 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !402, file: !403, line: 120, baseType: !411, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !402, file: !403, line: 121, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !422}
!418 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !403, line: 65, baseType: !335, size: 32, elements: !419)
!419 = !{!420, !421}
!420 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!421 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !402, file: !403, line: 122, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !403, line: 159, size: 512, align: 512, elements: !426)
!426 = !{!427, !447, !448, !451, !461, !462, !470, !474}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !425, file: !403, line: 160, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !403, line: 214, size: 4608, align: 512, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !429, file: !403, line: 215, baseType: !242)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !429, file: !403, line: 216, baseType: !335, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !429, file: !403, line: 217, baseType: !335, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !429, file: !403, line: 218, baseType: !335, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !429, file: !403, line: 219, baseType: !335, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !429, file: !403, line: 220, baseType: !335, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !429, file: !403, line: 221, baseType: !335, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !429, file: !403, line: 222, baseType: !335, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !429, file: !403, line: 233, baseType: !411, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !429, file: !403, line: 234, baseType: !422, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !429, file: !403, line: 235, baseType: !411, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !429, file: !403, line: 236, baseType: !422, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !429, file: !403, line: 237, baseType: !444, size: 4096, offset: 512)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 4096, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !425, file: !403, line: 161, baseType: !335, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !425, file: !403, line: 162, baseType: !449, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !21, line: 27, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !108, line: 96, baseType: !6)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !425, file: !403, line: 163, baseType: !452, size: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !453, line: 276, baseType: !454)
!453 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !453, line: 276, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !454, file: !453, line: 276, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !453, line: 70, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !453, line: 65, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !458, file: !453, line: 66, baseType: !335, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !425, file: !403, line: 164, baseType: !422, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !425, file: !403, line: 165, baseType: !463, size: 128, offset: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !407, line: 14, size: 128, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !463, file: !407, line: 15, baseType: !466, size: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !175, line: 125, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !466, file: !175, line: 126, baseType: !191, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !466, file: !175, line: 127, baseType: !179, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !425, file: !403, line: 166, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!411}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !425, file: !403, line: 167, baseType: !411, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !402, file: !403, line: 123, baseType: !476, size: 8, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !196, line: 17, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !198, line: 21, baseType: !478)
!478 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !402, file: !403, line: 124, baseType: !476, size: 8, offset: 456)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !402, file: !403, line: 125, baseType: !476, size: 8, offset: 464)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !402, file: !403, line: 126, baseType: !476, size: 8, offset: 472)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !386, file: !325, line: 572, baseType: !402, size: 512, offset: 1216)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !386, file: !325, line: 580, baseType: !484, size: 64, offset: 1728)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !324, file: !325, line: 721, baseType: !335, size: 32, offset: 3584)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !324, file: !325, line: 722, baseType: !6, size: 32, offset: 3616)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !324, file: !325, line: 723, baseType: !488, size: 64, offset: 3648)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !491, line: 17, baseType: !492)
!491 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !491, line: 17, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !492, file: !491, line: 17, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 1)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !324, file: !325, line: 724, baseType: !490, size: 64, offset: 3712)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !324, file: !325, line: 749, baseType: !500, offset: 3776)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !325, line: 290, elements: !48)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !324, file: !325, line: 751, baseType: !20, size: 128, offset: 3776)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !324, file: !325, line: 757, baseType: !183, size: 64, offset: 3904)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !324, file: !325, line: 758, baseType: !183, size: 64, offset: 3968)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !324, file: !325, line: 761, baseType: !505, size: 320, offset: 4032)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !272, line: 34, size: 320, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !505, file: !272, line: 35, baseType: !195, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !505, file: !272, line: 36, baseType: !509, size: 256, offset: 64)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !276)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !324, file: !325, line: 766, baseType: !6, size: 32, offset: 4352)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !324, file: !325, line: 767, baseType: !6, size: 32, offset: 4384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !324, file: !325, line: 768, baseType: !6, size: 32, offset: 4416)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !324, file: !325, line: 770, baseType: !6, size: 32, offset: 4448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !324, file: !325, line: 772, baseType: !125, size: 64, offset: 4480)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !324, file: !325, line: 775, baseType: !335, size: 32, offset: 4544)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !324, file: !325, line: 778, baseType: !335, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !324, file: !325, line: 779, baseType: !335, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !324, file: !325, line: 780, baseType: !335, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !324, file: !325, line: 803, baseType: !335, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !324, file: !325, line: 806, baseType: !335, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !324, file: !325, line: 807, baseType: !335, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !324, file: !325, line: 809, baseType: !335, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !324, file: !325, line: 815, baseType: !335, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !324, file: !325, line: 831, baseType: !125, size: 64, offset: 4672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !324, file: !325, line: 833, baseType: !526, size: 384, offset: 4736)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !527, line: 25, size: 384, elements: !528)
!527 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!528 = !{!529, !534}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !526, file: !527, line: 26, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!110, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !527, line: 27, baseType: !535, size: 320, offset: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !527, line: 27, size: 320, elements: !536)
!536 = !{!537, !547, !579}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !535, file: !527, line: 36, baseType: !538, size: 320)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !527, line: 29, size: 320, elements: !539)
!539 = !{!540, !542, !543, !544, !545, !546}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !538, file: !527, line: 30, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !527, line: 31, baseType: !333, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !527, line: 32, baseType: !333, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !538, file: !527, line: 33, baseType: !333, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !538, file: !527, line: 34, baseType: !195, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !538, file: !527, line: 35, baseType: !541, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !535, file: !527, line: 46, baseType: !548, size: 192)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !527, line: 38, size: 192, elements: !549)
!549 = !{!550, !551, !557, !578}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !548, file: !527, line: 39, baseType: !449, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !548, file: !527, line: 40, baseType: !552, size: 32, offset: 32)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !527, line: 16, baseType: !335, size: 32, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!555 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!556 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !527, line: 41, baseType: !558, size: 64, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !527, line: 41, size: 64, elements: !559)
!559 = !{!560, !568}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !558, file: !527, line: 42, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !563, line: 7, size: 128, elements: !564)
!563 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !562, file: !563, line: 8, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !108, line: 93, baseType: !159)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !562, file: !563, line: 9, baseType: !159, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !558, file: !527, line: 43, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !571, line: 7, size: 64, elements: !572)
!571 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!572 = !{!573, !577}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !570, file: !571, line: 8, baseType: !574, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !571, line: 5, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !196, line: 20, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !198, line: 26, baseType: !6)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !570, file: !571, line: 9, baseType: !575, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !548, file: !527, line: 45, baseType: !195, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !535, file: !527, line: 54, baseType: !580, size: 256)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !527, line: 48, size: 256, elements: !581)
!581 = !{!582, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !580, file: !527, line: 49, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !527, line: 14, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !580, file: !527, line: 50, baseType: !6, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !580, file: !527, line: 51, baseType: !6, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !580, file: !527, line: 52, baseType: !125, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !580, file: !527, line: 53, baseType: !125, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !324, file: !325, line: 835, baseType: !590, size: 32, offset: 5120)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !21, line: 22, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !108, line: 28, baseType: !6)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !324, file: !325, line: 836, baseType: !590, size: 32, offset: 5152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !324, file: !325, line: 840, baseType: !125, size: 64, offset: 5184)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !324, file: !325, line: 849, baseType: !323, size: 64, offset: 5248)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !324, file: !325, line: 852, baseType: !323, size: 64, offset: 5312)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !324, file: !325, line: 857, baseType: !20, size: 128, offset: 5376)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !324, file: !325, line: 858, baseType: !20, size: 128, offset: 5504)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !324, file: !325, line: 859, baseType: !323, size: 64, offset: 5632)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !324, file: !325, line: 867, baseType: !20, size: 128, offset: 5696)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !324, file: !325, line: 868, baseType: !20, size: 128, offset: 5824)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !324, file: !325, line: 871, baseType: !602, size: 64, offset: 5952)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !604, line: 59, size: 768, elements: !605)
!604 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!605 = !{!606, !607, !608, !609, !620, !621, !628, !637}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !603, file: !604, line: 61, baseType: !340, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !603, file: !604, line: 62, baseType: !335, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !603, file: !604, line: 63, baseType: !34, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !603, file: !604, line: 65, baseType: !610, size: 256, offset: 64)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 256, elements: !276)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !21, line: 182, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !611, file: !21, line: 183, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !21, line: 186, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !21, line: 187, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !615, file: !21, line: 187, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !603, file: !604, line: 66, baseType: !611, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !603, file: !604, line: 68, baseType: !622, size: 128, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !623, line: 40, baseType: !624)
!623 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !623, line: 36, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !624, file: !623, line: 37, baseType: !34)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !624, file: !623, line: 38, baseType: !20, size: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !603, file: !604, line: 69, baseType: !629, size: 128, align: 64, offset: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !21, line: 216, size: 128, align: 64, elements: !630)
!630 = !{!631, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !21, line: 217, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !629, file: !21, line: 218, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !632}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !603, file: !604, line: 70, baseType: !638, size: 128, offset: 640)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !496)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !604, line: 54, size: 128, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !639, file: !604, line: 55, baseType: !6, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !639, file: !604, line: 56, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !604, line: 56, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !324, file: !325, line: 872, baseType: !646, size: 512, offset: 6016)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 512, elements: !276)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !324, file: !325, line: 873, baseType: !20, size: 128, offset: 6528)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !324, file: !325, line: 874, baseType: !20, size: 128, offset: 6656)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !324, file: !325, line: 876, baseType: !650, size: 64, offset: 6784)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !652, line: 26, size: 192, elements: !653)
!652 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !651, file: !652, line: 27, baseType: !335, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !651, file: !652, line: 28, baseType: !656, size: 128, offset: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !657, line: 43, size: 128, elements: !658)
!657 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !657, line: 44, baseType: !242)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !656, file: !657, line: 45, baseType: !20, size: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !324, file: !325, line: 879, baseType: !662, size: 64, offset: 6848)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !324, file: !325, line: 882, baseType: !662, size: 64, offset: 6912)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !324, file: !325, line: 884, baseType: !195, size: 64, offset: 6976)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !324, file: !325, line: 885, baseType: !195, size: 64, offset: 7040)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !324, file: !325, line: 890, baseType: !195, size: 64, offset: 7104)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !324, file: !325, line: 891, baseType: !668, size: 128, offset: 7168)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !325, line: 242, size: 128, elements: !669)
!669 = !{!670, !671, !672}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !668, file: !325, line: 244, baseType: !195, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !668, file: !325, line: 245, baseType: !195, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !325, line: 246, baseType: !242, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !324, file: !325, line: 900, baseType: !125, size: 64, offset: 7296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !324, file: !325, line: 901, baseType: !125, size: 64, offset: 7360)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !324, file: !325, line: 904, baseType: !195, size: 64, offset: 7424)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !324, file: !325, line: 907, baseType: !195, size: 64, offset: 7488)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !324, file: !325, line: 910, baseType: !125, size: 64, offset: 7552)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !324, file: !325, line: 911, baseType: !125, size: 64, offset: 7616)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !324, file: !325, line: 914, baseType: !680, size: 640, offset: 7680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !681, line: 123, size: 640, elements: !682)
!681 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !689, !690}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !680, file: !681, line: 124, baseType: !684, size: 576)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 576, elements: !76)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !681, line: 108, size: 192, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !685, file: !681, line: 109, baseType: !195, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !685, file: !681, line: 110, baseType: !463, size: 128, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !680, file: !681, line: 125, baseType: !335, size: 32, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !680, file: !681, line: 126, baseType: !335, size: 32, offset: 608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !324, file: !325, line: 917, baseType: !692, size: 192, offset: 8320)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !681, line: 134, size: 192, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !692, file: !681, line: 135, baseType: !629, size: 128, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !692, file: !681, line: 136, baseType: !335, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !324, file: !325, line: 923, baseType: !697, size: 64, offset: 8512)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !325, line: 923, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !324, file: !325, line: 926, baseType: !697, size: 64, offset: 8576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !324, file: !325, line: 929, baseType: !697, size: 64, offset: 8640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !324, file: !325, line: 933, baseType: !703, size: 64, offset: 8704)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !325, line: 933, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !324, file: !325, line: 943, baseType: !706, size: 128, offset: 8768)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 16)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !324, file: !325, line: 945, baseType: !710, size: 64, offset: 8896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !325, line: 49, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !324, file: !325, line: 956, baseType: !713, size: 64, offset: 8960)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !325, line: 45, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !324, file: !325, line: 959, baseType: !716, size: 64, offset: 9024)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !325, line: 959, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !324, file: !325, line: 962, baseType: !719, size: 64, offset: 9088)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !325, line: 66, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !324, file: !325, line: 966, baseType: !722, size: 64, offset: 9152)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !325, line: 50, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !324, file: !325, line: 969, baseType: !725, size: 64, offset: 9216)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !681, line: 223, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !324, file: !325, line: 970, baseType: !728, size: 64, offset: 9280)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !325, line: 62, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !324, file: !325, line: 971, baseType: !731, size: 64, offset: 9344)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !732, line: 25, baseType: !733)
!732 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 23, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !733, file: !732, line: 24, baseType: !495, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !324, file: !325, line: 972, baseType: !731, size: 64, offset: 9408)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !324, file: !325, line: 974, baseType: !731, size: 64, offset: 9472)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !324, file: !325, line: 975, baseType: !739, size: 192, offset: 9536)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !740, line: 30, size: 192, elements: !741)
!740 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !740, line: 31, baseType: !20, size: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !739, file: !740, line: 32, baseType: !731, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !324, file: !325, line: 976, baseType: !125, size: 64, offset: 9728)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !324, file: !325, line: 977, baseType: !122, size: 64, offset: 9792)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !324, file: !325, line: 978, baseType: !335, size: 32, offset: 9856)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !324, file: !325, line: 980, baseType: !632, size: 64, offset: 9920)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !324, file: !325, line: 989, baseType: !749, size: 128, offset: 9984)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !750, line: 35, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !749, file: !750, line: 36, baseType: !6, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !749, file: !750, line: 37, baseType: !217, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !749, file: !750, line: 38, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !750, line: 23, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !324, file: !325, line: 992, baseType: !195, size: 64, offset: 10112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !324, file: !325, line: 993, baseType: !195, size: 64, offset: 10176)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !324, file: !325, line: 996, baseType: !34, offset: 10240)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !324, file: !325, line: 999, baseType: !242, offset: 10240)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !324, file: !325, line: 1001, baseType: !762, size: 64, offset: 10240)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !325, line: 636, size: 64, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !762, file: !325, line: 637, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !324, file: !325, line: 1005, baseType: !466, size: 128, offset: 10304)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !324, file: !325, line: 1007, baseType: !323, size: 64, offset: 10432)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !324, file: !325, line: 1009, baseType: !769, size: 64, offset: 10496)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !325, line: 1009, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !324, file: !325, line: 1043, baseType: !149, size: 64, offset: 10560)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !324, file: !325, line: 1046, baseType: !773, size: 64, offset: 10624)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !325, line: 41, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !324, file: !325, line: 1050, baseType: !776, size: 64, offset: 10688)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !325, line: 42, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !324, file: !325, line: 1054, baseType: !779, size: 64, offset: 10752)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !325, line: 55, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !324, file: !325, line: 1056, baseType: !782, size: 64, offset: 10816)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !325, line: 40, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !324, file: !325, line: 1058, baseType: !785, size: 64, offset: 10880)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !325, line: 47, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !324, file: !325, line: 1061, baseType: !788, size: 64, offset: 10944)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !325, line: 43, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !324, file: !325, line: 1064, baseType: !125, size: 64, offset: 11008)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !324, file: !325, line: 1065, baseType: !792, size: 64, offset: 11072)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !740, line: 14, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !740, line: 12, size: 384, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !740, line: 13, baseType: !797, size: 384)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !740, line: 13, size: 384, elements: !798)
!798 = !{!799, !800, !801, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !797, file: !740, line: 13, baseType: !6, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !797, file: !740, line: 13, baseType: !6, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !797, file: !740, line: 13, baseType: !6, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !797, file: !740, line: 13, baseType: !803, size: 256, offset: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !804, line: 32, size: 256, elements: !805)
!804 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!805 = !{!806, !812, !825, !831, !840, !860, !865}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !803, file: !804, line: 37, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 34, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !807, file: !804, line: 35, baseType: !591, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !807, file: !804, line: 36, baseType: !811, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !108, line: 49, baseType: !335)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !803, file: !804, line: 45, baseType: !813, size: 192)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 40, size: 192, elements: !814)
!814 = !{!815, !817, !818, !824}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !813, file: !804, line: 41, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !108, line: 95, baseType: !6)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !813, file: !804, line: 42, baseType: !6, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !813, file: !804, line: 43, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !804, line: 11, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !804, line: 8, size: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !820, file: !804, line: 9, baseType: !6, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !820, file: !804, line: 10, baseType: !149, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !813, file: !804, line: 44, baseType: !6, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !803, file: !804, line: 52, baseType: !826, size: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 48, size: 128, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !826, file: !804, line: 49, baseType: !591, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !826, file: !804, line: 50, baseType: !811, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !826, file: !804, line: 51, baseType: !819, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !803, file: !804, line: 61, baseType: !832, size: 256)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 55, size: 256, elements: !833)
!833 = !{!834, !835, !836, !837, !839}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !832, file: !804, line: 56, baseType: !591, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !832, file: !804, line: 57, baseType: !811, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !832, file: !804, line: 58, baseType: !6, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !832, file: !804, line: 59, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !108, line: 94, baseType: !109)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !832, file: !804, line: 60, baseType: !838, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !803, file: !804, line: 95, baseType: !841, size: 256)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 64, size: 256, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !841, file: !804, line: 65, baseType: !149, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !804, line: 77, baseType: !845, size: 192, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !804, line: 77, size: 192, elements: !846)
!846 = !{!847, !848, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !845, file: !804, line: 82, baseType: !312, size: 16)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !845, file: !804, line: 88, baseType: !849, size: 192)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !804, line: 84, size: 192, elements: !850)
!850 = !{!851, !853, !854}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !849, file: !804, line: 85, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !445)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !849, file: !804, line: 86, baseType: !149, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !849, file: !804, line: 87, baseType: !149, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !845, file: !804, line: 93, baseType: !856, size: 96)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !804, line: 90, size: 96, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !856, file: !804, line: 91, baseType: !852, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !856, file: !804, line: 92, baseType: !334, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !803, file: !804, line: 101, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 98, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !861, file: !804, line: 99, baseType: !110, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !861, file: !804, line: 100, baseType: !6, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !803, file: !804, line: 108, baseType: !866, size: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !804, line: 104, size: 128, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !866, file: !804, line: 105, baseType: !149, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !866, file: !804, line: 106, baseType: !6, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !866, file: !804, line: 107, baseType: !335, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !324, file: !325, line: 1067, baseType: !872, offset: 11136)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !873, line: 12, elements: !48)
!873 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!874 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !324, file: !325, line: 1099, baseType: !875, size: 64, offset: 11136)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !325, line: 56, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !324, file: !325, line: 1103, baseType: !20, size: 128, offset: 11200)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !324, file: !325, line: 1104, baseType: !879, size: 64, offset: 11328)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !325, line: 46, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !324, file: !325, line: 1105, baseType: !294, size: 192, offset: 11392)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !324, file: !325, line: 1106, baseType: !335, size: 32, offset: 11584)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !324, file: !325, line: 1109, baseType: !884, size: 128, offset: 11648)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 128, elements: !887)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !325, line: 51, flags: DIFlagFwdDecl)
!887 = !{!888}
!888 = !DISubrange(count: 2)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !324, file: !325, line: 1110, baseType: !294, size: 192, offset: 11776)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !324, file: !325, line: 1111, baseType: !20, size: 128, offset: 11968)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !324, file: !325, line: 1173, baseType: !892, size: 64, offset: 12096)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !894, line: 62, size: 256, align: 256, elements: !895)
!894 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897, !898, !903}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !893, file: !894, line: 75, baseType: !334, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !893, file: !894, line: 90, baseType: !334, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !893, file: !894, line: 124, baseType: !899, size: 64, offset: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !894, line: 109, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !899, file: !894, line: 110, baseType: !197, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !899, file: !894, line: 112, baseType: !197, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !894, line: 144, baseType: !334, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !324, file: !325, line: 1174, baseType: !333, size: 32, offset: 12160)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !324, file: !325, line: 1179, baseType: !125, size: 64, offset: 12224)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !324, file: !325, line: 1182, baseType: !907, size: 128, offset: 12288)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !272, line: 76, size: 128, elements: !908)
!908 = !{!909, !914, !917}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !907, file: !272, line: 85, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !911, line: 7, size: 64, elements: !912)
!911 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !910, file: !911, line: 12, baseType: !492, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !907, file: !272, line: 88, baseType: !915, size: 8, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !21, line: 30, baseType: !916)
!916 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !907, file: !272, line: 95, baseType: !915, size: 8, offset: 72)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 1184, baseType: !919, size: 128, offset: 12416)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 1184, size: 128, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !919, file: !325, line: 1185, baseType: !340, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !919, file: !325, line: 1186, baseType: !629, size: 128, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !324, file: !325, line: 1190, baseType: !924, size: 64, offset: 12544)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !325, line: 53, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !324, file: !325, line: 1192, baseType: !927, size: 128, offset: 12608)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !272, line: 64, size: 128, elements: !928)
!928 = !{!929, !1022, !1023}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !927, file: !272, line: 65, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !167, line: 68, size: 512, align: 128, elements: !932)
!932 = !{!933, !934, !1014, !1021}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !167, line: 69, baseType: !125, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !167, line: 77, baseType: !935, size: 320, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !167, line: 77, size: 320, elements: !936)
!936 = !{!937, !946, !951, !979, !987, !993, !1006, !1013}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 78, baseType: !938, size: 320)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 78, size: 320, elements: !939)
!939 = !{!940, !941, !944, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !938, file: !167, line: 84, baseType: !20, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !938, file: !167, line: 86, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !167, line: 26, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !938, file: !167, line: 87, baseType: !125, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !938, file: !167, line: 94, baseType: !125, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 96, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 96, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !947, file: !167, line: 101, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !21, line: 143, baseType: !195)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 103, baseType: !952, size: 320)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 103, size: 320, elements: !953)
!953 = !{!954, !964, !967, !968}
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !167, line: 104, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !167, line: 104, size: 128, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !955, file: !167, line: 105, baseType: !20, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !167, line: 106, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !167, line: 106, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !167, line: 107, baseType: !930, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !959, file: !167, line: 109, baseType: !6, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !959, file: !167, line: 110, baseType: !6, size: 32, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !952, file: !167, line: 117, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !167, line: 117, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !952, file: !167, line: 119, baseType: !149, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !167, line: 120, baseType: !969, size: 64, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !167, line: 120, size: 64, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !969, file: !167, line: 121, baseType: !149, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !969, file: !167, line: 122, baseType: !125, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !167, line: 123, baseType: !974, size: 32)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !167, line: 123, size: 32, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !974, file: !167, line: 124, baseType: !335, size: 16, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !974, file: !167, line: 125, baseType: !335, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !974, file: !167, line: 126, baseType: !335, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 130, baseType: !980, size: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 130, size: 192, elements: !981)
!981 = !{!982, !983, !984, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !980, file: !167, line: 131, baseType: !125, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !980, file: !167, line: 134, baseType: !478, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !980, file: !167, line: 135, baseType: !478, size: 8, offset: 72)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !980, file: !167, line: 136, baseType: !217, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !980, file: !167, line: 137, baseType: !335, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 139, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 139, size: 256, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !988, file: !167, line: 140, baseType: !125, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !988, file: !167, line: 141, baseType: !217, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !988, file: !167, line: 143, baseType: !20, size: 128, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 145, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 145, size: 256, elements: !995)
!995 = !{!996, !997, !999, !1000, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !994, file: !167, line: 146, baseType: !125, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !994, file: !167, line: 147, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !156, line: 509, baseType: !930)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !994, file: !167, line: 148, baseType: !125, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !167, line: 149, baseType: !1001, size: 64, offset: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !167, line: 149, size: 64, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1001, file: !167, line: 150, baseType: !183, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1001, file: !167, line: 151, baseType: !217, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !994, file: !167, line: 156, baseType: !34, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !167, line: 159, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !167, line: 159, size: 128, elements: !1008)
!1008 = !{!1009, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1007, file: !167, line: 161, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !167, line: 161, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1007, file: !167, line: 162, baseType: !149, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !935, file: !167, line: 176, baseType: !629, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !167, line: 179, baseType: !1015, size: 32, offset: 384)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !167, line: 179, size: 32, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1015, file: !167, line: 184, baseType: !217, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1015, file: !167, line: 192, baseType: !335, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1015, file: !167, line: 194, baseType: !335, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1015, file: !167, line: 195, baseType: !6, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !931, file: !167, line: 199, baseType: !217, size: 32, offset: 416)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !927, file: !272, line: 67, baseType: !334, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !927, file: !272, line: 68, baseType: !334, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !324, file: !325, line: 1206, baseType: !6, size: 32, offset: 12736)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !324, file: !325, line: 1207, baseType: !6, size: 32, offset: 12768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !324, file: !325, line: 1209, baseType: !125, size: 64, offset: 12800)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !324, file: !325, line: 1219, baseType: !195, size: 64, offset: 12864)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !324, file: !325, line: 1220, baseType: !195, size: 64, offset: 12928)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !324, file: !325, line: 1317, baseType: !6, size: 32, offset: 12992)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !324, file: !325, line: 1319, baseType: !323, size: 64, offset: 13056)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !324, file: !325, line: 1322, baseType: !1032, size: 64, offset: 13120)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1034, line: 56, size: 512, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1042, !1043, !1045}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !1034, line: 57, baseType: !1032, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1033, file: !1034, line: 58, baseType: !149, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !1034, line: 59, baseType: !125, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 60, baseType: !125, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1033, file: !1034, line: 61, baseType: !1041, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1033, file: !1034, line: 62, baseType: !335, size: 32, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1033, file: !1034, line: 63, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !21, line: 153, baseType: !195)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1033, file: !1034, line: 64, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !324, file: !325, line: 1326, baseType: !340, size: 32, offset: 13184)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !324, file: !325, line: 1342, baseType: !149, size: 64, offset: 13248)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !324, file: !325, line: 1343, baseType: !197, size: 64, offset: 13312)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !324, file: !325, line: 1344, baseType: !195, size: 64, offset: 13376)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !324, file: !325, line: 1345, baseType: !197, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !324, file: !325, line: 1346, baseType: !197, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !324, file: !325, line: 1347, baseType: !197, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !324, file: !325, line: 1348, baseType: !629, size: 128, align: 64, offset: 13504)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !324, file: !325, line: 1358, baseType: !1057, size: 34816, offset: 13824)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1058, line: 485, size: 34816, elements: !1059)
!1058 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1089, !1090, !1091, !1092, !1093, !1094, !1097, !1098, !1099}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1057, file: !1058, line: 487, baseType: !1061, size: 192)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 192, elements: !76)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1063, line: 16, size: 64, elements: !1064)
!1063 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1062, file: !1063, line: 17, baseType: !307, size: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1062, file: !1063, line: 18, baseType: !307, size: 16, offset: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1062, file: !1063, line: 19, baseType: !307, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !1063, line: 19, baseType: !307, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1062, file: !1063, line: 19, baseType: !307, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1062, file: !1063, line: 19, baseType: !307, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1062, file: !1063, line: 19, baseType: !307, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1062, file: !1063, line: 20, baseType: !307, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1062, file: !1063, line: 20, baseType: !307, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1062, file: !1063, line: 20, baseType: !307, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1062, file: !1063, line: 20, baseType: !307, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1062, file: !1063, line: 20, baseType: !307, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1062, file: !1063, line: 20, baseType: !307, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1057, file: !1058, line: 491, baseType: !125, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1057, file: !1058, line: 495, baseType: !117, size: 16, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1057, file: !1058, line: 496, baseType: !117, size: 16, offset: 272)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1057, file: !1058, line: 497, baseType: !117, size: 16, offset: 288)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1057, file: !1058, line: 498, baseType: !117, size: 16, offset: 304)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1057, file: !1058, line: 502, baseType: !125, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1057, file: !1058, line: 503, baseType: !125, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1057, file: !1058, line: 514, baseType: !1086, size: 256, offset: 448)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 256, elements: !276)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1058, line: 483, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1057, file: !1058, line: 516, baseType: !125, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1057, file: !1058, line: 518, baseType: !125, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1057, file: !1058, line: 520, baseType: !125, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1057, file: !1058, line: 521, baseType: !125, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1057, file: !1058, line: 522, baseType: !125, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1057, file: !1058, line: 528, baseType: !1095, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1058, line: 10, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1057, file: !1058, line: 535, baseType: !125, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1057, file: !1058, line: 537, baseType: !335, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1057, file: !1058, line: 540, baseType: !1100, size: 33280, offset: 1536)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1101, line: 317, size: 33280, elements: !1102)
!1101 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1100, file: !1101, line: 330, baseType: !335, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1100, file: !1101, line: 337, baseType: !125, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1100, file: !1101, line: 348, baseType: !1106, size: 32768, offset: 512)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1101, line: 304, size: 32768, elements: !1107)
!1107 = !{!1108, !1123, !1162, !1212, !1229}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1106, file: !1101, line: 305, baseType: !1109, size: 896)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1101, line: 12, size: 896, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1122}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1109, file: !1101, line: 13, baseType: !333, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1109, file: !1101, line: 14, baseType: !333, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1109, file: !1101, line: 15, baseType: !333, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1109, file: !1101, line: 16, baseType: !333, size: 32, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1109, file: !1101, line: 17, baseType: !333, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1109, file: !1101, line: 18, baseType: !333, size: 32, offset: 160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1109, file: !1101, line: 19, baseType: !333, size: 32, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1109, file: !1101, line: 22, baseType: !1119, size: 640, offset: 224)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 640, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 20)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1109, file: !1101, line: 25, baseType: !333, size: 32, offset: 864)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1106, file: !1101, line: 306, baseType: !1124, size: 4096, align: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1101, line: 34, size: 4096, align: 128, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1145, !1146, !1147, !1151, !1153, !1157}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1124, file: !1101, line: 35, baseType: !307, size: 16)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1124, file: !1101, line: 36, baseType: !307, size: 16, offset: 16)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1124, file: !1101, line: 37, baseType: !307, size: 16, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1124, file: !1101, line: 38, baseType: !307, size: 16, offset: 48)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1101, line: 39, baseType: !1131, size: 128, offset: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1101, line: 39, size: 128, elements: !1132)
!1132 = !{!1133, !1138}
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1101, line: 40, baseType: !1134, size: 128)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1101, line: 40, size: 128, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1134, file: !1101, line: 41, baseType: !195, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1134, file: !1101, line: 42, baseType: !195, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1101, line: 44, baseType: !1139, size: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1101, line: 44, size: 128, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1139, file: !1101, line: 45, baseType: !333, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1139, file: !1101, line: 46, baseType: !333, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1139, file: !1101, line: 47, baseType: !333, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1139, file: !1101, line: 48, baseType: !333, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1124, file: !1101, line: 51, baseType: !333, size: 32, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1124, file: !1101, line: 52, baseType: !333, size: 32, offset: 224)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1124, file: !1101, line: 55, baseType: !1148, size: 1024, offset: 256)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 1024, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1124, file: !1101, line: 58, baseType: !1152, size: 2048, offset: 1280)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 2048, elements: !80)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1124, file: !1101, line: 60, baseType: !1154, size: 384, offset: 3328)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 384, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 12)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1101, line: 62, baseType: !1158, size: 384, offset: 3712)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1101, line: 62, size: 384, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1158, file: !1101, line: 63, baseType: !1154, size: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1158, file: !1101, line: 64, baseType: !1154, size: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1106, file: !1101, line: 307, baseType: !1163, size: 1088)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1101, line: 79, size: 1088, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1211}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1163, file: !1101, line: 80, baseType: !333, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1163, file: !1101, line: 81, baseType: !333, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1163, file: !1101, line: 82, baseType: !333, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1163, file: !1101, line: 83, baseType: !333, size: 32, offset: 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1163, file: !1101, line: 84, baseType: !333, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1163, file: !1101, line: 85, baseType: !333, size: 32, offset: 160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1163, file: !1101, line: 86, baseType: !333, size: 32, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1163, file: !1101, line: 88, baseType: !1119, size: 640, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1163, file: !1101, line: 89, baseType: !476, size: 8, offset: 864)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1163, file: !1101, line: 90, baseType: !476, size: 8, offset: 872)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1163, file: !1101, line: 91, baseType: !476, size: 8, offset: 880)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1163, file: !1101, line: 92, baseType: !476, size: 8, offset: 888)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1163, file: !1101, line: 93, baseType: !476, size: 8, offset: 896)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1163, file: !1101, line: 94, baseType: !476, size: 8, offset: 904)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1163, file: !1101, line: 95, baseType: !1180, size: 64, offset: 960)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1182, line: 11, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1181, file: !1182, line: 12, baseType: !110, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1181, file: !1182, line: 13, baseType: !1186, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1188, line: 56, size: 1344, elements: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1187, file: !1188, line: 61, baseType: !125, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1187, file: !1188, line: 62, baseType: !125, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1187, file: !1188, line: 63, baseType: !125, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1187, file: !1188, line: 64, baseType: !125, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1187, file: !1188, line: 65, baseType: !125, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1187, file: !1188, line: 66, baseType: !125, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1187, file: !1188, line: 68, baseType: !125, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1187, file: !1188, line: 69, baseType: !125, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1187, file: !1188, line: 70, baseType: !125, size: 64, offset: 512)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1187, file: !1188, line: 71, baseType: !125, size: 64, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1187, file: !1188, line: 72, baseType: !125, size: 64, offset: 640)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1187, file: !1188, line: 73, baseType: !125, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1187, file: !1188, line: 74, baseType: !125, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1187, file: !1188, line: 75, baseType: !125, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1187, file: !1188, line: 76, baseType: !125, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1187, file: !1188, line: 81, baseType: !125, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1187, file: !1188, line: 83, baseType: !125, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1187, file: !1188, line: 84, baseType: !125, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 85, baseType: !125, size: 64, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1187, file: !1188, line: 86, baseType: !125, size: 64, offset: 1216)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1187, file: !1188, line: 87, baseType: !125, size: 64, offset: 1280)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1163, file: !1101, line: 96, baseType: !333, size: 32, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1106, file: !1101, line: 308, baseType: !1213, size: 4608, align: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1101, line: 289, size: 4608, align: 512, elements: !1214)
!1214 = !{!1215, !1216, !1225}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1213, file: !1101, line: 290, baseType: !1124, size: 4096, align: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1213, file: !1101, line: 291, baseType: !1217, size: 512, offset: 4096)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1101, line: 268, size: 512, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1217, file: !1101, line: 269, baseType: !195, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1217, file: !1101, line: 270, baseType: !195, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1217, file: !1101, line: 271, baseType: !1222, size: 384, offset: 128)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 384, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 6)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1213, file: !1101, line: 292, baseType: !1226, offset: 4608)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 0)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1106, file: !1101, line: 309, baseType: !1230, size: 32768)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 32768, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 4096)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !167, line: 378, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !316, file: !167, line: 384, baseType: !651, size: 192, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !187, file: !167, line: 500, baseType: !34, offset: 6656)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !187, file: !167, line: 501, baseType: !1238, size: 64, offset: 6656)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !167, line: 387, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !187, file: !167, line: 516, baseType: !1241, size: 64, offset: 6720)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1243, line: 18, flags: DIFlagFwdDecl)
!1243 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !187, file: !167, line: 519, baseType: !154, size: 64, offset: 6784)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !187, file: !167, line: 521, baseType: !1246, size: 64, offset: 6848)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !167, line: 521, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !187, file: !167, line: 545, baseType: !217, size: 32, offset: 6912)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !187, file: !167, line: 548, baseType: !915, size: 8, offset: 6944)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !187, file: !167, line: 550, baseType: !1251, offset: 6952)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1252, line: 142, elements: !48)
!1252 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !187, file: !167, line: 554, baseType: !1254, size: 256, offset: 6976)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1255, line: 102, size: 256, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258, !1259}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1254, file: !1255, line: 103, baseType: !225, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1254, file: !1255, line: 104, baseType: !20, size: 128, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1254, file: !1255, line: 105, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1255, line: 21, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !187, file: !167, line: 557, baseType: !333, size: 32, offset: 7232)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !184, file: !167, line: 565, baseType: !1267, offset: 7296)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: -1)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !166, file: !167, line: 333, baseType: !1271, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !156, line: 284, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !156, line: 284, size: 64, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1272, file: !156, line: 284, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !215, line: 19, baseType: !125)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !166, file: !167, line: 334, baseType: !125, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !166, file: !167, line: 343, baseType: !1278, size: 256, offset: 704)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !167, line: 340, size: 256, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1278, file: !167, line: 341, baseType: !174, size: 192, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1278, file: !167, line: 342, baseType: !125, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !166, file: !167, line: 351, baseType: !20, size: 128, offset: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !166, file: !167, line: 353, baseType: !1284, size: 64, offset: 1088)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !167, line: 353, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !166, file: !167, line: 356, baseType: !1287, size: 64, offset: 1152)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !167, line: 356, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !166, file: !167, line: 359, baseType: !125, size: 64, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !166, file: !167, line: 361, baseType: !154, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !166, file: !167, line: 362, baseType: !149, size: 64, offset: 1344)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !166, file: !167, line: 365, baseType: !225, size: 64, offset: 1408)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !166, file: !167, line: 373, baseType: !1295, offset: 1472)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !167, line: 296, elements: !48)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !132, file: !100, line: 90, baseType: !127, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !132, file: !100, line: 91, baseType: !1298, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !90, file: !13, line: 143, baseType: !1300, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303, !27}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1306, line: 39, size: 384, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1314, !1318, !1322, !1328, !1332}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1305, file: !1306, line: 40, baseType: !1309, size: 32)
!1309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1306, line: 26, baseType: !335, size: 32, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!1312 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!1313 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1305, file: !1306, line: 41, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!915}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1305, file: !1306, line: 42, baseType: !1319, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!149}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1305, file: !1306, line: 43, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1046, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1306, line: 19, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1305, file: !1306, line: 44, baseType: !1329, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1046}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1305, file: !1306, line: 45, baseType: !1333, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !149}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !90, file: !13, line: 144, baseType: !1337, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1046, !27}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !90, file: !13, line: 145, baseType: !1341, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !27, !1344, !1350}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1243, line: 23, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 21, size: 32, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1346, file: !1243, line: 22, baseType: !1349, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !21, line: 32, baseType: !811)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1243, line: 28, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1243, line: 26, size: 32, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1352, file: !1243, line: 27, baseType: !1355, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !21, line: 33, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !108, line: 50, baseType: !335)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !12, file: !13, line: 70, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1360, line: 123, size: 1024, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1504, !1505, !1506, !1507, !1508}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1359, file: !1360, line: 124, baseType: !217, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1359, file: !1360, line: 125, baseType: !217, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1359, file: !1360, line: 135, baseType: !1358, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1359, file: !1360, line: 136, baseType: !16, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1359, file: !1360, line: 138, baseType: !174, size: 192, align: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1359, file: !1360, line: 140, baseType: !1046, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1359, file: !1360, line: 141, baseType: !335, size: 32, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1360, line: 142, baseType: !1370, size: 256, offset: 512)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1360, line: 142, size: 256, elements: !1371)
!1371 = !{!1372, !1427, !1431}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1370, file: !1360, line: 143, baseType: !1373, size: 192)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1360, line: 91, size: 192, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1373, file: !1360, line: 92, baseType: !125, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1373, file: !1360, line: 94, baseType: !191, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1373, file: !1360, line: 100, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1360, line: 180, size: 704, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1397, !1398, !1399, !1425, !1426}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1379, file: !1360, line: 182, baseType: !1358, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1379, file: !1360, line: 183, baseType: !335, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1379, file: !1360, line: 186, baseType: !1384, size: 192, offset: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1385, line: 19, size: 192, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1395, !1396}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1384, file: !1385, line: 20, baseType: !1388, size: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1389, line: 292, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !{!1391, !1392, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1388, file: !1389, line: 293, baseType: !34)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1388, file: !1389, line: 295, baseType: !1393, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !21, line: 148, baseType: !335)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1388, file: !1389, line: 296, baseType: !149, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1384, file: !1385, line: 21, baseType: !335, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1384, file: !1385, line: 22, baseType: !335, size: 32, offset: 160)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1379, file: !1360, line: 187, baseType: !333, size: 32, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1379, file: !1360, line: 188, baseType: !333, size: 32, offset: 352)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1379, file: !1360, line: 189, baseType: !1400, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1360, line: 168, size: 320, elements: !1402)
!1402 = !{!1403, !1409, !1413, !1417, !1421}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1401, file: !1360, line: 169, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!6, !1407, !1378}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !156, line: 539, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1401, file: !1360, line: 171, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!6, !1358, !16, !116}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1401, file: !1360, line: 173, baseType: !1414, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!6, !1358}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1401, file: !1360, line: 174, baseType: !1418, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!6, !1358, !1358, !16}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1401, file: !1360, line: 176, baseType: !1422, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!6, !1407, !1358, !1378}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1379, file: !1360, line: 192, baseType: !20, size: 128, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1379, file: !1360, line: 194, baseType: !622, size: 128, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1370, file: !1360, line: 144, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1360, line: 103, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1428, file: !1360, line: 104, baseType: !1358, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1370, file: !1360, line: 145, baseType: !1432, size: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1360, line: 107, size: 256, elements: !1433)
!1433 = !{!1434, !1499, !1502, !1503}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1432, file: !1360, line: 108, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1360, line: 217, size: 768, elements: !1438)
!1438 = !{!1439, !1459, !1463, !1467, !1472, !1476, !1480, !1484, !1485, !1486, !1487, !1495}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1437, file: !1360, line: 222, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!6, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1360, line: 197, size: 1088, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1444, file: !1360, line: 199, baseType: !1358, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1444, file: !1360, line: 200, baseType: !154, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1444, file: !1360, line: 201, baseType: !1407, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1444, file: !1360, line: 202, baseType: !149, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1444, file: !1360, line: 205, baseType: !294, size: 192, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1444, file: !1360, line: 206, baseType: !294, size: 192, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1444, file: !1360, line: 207, baseType: !6, size: 32, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1444, file: !1360, line: 208, baseType: !20, size: 128, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1444, file: !1360, line: 209, baseType: !75, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1444, file: !1360, line: 211, baseType: !122, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1444, file: !1360, line: 212, baseType: !915, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1444, file: !1360, line: 213, baseType: !915, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1444, file: !1360, line: 214, baseType: !1287, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1437, file: !1360, line: 223, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1443}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1437, file: !1360, line: 236, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!6, !1407, !149}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1437, file: !1360, line: 238, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!149, !1407, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1437, file: !1360, line: 239, baseType: !1473, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!149, !1407, !149, !1471}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1437, file: !1360, line: 240, baseType: !1477, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1407, !149}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1437, file: !1360, line: 242, baseType: !1481, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!106, !1443, !75, !122, !157}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1437, file: !1360, line: 252, baseType: !122, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1437, file: !1360, line: 259, baseType: !915, size: 8, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1437, file: !1360, line: 260, baseType: !1481, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1437, file: !1360, line: 263, baseType: !1488, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1491, !1443, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1492, line: 52, baseType: !335)
!1492 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1360, line: 27, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1437, file: !1360, line: 266, baseType: !1496, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!6, !1443, !165}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1432, file: !1360, line: 109, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1360, line: 31, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1432, file: !1360, line: 110, baseType: !157, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1432, file: !1360, line: 111, baseType: !1358, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1359, file: !1360, line: 148, baseType: !149, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1359, file: !1360, line: 154, baseType: !195, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 156, baseType: !117, size: 16, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1359, file: !1360, line: 157, baseType: !116, size: 16, offset: 912)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1359, file: !1360, line: 158, baseType: !1509, size: 64, offset: 960)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1360, line: 32, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !12, file: !13, line: 71, baseType: !1512, size: 32, offset: 448)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1513, line: 19, size: 32, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1512, file: !1513, line: 20, baseType: !340, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !12, file: !13, line: 75, baseType: !335, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !12, file: !13, line: 76, baseType: !335, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !12, file: !13, line: 77, baseType: !335, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !12, file: !13, line: 78, baseType: !335, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !12, file: !13, line: 79, baseType: !335, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !8, file: !9, line: 463, baseType: !7, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !8, file: !9, line: 465, baseType: !1523, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !9, line: 36, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !8, file: !9, line: 467, baseType: !16, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !9, line: 468, baseType: !1527, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !9, line: 87, size: 384, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1537, !1542, !1546}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1529, file: !9, line: 88, baseType: !16, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1529, file: !9, line: 89, baseType: !129, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1529, file: !9, line: 90, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!6, !7, !70}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1529, file: !9, line: 91, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!75, !7, !1541, !1344, !1350}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1529, file: !9, line: 93, baseType: !1543, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !7}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1529, file: !9, line: 95, baseType: !1547, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1550, line: 278, size: 1472, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1549, file: !1550, line: 279, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!6, !7}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1549, file: !1550, line: 280, baseType: !1543, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1549, file: !1550, line: 281, baseType: !1553, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1549, file: !1550, line: 282, baseType: !1553, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1549, file: !1550, line: 283, baseType: !1553, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1549, file: !1550, line: 284, baseType: !1553, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1549, file: !1550, line: 285, baseType: !1553, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1549, file: !1550, line: 286, baseType: !1553, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1549, file: !1550, line: 287, baseType: !1553, size: 64, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1549, file: !1550, line: 288, baseType: !1553, size: 64, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1549, file: !1550, line: 289, baseType: !1553, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1549, file: !1550, line: 290, baseType: !1553, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1549, file: !1550, line: 291, baseType: !1553, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1549, file: !1550, line: 292, baseType: !1553, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1549, file: !1550, line: 293, baseType: !1553, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1549, file: !1550, line: 294, baseType: !1553, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1549, file: !1550, line: 295, baseType: !1553, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1549, file: !1550, line: 296, baseType: !1553, size: 64, offset: 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1549, file: !1550, line: 297, baseType: !1553, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1549, file: !1550, line: 298, baseType: !1553, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1549, file: !1550, line: 299, baseType: !1553, size: 64, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1549, file: !1550, line: 300, baseType: !1553, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1549, file: !1550, line: 301, baseType: !1553, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !8, file: !9, line: 470, baseType: !1579, size: 64, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1581, line: 82, size: 1408, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1655, !1658, !1661}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1580, file: !1581, line: 83, baseType: !16, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1580, file: !1581, line: 84, baseType: !16, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1580, file: !1581, line: 85, baseType: !7, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1580, file: !1581, line: 86, baseType: !129, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1580, file: !1581, line: 87, baseType: !129, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1580, file: !1581, line: 88, baseType: !129, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1580, file: !1581, line: 90, baseType: !1590, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!6, !7, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1595, line: 95, size: 1152, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1598, !1599, !1603, !1604, !1605, !1611, !1615, !1619, !1620, !1621, !1622, !1623, !1631, !1632, !1633, !1634, !1635, !1636}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1594, file: !1595, line: 96, baseType: !16, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1594, file: !1595, line: 97, baseType: !1579, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1594, file: !1595, line: 99, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1602, line: 76, flags: DIFlagFwdDecl)
!1602 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1594, file: !1595, line: 100, baseType: !16, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1594, file: !1595, line: 102, baseType: !915, size: 8, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1594, file: !1595, line: 103, baseType: !1606, size: 32, offset: 288)
!1606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1595, line: 44, baseType: !335, size: 32, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!1609 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!1610 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1594, file: !1595, line: 105, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1595, line: 105, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1594, file: !1595, line: 106, baseType: !1616, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1595, line: 106, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1594, file: !1595, line: 108, baseType: !1553, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1594, file: !1595, line: 109, baseType: !1543, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1594, file: !1595, line: 110, baseType: !1553, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1594, file: !1595, line: 111, baseType: !1543, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1594, file: !1595, line: 112, baseType: !1624, size: 64, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!6, !7, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1550, line: 52, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1550, line: 50, size: 32, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1628, file: !1550, line: 51, baseType: !6, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1594, file: !1595, line: 113, baseType: !1553, size: 64, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1594, file: !1595, line: 114, baseType: !129, size: 64, offset: 832)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1594, file: !1595, line: 115, baseType: !129, size: 64, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1594, file: !1595, line: 117, baseType: !1547, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1594, file: !1595, line: 118, baseType: !1543, size: 64, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1594, file: !1595, line: 120, baseType: !1637, size: 64, offset: 1088)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1595, line: 120, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1580, file: !1581, line: 91, baseType: !1534, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1580, file: !1581, line: 92, baseType: !1553, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1580, file: !1581, line: 93, baseType: !1543, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1580, file: !1581, line: 94, baseType: !1553, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1580, file: !1581, line: 95, baseType: !1543, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1580, file: !1581, line: 97, baseType: !1553, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1580, file: !1581, line: 98, baseType: !1553, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1580, file: !1581, line: 100, baseType: !1624, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1580, file: !1581, line: 101, baseType: !1553, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1580, file: !1581, line: 103, baseType: !1553, size: 64, offset: 1024)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1580, file: !1581, line: 105, baseType: !1553, size: 64, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1580, file: !1581, line: 107, baseType: !1547, size: 64, offset: 1152)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1580, file: !1581, line: 109, baseType: !1652, size: 64, offset: 1216)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1581, line: 109, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1580, file: !1581, line: 111, baseType: !1656, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1581, line: 111, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1580, file: !1581, line: 112, baseType: !1659, offset: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1660, line: 187, elements: !48)
!1660 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1580, file: !1581, line: 114, baseType: !915, size: 8, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !8, file: !9, line: 471, baseType: !1593, size: 64, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !8, file: !9, line: 473, baseType: !149, size: 64, offset: 896)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !8, file: !9, line: 475, baseType: !149, size: 64, offset: 960)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !8, file: !9, line: 480, baseType: !294, size: 192, offset: 1024)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !8, file: !9, line: 484, baseType: !1667, size: 576, offset: 1216)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !9, line: 361, size: 576, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1667, file: !9, line: 362, baseType: !20, size: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1667, file: !9, line: 363, baseType: !20, size: 128, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1667, file: !9, line: 364, baseType: !20, size: 128, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1667, file: !9, line: 365, baseType: !20, size: 128, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1667, file: !9, line: 366, baseType: !915, size: 8, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1667, file: !9, line: 367, baseType: !1675, size: 32, offset: 544)
!1675 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !9, line: 343, baseType: !335, size: 32, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680}
!1677 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!1678 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!1679 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!1680 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !8, file: !9, line: 485, baseType: !1682, size: 2304, offset: 1792)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1550, line: 565, size: 2304, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1775, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1798, !1802}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1682, file: !1550, line: 566, baseType: !1627, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1682, file: !1550, line: 567, baseType: !335, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1682, file: !1550, line: 568, baseType: !335, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1682, file: !1550, line: 569, baseType: !915, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1682, file: !1550, line: 570, baseType: !915, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1682, file: !1550, line: 571, baseType: !915, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1682, file: !1550, line: 572, baseType: !915, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1682, file: !1550, line: 573, baseType: !915, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1682, file: !1550, line: 574, baseType: !915, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1682, file: !1550, line: 575, baseType: !915, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1682, file: !1550, line: 576, baseType: !915, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1682, file: !1550, line: 577, baseType: !333, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1682, file: !1550, line: 578, baseType: !34, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1682, file: !1550, line: 580, baseType: !20, size: 128, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1682, file: !1550, line: 581, baseType: !651, size: 192, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1682, file: !1550, line: 582, baseType: !1700, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1702, line: 43, size: 1472, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1717, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1701, file: !1702, line: 44, baseType: !16, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1701, file: !1702, line: 45, baseType: !6, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1701, file: !1702, line: 46, baseType: !20, size: 128, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !1702, line: 47, baseType: !34, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1701, file: !1702, line: 48, baseType: !1709, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1711, line: 31, size: 192, elements: !1712)
!1711 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1714, !1715, !1716}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1710, file: !1711, line: 32, baseType: !7, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1710, file: !1711, line: 33, baseType: !335, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1710, file: !1711, line: 34, baseType: !6, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1710, file: !1711, line: 35, baseType: !16, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1701, file: !1702, line: 49, baseType: !1718, size: 320, offset: 320)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1719, line: 11, size: 320, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !{!1721, !1722, !1723, !1728}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1718, file: !1719, line: 16, baseType: !615, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1718, file: !1719, line: 17, baseType: !125, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1718, file: !1719, line: 18, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1718, file: !1719, line: 19, baseType: !333, size: 32, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1701, file: !1702, line: 50, baseType: !125, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1701, file: !1702, line: 51, baseType: !411, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1701, file: !1702, line: 52, baseType: !411, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1701, file: !1702, line: 53, baseType: !411, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1701, file: !1702, line: 54, baseType: !411, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1701, file: !1702, line: 55, baseType: !411, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1701, file: !1702, line: 56, baseType: !125, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1701, file: !1702, line: 57, baseType: !125, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1701, file: !1702, line: 58, baseType: !125, size: 64, offset: 1152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1701, file: !1702, line: 59, baseType: !125, size: 64, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1701, file: !1702, line: 60, baseType: !125, size: 64, offset: 1280)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1701, file: !1702, line: 61, baseType: !7, size: 64, offset: 1344)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1701, file: !1702, line: 62, baseType: !915, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1701, file: !1702, line: 63, baseType: !915, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1682, file: !1550, line: 583, baseType: !915, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1682, file: !1550, line: 584, baseType: !915, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1682, file: !1550, line: 585, baseType: !915, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1682, file: !1550, line: 586, baseType: !335, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1682, file: !1550, line: 587, baseType: !335, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1682, file: !1550, line: 592, baseType: !402, size: 512, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1682, file: !1550, line: 593, baseType: !195, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1682, file: !1550, line: 594, baseType: !1254, size: 256, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1682, file: !1550, line: 595, baseType: !622, size: 128, offset: 1408)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1682, file: !1550, line: 596, baseType: !1709, size: 64, offset: 1536)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1682, file: !1550, line: 597, baseType: !217, size: 32, offset: 1600)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1682, file: !1550, line: 598, baseType: !217, size: 32, offset: 1632)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1682, file: !1550, line: 599, baseType: !335, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1682, file: !1550, line: 600, baseType: !335, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1682, file: !1550, line: 601, baseType: !335, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1682, file: !1550, line: 602, baseType: !335, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1682, file: !1550, line: 603, baseType: !335, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1682, file: !1550, line: 604, baseType: !915, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1682, file: !1550, line: 605, baseType: !335, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1682, file: !1550, line: 606, baseType: !335, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1682, file: !1550, line: 607, baseType: !335, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1682, file: !1550, line: 608, baseType: !335, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1682, file: !1550, line: 609, baseType: !335, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1682, file: !1550, line: 610, baseType: !335, size: 32, offset: 1696)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1682, file: !1550, line: 611, baseType: !1768, size: 32, offset: 1728)
!1768 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1550, line: 524, baseType: !335, size: 32, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774}
!1770 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!1771 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!1772 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!1773 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!1774 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1682, file: !1550, line: 612, baseType: !1776, size: 32, offset: 1760)
!1776 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1550, line: 502, baseType: !335, size: 32, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781}
!1778 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!1779 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!1780 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!1781 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1682, file: !1550, line: 613, baseType: !6, size: 32, offset: 1792)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1682, file: !1550, line: 614, baseType: !6, size: 32, offset: 1824)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1682, file: !1550, line: 615, baseType: !195, size: 64, offset: 1856)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1682, file: !1550, line: 616, baseType: !195, size: 64, offset: 1920)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1682, file: !1550, line: 617, baseType: !195, size: 64, offset: 1984)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1682, file: !1550, line: 618, baseType: !195, size: 64, offset: 2048)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1682, file: !1550, line: 620, baseType: !1789, size: 64, offset: 2112)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1550, line: 536, size: 256, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !1550, line: 537, baseType: !34)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1790, file: !1550, line: 538, baseType: !335, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1790, file: !1550, line: 540, baseType: !20, size: 128, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1790, file: !1550, line: 543, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1550, line: 534, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1682, file: !1550, line: 621, baseType: !1799, size: 64, offset: 2176)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !7, !575}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1682, file: !1550, line: 622, baseType: !1803, size: 64, offset: 2240)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1805, line: 117, size: 2304, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1841, !1842, !1849, !1854, !1892, !1893}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1804, file: !1805, line: 118, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !1805, line: 52, size: 320, elements: !1809)
!1809 = !{!1810, !1815, !1816, !1817, !1818, !1824}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1808, file: !1805, line: 53, baseType: !1811, size: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1812, line: 79, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1811, file: !1812, line: 80, baseType: !20, size: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1808, file: !1805, line: 54, baseType: !575, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1808, file: !1805, line: 55, baseType: !575, size: 32, offset: 160)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1808, file: !1805, line: 56, baseType: !575, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !1805, line: 57, baseType: !1819, size: 32, offset: 224)
!1819 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !1805, line: 41, baseType: !335, size: 32, elements: !1820)
!1820 = !{!1821, !1822, !1823}
!1821 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!1822 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!1823 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1808, file: !1805, line: 58, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1827, line: 65, size: 320, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1826, file: !1827, line: 66, baseType: !236, size: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1826, file: !1827, line: 67, baseType: !1831, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1827, line: 54, size: 192, elements: !1833)
!1833 = !{!1834, !1839, !1840}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1832, file: !1827, line: 55, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1827, line: 51, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!6, !1831, !125, !149}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1832, file: !1827, line: 56, baseType: !1831, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1832, file: !1827, line: 57, baseType: !6, size: 32, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1804, file: !1805, line: 119, baseType: !1808, size: 320, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1804, file: !1805, line: 120, baseType: !1843, size: 1280, offset: 640)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !1805, line: 85, size: 1280, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1843, file: !1805, line: 86, baseType: !1808, size: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1843, file: !1805, line: 87, baseType: !1826, size: 320, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1843, file: !1805, line: 88, baseType: !1808, size: 320, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1843, file: !1805, line: 89, baseType: !1826, size: 320, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !1805, line: 121, baseType: !1850, size: 192, offset: 1920)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !1805, line: 71, size: 192, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1850, file: !1805, line: 72, baseType: !20, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1850, file: !1805, line: 73, baseType: !575, size: 32, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1804, file: !1805, line: 122, baseType: !1855, size: 64, offset: 2112)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !1805, line: 107, size: 576, elements: !1857)
!1857 = !{!1858, !1866, !1891}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1856, file: !1805, line: 108, baseType: !1859, size: 32)
!1859 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !1805, line: 99, baseType: !335, size: 32, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865}
!1861 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!1862 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!1863 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!1864 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!1865 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1856, file: !1805, line: 113, baseType: !1867, size: 448, offset: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1856, file: !1805, line: 109, size: 448, elements: !1868)
!1868 = !{!1869, !1875, !1880}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1867, file: !1805, line: 110, baseType: !1870, size: 320)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1812, line: 83, size: 320, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1870, file: !1812, line: 84, baseType: !6, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1870, file: !1812, line: 85, baseType: !20, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1870, file: !1812, line: 86, baseType: !20, size: 128, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1867, file: !1805, line: 111, baseType: !1876, size: 192)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !1805, line: 66, size: 192, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1876, file: !1805, line: 67, baseType: !20, size: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1805, line: 68, baseType: !575, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1867, file: !1805, line: 112, baseType: !1881, size: 448)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !1805, line: 92, size: 448, elements: !1882)
!1882 = !{!1883, !1888, !1889}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1881, file: !1805, line: 93, baseType: !1884, size: 32)
!1884 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !1805, line: 80, baseType: !335, size: 32, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!1887 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1881, file: !1805, line: 94, baseType: !1870, size: 320, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1881, file: !1805, line: 95, baseType: !1890, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1856, file: !1805, line: 114, baseType: !7, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1804, file: !1805, line: 123, baseType: !1855, size: 64, offset: 2176)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1804, file: !1805, line: 124, baseType: !1855, size: 64, offset: 2240)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !8, file: !9, line: 486, baseType: !1895, size: 64, offset: 4096)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1550, line: 642, size: 1792, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1904, !1905, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1896, file: !1550, line: 643, baseType: !1549, size: 1472)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1896, file: !1550, line: 644, baseType: !1553, size: 64, offset: 1472)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1896, file: !1550, line: 645, baseType: !1901, size: 64, offset: 1536)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !7, !915}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1896, file: !1550, line: 646, baseType: !1553, size: 64, offset: 1600)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1896, file: !1550, line: 647, baseType: !1543, size: 64, offset: 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1896, file: !1550, line: 648, baseType: !1543, size: 64, offset: 1728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !8, file: !9, line: 493, baseType: !1908, size: 64, offset: 4160)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !9, line: 493, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !8, file: !9, line: 499, baseType: !20, size: 128, offset: 4224)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !8, file: !9, line: 502, baseType: !1912, size: 64, offset: 4352)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !9, line: 502, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !8, file: !9, line: 504, baseType: !1916, size: 64, offset: 4416)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !8, file: !9, line: 505, baseType: !195, size: 64, offset: 4480)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !8, file: !9, line: 510, baseType: !195, size: 64, offset: 4544)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !8, file: !9, line: 511, baseType: !1920, size: 64, offset: 4608)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !9, line: 511, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !8, file: !9, line: 513, baseType: !1924, size: 64, offset: 4672)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !9, line: 288, size: 128, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1925, file: !9, line: 293, baseType: !335, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1925, file: !9, line: 294, baseType: !125, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !8, file: !9, line: 515, baseType: !20, size: 128, offset: 4736)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !8, file: !9, line: 526, baseType: !1931, offset: 4864)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1932, line: 5, elements: !48)
!1932 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !8, file: !9, line: 528, baseType: !1934, size: 64, offset: 4864)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1936, line: 14, flags: DIFlagFwdDecl)
!1936 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !8, file: !9, line: 529, baseType: !1938, size: 64, offset: 4928)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1940, line: 17, size: 192, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !{!1942, !1943, !2026}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1939, file: !1940, line: 18, baseType: !1938, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1939, file: !1940, line: 19, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1940, line: 110, size: 1152, elements: !1947)
!1947 = !{!1948, !1952, !1956, !1962, !1968, !1972, !1976, !1981, !1985, !1986, !1990, !1994, !1998, !2009, !2010, !2011, !2012, !2022}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1946, file: !1940, line: 111, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1938, !1938}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1946, file: !1940, line: 112, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1938}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1946, file: !1940, line: 113, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!915, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1946, file: !1940, line: 114, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1046, !1960, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1946, file: !1940, line: 116, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!915, !1960, !16}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1946, file: !1940, line: 118, baseType: !1973, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!6, !1960, !16, !335, !149, !122}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1946, file: !1940, line: 123, baseType: !1977, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!6, !1960, !16, !1980, !122}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1946, file: !1940, line: 126, baseType: !1982, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!16, !1960}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1946, file: !1940, line: 127, baseType: !1982, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1946, file: !1940, line: 128, baseType: !1987, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1938, !1960}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1946, file: !1940, line: 130, baseType: !1991, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1938, !1960, !1938}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1946, file: !1940, line: 133, baseType: !1995, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1938, !1960, !16}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1946, file: !1940, line: 135, baseType: !1999, size: 64, offset: 768)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!6, !1960, !16, !16, !335, !335, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1940, line: 43, size: 640, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2003, file: !1940, line: 44, baseType: !1938, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2003, file: !1940, line: 45, baseType: !335, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2003, file: !1940, line: 46, baseType: !2008, size: 512, offset: 128)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 512, elements: !445)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1946, file: !1940, line: 140, baseType: !1991, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1946, file: !1940, line: 143, baseType: !1987, size: 64, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1946, file: !1940, line: 145, baseType: !1949, size: 64, offset: 960)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1946, file: !1940, line: 146, baseType: !2013, size: 64, offset: 1024)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!6, !1960, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1940, line: 29, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2017, file: !1940, line: 30, baseType: !335, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2017, file: !1940, line: 31, baseType: !335, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2017, file: !1940, line: 32, baseType: !1960, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1946, file: !1940, line: 148, baseType: !2023, size: 64, offset: 1088)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!6, !1960, !7}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1939, file: !1940, line: 20, baseType: !7, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !8, file: !9, line: 534, baseType: !2028, size: 32, offset: 4992)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !21, line: 16, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !21, line: 13, baseType: !333)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !8, file: !9, line: 535, baseType: !333, size: 32, offset: 5024)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !8, file: !9, line: 537, baseType: !34, offset: 5056)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !8, file: !9, line: 538, baseType: !20, size: 128, offset: 5056)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !8, file: !9, line: 540, baseType: !2034, size: 64, offset: 5184)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2036, line: 54, size: 960, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2048, !2052, !2053, !2054, !2055, !2059, !2063, !2064}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2035, file: !2036, line: 55, baseType: !16, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2035, file: !2036, line: 56, baseType: !1600, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2035, file: !2036, line: 58, baseType: !129, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2035, file: !2036, line: 59, baseType: !129, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2035, file: !2036, line: 60, baseType: !27, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2035, file: !2036, line: 62, baseType: !1534, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2035, file: !2036, line: 63, baseType: !2045, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!75, !7, !1541}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2035, file: !2036, line: 65, baseType: !2049, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !2034}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2035, file: !2036, line: 66, baseType: !1543, size: 64, offset: 512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2035, file: !2036, line: 68, baseType: !1553, size: 64, offset: 576)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2035, file: !2036, line: 70, baseType: !1303, size: 64, offset: 640)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2035, file: !2036, line: 71, baseType: !2056, size: 64, offset: 704)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!1046, !7}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2035, file: !2036, line: 73, baseType: !2060, size: 64, offset: 768)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !7, !1344, !1350}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2035, file: !2036, line: 75, baseType: !1547, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2035, file: !2036, line: 77, baseType: !1656, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !8, file: !9, line: 541, baseType: !129, size: 64, offset: 5248)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !8, file: !9, line: 543, baseType: !1543, size: 64, offset: 5312)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !8, file: !9, line: 544, baseType: !2068, size: 64, offset: 5376)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !9, line: 45, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !8, file: !9, line: 545, baseType: !2071, size: 64, offset: 5440)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !9, line: 47, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !8, file: !9, line: 547, baseType: !915, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !8, file: !9, line: 548, baseType: !915, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !8, file: !9, line: 549, baseType: !915, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !8, file: !9, line: 550, baseType: !915, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2077 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2078, retainedTypes: !2156, globals: !2157, splitDebugInlining: false, nameTableKind: None)
!2078 = !{!418, !552, !1309, !1606, !1675, !1768, !1776, !1819, !1859, !1884, !2079, !2105, !2112, !2117, !2123, !2130}
!2079 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2080, line: 76, baseType: !335, size: 32, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2082 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0, isUnsigned: true)
!2083 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1, isUnsigned: true)
!2084 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2, isUnsigned: true)
!2085 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3, isUnsigned: true)
!2086 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4, isUnsigned: true)
!2087 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8, isUnsigned: true)
!2088 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12, isUnsigned: true)
!2089 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15, isUnsigned: true)
!2090 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15, isUnsigned: true)
!2091 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16, isUnsigned: true)
!2092 = !DIEnumerator(name: "IRQ_LEVEL", value: 256, isUnsigned: true)
!2093 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512, isUnsigned: true)
!2094 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024, isUnsigned: true)
!2095 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048, isUnsigned: true)
!2096 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096, isUnsigned: true)
!2097 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192, isUnsigned: true)
!2098 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384, isUnsigned: true)
!2099 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768, isUnsigned: true)
!2100 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536, isUnsigned: true)
!2101 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072, isUnsigned: true)
!2102 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144, isUnsigned: true)
!2103 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288, isUnsigned: true)
!2104 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576, isUnsigned: true)
!2105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2106, line: 305, baseType: !335, size: 32, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109, !2110, !2111}
!2108 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!2109 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!2110 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!2111 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!2112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2113, line: 10, baseType: !335, size: 32, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116}
!2115 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!2116 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!2117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !2118, line: 11, baseType: !335, size: 32, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122}
!2120 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!2121 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!2122 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!2123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !2124, line: 478, baseType: !335, size: 32, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!2127 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!2128 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!2129 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!2130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2080, line: 223, baseType: !335, size: 32, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2132 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15, isUnsigned: true)
!2133 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256, isUnsigned: true)
!2134 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512, isUnsigned: true)
!2135 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024, isUnsigned: true)
!2136 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048, isUnsigned: true)
!2137 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096, isUnsigned: true)
!2138 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192, isUnsigned: true)
!2139 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384, isUnsigned: true)
!2140 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768, isUnsigned: true)
!2141 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536, isUnsigned: true)
!2142 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072, isUnsigned: true)
!2143 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144, isUnsigned: true)
!2144 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288, isUnsigned: true)
!2145 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576, isUnsigned: true)
!2146 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152, isUnsigned: true)
!2147 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304, isUnsigned: true)
!2148 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608, isUnsigned: true)
!2149 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216, isUnsigned: true)
!2150 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432, isUnsigned: true)
!2151 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864, isUnsigned: true)
!2152 = !DIEnumerator(name: "IRQD_MSI_NOMASK_QUIRK", value: 134217728, isUnsigned: true)
!2153 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 268435456, isUnsigned: true)
!2154 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 536870912, isUnsigned: true)
!2155 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 1073741824, isUnsigned: true)
!2156 = !{!1393, !149, !125}
!2157 = !{!0}
!2158 = !{!"rsp"}
!2159 = !{i32 7, !"Dwarf Version", i32 4}
!2160 = !{i32 2, !"Debug Info Version", i32 3}
!2161 = !{i32 1, !"wchar_size", i32 2}
!2162 = !{i32 1, !"Code Model", i32 2}
!2163 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2164 = distinct !DISubprogram(name: "dev_pm_set_wake_irq", scope: !3, file: !3, line: 53, type: !2165, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!6, !7, !6}
!2167 = !DILocalVariable(name: "dev", arg: 1, scope: !2164, file: !3, line: 53, type: !7)
!2168 = !DILocation(line: 53, column: 40, scope: !2164)
!2169 = !DILocalVariable(name: "irq", arg: 2, scope: !2164, file: !3, line: 53, type: !6)
!2170 = !DILocation(line: 53, column: 49, scope: !2164)
!2171 = !DILocalVariable(name: "wirq", scope: !2164, file: !3, line: 55, type: !1709)
!2172 = !DILocation(line: 55, column: 19, scope: !2164)
!2173 = !DILocalVariable(name: "err", scope: !2164, file: !3, line: 56, type: !6)
!2174 = !DILocation(line: 56, column: 6, scope: !2164)
!2175 = !DILocation(line: 58, column: 6, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 58, column: 6)
!2177 = !DILocation(line: 58, column: 10, scope: !2176)
!2178 = !DILocation(line: 58, column: 6, scope: !2164)
!2179 = !DILocation(line: 59, column: 3, scope: !2176)
!2180 = !DILocation(line: 61, column: 9, scope: !2164)
!2181 = !DILocation(line: 61, column: 7, scope: !2164)
!2182 = !DILocation(line: 62, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 62, column: 6)
!2184 = !DILocation(line: 62, column: 6, scope: !2164)
!2185 = !DILocation(line: 63, column: 3, scope: !2183)
!2186 = !DILocation(line: 65, column: 14, scope: !2164)
!2187 = !DILocation(line: 65, column: 2, scope: !2164)
!2188 = !DILocation(line: 65, column: 8, scope: !2164)
!2189 = !DILocation(line: 65, column: 12, scope: !2164)
!2190 = !DILocation(line: 66, column: 14, scope: !2164)
!2191 = !DILocation(line: 66, column: 2, scope: !2164)
!2192 = !DILocation(line: 66, column: 8, scope: !2164)
!2193 = !DILocation(line: 66, column: 12, scope: !2164)
!2194 = !DILocation(line: 68, column: 31, scope: !2164)
!2195 = !DILocation(line: 68, column: 36, scope: !2164)
!2196 = !DILocation(line: 68, column: 41, scope: !2164)
!2197 = !DILocation(line: 68, column: 8, scope: !2164)
!2198 = !DILocation(line: 68, column: 6, scope: !2164)
!2199 = !DILocation(line: 69, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 69, column: 6)
!2201 = !DILocation(line: 69, column: 6, scope: !2164)
!2202 = !DILocation(line: 70, column: 9, scope: !2200)
!2203 = !DILocation(line: 70, column: 3, scope: !2200)
!2204 = !DILocation(line: 72, column: 9, scope: !2164)
!2205 = !DILocation(line: 72, column: 2, scope: !2164)
!2206 = !DILocation(line: 73, column: 1, scope: !2164)
!2207 = distinct !DISubprogram(name: "kzalloc", scope: !2106, file: !2106, line: 662, type: !2208, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!149, !122, !1393}
!2210 = !DILocalVariable(name: "s", arg: 1, scope: !2211, file: !2106, line: 445, type: !965)
!2211 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !2106, file: !2106, line: 445, type: !2212, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!149, !965, !1393, !122}
!2214 = !DILocation(line: 445, column: 72, scope: !2211, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 552, column: 10, scope: !2216, inlinedAt: !2219)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !2106, line: 540, column: 34)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !2106, line: 540, column: 6)
!2218 = distinct !DISubprogram(name: "kmalloc", scope: !2106, file: !2106, line: 538, type: !2208, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2219 = distinct !DILocation(line: 664, column: 9, scope: !2207)
!2220 = !DILocalVariable(name: "flags", arg: 2, scope: !2211, file: !2106, line: 446, type: !1393)
!2221 = !DILocation(line: 446, column: 9, scope: !2211, inlinedAt: !2215)
!2222 = !DILocalVariable(name: "size", arg: 3, scope: !2211, file: !2106, line: 446, type: !122)
!2223 = !DILocation(line: 446, column: 23, scope: !2211, inlinedAt: !2215)
!2224 = !DILocalVariable(name: "ret", scope: !2211, file: !2106, line: 448, type: !149)
!2225 = !DILocation(line: 448, column: 8, scope: !2211, inlinedAt: !2215)
!2226 = !DILocalVariable(name: "flags", arg: 1, scope: !2227, file: !2106, line: 318, type: !1393)
!2227 = distinct !DISubprogram(name: "kmalloc_type", scope: !2106, file: !2106, line: 318, type: !2228, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2105, !1393}
!2230 = !DILocation(line: 318, column: 67, scope: !2227, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 553, column: 20, scope: !2216, inlinedAt: !2219)
!2232 = !DILocalVariable(name: "size", arg: 1, scope: !2233, file: !2106, line: 346, type: !122)
!2233 = distinct !DISubprogram(name: "kmalloc_index", scope: !2106, file: !2106, line: 346, type: !2234, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!335, !122}
!2236 = !DILocation(line: 346, column: 58, scope: !2233, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 547, column: 11, scope: !2216, inlinedAt: !2219)
!2238 = !DILocalVariable(name: "size", arg: 1, scope: !2239, file: !2106, line: 472, type: !122)
!2239 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !2106, file: !2106, line: 472, type: !2240, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!149, !122, !1393, !335}
!2242 = !DILocation(line: 472, column: 28, scope: !2239, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 481, column: 9, scope: !2244, inlinedAt: !2245)
!2244 = distinct !DISubprogram(name: "kmalloc_large", scope: !2106, file: !2106, line: 478, type: !2208, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2245 = distinct !DILocation(line: 545, column: 11, scope: !2246, inlinedAt: !2219)
!2246 = distinct !DILexicalBlock(scope: !2216, file: !2106, line: 544, column: 7)
!2247 = !DILocalVariable(name: "flags", arg: 2, scope: !2239, file: !2106, line: 472, type: !1393)
!2248 = !DILocation(line: 472, column: 40, scope: !2239, inlinedAt: !2243)
!2249 = !DILocalVariable(name: "order", arg: 3, scope: !2239, file: !2106, line: 472, type: !335)
!2250 = !DILocation(line: 472, column: 60, scope: !2239, inlinedAt: !2243)
!2251 = !DILocalVariable(name: "size", arg: 1, scope: !2244, file: !2106, line: 478, type: !122)
!2252 = !DILocation(line: 478, column: 51, scope: !2244, inlinedAt: !2245)
!2253 = !DILocalVariable(name: "flags", arg: 2, scope: !2244, file: !2106, line: 478, type: !1393)
!2254 = !DILocation(line: 478, column: 63, scope: !2244, inlinedAt: !2245)
!2255 = !DILocalVariable(name: "order", scope: !2244, file: !2106, line: 480, type: !335)
!2256 = !DILocation(line: 480, column: 15, scope: !2244, inlinedAt: !2245)
!2257 = !DILocalVariable(name: "size", arg: 1, scope: !2218, file: !2106, line: 538, type: !122)
!2258 = !DILocation(line: 538, column: 45, scope: !2218, inlinedAt: !2219)
!2259 = !DILocalVariable(name: "flags", arg: 2, scope: !2218, file: !2106, line: 538, type: !1393)
!2260 = !DILocation(line: 538, column: 57, scope: !2218, inlinedAt: !2219)
!2261 = !DILocalVariable(name: "index", scope: !2216, file: !2106, line: 542, type: !335)
!2262 = !DILocation(line: 542, column: 16, scope: !2216, inlinedAt: !2219)
!2263 = !DILocalVariable(name: "size", arg: 1, scope: !2207, file: !2106, line: 662, type: !122)
!2264 = !DILocation(line: 662, column: 36, scope: !2207)
!2265 = !DILocalVariable(name: "flags", arg: 2, scope: !2207, file: !2106, line: 662, type: !1393)
!2266 = !DILocation(line: 662, column: 48, scope: !2207)
!2267 = !DILocation(line: 664, column: 17, scope: !2207)
!2268 = !DILocation(line: 664, column: 23, scope: !2207)
!2269 = !DILocation(line: 664, column: 29, scope: !2207)
!2270 = !DILocation(line: 540, column: 27, scope: !2217, inlinedAt: !2219)
!2271 = !DILocation(line: 540, column: 6, scope: !2217, inlinedAt: !2219)
!2272 = !DILocation(line: 540, column: 6, scope: !2218, inlinedAt: !2219)
!2273 = !DILocation(line: 544, column: 7, scope: !2246, inlinedAt: !2219)
!2274 = !DILocation(line: 544, column: 12, scope: !2246, inlinedAt: !2219)
!2275 = !DILocation(line: 544, column: 7, scope: !2216, inlinedAt: !2219)
!2276 = !DILocation(line: 545, column: 25, scope: !2246, inlinedAt: !2219)
!2277 = !DILocation(line: 545, column: 31, scope: !2246, inlinedAt: !2219)
!2278 = !DILocation(line: 480, column: 33, scope: !2244, inlinedAt: !2245)
!2279 = !DILocation(line: 480, column: 23, scope: !2244, inlinedAt: !2245)
!2280 = !DILocation(line: 481, column: 29, scope: !2244, inlinedAt: !2245)
!2281 = !DILocation(line: 481, column: 35, scope: !2244, inlinedAt: !2245)
!2282 = !DILocation(line: 481, column: 42, scope: !2244, inlinedAt: !2245)
!2283 = !DILocation(line: 474, column: 23, scope: !2239, inlinedAt: !2243)
!2284 = !DILocation(line: 474, column: 29, scope: !2239, inlinedAt: !2243)
!2285 = !DILocation(line: 474, column: 36, scope: !2239, inlinedAt: !2243)
!2286 = !DILocation(line: 474, column: 9, scope: !2239, inlinedAt: !2243)
!2287 = !DILocation(line: 545, column: 4, scope: !2246, inlinedAt: !2219)
!2288 = !DILocation(line: 547, column: 25, scope: !2216, inlinedAt: !2219)
!2289 = !DILocation(line: 348, column: 7, scope: !2290, inlinedAt: !2237)
!2290 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 348, column: 6)
!2291 = !DILocation(line: 348, column: 6, scope: !2233, inlinedAt: !2237)
!2292 = !DILocation(line: 349, column: 3, scope: !2290, inlinedAt: !2237)
!2293 = !DILocation(line: 351, column: 6, scope: !2294, inlinedAt: !2237)
!2294 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 351, column: 6)
!2295 = !DILocation(line: 351, column: 11, scope: !2294, inlinedAt: !2237)
!2296 = !DILocation(line: 351, column: 6, scope: !2233, inlinedAt: !2237)
!2297 = !DILocation(line: 352, column: 3, scope: !2294, inlinedAt: !2237)
!2298 = !DILocation(line: 354, column: 32, scope: !2299, inlinedAt: !2237)
!2299 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 354, column: 6)
!2300 = !DILocation(line: 354, column: 37, scope: !2299, inlinedAt: !2237)
!2301 = !DILocation(line: 354, column: 42, scope: !2299, inlinedAt: !2237)
!2302 = !DILocation(line: 354, column: 45, scope: !2299, inlinedAt: !2237)
!2303 = !DILocation(line: 354, column: 50, scope: !2299, inlinedAt: !2237)
!2304 = !DILocation(line: 354, column: 6, scope: !2233, inlinedAt: !2237)
!2305 = !DILocation(line: 355, column: 3, scope: !2299, inlinedAt: !2237)
!2306 = !DILocation(line: 356, column: 32, scope: !2307, inlinedAt: !2237)
!2307 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 356, column: 6)
!2308 = !DILocation(line: 356, column: 37, scope: !2307, inlinedAt: !2237)
!2309 = !DILocation(line: 356, column: 43, scope: !2307, inlinedAt: !2237)
!2310 = !DILocation(line: 356, column: 46, scope: !2307, inlinedAt: !2237)
!2311 = !DILocation(line: 356, column: 51, scope: !2307, inlinedAt: !2237)
!2312 = !DILocation(line: 356, column: 6, scope: !2233, inlinedAt: !2237)
!2313 = !DILocation(line: 357, column: 3, scope: !2307, inlinedAt: !2237)
!2314 = !DILocation(line: 358, column: 6, scope: !2315, inlinedAt: !2237)
!2315 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 358, column: 6)
!2316 = !DILocation(line: 358, column: 11, scope: !2315, inlinedAt: !2237)
!2317 = !DILocation(line: 358, column: 6, scope: !2233, inlinedAt: !2237)
!2318 = !DILocation(line: 358, column: 26, scope: !2315, inlinedAt: !2237)
!2319 = !DILocation(line: 359, column: 6, scope: !2320, inlinedAt: !2237)
!2320 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 359, column: 6)
!2321 = !DILocation(line: 359, column: 11, scope: !2320, inlinedAt: !2237)
!2322 = !DILocation(line: 359, column: 6, scope: !2233, inlinedAt: !2237)
!2323 = !DILocation(line: 359, column: 26, scope: !2320, inlinedAt: !2237)
!2324 = !DILocation(line: 360, column: 6, scope: !2325, inlinedAt: !2237)
!2325 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 360, column: 6)
!2326 = !DILocation(line: 360, column: 11, scope: !2325, inlinedAt: !2237)
!2327 = !DILocation(line: 360, column: 6, scope: !2233, inlinedAt: !2237)
!2328 = !DILocation(line: 360, column: 26, scope: !2325, inlinedAt: !2237)
!2329 = !DILocation(line: 361, column: 6, scope: !2330, inlinedAt: !2237)
!2330 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 361, column: 6)
!2331 = !DILocation(line: 361, column: 11, scope: !2330, inlinedAt: !2237)
!2332 = !DILocation(line: 361, column: 6, scope: !2233, inlinedAt: !2237)
!2333 = !DILocation(line: 361, column: 26, scope: !2330, inlinedAt: !2237)
!2334 = !DILocation(line: 362, column: 6, scope: !2335, inlinedAt: !2237)
!2335 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 362, column: 6)
!2336 = !DILocation(line: 362, column: 11, scope: !2335, inlinedAt: !2237)
!2337 = !DILocation(line: 362, column: 6, scope: !2233, inlinedAt: !2237)
!2338 = !DILocation(line: 362, column: 26, scope: !2335, inlinedAt: !2237)
!2339 = !DILocation(line: 363, column: 6, scope: !2340, inlinedAt: !2237)
!2340 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 363, column: 6)
!2341 = !DILocation(line: 363, column: 11, scope: !2340, inlinedAt: !2237)
!2342 = !DILocation(line: 363, column: 6, scope: !2233, inlinedAt: !2237)
!2343 = !DILocation(line: 363, column: 26, scope: !2340, inlinedAt: !2237)
!2344 = !DILocation(line: 364, column: 6, scope: !2345, inlinedAt: !2237)
!2345 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 364, column: 6)
!2346 = !DILocation(line: 364, column: 11, scope: !2345, inlinedAt: !2237)
!2347 = !DILocation(line: 364, column: 6, scope: !2233, inlinedAt: !2237)
!2348 = !DILocation(line: 364, column: 26, scope: !2345, inlinedAt: !2237)
!2349 = !DILocation(line: 365, column: 6, scope: !2350, inlinedAt: !2237)
!2350 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 365, column: 6)
!2351 = !DILocation(line: 365, column: 11, scope: !2350, inlinedAt: !2237)
!2352 = !DILocation(line: 365, column: 6, scope: !2233, inlinedAt: !2237)
!2353 = !DILocation(line: 365, column: 26, scope: !2350, inlinedAt: !2237)
!2354 = !DILocation(line: 366, column: 6, scope: !2355, inlinedAt: !2237)
!2355 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 366, column: 6)
!2356 = !DILocation(line: 366, column: 11, scope: !2355, inlinedAt: !2237)
!2357 = !DILocation(line: 366, column: 6, scope: !2233, inlinedAt: !2237)
!2358 = !DILocation(line: 366, column: 26, scope: !2355, inlinedAt: !2237)
!2359 = !DILocation(line: 367, column: 6, scope: !2360, inlinedAt: !2237)
!2360 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 367, column: 6)
!2361 = !DILocation(line: 367, column: 11, scope: !2360, inlinedAt: !2237)
!2362 = !DILocation(line: 367, column: 6, scope: !2233, inlinedAt: !2237)
!2363 = !DILocation(line: 367, column: 26, scope: !2360, inlinedAt: !2237)
!2364 = !DILocation(line: 368, column: 6, scope: !2365, inlinedAt: !2237)
!2365 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 368, column: 6)
!2366 = !DILocation(line: 368, column: 11, scope: !2365, inlinedAt: !2237)
!2367 = !DILocation(line: 368, column: 6, scope: !2233, inlinedAt: !2237)
!2368 = !DILocation(line: 368, column: 26, scope: !2365, inlinedAt: !2237)
!2369 = !DILocation(line: 369, column: 6, scope: !2370, inlinedAt: !2237)
!2370 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 369, column: 6)
!2371 = !DILocation(line: 369, column: 11, scope: !2370, inlinedAt: !2237)
!2372 = !DILocation(line: 369, column: 6, scope: !2233, inlinedAt: !2237)
!2373 = !DILocation(line: 369, column: 26, scope: !2370, inlinedAt: !2237)
!2374 = !DILocation(line: 370, column: 6, scope: !2375, inlinedAt: !2237)
!2375 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 370, column: 6)
!2376 = !DILocation(line: 370, column: 11, scope: !2375, inlinedAt: !2237)
!2377 = !DILocation(line: 370, column: 6, scope: !2233, inlinedAt: !2237)
!2378 = !DILocation(line: 370, column: 26, scope: !2375, inlinedAt: !2237)
!2379 = !DILocation(line: 371, column: 6, scope: !2380, inlinedAt: !2237)
!2380 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 371, column: 6)
!2381 = !DILocation(line: 371, column: 11, scope: !2380, inlinedAt: !2237)
!2382 = !DILocation(line: 371, column: 6, scope: !2233, inlinedAt: !2237)
!2383 = !DILocation(line: 371, column: 26, scope: !2380, inlinedAt: !2237)
!2384 = !DILocation(line: 372, column: 6, scope: !2385, inlinedAt: !2237)
!2385 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 372, column: 6)
!2386 = !DILocation(line: 372, column: 11, scope: !2385, inlinedAt: !2237)
!2387 = !DILocation(line: 372, column: 6, scope: !2233, inlinedAt: !2237)
!2388 = !DILocation(line: 372, column: 26, scope: !2385, inlinedAt: !2237)
!2389 = !DILocation(line: 373, column: 6, scope: !2390, inlinedAt: !2237)
!2390 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 373, column: 6)
!2391 = !DILocation(line: 373, column: 11, scope: !2390, inlinedAt: !2237)
!2392 = !DILocation(line: 373, column: 6, scope: !2233, inlinedAt: !2237)
!2393 = !DILocation(line: 373, column: 26, scope: !2390, inlinedAt: !2237)
!2394 = !DILocation(line: 374, column: 6, scope: !2395, inlinedAt: !2237)
!2395 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 374, column: 6)
!2396 = !DILocation(line: 374, column: 11, scope: !2395, inlinedAt: !2237)
!2397 = !DILocation(line: 374, column: 6, scope: !2233, inlinedAt: !2237)
!2398 = !DILocation(line: 374, column: 26, scope: !2395, inlinedAt: !2237)
!2399 = !DILocation(line: 375, column: 6, scope: !2400, inlinedAt: !2237)
!2400 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 375, column: 6)
!2401 = !DILocation(line: 375, column: 11, scope: !2400, inlinedAt: !2237)
!2402 = !DILocation(line: 375, column: 6, scope: !2233, inlinedAt: !2237)
!2403 = !DILocation(line: 375, column: 27, scope: !2400, inlinedAt: !2237)
!2404 = !DILocation(line: 376, column: 6, scope: !2405, inlinedAt: !2237)
!2405 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 376, column: 6)
!2406 = !DILocation(line: 376, column: 11, scope: !2405, inlinedAt: !2237)
!2407 = !DILocation(line: 376, column: 6, scope: !2233, inlinedAt: !2237)
!2408 = !DILocation(line: 376, column: 32, scope: !2405, inlinedAt: !2237)
!2409 = !DILocation(line: 377, column: 6, scope: !2410, inlinedAt: !2237)
!2410 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 377, column: 6)
!2411 = !DILocation(line: 377, column: 11, scope: !2410, inlinedAt: !2237)
!2412 = !DILocation(line: 377, column: 6, scope: !2233, inlinedAt: !2237)
!2413 = !DILocation(line: 377, column: 32, scope: !2410, inlinedAt: !2237)
!2414 = !DILocation(line: 378, column: 6, scope: !2415, inlinedAt: !2237)
!2415 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 378, column: 6)
!2416 = !DILocation(line: 378, column: 11, scope: !2415, inlinedAt: !2237)
!2417 = !DILocation(line: 378, column: 6, scope: !2233, inlinedAt: !2237)
!2418 = !DILocation(line: 378, column: 32, scope: !2415, inlinedAt: !2237)
!2419 = !DILocation(line: 379, column: 6, scope: !2420, inlinedAt: !2237)
!2420 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 379, column: 6)
!2421 = !DILocation(line: 379, column: 11, scope: !2420, inlinedAt: !2237)
!2422 = !DILocation(line: 379, column: 6, scope: !2233, inlinedAt: !2237)
!2423 = !DILocation(line: 379, column: 33, scope: !2420, inlinedAt: !2237)
!2424 = !DILocation(line: 380, column: 6, scope: !2425, inlinedAt: !2237)
!2425 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 380, column: 6)
!2426 = !DILocation(line: 380, column: 11, scope: !2425, inlinedAt: !2237)
!2427 = !DILocation(line: 380, column: 6, scope: !2233, inlinedAt: !2237)
!2428 = !DILocation(line: 380, column: 33, scope: !2425, inlinedAt: !2237)
!2429 = !DILocation(line: 381, column: 6, scope: !2430, inlinedAt: !2237)
!2430 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 381, column: 6)
!2431 = !DILocation(line: 381, column: 11, scope: !2430, inlinedAt: !2237)
!2432 = !DILocation(line: 381, column: 6, scope: !2233, inlinedAt: !2237)
!2433 = !DILocation(line: 381, column: 33, scope: !2430, inlinedAt: !2237)
!2434 = !DILocation(line: 382, column: 2, scope: !2435, inlinedAt: !2237)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !2106, line: 382, column: 2)
!2436 = distinct !DILexicalBlock(scope: !2233, file: !2106, line: 382, column: 2)
!2437 = !{i32 -2143518636, i32 -2143518607, i32 -2143518561, i32 -2143518503, i32 -2143518449, i32 -2143518395, i32 -2143518340, i32 -2143518309}
!2438 = !DILocation(line: 382, column: 2, scope: !2439, inlinedAt: !2237)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !2106, line: 382, column: 2)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !2106, line: 382, column: 2)
!2441 = !{i32 -2143517866, i32 -2143517859, i32 -2143517805, i32 -2143517774, i32 -2143517744}
!2442 = !DILocation(line: 382, column: 2, scope: !2440, inlinedAt: !2237)
!2443 = !DILocation(line: 386, column: 1, scope: !2233, inlinedAt: !2237)
!2444 = !DILocation(line: 547, column: 9, scope: !2216, inlinedAt: !2219)
!2445 = !DILocation(line: 549, column: 8, scope: !2446, inlinedAt: !2219)
!2446 = distinct !DILexicalBlock(scope: !2216, file: !2106, line: 549, column: 7)
!2447 = !DILocation(line: 549, column: 7, scope: !2216, inlinedAt: !2219)
!2448 = !DILocation(line: 550, column: 4, scope: !2446, inlinedAt: !2219)
!2449 = !DILocation(line: 553, column: 33, scope: !2216, inlinedAt: !2219)
!2450 = !DILocation(line: 325, column: 6, scope: !2451, inlinedAt: !2231)
!2451 = distinct !DILexicalBlock(scope: !2227, file: !2106, line: 325, column: 6)
!2452 = !DILocation(line: 325, column: 6, scope: !2227, inlinedAt: !2231)
!2453 = !DILocation(line: 326, column: 3, scope: !2451, inlinedAt: !2231)
!2454 = !DILocation(line: 332, column: 9, scope: !2227, inlinedAt: !2231)
!2455 = !DILocation(line: 332, column: 15, scope: !2227, inlinedAt: !2231)
!2456 = !DILocation(line: 332, column: 2, scope: !2227, inlinedAt: !2231)
!2457 = !DILocation(line: 336, column: 1, scope: !2227, inlinedAt: !2231)
!2458 = !DILocation(line: 553, column: 5, scope: !2216, inlinedAt: !2219)
!2459 = !DILocation(line: 553, column: 41, scope: !2216, inlinedAt: !2219)
!2460 = !DILocation(line: 554, column: 5, scope: !2216, inlinedAt: !2219)
!2461 = !DILocation(line: 554, column: 12, scope: !2216, inlinedAt: !2219)
!2462 = !DILocation(line: 448, column: 31, scope: !2211, inlinedAt: !2215)
!2463 = !DILocation(line: 448, column: 34, scope: !2211, inlinedAt: !2215)
!2464 = !DILocation(line: 448, column: 14, scope: !2211, inlinedAt: !2215)
!2465 = !DILocation(line: 450, column: 22, scope: !2211, inlinedAt: !2215)
!2466 = !DILocation(line: 450, column: 25, scope: !2211, inlinedAt: !2215)
!2467 = !DILocation(line: 450, column: 30, scope: !2211, inlinedAt: !2215)
!2468 = !DILocation(line: 450, column: 36, scope: !2211, inlinedAt: !2215)
!2469 = !DILocation(line: 450, column: 8, scope: !2211, inlinedAt: !2215)
!2470 = !DILocation(line: 450, column: 6, scope: !2211, inlinedAt: !2215)
!2471 = !DILocation(line: 451, column: 9, scope: !2211, inlinedAt: !2215)
!2472 = !DILocation(line: 552, column: 3, scope: !2216, inlinedAt: !2219)
!2473 = !DILocation(line: 557, column: 19, scope: !2218, inlinedAt: !2219)
!2474 = !DILocation(line: 557, column: 25, scope: !2218, inlinedAt: !2219)
!2475 = !DILocation(line: 557, column: 9, scope: !2218, inlinedAt: !2219)
!2476 = !DILocation(line: 557, column: 2, scope: !2218, inlinedAt: !2219)
!2477 = !DILocation(line: 558, column: 1, scope: !2218, inlinedAt: !2219)
!2478 = !DILocation(line: 664, column: 2, scope: !2207)
!2479 = !DILocalVariable(name: "lock", arg: 1, scope: !2480, file: !2481, line: 407, type: !2484)
!2480 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2481, file: !2481, line: 407, type: !2482, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2481 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !2484, !125}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2485 = !DILocation(line: 407, column: 64, scope: !2480, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 32, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 31, column: 41)
!2488 = distinct !DILexicalBlock(scope: !2, file: !3, line: 30, column: 6)
!2489 = !DILocalVariable(name: "flags", arg: 2, scope: !2480, file: !2481, line: 407, type: !125)
!2490 = !DILocation(line: 407, column: 84, scope: !2480, inlinedAt: !2486)
!2491 = !DILocation(line: 407, column: 64, scope: !2480, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 39, column: 2, scope: !2)
!2493 = !DILocation(line: 407, column: 84, scope: !2480, inlinedAt: !2492)
!2494 = !DILocalVariable(name: "lock", arg: 1, scope: !2495, file: !2481, line: 327, type: !2484)
!2495 = distinct !DISubprogram(name: "spinlock_check", scope: !2481, file: !2481, line: 327, type: !2496, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!2498, !2484}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!2499 = !DILocation(line: 327, column: 67, scope: !2495, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 29, column: 2, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 29, column: 2)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 29, column: 2)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 29, column: 2)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 29, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2, file: !3, line: 29, column: 2)
!2506 = !DILocalVariable(name: "dev", arg: 1, scope: !2, file: !3, line: 21, type: !7)
!2507 = !DILocation(line: 21, column: 50, scope: !2)
!2508 = !DILocalVariable(name: "irq", arg: 2, scope: !2, file: !3, line: 21, type: !6)
!2509 = !DILocation(line: 21, column: 59, scope: !2)
!2510 = !DILocalVariable(name: "wirq", arg: 3, scope: !2, file: !3, line: 22, type: !1709)
!2511 = !DILocation(line: 22, column: 24, scope: !2)
!2512 = !DILocalVariable(name: "flags", scope: !2, file: !3, line: 24, type: !125)
!2513 = !DILocation(line: 24, column: 16, scope: !2)
!2514 = !DILocation(line: 26, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2, file: !3, line: 26, column: 6)
!2516 = !DILocation(line: 26, column: 11, scope: !2515)
!2517 = !DILocation(line: 26, column: 15, scope: !2515)
!2518 = !DILocation(line: 26, column: 6, scope: !2)
!2519 = !DILocation(line: 27, column: 3, scope: !2515)
!2520 = !DILocation(line: 29, column: 2, scope: !2)
!2521 = !DILocation(line: 29, column: 2, scope: !2505)
!2522 = !DILocalVariable(name: "__dummy", scope: !2523, file: !3, line: 29, type: !125)
!2523 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 29, column: 2)
!2524 = !DILocation(line: 29, column: 2, scope: !2523)
!2525 = !DILocalVariable(name: "__dummy2", scope: !2523, file: !3, line: 29, type: !125)
!2526 = !DILocation(line: 29, column: 2, scope: !2504)
!2527 = !DILocation(line: 29, column: 2, scope: !2503)
!2528 = !DILocation(line: 29, column: 2, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 29, column: 2)
!2530 = !DILocalVariable(name: "__dummy", scope: !2531, file: !3, line: 29, type: !125)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 29, column: 2)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 29, column: 2)
!2533 = !DILocation(line: 29, column: 2, scope: !2531)
!2534 = !DILocalVariable(name: "__dummy2", scope: !2531, file: !3, line: 29, type: !125)
!2535 = !DILocation(line: 29, column: 2, scope: !2532)
!2536 = !DILocation(line: 29, column: 2, scope: !2502)
!2537 = !{i32 -2143412696}
!2538 = !DILocation(line: 29, column: 2, scope: !2501)
!2539 = !DILocation(line: 329, column: 10, scope: !2495, inlinedAt: !2500)
!2540 = !DILocation(line: 329, column: 16, scope: !2495, inlinedAt: !2500)
!2541 = !DILocalVariable(name: "__ret_warn_once", scope: !2542, file: !3, line: 30, type: !6)
!2542 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 30, column: 6)
!2543 = !DILocation(line: 30, column: 6, scope: !2542)
!2544 = !DILocation(line: 30, column: 6, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 30, column: 6)
!2546 = !DILocation(line: 0, scope: !2545)
!2547 = !DILocation(line: 30, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 30, column: 6)
!2549 = !DILocalVariable(name: "__ret_warn_on", scope: !2550, file: !3, line: 30, type: !6)
!2550 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 30, column: 6)
!2551 = !DILocation(line: 30, column: 6, scope: !2550)
!2552 = !DILocation(line: 30, column: 6, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 30, column: 6)
!2554 = !DILocation(line: 30, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 30, column: 6)
!2556 = !DILocation(line: 30, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 30, column: 6)
!2558 = !DILocation(line: 30, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 30, column: 6)
!2560 = !DILocation(line: 30, column: 6, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 30, column: 6)
!2562 = !DILocation(line: 30, column: 6, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 30, column: 6)
!2564 = !{i32 -2143411074, i32 -2143411045, i32 -2143410999, i32 -2143410941, i32 -2143410887, i32 -2143410833, i32 -2143410778, i32 -2143410747}
!2565 = !DILocation(line: 30, column: 6, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 30, column: 6)
!2567 = !{i32 -2143410327, i32 -2143410320, i32 -2143410268, i32 -2143410237, i32 -2143410207}
!2568 = !DILocation(line: 30, column: 6, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 30, column: 6)
!2570 = !DILocation(line: 30, column: 6, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 30, column: 6)
!2572 = !DILocation(line: 30, column: 6, scope: !2488)
!2573 = !DILocation(line: 30, column: 6, scope: !2)
!2574 = !DILocation(line: 32, column: 27, scope: !2487)
!2575 = !DILocation(line: 32, column: 32, scope: !2487)
!2576 = !DILocation(line: 32, column: 38, scope: !2487)
!2577 = !DILocation(line: 32, column: 44, scope: !2487)
!2578 = !DILocalVariable(name: "__dummy", scope: !2579, file: !2481, line: 409, type: !125)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !2481, line: 409, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2480, file: !2481, line: 409, column: 2)
!2581 = !DILocation(line: 409, column: 2, scope: !2579, inlinedAt: !2486)
!2582 = !DILocalVariable(name: "__dummy2", scope: !2579, file: !2481, line: 409, type: !125)
!2583 = !DILocalVariable(name: "__dummy", scope: !2584, file: !2481, line: 409, type: !125)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !2481, line: 409, column: 2)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !2481, line: 409, column: 2)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2481, line: 409, column: 2)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !2481, line: 409, column: 2)
!2588 = !DILocation(line: 409, column: 2, scope: !2584, inlinedAt: !2486)
!2589 = !DILocalVariable(name: "__dummy2", scope: !2584, file: !2481, line: 409, type: !125)
!2590 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !2486)
!2591 = !DILocation(line: 409, column: 2, scope: !2592, inlinedAt: !2486)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !2481, line: 409, column: 2)
!2593 = !{i32 -2145289228}
!2594 = !DILocation(line: 409, column: 2, scope: !2595, inlinedAt: !2486)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !2481, line: 409, column: 2)
!2596 = !DILocation(line: 33, column: 3, scope: !2487)
!2597 = !DILocation(line: 36, column: 23, scope: !2)
!2598 = !DILocation(line: 36, column: 2, scope: !2)
!2599 = !DILocation(line: 36, column: 7, scope: !2)
!2600 = !DILocation(line: 36, column: 13, scope: !2)
!2601 = !DILocation(line: 36, column: 21, scope: !2)
!2602 = !DILocation(line: 37, column: 27, scope: !2)
!2603 = !DILocation(line: 37, column: 32, scope: !2)
!2604 = !DILocation(line: 37, column: 2, scope: !2)
!2605 = !DILocation(line: 39, column: 26, scope: !2)
!2606 = !DILocation(line: 39, column: 31, scope: !2)
!2607 = !DILocation(line: 39, column: 37, scope: !2)
!2608 = !DILocation(line: 39, column: 43, scope: !2)
!2609 = !DILocation(line: 409, column: 2, scope: !2579, inlinedAt: !2492)
!2610 = !DILocation(line: 409, column: 2, scope: !2584, inlinedAt: !2492)
!2611 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !2492)
!2612 = !DILocation(line: 409, column: 2, scope: !2592, inlinedAt: !2492)
!2613 = !DILocation(line: 409, column: 2, scope: !2595, inlinedAt: !2492)
!2614 = !DILocation(line: 40, column: 2, scope: !2)
!2615 = !DILocation(line: 41, column: 1, scope: !2)
!2616 = distinct !DISubprogram(name: "dev_pm_clear_wake_irq", scope: !3, file: !3, line: 87, type: !1544, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2617 = !DILocation(line: 407, column: 64, scope: !2480, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 98, column: 2, scope: !2616)
!2619 = !DILocation(line: 407, column: 84, scope: !2480, inlinedAt: !2618)
!2620 = !DILocation(line: 327, column: 67, scope: !2495, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 95, column: 2, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 95, column: 2)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 95, column: 2)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 95, column: 2)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 95, column: 2)
!2626 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 95, column: 2)
!2627 = !DILocalVariable(name: "dev", arg: 1, scope: !2616, file: !3, line: 87, type: !7)
!2628 = !DILocation(line: 87, column: 43, scope: !2616)
!2629 = !DILocalVariable(name: "wirq", scope: !2616, file: !3, line: 89, type: !1709)
!2630 = !DILocation(line: 89, column: 19, scope: !2616)
!2631 = !DILocation(line: 89, column: 26, scope: !2616)
!2632 = !DILocation(line: 89, column: 31, scope: !2616)
!2633 = !DILocation(line: 89, column: 37, scope: !2616)
!2634 = !DILocalVariable(name: "flags", scope: !2616, file: !3, line: 90, type: !125)
!2635 = !DILocation(line: 90, column: 16, scope: !2616)
!2636 = !DILocation(line: 92, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 92, column: 6)
!2638 = !DILocation(line: 92, column: 6, scope: !2616)
!2639 = !DILocation(line: 93, column: 3, scope: !2637)
!2640 = !DILocation(line: 95, column: 2, scope: !2616)
!2641 = !DILocation(line: 95, column: 2, scope: !2626)
!2642 = !DILocalVariable(name: "__dummy", scope: !2643, file: !3, line: 95, type: !125)
!2643 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 95, column: 2)
!2644 = !DILocation(line: 95, column: 2, scope: !2643)
!2645 = !DILocalVariable(name: "__dummy2", scope: !2643, file: !3, line: 95, type: !125)
!2646 = !DILocation(line: 95, column: 2, scope: !2625)
!2647 = !DILocation(line: 95, column: 2, scope: !2624)
!2648 = !DILocation(line: 95, column: 2, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 95, column: 2)
!2650 = !DILocalVariable(name: "__dummy", scope: !2651, file: !3, line: 95, type: !125)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 95, column: 2)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 95, column: 2)
!2653 = !DILocation(line: 95, column: 2, scope: !2651)
!2654 = !DILocalVariable(name: "__dummy2", scope: !2651, file: !3, line: 95, type: !125)
!2655 = !DILocation(line: 95, column: 2, scope: !2652)
!2656 = !DILocation(line: 95, column: 2, scope: !2623)
!2657 = !{i32 -2143408847}
!2658 = !DILocation(line: 95, column: 2, scope: !2622)
!2659 = !DILocation(line: 329, column: 10, scope: !2495, inlinedAt: !2621)
!2660 = !DILocation(line: 329, column: 16, scope: !2495, inlinedAt: !2621)
!2661 = !DILocation(line: 96, column: 27, scope: !2616)
!2662 = !DILocation(line: 96, column: 2, scope: !2616)
!2663 = !DILocation(line: 97, column: 2, scope: !2616)
!2664 = !DILocation(line: 97, column: 7, scope: !2616)
!2665 = !DILocation(line: 97, column: 13, scope: !2616)
!2666 = !DILocation(line: 97, column: 21, scope: !2616)
!2667 = !DILocation(line: 98, column: 26, scope: !2616)
!2668 = !DILocation(line: 98, column: 31, scope: !2616)
!2669 = !DILocation(line: 98, column: 37, scope: !2616)
!2670 = !DILocation(line: 98, column: 43, scope: !2616)
!2671 = !DILocation(line: 409, column: 2, scope: !2579, inlinedAt: !2618)
!2672 = !DILocation(line: 409, column: 2, scope: !2584, inlinedAt: !2618)
!2673 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !2618)
!2674 = !DILocation(line: 409, column: 2, scope: !2592, inlinedAt: !2618)
!2675 = !DILocation(line: 409, column: 2, scope: !2595, inlinedAt: !2618)
!2676 = !DILocation(line: 100, column: 6, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 100, column: 6)
!2678 = !DILocation(line: 100, column: 12, scope: !2677)
!2679 = !DILocation(line: 100, column: 19, scope: !2677)
!2680 = !DILocation(line: 100, column: 6, scope: !2616)
!2681 = !DILocation(line: 101, column: 12, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 100, column: 51)
!2683 = !DILocation(line: 101, column: 18, scope: !2682)
!2684 = !DILocation(line: 101, column: 23, scope: !2682)
!2685 = !DILocation(line: 101, column: 3, scope: !2682)
!2686 = !DILocation(line: 102, column: 3, scope: !2682)
!2687 = !DILocation(line: 102, column: 9, scope: !2682)
!2688 = !DILocation(line: 102, column: 16, scope: !2682)
!2689 = !DILocation(line: 103, column: 2, scope: !2682)
!2690 = !DILocation(line: 104, column: 8, scope: !2616)
!2691 = !DILocation(line: 104, column: 14, scope: !2616)
!2692 = !DILocation(line: 104, column: 2, scope: !2616)
!2693 = !DILocation(line: 105, column: 8, scope: !2616)
!2694 = !DILocation(line: 105, column: 2, scope: !2616)
!2695 = !DILocation(line: 106, column: 1, scope: !2616)
!2696 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2697, file: !2697, line: 666, type: !2698, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2697 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!125}
!2700 = !DILocalVariable(name: "f", scope: !2696, file: !2697, line: 668, type: !125)
!2701 = !DILocation(line: 668, column: 16, scope: !2696)
!2702 = !DILocation(line: 670, column: 6, scope: !2696)
!2703 = !DILocation(line: 670, column: 4, scope: !2696)
!2704 = !DILocation(line: 671, column: 2, scope: !2696)
!2705 = !DILocation(line: 672, column: 9, scope: !2696)
!2706 = !DILocation(line: 672, column: 2, scope: !2696)
!2707 = distinct !DISubprogram(name: "dev_pm_set_dedicated_wake_irq", scope: !3, file: !3, line: 165, type: !2165, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2708 = !DILocalVariable(name: "dev", arg: 1, scope: !2707, file: !3, line: 165, type: !7)
!2709 = !DILocation(line: 165, column: 50, scope: !2707)
!2710 = !DILocalVariable(name: "irq", arg: 2, scope: !2707, file: !3, line: 165, type: !6)
!2711 = !DILocation(line: 165, column: 59, scope: !2707)
!2712 = !DILocalVariable(name: "wirq", scope: !2707, file: !3, line: 167, type: !1709)
!2713 = !DILocation(line: 167, column: 19, scope: !2707)
!2714 = !DILocalVariable(name: "err", scope: !2707, file: !3, line: 168, type: !6)
!2715 = !DILocation(line: 168, column: 6, scope: !2707)
!2716 = !DILocation(line: 170, column: 6, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 170, column: 6)
!2718 = !DILocation(line: 170, column: 10, scope: !2717)
!2719 = !DILocation(line: 170, column: 6, scope: !2707)
!2720 = !DILocation(line: 171, column: 3, scope: !2717)
!2721 = !DILocation(line: 173, column: 9, scope: !2707)
!2722 = !DILocation(line: 173, column: 7, scope: !2707)
!2723 = !DILocation(line: 174, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 174, column: 6)
!2725 = !DILocation(line: 174, column: 6, scope: !2707)
!2726 = !DILocation(line: 175, column: 3, scope: !2724)
!2727 = !DILocation(line: 177, column: 59, scope: !2707)
!2728 = !DILocation(line: 177, column: 50, scope: !2707)
!2729 = !DILocation(line: 177, column: 15, scope: !2707)
!2730 = !DILocation(line: 177, column: 2, scope: !2707)
!2731 = !DILocation(line: 177, column: 8, scope: !2707)
!2732 = !DILocation(line: 177, column: 13, scope: !2707)
!2733 = !DILocation(line: 178, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 178, column: 6)
!2735 = !DILocation(line: 178, column: 13, scope: !2734)
!2736 = !DILocation(line: 178, column: 6, scope: !2707)
!2737 = !DILocation(line: 179, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 178, column: 19)
!2739 = !DILocation(line: 180, column: 3, scope: !2738)
!2740 = !DILocation(line: 183, column: 14, scope: !2707)
!2741 = !DILocation(line: 183, column: 2, scope: !2707)
!2742 = !DILocation(line: 183, column: 8, scope: !2707)
!2743 = !DILocation(line: 183, column: 12, scope: !2707)
!2744 = !DILocation(line: 184, column: 14, scope: !2707)
!2745 = !DILocation(line: 184, column: 2, scope: !2707)
!2746 = !DILocation(line: 184, column: 8, scope: !2707)
!2747 = !DILocation(line: 184, column: 12, scope: !2707)
!2748 = !DILocation(line: 185, column: 23, scope: !2707)
!2749 = !DILocation(line: 185, column: 2, scope: !2707)
!2750 = !DILocation(line: 188, column: 23, scope: !2707)
!2751 = !DILocation(line: 188, column: 2, scope: !2707)
!2752 = !DILocation(line: 194, column: 29, scope: !2707)
!2753 = !DILocation(line: 195, column: 22, scope: !2707)
!2754 = !DILocation(line: 195, column: 28, scope: !2707)
!2755 = !DILocation(line: 195, column: 34, scope: !2707)
!2756 = !DILocation(line: 194, column: 8, scope: !2707)
!2757 = !DILocation(line: 194, column: 6, scope: !2707)
!2758 = !DILocation(line: 196, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 196, column: 6)
!2760 = !DILocation(line: 196, column: 6, scope: !2707)
!2761 = !DILocation(line: 197, column: 3, scope: !2759)
!2762 = !DILocation(line: 199, column: 31, scope: !2707)
!2763 = !DILocation(line: 199, column: 36, scope: !2707)
!2764 = !DILocation(line: 199, column: 41, scope: !2707)
!2765 = !DILocation(line: 199, column: 8, scope: !2707)
!2766 = !DILocation(line: 199, column: 6, scope: !2707)
!2767 = !DILocation(line: 200, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 200, column: 6)
!2769 = !DILocation(line: 200, column: 6, scope: !2707)
!2770 = !DILocation(line: 201, column: 3, scope: !2768)
!2771 = !DILocation(line: 203, column: 2, scope: !2707)
!2772 = !DILocation(line: 203, column: 8, scope: !2707)
!2773 = !DILocation(line: 203, column: 15, scope: !2707)
!2774 = !DILocation(line: 205, column: 9, scope: !2707)
!2775 = !DILocation(line: 205, column: 2, scope: !2707)
!2776 = !DILabel(scope: !2707, name: "err_free_irq", file: !3, line: 207)
!2777 = !DILocation(line: 207, column: 1, scope: !2707)
!2778 = !DILocation(line: 208, column: 11, scope: !2707)
!2779 = !DILocation(line: 208, column: 16, scope: !2707)
!2780 = !DILocation(line: 208, column: 2, scope: !2707)
!2781 = !DILabel(scope: !2707, name: "err_free_name", file: !3, line: 209)
!2782 = !DILocation(line: 209, column: 1, scope: !2707)
!2783 = !DILocation(line: 210, column: 8, scope: !2707)
!2784 = !DILocation(line: 210, column: 14, scope: !2707)
!2785 = !DILocation(line: 210, column: 2, scope: !2707)
!2786 = !DILabel(scope: !2707, name: "err_free", file: !3, line: 211)
!2787 = !DILocation(line: 211, column: 1, scope: !2707)
!2788 = !DILocation(line: 212, column: 8, scope: !2707)
!2789 = !DILocation(line: 212, column: 2, scope: !2707)
!2790 = !DILocation(line: 214, column: 9, scope: !2707)
!2791 = !DILocation(line: 214, column: 2, scope: !2707)
!2792 = !DILocation(line: 215, column: 1, scope: !2707)
!2793 = distinct !DISubprogram(name: "dev_name", scope: !9, file: !9, line: 609, type: !2794, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!16, !1966}
!2796 = !DILocalVariable(name: "dev", arg: 1, scope: !2793, file: !9, line: 609, type: !1966)
!2797 = !DILocation(line: 609, column: 57, scope: !2793)
!2798 = !DILocation(line: 612, column: 6, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2793, file: !9, line: 612, column: 6)
!2800 = !DILocation(line: 612, column: 11, scope: !2799)
!2801 = !DILocation(line: 612, column: 6, scope: !2793)
!2802 = !DILocation(line: 613, column: 10, scope: !2799)
!2803 = !DILocation(line: 613, column: 15, scope: !2799)
!2804 = !DILocation(line: 613, column: 3, scope: !2799)
!2805 = !DILocation(line: 615, column: 23, scope: !2793)
!2806 = !DILocation(line: 615, column: 28, scope: !2793)
!2807 = !DILocation(line: 615, column: 9, scope: !2793)
!2808 = !DILocation(line: 615, column: 2, scope: !2793)
!2809 = !DILocation(line: 616, column: 1, scope: !2793)
!2810 = distinct !DISubprogram(name: "irq_set_status_flags", scope: !2080, file: !2080, line: 756, type: !2811, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !335, !125}
!2813 = !DILocalVariable(name: "irq", arg: 1, scope: !2810, file: !2080, line: 756, type: !335)
!2814 = !DILocation(line: 756, column: 54, scope: !2810)
!2815 = !DILocalVariable(name: "set", arg: 2, scope: !2810, file: !2080, line: 756, type: !125)
!2816 = !DILocation(line: 756, column: 73, scope: !2810)
!2817 = !DILocation(line: 758, column: 20, scope: !2810)
!2818 = !DILocation(line: 758, column: 28, scope: !2810)
!2819 = !DILocation(line: 758, column: 2, scope: !2810)
!2820 = !DILocation(line: 759, column: 1, scope: !2810)
!2821 = distinct !DISubprogram(name: "handle_threaded_wake_irq", scope: !3, file: !3, line: 127, type: !2822, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!2824, !6, !149}
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !2118, line: 17, baseType: !2117)
!2825 = !DILocalVariable(name: "irq", arg: 1, scope: !2821, file: !3, line: 127, type: !6)
!2826 = !DILocation(line: 127, column: 49, scope: !2821)
!2827 = !DILocalVariable(name: "_wirq", arg: 2, scope: !2821, file: !3, line: 127, type: !149)
!2828 = !DILocation(line: 127, column: 60, scope: !2821)
!2829 = !DILocalVariable(name: "wirq", scope: !2821, file: !3, line: 129, type: !1709)
!2830 = !DILocation(line: 129, column: 19, scope: !2821)
!2831 = !DILocation(line: 129, column: 26, scope: !2821)
!2832 = !DILocalVariable(name: "res", scope: !2821, file: !3, line: 130, type: !6)
!2833 = !DILocation(line: 130, column: 6, scope: !2821)
!2834 = !DILocation(line: 133, column: 42, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 133, column: 6)
!2836 = !DILocation(line: 133, column: 25, scope: !2835)
!2837 = !DILocation(line: 133, column: 6, scope: !2835)
!2838 = !DILocation(line: 133, column: 6, scope: !2821)
!2839 = !DILocation(line: 134, column: 19, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 133, column: 49)
!2841 = !DILocation(line: 134, column: 25, scope: !2840)
!2842 = !DILocation(line: 134, column: 3, scope: !2840)
!2843 = !DILocation(line: 136, column: 3, scope: !2840)
!2844 = !DILocation(line: 140, column: 26, scope: !2821)
!2845 = !DILocation(line: 140, column: 32, scope: !2821)
!2846 = !DILocation(line: 140, column: 8, scope: !2821)
!2847 = !DILocation(line: 140, column: 6, scope: !2821)
!2848 = !DILocation(line: 141, column: 6, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 141, column: 6)
!2850 = !DILocation(line: 141, column: 10, scope: !2849)
!2851 = !DILocation(line: 141, column: 6, scope: !2821)
!2852 = !DILocation(line: 142, column: 3, scope: !2849)
!2853 = !DILocation(line: 145, column: 2, scope: !2821)
!2854 = !DILocation(line: 146, column: 1, scope: !2821)
!2855 = distinct !DISubprogram(name: "dev_pm_enable_wake_irq", scope: !3, file: !3, line: 230, type: !1544, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2856 = !DILocalVariable(name: "dev", arg: 1, scope: !2855, file: !3, line: 230, type: !7)
!2857 = !DILocation(line: 230, column: 44, scope: !2855)
!2858 = !DILocalVariable(name: "wirq", scope: !2855, file: !3, line: 232, type: !1709)
!2859 = !DILocation(line: 232, column: 19, scope: !2855)
!2860 = !DILocation(line: 232, column: 26, scope: !2855)
!2861 = !DILocation(line: 232, column: 31, scope: !2855)
!2862 = !DILocation(line: 232, column: 37, scope: !2855)
!2863 = !DILocation(line: 234, column: 6, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 234, column: 6)
!2865 = !DILocation(line: 234, column: 11, scope: !2864)
!2866 = !DILocation(line: 234, column: 15, scope: !2864)
!2867 = !DILocation(line: 234, column: 21, scope: !2864)
!2868 = !DILocation(line: 234, column: 28, scope: !2864)
!2869 = !DILocation(line: 234, column: 6, scope: !2855)
!2870 = !DILocation(line: 235, column: 14, scope: !2864)
!2871 = !DILocation(line: 235, column: 20, scope: !2864)
!2872 = !DILocation(line: 235, column: 3, scope: !2864)
!2873 = !DILocation(line: 236, column: 1, scope: !2855)
!2874 = distinct !DISubprogram(name: "dev_pm_disable_wake_irq", scope: !3, file: !3, line: 247, type: !1544, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2875 = !DILocalVariable(name: "dev", arg: 1, scope: !2874, file: !3, line: 247, type: !7)
!2876 = !DILocation(line: 247, column: 45, scope: !2874)
!2877 = !DILocalVariable(name: "wirq", scope: !2874, file: !3, line: 249, type: !1709)
!2878 = !DILocation(line: 249, column: 19, scope: !2874)
!2879 = !DILocation(line: 249, column: 26, scope: !2874)
!2880 = !DILocation(line: 249, column: 31, scope: !2874)
!2881 = !DILocation(line: 249, column: 37, scope: !2874)
!2882 = !DILocation(line: 251, column: 6, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 251, column: 6)
!2884 = !DILocation(line: 251, column: 11, scope: !2883)
!2885 = !DILocation(line: 251, column: 15, scope: !2883)
!2886 = !DILocation(line: 251, column: 21, scope: !2883)
!2887 = !DILocation(line: 251, column: 28, scope: !2883)
!2888 = !DILocation(line: 251, column: 6, scope: !2874)
!2889 = !DILocation(line: 252, column: 22, scope: !2883)
!2890 = !DILocation(line: 252, column: 28, scope: !2883)
!2891 = !DILocation(line: 252, column: 3, scope: !2883)
!2892 = !DILocation(line: 253, column: 1, scope: !2874)
!2893 = distinct !DISubprogram(name: "dev_pm_enable_wake_irq_check", scope: !3, file: !3, line: 270, type: !1902, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2894 = !DILocalVariable(name: "dev", arg: 1, scope: !2893, file: !3, line: 270, type: !7)
!2895 = !DILocation(line: 270, column: 50, scope: !2893)
!2896 = !DILocalVariable(name: "can_change_status", arg: 2, scope: !2893, file: !3, line: 271, type: !915)
!2897 = !DILocation(line: 271, column: 12, scope: !2893)
!2898 = !DILocalVariable(name: "wirq", scope: !2893, file: !3, line: 273, type: !1709)
!2899 = !DILocation(line: 273, column: 19, scope: !2893)
!2900 = !DILocation(line: 273, column: 26, scope: !2893)
!2901 = !DILocation(line: 273, column: 31, scope: !2893)
!2902 = !DILocation(line: 273, column: 37, scope: !2893)
!2903 = !DILocation(line: 275, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 275, column: 6)
!2905 = !DILocation(line: 275, column: 12, scope: !2904)
!2906 = !DILocation(line: 275, column: 17, scope: !2904)
!2907 = !DILocation(line: 275, column: 23, scope: !2904)
!2908 = !DILocation(line: 275, column: 30, scope: !2904)
!2909 = !DILocation(line: 275, column: 6, scope: !2893)
!2910 = !DILocation(line: 276, column: 3, scope: !2904)
!2911 = !DILocation(line: 278, column: 6, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 278, column: 6)
!2913 = !DILocation(line: 278, column: 6, scope: !2893)
!2914 = !DILocation(line: 279, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 278, column: 57)
!2916 = !DILocation(line: 280, column: 13, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 280, column: 13)
!2918 = !DILocation(line: 280, column: 13, scope: !2912)
!2919 = !DILocation(line: 281, column: 3, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 280, column: 32)
!2921 = !DILocation(line: 281, column: 9, scope: !2920)
!2922 = !DILocation(line: 281, column: 16, scope: !2920)
!2923 = !DILocation(line: 282, column: 3, scope: !2920)
!2924 = !DILocation(line: 285, column: 2, scope: !2893)
!2925 = !DILabel(scope: !2893, name: "enable", file: !3, line: 287)
!2926 = !DILocation(line: 287, column: 1, scope: !2893)
!2927 = !DILocation(line: 288, column: 13, scope: !2893)
!2928 = !DILocation(line: 288, column: 19, scope: !2893)
!2929 = !DILocation(line: 288, column: 2, scope: !2893)
!2930 = !DILocation(line: 289, column: 1, scope: !2893)
!2931 = distinct !DISubprogram(name: "dev_pm_disable_wake_irq_check", scope: !3, file: !3, line: 298, type: !1544, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2932 = !DILocalVariable(name: "dev", arg: 1, scope: !2931, file: !3, line: 298, type: !7)
!2933 = !DILocation(line: 298, column: 51, scope: !2931)
!2934 = !DILocalVariable(name: "wirq", scope: !2931, file: !3, line: 300, type: !1709)
!2935 = !DILocation(line: 300, column: 19, scope: !2931)
!2936 = !DILocation(line: 300, column: 26, scope: !2931)
!2937 = !DILocation(line: 300, column: 31, scope: !2931)
!2938 = !DILocation(line: 300, column: 37, scope: !2931)
!2939 = !DILocation(line: 302, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 302, column: 6)
!2941 = !DILocation(line: 302, column: 12, scope: !2940)
!2942 = !DILocation(line: 302, column: 17, scope: !2940)
!2943 = !DILocation(line: 302, column: 23, scope: !2940)
!2944 = !DILocation(line: 302, column: 30, scope: !2940)
!2945 = !DILocation(line: 302, column: 6, scope: !2931)
!2946 = !DILocation(line: 303, column: 3, scope: !2940)
!2947 = !DILocation(line: 305, column: 6, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 305, column: 6)
!2949 = !DILocation(line: 305, column: 12, scope: !2948)
!2950 = !DILocation(line: 305, column: 19, scope: !2948)
!2951 = !DILocation(line: 305, column: 6, scope: !2931)
!2952 = !DILocation(line: 306, column: 22, scope: !2948)
!2953 = !DILocation(line: 306, column: 28, scope: !2948)
!2954 = !DILocation(line: 306, column: 3, scope: !2948)
!2955 = !DILocation(line: 307, column: 1, scope: !2931)
!2956 = distinct !DISubprogram(name: "dev_pm_arm_wake_irq", scope: !3, file: !3, line: 316, type: !2957, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !1709}
!2959 = !DILocalVariable(name: "wirq", arg: 1, scope: !2956, file: !3, line: 316, type: !1709)
!2960 = !DILocation(line: 316, column: 43, scope: !2956)
!2961 = !DILocation(line: 318, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 318, column: 6)
!2963 = !DILocation(line: 318, column: 6, scope: !2956)
!2964 = !DILocation(line: 319, column: 3, scope: !2962)
!2965 = !DILocation(line: 321, column: 24, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 321, column: 6)
!2967 = !DILocation(line: 321, column: 30, scope: !2966)
!2968 = !DILocation(line: 321, column: 6, scope: !2966)
!2969 = !DILocation(line: 321, column: 6, scope: !2956)
!2970 = !DILocation(line: 322, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 322, column: 7)
!2972 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 321, column: 36)
!2973 = !DILocation(line: 322, column: 13, scope: !2971)
!2974 = !DILocation(line: 322, column: 20, scope: !2971)
!2975 = !DILocation(line: 322, column: 51, scope: !2971)
!2976 = !DILocation(line: 323, column: 36, scope: !2971)
!2977 = !DILocation(line: 323, column: 42, scope: !2971)
!2978 = !DILocation(line: 323, column: 8, scope: !2971)
!2979 = !DILocation(line: 322, column: 7, scope: !2972)
!2980 = !DILocation(line: 324, column: 15, scope: !2971)
!2981 = !DILocation(line: 324, column: 21, scope: !2971)
!2982 = !DILocation(line: 324, column: 4, scope: !2971)
!2983 = !DILocation(line: 326, column: 19, scope: !2972)
!2984 = !DILocation(line: 326, column: 25, scope: !2972)
!2985 = !DILocation(line: 326, column: 3, scope: !2972)
!2986 = !DILocation(line: 327, column: 2, scope: !2972)
!2987 = !DILocation(line: 328, column: 1, scope: !2956)
!2988 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1702, file: !1702, line: 82, type: !2989, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!915, !7}
!2991 = !DILocalVariable(name: "dev", arg: 1, scope: !2988, file: !1702, line: 82, type: !7)
!2992 = !DILocation(line: 82, column: 53, scope: !2988)
!2993 = !DILocation(line: 84, column: 9, scope: !2988)
!2994 = !DILocation(line: 84, column: 14, scope: !2988)
!2995 = !DILocation(line: 84, column: 20, scope: !2988)
!2996 = !DILocation(line: 84, column: 31, scope: !2988)
!2997 = !DILocation(line: 84, column: 36, scope: !2988)
!2998 = !DILocation(line: 84, column: 41, scope: !2988)
!2999 = !DILocation(line: 84, column: 47, scope: !2988)
!3000 = !DILocation(line: 84, column: 35, scope: !2988)
!3001 = !DILocation(line: 84, column: 34, scope: !2988)
!3002 = !DILocation(line: 0, scope: !2988)
!3003 = !DILocation(line: 84, column: 2, scope: !2988)
!3004 = distinct !DISubprogram(name: "pm_runtime_status_suspended", scope: !3005, file: !3005, line: 155, type: !2989, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3005 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!3006 = !DILocalVariable(name: "dev", arg: 1, scope: !3004, file: !3005, line: 155, type: !7)
!3007 = !DILocation(line: 155, column: 63, scope: !3004)
!3008 = !DILocation(line: 157, column: 9, scope: !3004)
!3009 = !DILocation(line: 157, column: 14, scope: !3004)
!3010 = !DILocation(line: 157, column: 20, scope: !3004)
!3011 = !DILocation(line: 157, column: 35, scope: !3004)
!3012 = !DILocation(line: 157, column: 2, scope: !3004)
!3013 = distinct !DISubprogram(name: "enable_irq_wake", scope: !2124, file: !2124, line: 465, type: !3014, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!6, !335}
!3016 = !DILocalVariable(name: "irq", arg: 1, scope: !3013, file: !2124, line: 465, type: !335)
!3017 = !DILocation(line: 465, column: 48, scope: !3013)
!3018 = !DILocation(line: 467, column: 26, scope: !3013)
!3019 = !DILocation(line: 467, column: 9, scope: !3013)
!3020 = !DILocation(line: 467, column: 2, scope: !3013)
!3021 = distinct !DISubprogram(name: "dev_pm_disarm_wake_irq", scope: !3, file: !3, line: 337, type: !2957, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3022 = !DILocalVariable(name: "wirq", arg: 1, scope: !3021, file: !3, line: 337, type: !1709)
!3023 = !DILocation(line: 337, column: 46, scope: !3021)
!3024 = !DILocation(line: 339, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 339, column: 6)
!3026 = !DILocation(line: 339, column: 6, scope: !3021)
!3027 = !DILocation(line: 340, column: 3, scope: !3025)
!3028 = !DILocation(line: 342, column: 24, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 342, column: 6)
!3030 = !DILocation(line: 342, column: 30, scope: !3029)
!3031 = !DILocation(line: 342, column: 6, scope: !3029)
!3032 = !DILocation(line: 342, column: 6, scope: !3021)
!3033 = !DILocation(line: 343, column: 20, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 342, column: 36)
!3035 = !DILocation(line: 343, column: 26, scope: !3034)
!3036 = !DILocation(line: 343, column: 3, scope: !3034)
!3037 = !DILocation(line: 345, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 345, column: 7)
!3039 = !DILocation(line: 345, column: 13, scope: !3038)
!3040 = !DILocation(line: 345, column: 20, scope: !3038)
!3041 = !DILocation(line: 345, column: 51, scope: !3038)
!3042 = !DILocation(line: 346, column: 36, scope: !3038)
!3043 = !DILocation(line: 346, column: 42, scope: !3038)
!3044 = !DILocation(line: 346, column: 8, scope: !3038)
!3045 = !DILocation(line: 345, column: 7, scope: !3034)
!3046 = !DILocation(line: 347, column: 23, scope: !3038)
!3047 = !DILocation(line: 347, column: 29, scope: !3038)
!3048 = !DILocation(line: 347, column: 4, scope: !3038)
!3049 = !DILocation(line: 348, column: 2, scope: !3034)
!3050 = !DILocation(line: 349, column: 1, scope: !3021)
!3051 = distinct !DISubprogram(name: "disable_irq_wake", scope: !2124, file: !2124, line: 470, type: !3014, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3052 = !DILocalVariable(name: "irq", arg: 1, scope: !3051, file: !2124, line: 470, type: !335)
!3053 = !DILocation(line: 470, column: 49, scope: !3051)
!3054 = !DILocation(line: 472, column: 26, scope: !3051)
!3055 = !DILocation(line: 472, column: 9, scope: !3051)
!3056 = !DILocation(line: 472, column: 2, scope: !3051)
!3057 = distinct !DISubprogram(name: "get_order", scope: !3058, file: !3058, line: 29, type: !3059, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3058 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!6, !125}
!3061 = !DILocalVariable(name: "x", arg: 1, scope: !3062, file: !3063, line: 366, type: !197)
!3062 = distinct !DISubprogram(name: "fls64", scope: !3063, file: !3063, line: 366, type: !3064, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3063 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!6, !197}
!3066 = !DILocation(line: 366, column: 40, scope: !3062, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 46, column: 9, scope: !3057)
!3068 = !DILocalVariable(name: "bitpos", scope: !3062, file: !3063, line: 368, type: !6)
!3069 = !DILocation(line: 368, column: 6, scope: !3062, inlinedAt: !3067)
!3070 = !DILocalVariable(name: "size", arg: 1, scope: !3057, file: !3058, line: 29, type: !125)
!3071 = !DILocation(line: 29, column: 63, scope: !3057)
!3072 = !DILocation(line: 31, column: 27, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3057, file: !3058, line: 31, column: 6)
!3074 = !DILocation(line: 31, column: 6, scope: !3073)
!3075 = !DILocation(line: 31, column: 6, scope: !3057)
!3076 = !DILocation(line: 32, column: 8, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3058, line: 32, column: 7)
!3078 = distinct !DILexicalBlock(scope: !3073, file: !3058, line: 31, column: 34)
!3079 = !DILocation(line: 32, column: 7, scope: !3078)
!3080 = !DILocation(line: 33, column: 4, scope: !3077)
!3081 = !DILocation(line: 35, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !3058, line: 35, column: 7)
!3083 = !DILocation(line: 35, column: 12, scope: !3082)
!3084 = !DILocation(line: 35, column: 7, scope: !3078)
!3085 = !DILocation(line: 36, column: 4, scope: !3082)
!3086 = !DILocation(line: 38, column: 10, scope: !3078)
!3087 = !DILocation(line: 38, column: 28, scope: !3078)
!3088 = !DILocation(line: 38, column: 41, scope: !3078)
!3089 = !DILocation(line: 38, column: 3, scope: !3078)
!3090 = !DILocation(line: 41, column: 6, scope: !3057)
!3091 = !DILocation(line: 42, column: 7, scope: !3057)
!3092 = !DILocation(line: 46, column: 15, scope: !3057)
!3093 = !DILocation(line: 374, column: 2, scope: !3062, inlinedAt: !3067)
!3094 = !DILocation(line: 376, column: 14, scope: !3062, inlinedAt: !3067)
!3095 = !{i32 384377}
!3096 = !DILocation(line: 377, column: 9, scope: !3062, inlinedAt: !3067)
!3097 = !DILocation(line: 377, column: 16, scope: !3062, inlinedAt: !3067)
!3098 = !DILocation(line: 46, column: 2, scope: !3057)
!3099 = !DILocation(line: 48, column: 1, scope: !3057)
!3100 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3101, file: !3101, line: 30, type: !3102, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3101 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!6, !195}
!3104 = !DILocation(line: 366, column: 40, scope: !3062, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 32, column: 9, scope: !3100)
!3106 = !DILocation(line: 368, column: 6, scope: !3062, inlinedAt: !3105)
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3100, file: !3101, line: 30, type: !195)
!3108 = !DILocation(line: 30, column: 21, scope: !3100)
!3109 = !DILocation(line: 32, column: 15, scope: !3100)
!3110 = !DILocation(line: 374, column: 2, scope: !3062, inlinedAt: !3105)
!3111 = !DILocation(line: 376, column: 14, scope: !3062, inlinedAt: !3105)
!3112 = !DILocation(line: 377, column: 9, scope: !3062, inlinedAt: !3105)
!3113 = !DILocation(line: 377, column: 16, scope: !3062, inlinedAt: !3105)
!3114 = !DILocation(line: 32, column: 18, scope: !3100)
!3115 = !DILocation(line: 32, column: 2, scope: !3100)
!3116 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3117, file: !3117, line: 137, type: !3118, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3117 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!149, !965, !1046, !122, !1393}
!3120 = !DILocalVariable(name: "s", arg: 1, scope: !3116, file: !3117, line: 137, type: !965)
!3121 = !DILocation(line: 137, column: 54, scope: !3116)
!3122 = !DILocalVariable(name: "object", arg: 2, scope: !3116, file: !3117, line: 137, type: !1046)
!3123 = !DILocation(line: 137, column: 69, scope: !3116)
!3124 = !DILocalVariable(name: "size", arg: 3, scope: !3116, file: !3117, line: 138, type: !122)
!3125 = !DILocation(line: 138, column: 12, scope: !3116)
!3126 = !DILocalVariable(name: "flags", arg: 4, scope: !3116, file: !3117, line: 138, type: !1393)
!3127 = !DILocation(line: 138, column: 24, scope: !3116)
!3128 = !DILocation(line: 140, column: 17, scope: !3116)
!3129 = !DILocation(line: 140, column: 2, scope: !3116)
!3130 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2697, file: !2697, line: 646, type: !2698, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3131 = !DILocalVariable(name: "__ret", scope: !3132, file: !2697, line: 648, type: !125)
!3132 = distinct !DILexicalBlock(scope: !3130, file: !2697, line: 648, column: 9)
!3133 = !DILocation(line: 648, column: 9, scope: !3132)
!3134 = !DILocalVariable(name: "__edi", scope: !3132, file: !2697, line: 648, type: !125)
!3135 = !DILocalVariable(name: "__esi", scope: !3132, file: !2697, line: 648, type: !125)
!3136 = !DILocalVariable(name: "__edx", scope: !3132, file: !2697, line: 648, type: !125)
!3137 = !DILocalVariable(name: "__ecx", scope: !3132, file: !2697, line: 648, type: !125)
!3138 = !DILocalVariable(name: "__eax", scope: !3132, file: !2697, line: 648, type: !125)
!3139 = !DILocation(line: 648, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !2697, line: 648, column: 9)
!3141 = distinct !DILexicalBlock(scope: !3132, file: !2697, line: 648, column: 9)
!3142 = !{i32 -2145766071, i32 -2145763756, i32 -2145763522, i32 -2145763471, i32 -2145763443, i32 -2145763418, i32 -2145763734, i32 -2145763721, i32 -2145763283, i32 -2145763164, i32 -2145763629, i32 -2145763602, i32 -2145763574, i32 -2145763544}
!3143 = !DILocalVariable(name: "__mask", scope: !3144, file: !2697, line: 648, type: !125)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !2697, line: 648, column: 9)
!3145 = !DILocation(line: 648, column: 9, scope: !3144)
!3146 = !DILocation(line: 648, column: 9, scope: !3141)
!3147 = !DILocation(line: 648, column: 2, scope: !3130)
!3148 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2697, file: !2697, line: 656, type: !3149, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null}
!3151 = !DILocalVariable(name: "__edi", scope: !3152, file: !2697, line: 658, type: !125)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !2697, line: 658, column: 2)
!3153 = !DILocation(line: 658, column: 2, scope: !3152)
!3154 = !DILocalVariable(name: "__esi", scope: !3152, file: !2697, line: 658, type: !125)
!3155 = !DILocalVariable(name: "__edx", scope: !3152, file: !2697, line: 658, type: !125)
!3156 = !DILocalVariable(name: "__ecx", scope: !3152, file: !2697, line: 658, type: !125)
!3157 = !DILocalVariable(name: "__eax", scope: !3152, file: !2697, line: 658, type: !125)
!3158 = !{i32 -2145758977, i32 -2145758245, i32 -2145758011, i32 -2145757960, i32 -2145757932, i32 -2145757907, i32 -2145758223, i32 -2145758210, i32 -2145757772, i32 -2145757653, i32 -2145758118, i32 -2145758091, i32 -2145758063, i32 -2145758033}
!3159 = !DILocation(line: 659, column: 1, scope: !3148)
!3160 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2697, file: !2697, line: 651, type: !3161, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !125}
!3163 = !DILocalVariable(name: "f", arg: 1, scope: !3160, file: !2697, line: 651, type: !125)
!3164 = !DILocation(line: 651, column: 65, scope: !3160)
!3165 = !DILocalVariable(name: "__edi", scope: !3166, file: !2697, line: 653, type: !125)
!3166 = distinct !DILexicalBlock(scope: !3160, file: !2697, line: 653, column: 2)
!3167 = !DILocation(line: 653, column: 2, scope: !3166)
!3168 = !DILocalVariable(name: "__esi", scope: !3166, file: !2697, line: 653, type: !125)
!3169 = !DILocalVariable(name: "__edx", scope: !3166, file: !2697, line: 653, type: !125)
!3170 = !DILocalVariable(name: "__ecx", scope: !3166, file: !2697, line: 653, type: !125)
!3171 = !DILocalVariable(name: "__eax", scope: !3166, file: !2697, line: 653, type: !125)
!3172 = !{i32 -2145761604, i32 -2145760854, i32 -2145760620, i32 -2145760569, i32 -2145760541, i32 -2145760516, i32 -2145760832, i32 -2145760819, i32 -2145760381, i32 -2145760262, i32 -2145760727, i32 -2145760700, i32 -2145760672, i32 -2145760642}
!3173 = !DILocation(line: 654, column: 1, scope: !3160)
!3174 = distinct !DISubprogram(name: "kobject_name", scope: !13, file: !13, line: 88, type: !3175, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!16, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3179 = !DILocalVariable(name: "kobj", arg: 1, scope: !3174, file: !13, line: 88, type: !3177)
!3180 = !DILocation(line: 88, column: 62, scope: !3174)
!3181 = !DILocation(line: 90, column: 9, scope: !3174)
!3182 = !DILocation(line: 90, column: 15, scope: !3174)
!3183 = !DILocation(line: 90, column: 2, scope: !3174)
!3184 = distinct !DISubprogram(name: "irqd_is_wakeup_set", scope: !2080, file: !2080, line: 332, type: !3185, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!915, !3187}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2080, line: 175, size: 448, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3205, !3286, !3287, !3288}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3188, file: !2080, line: 176, baseType: !333, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3188, file: !2080, line: 177, baseType: !335, size: 32, offset: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3188, file: !2080, line: 178, baseType: !125, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3188, file: !2080, line: 179, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !2080, line: 145, size: 256, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3202}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3195, file: !2080, line: 146, baseType: !335, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3195, file: !2080, line: 150, baseType: !149, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3195, file: !2080, line: 151, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !2080, line: 127, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3195, file: !2080, line: 152, baseType: !3203, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !491, line: 756, baseType: !3204)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 64, elements: !496)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3188, file: !2080, line: 180, baseType: !3206, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !2080, line: 503, size: 2304, elements: !3208)
!3208 = !{!3209, !3210, !3211, !3215, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3232, !3236, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3253, !3254, !3255, !3261, !3262, !3267, !3271, !3275, !3279, !3283, !3284, !3285}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3207, file: !2080, line: 504, baseType: !7, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3207, file: !2080, line: 505, baseType: !16, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3207, file: !2080, line: 506, baseType: !3212, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!335, !3187}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3207, file: !2080, line: 507, baseType: !3216, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3187}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3207, file: !2080, line: 508, baseType: !3216, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3207, file: !2080, line: 509, baseType: !3216, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3207, file: !2080, line: 511, baseType: !3216, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3207, file: !2080, line: 512, baseType: !3216, size: 64, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3207, file: !2080, line: 513, baseType: !3216, size: 64, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3207, file: !2080, line: 514, baseType: !3216, size: 64, offset: 576)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3207, file: !2080, line: 515, baseType: !3216, size: 64, offset: 640)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3207, file: !2080, line: 517, baseType: !3227, size: 64, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!6, !3187, !3230, !915}
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3207, file: !2080, line: 518, baseType: !3233, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!6, !3187}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3207, file: !2080, line: 519, baseType: !3237, size: 64, offset: 832)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!6, !3187, !335}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3207, file: !2080, line: 520, baseType: !3237, size: 64, offset: 896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3207, file: !2080, line: 522, baseType: !3216, size: 64, offset: 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3207, file: !2080, line: 523, baseType: !3216, size: 64, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3207, file: !2080, line: 525, baseType: !3216, size: 64, offset: 1088)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3207, file: !2080, line: 526, baseType: !3216, size: 64, offset: 1152)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3207, file: !2080, line: 528, baseType: !3216, size: 64, offset: 1216)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3207, file: !2080, line: 529, baseType: !3216, size: 64, offset: 1280)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3207, file: !2080, line: 530, baseType: !3216, size: 64, offset: 1344)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3207, file: !2080, line: 532, baseType: !3216, size: 64, offset: 1408)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3207, file: !2080, line: 534, baseType: !3250, size: 64, offset: 1472)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !3187, !1407}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3207, file: !2080, line: 535, baseType: !3233, size: 64, offset: 1536)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3207, file: !2080, line: 536, baseType: !3216, size: 64, offset: 1600)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3207, file: !2080, line: 538, baseType: !3256, size: 64, offset: 1664)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !3187, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !2080, line: 29, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3207, file: !2080, line: 539, baseType: !3256, size: 64, offset: 1728)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3207, file: !2080, line: 541, baseType: !3263, size: 64, offset: 1792)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!6, !3187, !2123, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3207, file: !2080, line: 542, baseType: !3268, size: 64, offset: 1856)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!6, !3187, !2123, !915}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3207, file: !2080, line: 544, baseType: !3272, size: 64, offset: 1920)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!6, !3187, !149}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3207, file: !2080, line: 546, baseType: !3276, size: 64, offset: 1984)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3187, !335}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3207, file: !2080, line: 547, baseType: !3280, size: 64, offset: 2048)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !3187, !3230}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3207, file: !2080, line: 549, baseType: !3233, size: 64, offset: 2112)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3207, file: !2080, line: 550, baseType: !3216, size: 64, offset: 2176)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3207, file: !2080, line: 552, baseType: !125, size: 64, offset: 2240)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3188, file: !2080, line: 181, baseType: !1908, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3188, file: !2080, line: 183, baseType: !3187, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3188, file: !2080, line: 185, baseType: !149, size: 64, offset: 384)
!3289 = !DILocalVariable(name: "d", arg: 1, scope: !3184, file: !2080, line: 332, type: !3187)
!3290 = !DILocation(line: 332, column: 56, scope: !3184)
!3291 = !DILocation(line: 334, column: 9, scope: !3184)
!3292 = !DILocation(line: 334, column: 28, scope: !3184)
!3293 = !DILocation(line: 334, column: 2, scope: !3184)
!3294 = distinct !DISubprogram(name: "pm_wakeup_event", scope: !1702, file: !1702, line: 200, type: !3295, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !7, !335}
!3297 = !DILocalVariable(name: "dev", arg: 1, scope: !3294, file: !1702, line: 200, type: !7)
!3298 = !DILocation(line: 200, column: 51, scope: !3294)
!3299 = !DILocalVariable(name: "msec", arg: 2, scope: !3294, file: !1702, line: 200, type: !335)
!3300 = !DILocation(line: 200, column: 69, scope: !3294)
!3301 = !DILocation(line: 202, column: 29, scope: !3294)
!3302 = !DILocation(line: 202, column: 34, scope: !3294)
!3303 = !DILocation(line: 202, column: 9, scope: !3294)
!3304 = !DILocation(line: 202, column: 2, scope: !3294)
!3305 = distinct !DISubprogram(name: "pm_runtime_resume", scope: !3005, file: !3005, line: 323, type: !1554, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2077, retainedNodes: !48)
!3306 = !DILocalVariable(name: "dev", arg: 1, scope: !3305, file: !3005, line: 323, type: !7)
!3307 = !DILocation(line: 323, column: 52, scope: !3305)
!3308 = !DILocation(line: 325, column: 29, scope: !3305)
!3309 = !DILocation(line: 325, column: 9, scope: !3305)
!3310 = !DILocation(line: 325, column: 2, scope: !3305)
