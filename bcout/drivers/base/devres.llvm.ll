; ModuleID = '../bcout/drivers/base/devres.llvm.bc'
source_filename = "drivers/base/devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.devres = type { %struct.devres_node, [0 x i8] }
%struct.devres_node = type { %struct.list_head, void (%struct.device*, i8*)* }
%struct.devres_group = type { [2 x %struct.devres_node], i8*, i32 }
%struct.action_devres = type { i8*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.pages_devres = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"drivers/base/devres.c\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Pointer doesn't point to dynamically allocated memory.\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Memory chunk not managed or managed by a different device.\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp, i32 %nid) #0 !dbg !2015 {
entry:
  %retval.i = alloca %struct.devres*, align 8
  %release.addr.i = alloca void (%struct.device*, i8*)*, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr.i, metadata !2018, metadata !DIExpression()), !dbg !2022
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2024, metadata !DIExpression()), !dbg !2025
  %gfp.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr.i, metadata !2026, metadata !DIExpression()), !dbg !2027
  %nid.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr.i, metadata !2028, metadata !DIExpression()), !dbg !2029
  %tot_size.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tot_size.i, metadata !2030, metadata !DIExpression()), !dbg !2031
  %dr.i = alloca %struct.devres*, align 8
  call void @llvm.dbg.declare(metadata %struct.devres** %dr.i, metadata !2032, metadata !DIExpression()), !dbg !2033
  %retval = alloca i8*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %dr = alloca %struct.devres*, align 8
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2034, metadata !DIExpression()), !dbg !2035
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2036, metadata !DIExpression()), !dbg !2037
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2042, metadata !DIExpression()), !dbg !2043
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2044
  %1 = load i64, i64* %size.addr, align 8, !dbg !2045
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2046
  %or = or i32 %2, 256, !dbg !2047
  %3 = load i32, i32* %nid.addr, align 4, !dbg !2048
  store void (%struct.device*, i8*)* %0, void (%struct.device*, i8*)** %release.addr.i, align 8
  store i64 %1, i64* %size.addr.i, align 8
  store i32 %or, i32* %gfp.addr.i, align 4
  store i32 %3, i32* %nid.addr.i, align 4
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2049
  %call.i = call zeroext i1 @check_dr_size(i64 %4, i64* %tot_size.i) #10, !dbg !2051
  br i1 %call.i, label %if.end.i, label %if.then.i, !dbg !2052

if.then.i:                                        ; preds = %entry
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !2053
  br label %alloc_dr.exit, !dbg !2053

if.end.i:                                         ; preds = %entry
  %5 = load i64, i64* %tot_size.i, align 8, !dbg !2054
  %6 = load i32, i32* %gfp.addr.i, align 4, !dbg !2054
  %7 = call i8* @llvm.returnaddress(i32 0) #4, !dbg !2054
  %8 = ptrtoint i8* %7 to i64, !dbg !2054
  %call1.i = call i8* @__kmalloc_track_caller(i64 %5, i32 %6, i64 %8) #10, !dbg !2054
  %9 = bitcast i8* %call1.i to %struct.devres*, !dbg !2054
  store %struct.devres* %9, %struct.devres** %dr.i, align 8, !dbg !2055
  %10 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !2056
  %tobool.i = icmp ne %struct.devres* %10, null, !dbg !2056
  %lnot.i = xor i1 %tobool.i, true, !dbg !2056
  %lnot3.i = xor i1 %tobool.i, true, !dbg !2056
  %lnot.ext.i = zext i1 %lnot3.i to i32, !dbg !2056
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !2056
  br i1 %lnot3.i, label %if.then5.i, label %if.end6.i, !dbg !2058

if.then5.i:                                       ; preds = %if.end.i
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !2059
  br label %alloc_dr.exit, !dbg !2059

if.end6.i:                                        ; preds = %if.end.i
  %11 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !2060
  %12 = bitcast %struct.devres* %11 to i8*, !dbg !2061
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false) #4, !dbg !2061
  %13 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !2062
  %node.i = getelementptr inbounds %struct.devres, %struct.devres* %13, i32 0, i32 0, !dbg !2063
  %entry7.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.i, i32 0, i32 0, !dbg !2064
  call void @INIT_LIST_HEAD(%struct.list_head* %entry7.i) #10, !dbg !2065
  %14 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr.i, align 8, !dbg !2066
  %15 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !2067
  %node8.i = getelementptr inbounds %struct.devres, %struct.devres* %15, i32 0, i32 0, !dbg !2068
  %release9.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node8.i, i32 0, i32 1, !dbg !2069
  store void (%struct.device*, i8*)* %14, void (%struct.device*, i8*)** %release9.i, align 8, !dbg !2070
  %16 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !2071
  store %struct.devres* %16, %struct.devres** %retval.i, align 8, !dbg !2072
  br label %alloc_dr.exit, !dbg !2072

alloc_dr.exit:                                    ; preds = %if.then.i, %if.then5.i, %if.end6.i
  %17 = load %struct.devres*, %struct.devres** %retval.i, align 8, !dbg !2073
  store %struct.devres* %17, %struct.devres** %dr, align 8, !dbg !2074
  %18 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2075
  %tobool = icmp ne %struct.devres* %18, null, !dbg !2075
  %lnot = xor i1 %tobool, true, !dbg !2075
  %lnot1 = xor i1 %lnot, true, !dbg !2075
  %lnot2 = xor i1 %lnot1, true, !dbg !2075
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2075
  %conv = sext i32 %lnot.ext to i64, !dbg !2075
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2075
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2077

if.then:                                          ; preds = %alloc_dr.exit
  store i8* null, i8** %retval, align 8, !dbg !2078
  br label %return, !dbg !2078

if.end:                                           ; preds = %alloc_dr.exit
  %19 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2079
  %data = getelementptr inbounds %struct.devres, %struct.devres* %19, i32 0, i32 1, !dbg !2080
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2079
  store i8* %arraydecay, i8** %retval, align 8, !dbg !2081
  br label %return, !dbg !2081

return:                                           ; preds = %if.end, %if.then
  %20 = load i8*, i8** %retval, align 8, !dbg !2082
  ret i8* %20, !dbg !2082
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devres_for_each_res(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data, void (%struct.device*, i8*, i8*)* %fn, i8* %data) #0 !dbg !2083 {
entry:
  %lock.addr.i60 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i60, metadata !2093, metadata !DIExpression()), !dbg !2099
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2102
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2108
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %fn.addr = alloca void (%struct.device*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %node = alloca %struct.devres_node*, align 8
  %tmp = alloca %struct.devres_node*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.devres_node*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.devres_node*, align 8
  %dr = alloca %struct.devres*, align 8
  %__mptr34 = alloca i8*, align 8
  %tmp37 = alloca %struct.devres*, align 8
  %__mptr52 = alloca i8*, align 8
  %tmp57 = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2115, metadata !DIExpression()), !dbg !2116
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2117, metadata !DIExpression()), !dbg !2118
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  store void (%struct.device*, i8*, i8*)* %fn, void (%struct.device*, i8*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*, i8*)** %fn.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2125, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node, metadata !2127, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.declare(metadata %struct.devres_node** %tmp, metadata !2129, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2131, metadata !DIExpression()), !dbg !2132
  %0 = load void (%struct.device*, i8*, i8*)*, void (%struct.device*, i8*, i8*)** %fn.addr, align 8, !dbg !2133
  %tobool = icmp ne void (%struct.device*, i8*, i8*)* %0, null, !dbg !2133
  br i1 %tobool, label %if.end, label %if.then, !dbg !2135

if.then:                                          ; preds = %entry
  br label %return, !dbg !2136

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2137

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2138

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2142, metadata !DIExpression()), !dbg !2141
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2141
  %conv = zext i1 %cmp to i32, !dbg !2141
  store i32 1, i32* %tmp2, align 4, !dbg !2141
  %1 = load i32, i32* %tmp2, align 4, !dbg !2141
  br label %do.body3, !dbg !2143

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !2144

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2145

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2151, metadata !DIExpression()), !dbg !2150
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2150
  %conv9 = zext i1 %cmp8 to i32, !dbg !2150
  store i32 1, i32* %tmp10, align 4, !dbg !2150
  %2 = load i32, i32* %tmp10, align 4, !dbg !2150
  %call = call i64 @arch_local_irq_save() #11, !dbg !2152
  store i64 %call, i64* %flags, align 8, !dbg !2152
  br label %do.end, !dbg !2152

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !2145

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2144

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2153, !srcloc !2154
  br label %do.body13, !dbg !2153

do.body13:                                        ; preds = %do.body12
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2155
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 27, !dbg !2155
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2156
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2157
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2157
  br label %do.end15, !dbg !2155

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2153

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2144

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2143

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2138

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2158, metadata !DIExpression()), !dbg !2161
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2161
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 28, !dbg !2161
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head, i32 0, i32 1, !dbg !2161
  %7 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2161
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2161
  store i8* %8, i8** %__mptr, align 8, !dbg !2161
  br label %do.body20, !dbg !2161

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2162

do.end21:                                         ; preds = %do.body20
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2161
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !2161
  %10 = bitcast i8* %add.ptr to %struct.devres_node*, !dbg !2161
  store %struct.devres_node* %10, %struct.devres_node** %tmp22, align 8, !dbg !2162
  %11 = load %struct.devres_node*, %struct.devres_node** %tmp22, align 8, !dbg !2161
  store %struct.devres_node* %11, %struct.devres_node** %node, align 8, !dbg !2164
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !2165, metadata !DIExpression()), !dbg !2167
  %12 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2167
  %entry24 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %12, i32 0, i32 0, !dbg !2167
  %prev25 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry24, i32 0, i32 1, !dbg !2167
  %13 = load %struct.list_head*, %struct.list_head** %prev25, align 8, !dbg !2167
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !2167
  store i8* %14, i8** %__mptr23, align 8, !dbg !2167
  br label %do.body26, !dbg !2167

do.body26:                                        ; preds = %do.end21
  br label %do.end27, !dbg !2168

do.end27:                                         ; preds = %do.body26
  %15 = load i8*, i8** %__mptr23, align 8, !dbg !2167
  %add.ptr29 = getelementptr i8, i8* %15, i64 0, !dbg !2167
  %16 = bitcast i8* %add.ptr29 to %struct.devres_node*, !dbg !2167
  store %struct.devres_node* %16, %struct.devres_node** %tmp28, align 8, !dbg !2168
  %17 = load %struct.devres_node*, %struct.devres_node** %tmp28, align 8, !dbg !2167
  store %struct.devres_node* %17, %struct.devres_node** %tmp, align 8, !dbg !2164
  br label %for.cond, !dbg !2164

for.cond:                                         ; preds = %do.end56, %do.end27
  %18 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2170
  %entry30 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %18, i32 0, i32 0, !dbg !2170
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2170
  %devres_head31 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 28, !dbg !2170
  %cmp32 = icmp eq %struct.list_head* %entry30, %devres_head31, !dbg !2170
  %lnot = xor i1 %cmp32, true, !dbg !2170
  br i1 %lnot, label %for.body, label %for.end, !dbg !2164

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.declare(metadata i8** %__mptr34, metadata !2175, metadata !DIExpression()), !dbg !2177
  %20 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2177
  %21 = bitcast %struct.devres_node* %20 to i8*, !dbg !2177
  store i8* %21, i8** %__mptr34, align 8, !dbg !2177
  br label %do.body35, !dbg !2177

do.body35:                                        ; preds = %for.body
  br label %do.end36, !dbg !2178

do.end36:                                         ; preds = %do.body35
  %22 = load i8*, i8** %__mptr34, align 8, !dbg !2177
  %add.ptr38 = getelementptr i8, i8* %22, i64 0, !dbg !2177
  %23 = bitcast i8* %add.ptr38 to %struct.devres*, !dbg !2177
  store %struct.devres* %23, %struct.devres** %tmp37, align 8, !dbg !2178
  %24 = load %struct.devres*, %struct.devres** %tmp37, align 8, !dbg !2177
  store %struct.devres* %24, %struct.devres** %dr, align 8, !dbg !2174
  %25 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2180
  %release39 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %25, i32 0, i32 1, !dbg !2182
  %26 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release39, align 8, !dbg !2182
  %27 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2183
  %cmp40 = icmp ne void (%struct.device*, i8*)* %26, %27, !dbg !2184
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !2185

if.then42:                                        ; preds = %do.end36
  br label %for.inc, !dbg !2186

if.end43:                                         ; preds = %do.end36
  %28 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2187
  %tobool44 = icmp ne i32 (%struct.device*, i8*, i8*)* %28, null, !dbg !2187
  br i1 %tobool44, label %land.lhs.true, label %if.end49, !dbg !2189

land.lhs.true:                                    ; preds = %if.end43
  %29 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2190
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2191
  %31 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2192
  %data45 = getelementptr inbounds %struct.devres, %struct.devres* %31, i32 0, i32 1, !dbg !2193
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data45, i64 0, i64 0, !dbg !2192
  %32 = load i8*, i8** %match_data.addr, align 8, !dbg !2194
  %call46 = call i32 %29(%struct.device* %30, i8* %arraydecay, i8* %32) #11, !dbg !2190
  %tobool47 = icmp ne i32 %call46, 0, !dbg !2190
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !2195

if.then48:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2196

if.end49:                                         ; preds = %land.lhs.true, %if.end43
  %33 = load void (%struct.device*, i8*, i8*)*, void (%struct.device*, i8*, i8*)** %fn.addr, align 8, !dbg !2197
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2198
  %35 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2199
  %data50 = getelementptr inbounds %struct.devres, %struct.devres* %35, i32 0, i32 1, !dbg !2200
  %arraydecay51 = getelementptr inbounds [0 x i8], [0 x i8]* %data50, i64 0, i64 0, !dbg !2199
  %36 = load i8*, i8** %data.addr, align 8, !dbg !2201
  call void %33(%struct.device* %34, i8* %arraydecay51, i8* %36) #11, !dbg !2197
  br label %for.inc, !dbg !2202

for.inc:                                          ; preds = %if.end49, %if.then48, %if.then42
  %37 = load %struct.devres_node*, %struct.devres_node** %tmp, align 8, !dbg !2170
  store %struct.devres_node* %37, %struct.devres_node** %node, align 8, !dbg !2170
  call void @llvm.dbg.declare(metadata i8** %__mptr52, metadata !2203, metadata !DIExpression()), !dbg !2205
  %38 = load %struct.devres_node*, %struct.devres_node** %tmp, align 8, !dbg !2205
  %entry53 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %38, i32 0, i32 0, !dbg !2205
  %prev54 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry53, i32 0, i32 1, !dbg !2205
  %39 = load %struct.list_head*, %struct.list_head** %prev54, align 8, !dbg !2205
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !2205
  store i8* %40, i8** %__mptr52, align 8, !dbg !2205
  br label %do.body55, !dbg !2205

do.body55:                                        ; preds = %for.inc
  br label %do.end56, !dbg !2206

do.end56:                                         ; preds = %do.body55
  %41 = load i8*, i8** %__mptr52, align 8, !dbg !2205
  %add.ptr58 = getelementptr i8, i8* %41, i64 0, !dbg !2205
  %42 = bitcast i8* %add.ptr58 to %struct.devres_node*, !dbg !2205
  store %struct.devres_node* %42, %struct.devres_node** %tmp57, align 8, !dbg !2206
  %43 = load %struct.devres_node*, %struct.devres_node** %tmp57, align 8, !dbg !2205
  store %struct.devres_node* %43, %struct.devres_node** %tmp, align 8, !dbg !2170
  br label %for.cond, !dbg !2170, !llvm.loop !2208

for.end:                                          ; preds = %for.cond
  %44 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2210
  %devres_lock59 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 27, !dbg !2211
  %45 = load i64, i64* %flags, align 8, !dbg !2212
  store %struct.spinlock* %devres_lock59, %struct.spinlock** %lock.addr.i60, align 8
  store i64 %45, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2216
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2216
  store i32 1, i32* %tmp.i, align 4, !dbg !2216
  %46 = load i32, i32* %tmp.i, align 4, !dbg !2216
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2223
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2223
  store i32 1, i32* %tmp8.i, align 4, !dbg !2223
  %47 = load i32, i32* %tmp8.i, align 4, !dbg !2223
  %48 = load i64, i64* %flags.addr.i, align 8, !dbg !2225
  call void @arch_local_irq_restore(i64 %48) #10, !dbg !2225
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2226, !srcloc !2228
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i60, align 8, !dbg !2229
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !2229
  %rlock.i61 = bitcast %union.anon* %50 to %struct.raw_spinlock*, !dbg !2229
  br label %return, !dbg !2231

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2232 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2236, metadata !DIExpression()), !dbg !2237
  %call = call i64 @arch_local_save_flags() #11, !dbg !2238
  store i64 %call, i64* %f, align 8, !dbg !2239
  call void @arch_local_irq_disable() #11, !dbg !2240
  %0 = load i64, i64* %f, align 8, !dbg !2241
  ret i64 %0, !dbg !2242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devres_free(i8* %res) #0 !dbg !2243 {
entry:
  %res.addr = alloca i8*, align 8
  %dr = alloca %struct.devres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres*, align 8
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2244, metadata !DIExpression()), !dbg !2245
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2246
  %tobool = icmp ne i8* %0, null, !dbg !2246
  br i1 %tobool, label %if.then, label %if.end17, !dbg !2248

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2252, metadata !DIExpression()), !dbg !2254
  %1 = load i8*, i8** %res.addr, align 8, !dbg !2254
  store i8* %1, i8** %__mptr, align 8, !dbg !2254
  br label %do.body, !dbg !2254

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2255

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2254
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !2254
  %3 = bitcast i8* %add.ptr to %struct.devres*, !dbg !2254
  store %struct.devres* %3, %struct.devres** %tmp, align 8, !dbg !2255
  %4 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !2254
  store %struct.devres* %4, %struct.devres** %dr, align 8, !dbg !2251
  br label %do.body1, !dbg !2257

do.body1:                                         ; preds = %do.end
  %5 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2258
  %node = getelementptr inbounds %struct.devres, %struct.devres* %5, i32 0, i32 0, !dbg !2258
  %entry2 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i32 0, i32 0, !dbg !2258
  %call = call i32 @list_empty(%struct.list_head* %entry2) #11, !dbg !2258
  %tobool3 = icmp ne i32 %call, 0, !dbg !2258
  %lnot = xor i1 %tobool3, true, !dbg !2258
  %lnot4 = xor i1 %lnot, true, !dbg !2258
  %lnot5 = xor i1 %lnot4, true, !dbg !2258
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2258
  %conv = sext i32 %lnot.ext to i64, !dbg !2258
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2258
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !2261

if.then7:                                         ; preds = %do.body1
  br label %do.body8, !dbg !2258

do.body8:                                         ; preds = %if.then7
  br label %do.body9, !dbg !2262

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2264

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !2262

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 230, i32 0, i64 12) #4, !dbg !2266, !srcloc !2268
  br label %do.end12, !dbg !2266

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !2262

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #4, !dbg !2269, !srcloc !2272
  unreachable, !dbg !2273

do.end14:                                         ; No predecessors!
  br label %do.end15, !dbg !2262

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !2262

if.end:                                           ; preds = %do.end15, %do.body1
  br label %do.end16, !dbg !2261

do.end16:                                         ; preds = %if.end
  %6 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2274
  %7 = bitcast %struct.devres* %6 to i8*, !dbg !2274
  call void @kfree(i8* %7) #11, !dbg !2275
  br label %if.end17, !dbg !2276

if.end17:                                         ; preds = %do.end16, %entry
  ret void, !dbg !2277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2278 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2284, metadata !DIExpression()), !dbg !2285
  br label %do.body, !dbg !2286

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2288

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2286
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2286
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2286
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2288
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2286
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2290
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2291
  %conv = zext i1 %cmp to i32, !dbg !2291
  ret i32 %conv, !dbg !2292
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devres_add(%struct.device* %dev, i8* %res) #0 !dbg !2293 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2093, metadata !DIExpression()), !dbg !2294
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2296
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2297
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %dr = alloca %struct.devres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2304, metadata !DIExpression()), !dbg !2305
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2308, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2310, metadata !DIExpression()), !dbg !2312
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2312
  store i8* %0, i8** %__mptr, align 8, !dbg !2312
  br label %do.body, !dbg !2312

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2313

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %__mptr, align 8, !dbg !2312
  %add.ptr = getelementptr i8, i8* %1, i64 -24, !dbg !2312
  %2 = bitcast i8* %add.ptr to %struct.devres*, !dbg !2312
  store %struct.devres* %2, %struct.devres** %tmp, align 8, !dbg !2313
  %3 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !2312
  store %struct.devres* %3, %struct.devres** %dr, align 8, !dbg !2309
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2315, metadata !DIExpression()), !dbg !2316
  br label %do.body1, !dbg !2317

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2318

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2322, metadata !DIExpression()), !dbg !2321
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2321
  %conv = zext i1 %cmp to i32, !dbg !2321
  store i32 1, i32* %tmp3, align 4, !dbg !2321
  %4 = load i32, i32* %tmp3, align 4, !dbg !2321
  br label %do.body4, !dbg !2323

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2324

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2325

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2331, metadata !DIExpression()), !dbg !2330
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2330
  %conv10 = zext i1 %cmp9 to i32, !dbg !2330
  store i32 1, i32* %tmp11, align 4, !dbg !2330
  %5 = load i32, i32* %tmp11, align 4, !dbg !2330
  %call = call i64 @arch_local_irq_save() #11, !dbg !2332
  store i64 %call, i64* %flags, align 8, !dbg !2332
  br label %do.end12, !dbg !2332

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2325

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2324

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2333, !srcloc !2334
  br label %do.body15, !dbg !2333

do.body15:                                        ; preds = %do.body14
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2335
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 27, !dbg !2335
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2336
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !2337
  %rlock.i = bitcast %union.anon* %8 to %struct.raw_spinlock*, !dbg !2337
  br label %do.end17, !dbg !2335

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2333

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2324

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2323

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2318

do.end21:                                         ; preds = %do.end20
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2338
  %10 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2339
  %node = getelementptr inbounds %struct.devres, %struct.devres* %10, i32 0, i32 0, !dbg !2340
  call void @add_dr(%struct.device* %9, %struct.devres_node* %node) #11, !dbg !2341
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2342
  %devres_lock22 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 27, !dbg !2343
  %12 = load i64, i64* %flags, align 8, !dbg !2344
  store %struct.spinlock* %devres_lock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2345
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2345
  store i32 1, i32* %tmp.i, align 4, !dbg !2345
  %13 = load i32, i32* %tmp.i, align 4, !dbg !2345
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2346
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2346
  store i32 1, i32* %tmp8.i, align 4, !dbg !2346
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !2346
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !2347
  call void @arch_local_irq_restore(i64 %15) #10, !dbg !2347
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2348, !srcloc !2228
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2349
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !2349
  %rlock.i24 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !2349
  ret void, !dbg !2350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_dr(%struct.device* %dev, %struct.devres_node* %node) #0 !dbg !2351 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %node.addr = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store %struct.devres_node* %node, %struct.devres_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  br label %do.body, !dbg !2358

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2359

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2361

do.body1:                                         ; preds = %do.end
  %0 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !2362
  %entry2 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %0, i32 0, i32 0, !dbg !2362
  %call = call i32 @list_empty(%struct.list_head* %entry2) #11, !dbg !2362
  %tobool = icmp ne i32 %call, 0, !dbg !2362
  %lnot = xor i1 %tobool, true, !dbg !2362
  %lnot3 = xor i1 %lnot, true, !dbg !2362
  %lnot4 = xor i1 %lnot3, true, !dbg !2362
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2362
  %conv = sext i32 %lnot.ext to i64, !dbg !2362
  %tobool5 = icmp ne i64 %conv, 0, !dbg !2362
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2365

if.then:                                          ; preds = %do.body1
  br label %do.body6, !dbg !2362

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !2366

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !2368

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !2366

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 125, i32 0, i64 12) #4, !dbg !2370, !srcloc !2372
  br label %do.end10, !dbg !2370

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !2366

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #4, !dbg !2373, !srcloc !2376
  unreachable, !dbg !2377

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !2366

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2366

if.end:                                           ; preds = %do.end13, %do.body1
  br label %do.end14, !dbg !2365

do.end14:                                         ; preds = %if.end
  %1 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !2378
  %entry15 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %1, i32 0, i32 0, !dbg !2379
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2380
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 28, !dbg !2381
  call void @list_add_tail(%struct.list_head* %entry15, %struct.list_head* %devres_head) #11, !dbg !2382
  ret void, !dbg !2383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devres_find(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2384 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !2093, metadata !DIExpression()), !dbg !2387
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2389
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2390
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %dr = alloca %struct.devres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2397, metadata !DIExpression()), !dbg !2398
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2407, metadata !DIExpression()), !dbg !2408
  br label %do.body, !dbg !2409

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2410

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2414, metadata !DIExpression()), !dbg !2413
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2413
  %conv = zext i1 %cmp to i32, !dbg !2413
  store i32 1, i32* %tmp, align 4, !dbg !2413
  %0 = load i32, i32* %tmp, align 4, !dbg !2413
  br label %do.body2, !dbg !2415

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2416

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2417

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2423, metadata !DIExpression()), !dbg !2422
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2422
  %conv8 = zext i1 %cmp7 to i32, !dbg !2422
  store i32 1, i32* %tmp9, align 4, !dbg !2422
  %1 = load i32, i32* %tmp9, align 4, !dbg !2422
  %call = call i64 @arch_local_irq_save() #11, !dbg !2424
  store i64 %call, i64* %flags, align 8, !dbg !2424
  br label %do.end, !dbg !2424

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2417

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2416

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2425, !srcloc !2426
  br label %do.body12, !dbg !2425

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2427
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 27, !dbg !2427
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2428
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2429
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2429
  br label %do.end14, !dbg !2427

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2425

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2416

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2415

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2410

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2430
  %6 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2431
  %7 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2432
  %8 = load i8*, i8** %match_data.addr, align 8, !dbg !2433
  %call19 = call %struct.devres* @find_dr(%struct.device* %5, void (%struct.device*, i8*)* %6, i32 (%struct.device*, i8*, i8*)* %7, i8* %8) #11, !dbg !2434
  store %struct.devres* %call19, %struct.devres** %dr, align 8, !dbg !2435
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2436
  %devres_lock20 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 27, !dbg !2437
  %10 = load i64, i64* %flags, align 8, !dbg !2438
  store %struct.spinlock* %devres_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2439
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2439
  store i32 1, i32* %tmp.i, align 4, !dbg !2439
  %11 = load i32, i32* %tmp.i, align 4, !dbg !2439
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2440
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2440
  store i32 1, i32* %tmp8.i, align 4, !dbg !2440
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !2440
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !2441
  call void @arch_local_irq_restore(i64 %13) #10, !dbg !2441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2442, !srcloc !2228
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !2443
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !2443
  %rlock.i22 = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !2443
  %16 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2444
  %tobool = icmp ne %struct.devres* %16, null, !dbg !2444
  br i1 %tobool, label %if.then, label %if.end, !dbg !2446

if.then:                                          ; preds = %do.end18
  %17 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2447
  %data = getelementptr inbounds %struct.devres, %struct.devres* %17, i32 0, i32 1, !dbg !2448
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2447
  store i8* %arraydecay, i8** %retval, align 8, !dbg !2449
  br label %return, !dbg !2449

if.end:                                           ; preds = %do.end18
  store i8* null, i8** %retval, align 8, !dbg !2450
  br label %return, !dbg !2450

return:                                           ; preds = %if.end, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !2451
  ret i8* %18, !dbg !2451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.devres* @find_dr(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2452 {
entry:
  %retval = alloca %struct.devres*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %node = alloca %struct.devres_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres_node*, align 8
  %dr = alloca %struct.devres*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.devres*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2455, metadata !DIExpression()), !dbg !2456
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node, metadata !2463, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2465, metadata !DIExpression()), !dbg !2468
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2468
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 28, !dbg !2468
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head, i32 0, i32 1, !dbg !2468
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2468
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2468
  store i8* %2, i8** %__mptr, align 8, !dbg !2468
  br label %do.body, !dbg !2468

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2469

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2468
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2468
  %4 = bitcast i8* %add.ptr to %struct.devres_node*, !dbg !2468
  store %struct.devres_node* %4, %struct.devres_node** %tmp, align 8, !dbg !2469
  %5 = load %struct.devres_node*, %struct.devres_node** %tmp, align 8, !dbg !2468
  store %struct.devres_node* %5, %struct.devres_node** %node, align 8, !dbg !2471
  br label %for.cond, !dbg !2471

for.cond:                                         ; preds = %do.end17, %do.end
  %6 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2472
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %6, i32 0, i32 0, !dbg !2472
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2472
  %devres_head2 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 28, !dbg !2472
  %cmp = icmp eq %struct.list_head* %entry1, %devres_head2, !dbg !2472
  %lnot = xor i1 %cmp, true, !dbg !2472
  br i1 %lnot, label %for.body, label %for.end, !dbg !2471

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2477, metadata !DIExpression()), !dbg !2479
  %8 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2479
  %9 = bitcast %struct.devres_node* %8 to i8*, !dbg !2479
  store i8* %9, i8** %__mptr3, align 8, !dbg !2479
  br label %do.body4, !dbg !2479

do.body4:                                         ; preds = %for.body
  br label %do.end5, !dbg !2480

do.end5:                                          ; preds = %do.body4
  %10 = load i8*, i8** %__mptr3, align 8, !dbg !2479
  %add.ptr7 = getelementptr i8, i8* %10, i64 0, !dbg !2479
  %11 = bitcast i8* %add.ptr7 to %struct.devres*, !dbg !2479
  store %struct.devres* %11, %struct.devres** %tmp6, align 8, !dbg !2480
  %12 = load %struct.devres*, %struct.devres** %tmp6, align 8, !dbg !2479
  store %struct.devres* %12, %struct.devres** %dr, align 8, !dbg !2476
  %13 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2482
  %release8 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %13, i32 0, i32 1, !dbg !2484
  %14 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release8, align 8, !dbg !2484
  %15 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2485
  %cmp9 = icmp ne void (%struct.device*, i8*)* %14, %15, !dbg !2486
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %do.end5
  br label %for.inc, !dbg !2488

if.end:                                           ; preds = %do.end5
  %16 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2489
  %tobool = icmp ne i32 (%struct.device*, i8*, i8*)* %16, null, !dbg !2489
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !2491

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2492
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2493
  %19 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2494
  %data = getelementptr inbounds %struct.devres, %struct.devres* %19, i32 0, i32 1, !dbg !2495
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2494
  %20 = load i8*, i8** %match_data.addr, align 8, !dbg !2496
  %call = call i32 %17(%struct.device* %18, i8* %arraydecay, i8* %20) #11, !dbg !2492
  %tobool10 = icmp ne i32 %call, 0, !dbg !2492
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2497

if.then11:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2498

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %21 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2499
  store %struct.devres* %21, %struct.devres** %retval, align 8, !dbg !2500
  br label %return, !dbg !2500

for.inc:                                          ; preds = %if.then11, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2501, metadata !DIExpression()), !dbg !2503
  %22 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !2503
  %entry14 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %22, i32 0, i32 0, !dbg !2503
  %prev15 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry14, i32 0, i32 1, !dbg !2503
  %23 = load %struct.list_head*, %struct.list_head** %prev15, align 8, !dbg !2503
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !2503
  store i8* %24, i8** %__mptr13, align 8, !dbg !2503
  br label %do.body16, !dbg !2503

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !2504

do.end17:                                         ; preds = %do.body16
  %25 = load i8*, i8** %__mptr13, align 8, !dbg !2503
  %add.ptr19 = getelementptr i8, i8* %25, i64 0, !dbg !2503
  %26 = bitcast i8* %add.ptr19 to %struct.devres_node*, !dbg !2503
  store %struct.devres_node* %26, %struct.devres_node** %tmp18, align 8, !dbg !2504
  %27 = load %struct.devres_node*, %struct.devres_node** %tmp18, align 8, !dbg !2503
  store %struct.devres_node* %27, %struct.devres_node** %node, align 8, !dbg !2472
  br label %for.cond, !dbg !2472, !llvm.loop !2506

for.end:                                          ; preds = %for.cond
  store %struct.devres* null, %struct.devres** %retval, align 8, !dbg !2508
  br label %return, !dbg !2508

return:                                           ; preds = %for.end, %if.end12
  %28 = load %struct.devres*, %struct.devres** %retval, align 8, !dbg !2509
  ret %struct.devres* %28, !dbg !2509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devres_get(%struct.device* %dev, i8* %new_res, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2510 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !2093, metadata !DIExpression()), !dbg !2513
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2515
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2516
  %dev.addr = alloca %struct.device*, align 8
  %new_res.addr = alloca i8*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %new_dr = alloca %struct.devres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres*, align 8
  %dr = alloca %struct.devres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i8* %new_res, i8** %new_res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %new_res.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata %struct.devres** %new_dr, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2533, metadata !DIExpression()), !dbg !2535
  %0 = load i8*, i8** %new_res.addr, align 8, !dbg !2535
  store i8* %0, i8** %__mptr, align 8, !dbg !2535
  br label %do.body, !dbg !2535

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2536

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %__mptr, align 8, !dbg !2535
  %add.ptr = getelementptr i8, i8* %1, i64 -24, !dbg !2535
  %2 = bitcast i8* %add.ptr to %struct.devres*, !dbg !2535
  store %struct.devres* %2, %struct.devres** %tmp, align 8, !dbg !2536
  %3 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !2535
  store %struct.devres* %3, %struct.devres** %new_dr, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2540, metadata !DIExpression()), !dbg !2541
  br label %do.body1, !dbg !2542

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !2543

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2547, metadata !DIExpression()), !dbg !2546
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2546
  %conv = zext i1 %cmp to i32, !dbg !2546
  store i32 1, i32* %tmp3, align 4, !dbg !2546
  %4 = load i32, i32* %tmp3, align 4, !dbg !2546
  br label %do.body4, !dbg !2548

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !2549

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !2550

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2556, metadata !DIExpression()), !dbg !2555
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !2555
  %conv10 = zext i1 %cmp9 to i32, !dbg !2555
  store i32 1, i32* %tmp11, align 4, !dbg !2555
  %5 = load i32, i32* %tmp11, align 4, !dbg !2555
  %call = call i64 @arch_local_irq_save() #11, !dbg !2557
  store i64 %call, i64* %flags, align 8, !dbg !2557
  br label %do.end12, !dbg !2557

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !2550

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !2549

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2558, !srcloc !2559
  br label %do.body15, !dbg !2558

do.body15:                                        ; preds = %do.body14
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2560
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 27, !dbg !2560
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2561
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !2562
  %rlock.i = bitcast %union.anon* %8 to %struct.raw_spinlock*, !dbg !2562
  br label %do.end17, !dbg !2560

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !2558

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2549

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2548

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2543

do.end21:                                         ; preds = %do.end20
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2563
  %10 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !2564
  %node = getelementptr inbounds %struct.devres, %struct.devres* %10, i32 0, i32 0, !dbg !2565
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i32 0, i32 1, !dbg !2566
  %11 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8, !dbg !2566
  %12 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2567
  %13 = load i8*, i8** %match_data.addr, align 8, !dbg !2568
  %call22 = call %struct.devres* @find_dr(%struct.device* %9, void (%struct.device*, i8*)* %11, i32 (%struct.device*, i8*, i8*)* %12, i8* %13) #11, !dbg !2569
  store %struct.devres* %call22, %struct.devres** %dr, align 8, !dbg !2570
  %14 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2571
  %tobool = icmp ne %struct.devres* %14, null, !dbg !2571
  br i1 %tobool, label %if.end, label %if.then, !dbg !2573

if.then:                                          ; preds = %do.end21
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2574
  %16 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !2576
  %node23 = getelementptr inbounds %struct.devres, %struct.devres* %16, i32 0, i32 0, !dbg !2577
  call void @add_dr(%struct.device* %15, %struct.devres_node* %node23) #11, !dbg !2578
  %17 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !2579
  store %struct.devres* %17, %struct.devres** %dr, align 8, !dbg !2580
  store i8* null, i8** %new_res.addr, align 8, !dbg !2581
  br label %if.end, !dbg !2582

if.end:                                           ; preds = %if.then, %do.end21
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2583
  %devres_lock24 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 27, !dbg !2584
  %19 = load i64, i64* %flags, align 8, !dbg !2585
  store %struct.spinlock* %devres_lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2586
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2586
  store i32 1, i32* %tmp.i, align 4, !dbg !2586
  %20 = load i32, i32* %tmp.i, align 4, !dbg !2586
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2587
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2587
  store i32 1, i32* %tmp8.i, align 4, !dbg !2587
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !2587
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !2588
  call void @arch_local_irq_restore(i64 %22) #10, !dbg !2588
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2589, !srcloc !2228
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !2590
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !2590
  %rlock.i26 = bitcast %union.anon* %24 to %struct.raw_spinlock*, !dbg !2590
  %25 = load i8*, i8** %new_res.addr, align 8, !dbg !2591
  call void @devres_free(i8* %25) #11, !dbg !2592
  %26 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2593
  %data = getelementptr inbounds %struct.devres, %struct.devres* %26, i32 0, i32 1, !dbg !2594
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2593
  ret i8* %arraydecay, !dbg !2595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devres_remove(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2596 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !2093, metadata !DIExpression()), !dbg !2597
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2599
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2600
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %dr = alloca %struct.devres*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2607, metadata !DIExpression()), !dbg !2608
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2617, metadata !DIExpression()), !dbg !2618
  br label %do.body, !dbg !2619

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2620

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2624, metadata !DIExpression()), !dbg !2623
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2623
  %conv = zext i1 %cmp to i32, !dbg !2623
  store i32 1, i32* %tmp, align 4, !dbg !2623
  %0 = load i32, i32* %tmp, align 4, !dbg !2623
  br label %do.body2, !dbg !2625

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2626

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2627

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2633, metadata !DIExpression()), !dbg !2632
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2632
  %conv8 = zext i1 %cmp7 to i32, !dbg !2632
  store i32 1, i32* %tmp9, align 4, !dbg !2632
  %1 = load i32, i32* %tmp9, align 4, !dbg !2632
  %call = call i64 @arch_local_irq_save() #11, !dbg !2634
  store i64 %call, i64* %flags, align 8, !dbg !2634
  br label %do.end, !dbg !2634

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2627

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2626

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2635, !srcloc !2636
  br label %do.body12, !dbg !2635

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2637
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 27, !dbg !2637
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2638
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2639
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2639
  br label %do.end14, !dbg !2637

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2635

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2626

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2625

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2620

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2640
  %6 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2641
  %7 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2642
  %8 = load i8*, i8** %match_data.addr, align 8, !dbg !2643
  %call19 = call %struct.devres* @find_dr(%struct.device* %5, void (%struct.device*, i8*)* %6, i32 (%struct.device*, i8*, i8*)* %7, i8* %8) #11, !dbg !2644
  store %struct.devres* %call19, %struct.devres** %dr, align 8, !dbg !2645
  %9 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2646
  %tobool = icmp ne %struct.devres* %9, null, !dbg !2646
  br i1 %tobool, label %if.then, label %if.end, !dbg !2648

if.then:                                          ; preds = %do.end18
  %10 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2649
  %node = getelementptr inbounds %struct.devres, %struct.devres* %10, i32 0, i32 0, !dbg !2651
  %entry20 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i32 0, i32 0, !dbg !2652
  call void @list_del_init(%struct.list_head* %entry20) #11, !dbg !2653
  br label %do.body21, !dbg !2654

do.body21:                                        ; preds = %if.then
  br label %do.end22, !dbg !2655

do.end22:                                         ; preds = %do.body21
  br label %if.end, !dbg !2657

if.end:                                           ; preds = %do.end22, %do.end18
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2658
  %devres_lock23 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 27, !dbg !2659
  %12 = load i64, i64* %flags, align 8, !dbg !2660
  store %struct.spinlock* %devres_lock23, %struct.spinlock** %lock.addr.i27, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2661
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2661
  store i32 1, i32* %tmp.i, align 4, !dbg !2661
  %13 = load i32, i32* %tmp.i, align 4, !dbg !2661
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2662
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2662
  store i32 1, i32* %tmp8.i, align 4, !dbg !2662
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !2662
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !2663
  call void @arch_local_irq_restore(i64 %15) #10, !dbg !2663
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2664, !srcloc !2228
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !2665
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !2665
  %rlock.i28 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !2665
  %18 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2666
  %tobool24 = icmp ne %struct.devres* %18, null, !dbg !2666
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2668

if.then25:                                        ; preds = %if.end
  %19 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2669
  %data = getelementptr inbounds %struct.devres, %struct.devres* %19, i32 0, i32 1, !dbg !2670
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2669
  store i8* %arraydecay, i8** %retval, align 8, !dbg !2671
  br label %return, !dbg !2671

if.end26:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !2672
  br label %return, !dbg !2672

return:                                           ; preds = %if.end26, %if.then25
  %20 = load i8*, i8** %retval, align 8, !dbg !2673
  ret i8* %20, !dbg !2673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !2674 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2677, metadata !DIExpression()), !dbg !2678
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2679
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !2680
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2681
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #11, !dbg !2682
  ret void, !dbg !2683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devres_destroy(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2684 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2687, metadata !DIExpression()), !dbg !2688
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2689, metadata !DIExpression()), !dbg !2690
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata i8** %res, metadata !2695, metadata !DIExpression()), !dbg !2696
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2697
  %1 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2698
  %2 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2699
  %3 = load i8*, i8** %match_data.addr, align 8, !dbg !2700
  %call = call i8* @devres_remove(%struct.device* %0, void (%struct.device*, i8*)* %1, i32 (%struct.device*, i8*, i8*)* %2, i8* %3) #11, !dbg !2701
  store i8* %call, i8** %res, align 8, !dbg !2702
  %4 = load i8*, i8** %res, align 8, !dbg !2703
  %tobool = icmp ne i8* %4, null, !dbg !2703
  %lnot = xor i1 %tobool, true, !dbg !2703
  %lnot1 = xor i1 %lnot, true, !dbg !2703
  %lnot2 = xor i1 %lnot1, true, !dbg !2703
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2703
  %conv = sext i32 %lnot.ext to i64, !dbg !2703
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2703
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2705

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !2706
  br label %return, !dbg !2706

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %res, align 8, !dbg !2707
  call void @devres_free(i8* %5) #11, !dbg !2708
  store i32 0, i32* %retval, align 4, !dbg !2709
  br label %return, !dbg !2709

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2710
  ret i32 %6, !dbg !2710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devres_release(%struct.device* %dev, void (%struct.device*, i8*)* %release, i32 (%struct.device*, i8*, i8*)* %match, i8* %match_data) #0 !dbg !2711 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*, i8*)*, align 8
  %match_data.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2714, metadata !DIExpression()), !dbg !2715
  store i32 (%struct.device*, i8*, i8*)* %match, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*, i8*)** %match.addr, metadata !2716, metadata !DIExpression()), !dbg !2717
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !2718, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.declare(metadata i8** %res, metadata !2720, metadata !DIExpression()), !dbg !2721
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2722
  %1 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2723
  %2 = load i32 (%struct.device*, i8*, i8*)*, i32 (%struct.device*, i8*, i8*)** %match.addr, align 8, !dbg !2724
  %3 = load i8*, i8** %match_data.addr, align 8, !dbg !2725
  %call = call i8* @devres_remove(%struct.device* %0, void (%struct.device*, i8*)* %1, i32 (%struct.device*, i8*, i8*)* %2, i8* %3) #11, !dbg !2726
  store i8* %call, i8** %res, align 8, !dbg !2727
  %4 = load i8*, i8** %res, align 8, !dbg !2728
  %tobool = icmp ne i8* %4, null, !dbg !2728
  %lnot = xor i1 %tobool, true, !dbg !2728
  %lnot1 = xor i1 %lnot, true, !dbg !2728
  %lnot2 = xor i1 %lnot1, true, !dbg !2728
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2728
  %conv = sext i32 %lnot.ext to i64, !dbg !2728
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2728
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2730

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !2731
  br label %return, !dbg !2731

if.end:                                           ; preds = %entry
  %5 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2732
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2733
  %7 = load i8*, i8** %res, align 8, !dbg !2734
  call void %5(%struct.device* %6, i8* %7) #11, !dbg !2735
  %8 = load i8*, i8** %res, align 8, !dbg !2736
  call void @devres_free(i8* %8) #11, !dbg !2737
  store i32 0, i32* %retval, align 4, !dbg !2738
  br label %return, !dbg !2738

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2739
  ret i32 %9, !dbg !2739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devres_release_all(%struct.device* %dev) #0 !dbg !2740 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2741
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  %__dummy30 = alloca i64, align 8
  %__dummy231 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2752, metadata !DIExpression()), !dbg !2755
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2755
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 28, !dbg !2755
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head, i32 0, i32 0, !dbg !2755
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2755
  %cmp = icmp eq %struct.list_head* %1, null, !dbg !2755
  %lnot = xor i1 %cmp, true, !dbg !2755
  %lnot1 = xor i1 %lnot, true, !dbg !2755
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2755
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2755
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2756
  %tobool = icmp ne i32 %2, 0, !dbg !2756
  %lnot2 = xor i1 %tobool, true, !dbg !2756
  %lnot4 = xor i1 %lnot2, true, !dbg !2756
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2756
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2756
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2756
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2755

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2756

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2758

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2760

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2758

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 542, i32 2305, i64 12) #4, !dbg !2762, !srcloc !2764
  br label %do.end9, !dbg !2762

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 183) #4, !dbg !2765, !srcloc !2767
  br label %do.body10, !dbg !2758

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2768

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2758

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2758

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2755
  %tobool13 = icmp ne i32 %3, 0, !dbg !2755
  %lnot14 = xor i1 %tobool13, true, !dbg !2755
  %lnot16 = xor i1 %lnot14, true, !dbg !2755
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2755
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2755
  store i64 %conv18, i64* %tmp, align 8, !dbg !2756
  %4 = load i64, i64* %tmp, align 8, !dbg !2755
  %tobool19 = icmp ne i64 %4, 0, !dbg !2770
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2771

if.then20:                                        ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2772
  br label %return, !dbg !2772

if.end21:                                         ; preds = %if.end
  br label %do.body22, !dbg !2773

do.body22:                                        ; preds = %if.end21
  br label %do.body23, !dbg !2774

do.body23:                                        ; preds = %do.body22
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2775, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2778, metadata !DIExpression()), !dbg !2777
  %cmp24 = icmp eq i64* %__dummy, %__dummy2, !dbg !2777
  %conv25 = zext i1 %cmp24 to i32, !dbg !2777
  store i32 1, i32* %tmp26, align 4, !dbg !2777
  %5 = load i32, i32* %tmp26, align 4, !dbg !2777
  br label %do.body27, !dbg !2779

do.body27:                                        ; preds = %do.body23
  br label %do.body28, !dbg !2780

do.body28:                                        ; preds = %do.body27
  br label %do.body29, !dbg !2781

do.body29:                                        ; preds = %do.body28
  call void @llvm.dbg.declare(metadata i64* %__dummy30, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.declare(metadata i64* %__dummy231, metadata !2787, metadata !DIExpression()), !dbg !2786
  %cmp32 = icmp eq i64* %__dummy30, %__dummy231, !dbg !2786
  %conv33 = zext i1 %cmp32 to i32, !dbg !2786
  store i32 1, i32* %tmp34, align 4, !dbg !2786
  %6 = load i32, i32* %tmp34, align 4, !dbg !2786
  %call = call i64 @arch_local_irq_save() #11, !dbg !2788
  store i64 %call, i64* %flags, align 8, !dbg !2788
  br label %do.end35, !dbg !2788

do.end35:                                         ; preds = %do.body29
  br label %do.end36, !dbg !2781

do.end36:                                         ; preds = %do.end35
  br label %do.body37, !dbg !2780

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2789, !srcloc !2790
  br label %do.body38, !dbg !2789

do.body38:                                        ; preds = %do.body37
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2791
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 27, !dbg !2791
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2792
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2793
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2793
  br label %do.end40, !dbg !2791

do.end40:                                         ; preds = %do.body38
  br label %do.end41, !dbg !2789

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !2780

do.end42:                                         ; preds = %do.end41
  br label %do.end43, !dbg !2779

do.end43:                                         ; preds = %do.end42
  br label %do.end44, !dbg !2774

do.end44:                                         ; preds = %do.end43
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2794
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2795
  %devres_head45 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 28, !dbg !2796
  %next46 = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head45, i32 0, i32 0, !dbg !2797
  %12 = load %struct.list_head*, %struct.list_head** %next46, align 8, !dbg !2797
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2798
  %devres_head47 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 28, !dbg !2799
  %14 = load i64, i64* %flags, align 8, !dbg !2800
  %call48 = call i32 @release_nodes(%struct.device* %10, %struct.list_head* %12, %struct.list_head* %devres_head47, i64 %14) #11, !dbg !2801
  store i32 %call48, i32* %retval, align 4, !dbg !2802
  br label %return, !dbg !2802

return:                                           ; preds = %do.end44, %if.then20
  %15 = load i32, i32* %retval, align 4, !dbg !2803
  ret i32 %15, !dbg !2803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @release_nodes(%struct.device* %dev, %struct.list_head* %first, %struct.list_head* %end, i64 %flags) #0 !dbg !2804 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2093, metadata !DIExpression()), !dbg !2807
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2809
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %first.addr = alloca %struct.list_head*, align 8
  %end.addr = alloca %struct.list_head*, align 8
  %flags.addr = alloca i64, align 8
  %todo = alloca %struct.list_head, align 8
  %cnt = alloca i32, align 4
  %dr = alloca %struct.devres*, align 8
  %tmp = alloca %struct.devres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.devres*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.devres*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp21 = alloca %struct.devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2810, metadata !DIExpression()), !dbg !2811
  store %struct.list_head* %first, %struct.list_head** %first.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %first.addr, metadata !2812, metadata !DIExpression()), !dbg !2813
  store %struct.list_head* %end, %struct.list_head** %end.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %end.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata %struct.list_head* %todo, metadata !2818, metadata !DIExpression()), !dbg !2819
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i32 0, i32 0, !dbg !2819
  store %struct.list_head* %todo, %struct.list_head** %next, align 8, !dbg !2819
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i32 0, i32 1, !dbg !2819
  store %struct.list_head* %todo, %struct.list_head** %prev, align 8, !dbg !2819
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.declare(metadata %struct.devres** %tmp, metadata !2824, metadata !DIExpression()), !dbg !2825
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2826
  %1 = load %struct.list_head*, %struct.list_head** %first.addr, align 8, !dbg !2827
  %2 = load %struct.list_head*, %struct.list_head** %end.addr, align 8, !dbg !2828
  %call = call i32 @remove_nodes(%struct.device* %0, %struct.list_head* %1, %struct.list_head* %2, %struct.list_head* %todo) #11, !dbg !2829
  store i32 %call, i32* %cnt, align 4, !dbg !2830
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2831
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 27, !dbg !2832
  %4 = load i64, i64* %flags.addr, align 8, !dbg !2833
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  store i64 %4, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !2834
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !2834
  store i32 1, i32* %tmp.i, align 4, !dbg !2834
  %5 = load i32, i32* %tmp.i, align 4, !dbg !2834
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !2835
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !2835
  store i32 1, i32* %tmp8.i, align 4, !dbg !2835
  %6 = load i32, i32* %tmp8.i, align 4, !dbg !2835
  %7 = load i64, i64* %flags.addr.i, align 8, !dbg !2836
  call void @arch_local_irq_restore(i64 %7) #10, !dbg !2836
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2837, !srcloc !2228
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2838
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2838
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2838
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2839, metadata !DIExpression()), !dbg !2842
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %todo, i32 0, i32 1, !dbg !2842
  %10 = load %struct.list_head*, %struct.list_head** %prev1, align 8, !dbg !2842
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !2842
  store i8* %11, i8** %__mptr, align 8, !dbg !2842
  br label %do.body, !dbg !2842

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2843

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !2842
  %add.ptr = getelementptr i8, i8* %12, i64 0, !dbg !2842
  %13 = bitcast i8* %add.ptr to %struct.devres*, !dbg !2842
  store %struct.devres* %13, %struct.devres** %tmp2, align 8, !dbg !2843
  %14 = load %struct.devres*, %struct.devres** %tmp2, align 8, !dbg !2842
  store %struct.devres* %14, %struct.devres** %dr, align 8, !dbg !2845
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2846, metadata !DIExpression()), !dbg !2848
  %15 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2848
  %node = getelementptr inbounds %struct.devres, %struct.devres* %15, i32 0, i32 0, !dbg !2848
  %entry4 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node, i32 0, i32 0, !dbg !2848
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry4, i32 0, i32 1, !dbg !2848
  %16 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !2848
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !2848
  store i8* %17, i8** %__mptr3, align 8, !dbg !2848
  br label %do.body6, !dbg !2848

do.body6:                                         ; preds = %do.end
  br label %do.end7, !dbg !2849

do.end7:                                          ; preds = %do.body6
  %18 = load i8*, i8** %__mptr3, align 8, !dbg !2848
  %add.ptr9 = getelementptr i8, i8* %18, i64 0, !dbg !2848
  %19 = bitcast i8* %add.ptr9 to %struct.devres*, !dbg !2848
  store %struct.devres* %19, %struct.devres** %tmp8, align 8, !dbg !2849
  %20 = load %struct.devres*, %struct.devres** %tmp8, align 8, !dbg !2848
  store %struct.devres* %20, %struct.devres** %tmp, align 8, !dbg !2845
  br label %for.cond, !dbg !2845

for.cond:                                         ; preds = %do.end20, %do.end7
  %21 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2851
  %node10 = getelementptr inbounds %struct.devres, %struct.devres* %21, i32 0, i32 0, !dbg !2851
  %entry11 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node10, i32 0, i32 0, !dbg !2851
  %cmp = icmp eq %struct.list_head* %entry11, %todo, !dbg !2851
  %lnot = xor i1 %cmp, true, !dbg !2851
  br i1 %lnot, label %for.body, label %for.end, !dbg !2845

for.body:                                         ; preds = %for.cond
  br label %do.body12, !dbg !2853

do.body12:                                        ; preds = %for.body
  br label %do.end13, !dbg !2855

do.end13:                                         ; preds = %do.body12
  %22 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2857
  %node14 = getelementptr inbounds %struct.devres, %struct.devres* %22, i32 0, i32 0, !dbg !2858
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node14, i32 0, i32 1, !dbg !2859
  %23 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8, !dbg !2859
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2860
  %25 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2861
  %data = getelementptr inbounds %struct.devres, %struct.devres* %25, i32 0, i32 1, !dbg !2862
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2861
  call void %23(%struct.device* %24, i8* %arraydecay) #11, !dbg !2857
  %26 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !2863
  %27 = bitcast %struct.devres* %26 to i8*, !dbg !2863
  call void @kfree(i8* %27) #11, !dbg !2864
  br label %for.inc, !dbg !2865

for.inc:                                          ; preds = %do.end13
  %28 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !2851
  store %struct.devres* %28, %struct.devres** %dr, align 8, !dbg !2851
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !2866, metadata !DIExpression()), !dbg !2868
  %29 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !2868
  %node16 = getelementptr inbounds %struct.devres, %struct.devres* %29, i32 0, i32 0, !dbg !2868
  %entry17 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node16, i32 0, i32 0, !dbg !2868
  %prev18 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry17, i32 0, i32 1, !dbg !2868
  %30 = load %struct.list_head*, %struct.list_head** %prev18, align 8, !dbg !2868
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !2868
  store i8* %31, i8** %__mptr15, align 8, !dbg !2868
  br label %do.body19, !dbg !2868

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !2869

do.end20:                                         ; preds = %do.body19
  %32 = load i8*, i8** %__mptr15, align 8, !dbg !2868
  %add.ptr22 = getelementptr i8, i8* %32, i64 0, !dbg !2868
  %33 = bitcast i8* %add.ptr22 to %struct.devres*, !dbg !2868
  store %struct.devres* %33, %struct.devres** %tmp21, align 8, !dbg !2869
  %34 = load %struct.devres*, %struct.devres** %tmp21, align 8, !dbg !2868
  store %struct.devres* %34, %struct.devres** %tmp, align 8, !dbg !2851
  br label %for.cond, !dbg !2851, !llvm.loop !2871

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %cnt, align 4, !dbg !2873
  ret i32 %35, !dbg !2874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devres_open_group(%struct.device* %dev, i8* %id, i32 %gfp) #0 !dbg !2875 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !2093, metadata !DIExpression()), !dbg !2878
  %flags.addr.i47 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i47, metadata !2101, metadata !DIExpression()), !dbg !2880
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !2881
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2888, metadata !DIExpression()), !dbg !2892
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2900, metadata !DIExpression()), !dbg !2901
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2902, metadata !DIExpression()), !dbg !2903
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2904, metadata !DIExpression()), !dbg !2905
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2906, metadata !DIExpression()), !dbg !2910
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2912, metadata !DIExpression()), !dbg !2916
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2918, metadata !DIExpression()), !dbg !2922
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2927, metadata !DIExpression()), !dbg !2928
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2929, metadata !DIExpression()), !dbg !2930
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2931, metadata !DIExpression()), !dbg !2932
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2933, metadata !DIExpression()), !dbg !2934
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2935, metadata !DIExpression()), !dbg !2936
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2937, metadata !DIExpression()), !dbg !2938
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2939, metadata !DIExpression()), !dbg !2940
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2941, metadata !DIExpression()), !dbg !2942
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %gfp.addr = alloca i32, align 4
  %grp = alloca %struct.devres_group*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy26 = alloca i64, align 8
  %__dummy227 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2945, metadata !DIExpression()), !dbg !2946
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2951, metadata !DIExpression()), !dbg !2952
  %0 = load i32, i32* %gfp.addr, align 4, !dbg !2953
  store i64 64, i64* %size.addr.i, align 8
  store i32 %0, i32* %flags.addr.i, align 4
  %1 = load i64, i64* %size.addr.i, align 8, !dbg !2954
  %2 = call i1 @llvm.is.constant.i64(i64 %1) #4, !dbg !2955
  br i1 %2, label %if.then.i, label %if.end9.i, !dbg !2956

if.then.i:                                        ; preds = %entry
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !2957
  %cmp.i = icmp ugt i64 %3, 8192, !dbg !2958
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2959

if.then1.i:                                       ; preds = %if.then.i
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2960
  %5 = load i32, i32* %flags.addr.i, align 4, !dbg !2961
  store i64 %4, i64* %size.addr.i.i, align 8
  store i32 %5, i32* %flags.addr.i.i, align 4
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2962
  %call.i.i = call i32 @get_order(i64 %6) #12, !dbg !2963
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2936
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2964
  %8 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2965
  %9 = load i32, i32* %order.i.i, align 4, !dbg !2966
  store i64 %7, i64* %size.addr.i.i.i, align 8
  store i32 %8, i32* %flags.addr.i.i.i, align 4
  store i32 %9, i32* %order.addr.i.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2967
  %11 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2968
  %12 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2969
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %10, i32 %11, i32 %12) #10, !dbg !2970
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2970
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2970
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2970
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !2970
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2971
  br label %kmalloc.exit, !dbg !2971

if.end.i:                                         ; preds = %if.then.i
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !2972
  store i64 %13, i64* %size.addr.i11.i, align 8
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2973
  %tobool.i.i = icmp ne i64 %14, 0, !dbg !2973
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2975

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2976
  br label %kmalloc_index.exit.i, !dbg !2976

if.end.i.i:                                       ; preds = %if.end.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2977
  %cmp.i.i = icmp ule i64 %15, 8, !dbg !2979
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2980

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2981
  br label %kmalloc_index.exit.i, !dbg !2981

if.end2.i.i:                                      ; preds = %if.end.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2982
  %cmp3.i.i = icmp ugt i64 %16, 64, !dbg !2984
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2985

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2986
  %cmp4.i.i = icmp ule i64 %17, 96, !dbg !2987
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2988

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2989
  br label %kmalloc_index.exit.i, !dbg !2989

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2990
  %cmp7.i.i = icmp ugt i64 %18, 128, !dbg !2992
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2993

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2994
  %cmp9.i.i = icmp ule i64 %19, 192, !dbg !2995
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2996

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2997
  br label %kmalloc_index.exit.i, !dbg !2997

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2998
  %cmp12.i.i = icmp ule i64 %20, 8, !dbg !3000
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3001

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3002
  br label %kmalloc_index.exit.i, !dbg !3002

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3003
  %cmp15.i.i = icmp ule i64 %21, 16, !dbg !3005
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3006

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3007
  br label %kmalloc_index.exit.i, !dbg !3007

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3008
  %cmp18.i.i = icmp ule i64 %22, 32, !dbg !3010
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3011

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3012
  br label %kmalloc_index.exit.i, !dbg !3012

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3013
  %cmp21.i.i = icmp ule i64 %23, 64, !dbg !3015
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3016

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3017
  br label %kmalloc_index.exit.i, !dbg !3017

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3018
  %cmp24.i.i = icmp ule i64 %24, 128, !dbg !3020
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3021

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3022
  br label %kmalloc_index.exit.i, !dbg !3022

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp27.i.i = icmp ule i64 %25, 256, !dbg !3025
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3026

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3027
  br label %kmalloc_index.exit.i, !dbg !3027

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %cmp30.i.i = icmp ule i64 %26, 512, !dbg !3030
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3031

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3032
  br label %kmalloc_index.exit.i, !dbg !3032

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3033
  %cmp33.i.i = icmp ule i64 %27, 1024, !dbg !3035
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3036

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp36.i.i = icmp ule i64 %28, 2048, !dbg !3040
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3041

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3042
  br label %kmalloc_index.exit.i, !dbg !3042

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3043
  %cmp39.i.i = icmp ule i64 %29, 4096, !dbg !3045
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3046

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3047
  br label %kmalloc_index.exit.i, !dbg !3047

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3048
  %cmp42.i.i = icmp ule i64 %30, 8192, !dbg !3050
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3051

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp45.i.i = icmp ule i64 %31, 16384, !dbg !3055
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3056

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp48.i.i = icmp ule i64 %32, 32768, !dbg !3060
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3061

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp51.i.i = icmp ule i64 %33, 65536, !dbg !3065
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3066

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp54.i.i = icmp ule i64 %34, 131072, !dbg !3070
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3071

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp57.i.i = icmp ule i64 %35, 262144, !dbg !3075
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3076

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp60.i.i = icmp ule i64 %36, 524288, !dbg !3080
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3081

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp63.i.i = icmp ule i64 %37, 1048576, !dbg !3085
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3086

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp66.i.i = icmp ule i64 %38, 2097152, !dbg !3090
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3091

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3093
  %cmp69.i.i = icmp ule i64 %39, 4194304, !dbg !3095
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3096

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp72.i.i = icmp ule i64 %40, 8388608, !dbg !3100
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3101

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3102
  br label %kmalloc_index.exit.i, !dbg !3102

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3103
  %cmp75.i.i = icmp ule i64 %41, 16777216, !dbg !3105
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3106

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3107
  br label %kmalloc_index.exit.i, !dbg !3107

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3108
  %cmp78.i.i = icmp ule i64 %42, 33554432, !dbg !3110
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3111

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3112
  br label %kmalloc_index.exit.i, !dbg !3112

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3113
  %cmp81.i.i = icmp ule i64 %43, 67108864, !dbg !3115
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3116

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !3118, !srcloc !3121
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #4, !dbg !3122, !srcloc !3125
  unreachable, !dbg !3126

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %44 = load i32, i32* %retval.i.i, align 4, !dbg !3127
  store i32 %44, i32* %index.i, align 4, !dbg !3128
  %45 = load i32, i32* %index.i, align 4, !dbg !3129
  %tobool.i = icmp ne i32 %45, 0, !dbg !3129
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3131

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3132
  br label %kmalloc.exit, !dbg !3132

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %46 = load i32, i32* %flags.addr.i, align 4, !dbg !3133
  store i32 %46, i32* %flags.addr.i13.i, align 4
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3134
  %and.i.i = and i32 %47, 17, !dbg !3134
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3134
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3134
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3134
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3134
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3136

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3137
  br label %kmalloc_type.exit.i, !dbg !3137

if.end.i16.i:                                     ; preds = %if.end4.i
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3138
  %and2.i.i = and i32 %48, 1, !dbg !3139
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3138
  %49 = zext i1 %tobool3.i.i to i64, !dbg !3138
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3138
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3140
  br label %kmalloc_type.exit.i, !dbg !3140

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %50 = load i32, i32* %retval.i12.i, align 4, !dbg !3141
  %idxprom.i = zext i32 %50 to i64, !dbg !3142
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3142
  %51 = load i32, i32* %index.i, align 4, !dbg !3143
  %idxprom6.i = zext i32 %51 to i64, !dbg !3142
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3142
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3142
  %53 = load i32, i32* %flags.addr.i, align 4, !dbg !3144
  %54 = load i64, i64* %size.addr.i, align 8, !dbg !3145
  store %struct.kmem_cache* %52, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %53, i32* %flags.addr.i17.i, align 4
  store i64 %54, i64* %size.addr.i18.i, align 8
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3146
  %56 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3147
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %55, i32 %56) #10, !dbg !3148
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3148
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3148
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3148
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !3148
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2905
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3149
  %58 = load i8*, i8** %ret.i.i, align 8, !dbg !3150
  %59 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3151
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3152
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %57, i8* %58, i64 %59, i32 %60) #10, !dbg !3153
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3154
  %61 = load i8*, i8** %ret.i.i, align 8, !dbg !3155
  store i8* %61, i8** %retval.i, align 8, !dbg !3156
  br label %kmalloc.exit, !dbg !3156

if.end9.i:                                        ; preds = %entry
  %62 = load i64, i64* %size.addr.i, align 8, !dbg !3157
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !3158
  %call10.i = call noalias i8* @__kmalloc(i64 %62, i32 %63) #10, !dbg !3159
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3159
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3159
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3159
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !3159
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3160
  br label %kmalloc.exit, !dbg !3160

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %64 = load i8*, i8** %retval.i, align 8, !dbg !3161
  %65 = bitcast i8* %64 to %struct.devres_group*, !dbg !3162
  store %struct.devres_group* %65, %struct.devres_group** %grp, align 8, !dbg !3163
  %66 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3164
  %tobool = icmp ne %struct.devres_group* %66, null, !dbg !3164
  %lnot = xor i1 %tobool, true, !dbg !3164
  %lnot1 = xor i1 %lnot, true, !dbg !3164
  %lnot2 = xor i1 %lnot1, true, !dbg !3164
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3164
  %conv = sext i32 %lnot.ext to i64, !dbg !3164
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3164
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3166

if.then:                                          ; preds = %kmalloc.exit
  store i8* null, i8** %retval, align 8, !dbg !3167
  br label %return, !dbg !3167

if.end:                                           ; preds = %kmalloc.exit
  %67 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3168
  %node = getelementptr inbounds %struct.devres_group, %struct.devres_group* %67, i32 0, i32 0, !dbg !3169
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node, i64 0, i64 0, !dbg !3168
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx, i32 0, i32 1, !dbg !3170
  store void (%struct.device*, i8*)* @group_open_release, void (%struct.device*, i8*)** %release, align 8, !dbg !3171
  %68 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3172
  %node4 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %68, i32 0, i32 0, !dbg !3173
  %arrayidx5 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node4, i64 0, i64 1, !dbg !3172
  %release6 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx5, i32 0, i32 1, !dbg !3174
  store void (%struct.device*, i8*)* @group_close_release, void (%struct.device*, i8*)** %release6, align 8, !dbg !3175
  %69 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3176
  %node7 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %69, i32 0, i32 0, !dbg !3177
  %arrayidx8 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node7, i64 0, i64 0, !dbg !3176
  %entry9 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx8, i32 0, i32 0, !dbg !3178
  call void @INIT_LIST_HEAD(%struct.list_head* %entry9) #11, !dbg !3179
  %70 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3180
  %node10 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %70, i32 0, i32 0, !dbg !3181
  %arrayidx11 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node10, i64 0, i64 1, !dbg !3180
  %entry12 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx11, i32 0, i32 0, !dbg !3182
  call void @INIT_LIST_HEAD(%struct.list_head* %entry12) #11, !dbg !3183
  br label %do.body, !dbg !3184

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3185

do.end:                                           ; preds = %do.body
  br label %do.body13, !dbg !3187

do.body13:                                        ; preds = %do.end
  br label %do.end14, !dbg !3188

do.end14:                                         ; preds = %do.body13
  %71 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3190
  %72 = bitcast %struct.devres_group* %71 to i8*, !dbg !3190
  %73 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3191
  %id15 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %73, i32 0, i32 1, !dbg !3192
  store i8* %72, i8** %id15, align 8, !dbg !3193
  %74 = load i8*, i8** %id.addr, align 8, !dbg !3194
  %tobool16 = icmp ne i8* %74, null, !dbg !3194
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !3196

if.then17:                                        ; preds = %do.end14
  %75 = load i8*, i8** %id.addr, align 8, !dbg !3197
  %76 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3198
  %id18 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %76, i32 0, i32 1, !dbg !3199
  store i8* %75, i8** %id18, align 8, !dbg !3200
  br label %if.end19, !dbg !3198

if.end19:                                         ; preds = %if.then17, %do.end14
  br label %do.body20, !dbg !3201

do.body20:                                        ; preds = %if.end19
  br label %do.body21, !dbg !3202

do.body21:                                        ; preds = %do.body20
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3206, metadata !DIExpression()), !dbg !3205
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3205
  %conv22 = zext i1 %cmp to i32, !dbg !3205
  store i32 1, i32* %tmp, align 4, !dbg !3205
  %77 = load i32, i32* %tmp, align 4, !dbg !3205
  br label %do.body23, !dbg !3207

do.body23:                                        ; preds = %do.body21
  br label %do.body24, !dbg !3208

do.body24:                                        ; preds = %do.body23
  br label %do.body25, !dbg !3209

do.body25:                                        ; preds = %do.body24
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3211, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i64* %__dummy227, metadata !3215, metadata !DIExpression()), !dbg !3214
  %cmp28 = icmp eq i64* %__dummy26, %__dummy227, !dbg !3214
  %conv29 = zext i1 %cmp28 to i32, !dbg !3214
  store i32 1, i32* %tmp30, align 4, !dbg !3214
  %78 = load i32, i32* %tmp30, align 4, !dbg !3214
  %call31 = call i64 @arch_local_irq_save() #11, !dbg !3216
  store i64 %call31, i64* %flags, align 8, !dbg !3216
  br label %do.end32, !dbg !3216

do.end32:                                         ; preds = %do.body25
  br label %do.end33, !dbg !3209

do.end33:                                         ; preds = %do.end32
  br label %do.body34, !dbg !3208

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3217, !srcloc !3218
  br label %do.body35, !dbg !3217

do.body35:                                        ; preds = %do.body34
  %79 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3219
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 27, !dbg !3219
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %80 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3220
  %81 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %80, i32 0, i32 0, !dbg !3221
  %rlock.i = bitcast %union.anon* %81 to %struct.raw_spinlock*, !dbg !3221
  br label %do.end37, !dbg !3219

do.end37:                                         ; preds = %do.body35
  br label %do.end38, !dbg !3217

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !3208

do.end39:                                         ; preds = %do.end38
  br label %do.end40, !dbg !3207

do.end40:                                         ; preds = %do.end39
  br label %do.end41, !dbg !3202

do.end41:                                         ; preds = %do.end40
  %82 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3222
  %83 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3223
  %node42 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %83, i32 0, i32 0, !dbg !3224
  %arrayidx43 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node42, i64 0, i64 0, !dbg !3223
  call void @add_dr(%struct.device* %82, %struct.devres_node* %arrayidx43) #11, !dbg !3225
  %84 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3226
  %devres_lock44 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 27, !dbg !3227
  %85 = load i64, i64* %flags, align 8, !dbg !3228
  store %struct.spinlock* %devres_lock44, %struct.spinlock** %lock.addr.i46, align 8
  store i64 %85, i64* %flags.addr.i47, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !3229
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !3229
  store i32 1, i32* %tmp.i, align 4, !dbg !3229
  %86 = load i32, i32* %tmp.i, align 4, !dbg !3229
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !3230
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !3230
  store i32 1, i32* %tmp8.i, align 4, !dbg !3230
  %87 = load i32, i32* %tmp8.i, align 4, !dbg !3230
  %88 = load i64, i64* %flags.addr.i47, align 8, !dbg !3231
  call void @arch_local_irq_restore(i64 %88) #10, !dbg !3231
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3232, !srcloc !2228
  %89 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !3233
  %90 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %89, i32 0, i32 0, !dbg !3233
  %rlock.i48 = bitcast %union.anon* %90 to %struct.raw_spinlock*, !dbg !3233
  %91 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3234
  %id45 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %91, i32 0, i32 1, !dbg !3235
  %92 = load i8*, i8** %id45, align 8, !dbg !3235
  store i8* %92, i8** %retval, align 8, !dbg !3236
  br label %return, !dbg !3236

return:                                           ; preds = %do.end41, %if.then
  %93 = load i8*, i8** %retval, align 8, !dbg !3237
  ret i8* %93, !dbg !3237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @group_open_release(%struct.device* %dev, i8* %res) #0 !dbg !3238 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3241, metadata !DIExpression()), !dbg !3242
  ret void, !dbg !3243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @group_close_release(%struct.device* %dev, i8* %res) #0 !dbg !3244 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  ret void, !dbg !3249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3250 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  br label %do.body, !dbg !3253

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3254

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3256

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3254

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3258
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3258
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3258
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3258
  br label %do.end3, !dbg !3258

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3254

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3260
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3261
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3262
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3263
  ret void, !dbg !3264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devres_close_group(%struct.device* %dev, i8* %id) #0 !dbg !3265 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !2093, metadata !DIExpression()), !dbg !3266
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !3268
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !3269
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %grp = alloca %struct.devres_group*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3282, metadata !DIExpression()), !dbg !3283
  br label %do.body, !dbg !3284

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3285

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3286, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3289, metadata !DIExpression()), !dbg !3288
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3288
  %conv = zext i1 %cmp to i32, !dbg !3288
  store i32 1, i32* %tmp, align 4, !dbg !3288
  %0 = load i32, i32* %tmp, align 4, !dbg !3288
  br label %do.body2, !dbg !3290

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3291

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3292

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3294, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3298, metadata !DIExpression()), !dbg !3297
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3297
  %conv8 = zext i1 %cmp7 to i32, !dbg !3297
  store i32 1, i32* %tmp9, align 4, !dbg !3297
  %1 = load i32, i32* %tmp9, align 4, !dbg !3297
  %call = call i64 @arch_local_irq_save() #11, !dbg !3299
  store i64 %call, i64* %flags, align 8, !dbg !3299
  br label %do.end, !dbg !3299

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3292

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3291

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3300, !srcloc !3301
  br label %do.body12, !dbg !3300

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3302
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 27, !dbg !3302
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3303
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3304
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3304
  br label %do.end14, !dbg !3302

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3300

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3291

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3290

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3285

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3305
  %6 = load i8*, i8** %id.addr, align 8, !dbg !3306
  %call19 = call %struct.devres_group* @find_group(%struct.device* %5, i8* %6) #11, !dbg !3307
  store %struct.devres_group* %call19, %struct.devres_group** %grp, align 8, !dbg !3308
  %7 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3309
  %tobool = icmp ne %struct.devres_group* %7, null, !dbg !3309
  br i1 %tobool, label %if.then, label %if.else, !dbg !3311

if.then:                                          ; preds = %do.end18
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3312
  %9 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3313
  %node = getelementptr inbounds %struct.devres_group, %struct.devres_group* %9, i32 0, i32 0, !dbg !3314
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node, i64 0, i64 1, !dbg !3313
  call void @add_dr(%struct.device* %8, %struct.devres_node* %arrayidx) #11, !dbg !3315
  br label %if.end40, !dbg !3315

if.else:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3316, metadata !DIExpression()), !dbg !3318
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3318
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !3319
  %tobool20 = icmp ne i32 %10, 0, !dbg !3319
  %lnot = xor i1 %tobool20, true, !dbg !3319
  %lnot21 = xor i1 %lnot, true, !dbg !3319
  %lnot.ext = zext i1 %lnot21 to i32, !dbg !3319
  %conv22 = sext i32 %lnot.ext to i64, !dbg !3319
  %tobool23 = icmp ne i64 %conv22, 0, !dbg !3319
  br i1 %tobool23, label %if.then24, label %if.end, !dbg !3318

if.then24:                                        ; preds = %if.else
  br label %do.body25, !dbg !3319

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !3321

do.body26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !3323

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !3321

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 630, i32 2305, i64 12) #4, !dbg !3325, !srcloc !3327
  br label %do.end29, !dbg !3325

do.end29:                                         ; preds = %do.body28
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 187) #4, !dbg !3328, !srcloc !3330
  br label %do.body30, !dbg !3321

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !3331

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !3321

do.end32:                                         ; preds = %do.end31
  br label %if.end, !dbg !3321

if.end:                                           ; preds = %do.end32, %if.else
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !3318
  %tobool34 = icmp ne i32 %11, 0, !dbg !3318
  %lnot35 = xor i1 %tobool34, true, !dbg !3318
  %lnot37 = xor i1 %lnot35, true, !dbg !3318
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3318
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3318
  store i64 %conv39, i64* %tmp33, align 8, !dbg !3319
  %12 = load i64, i64* %tmp33, align 8, !dbg !3318
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3333
  %devres_lock41 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 27, !dbg !3334
  %14 = load i64, i64* %flags, align 8, !dbg !3335
  store %struct.spinlock* %devres_lock41, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !3336
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !3336
  store i32 1, i32* %tmp.i, align 4, !dbg !3336
  %15 = load i32, i32* %tmp.i, align 4, !dbg !3336
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !3337
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !3337
  store i32 1, i32* %tmp8.i, align 4, !dbg !3337
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !3337
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !3338
  call void @arch_local_irq_restore(i64 %17) #10, !dbg !3338
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3339, !srcloc !2228
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !3340
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !3340
  %rlock.i43 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !3340
  ret void, !dbg !3341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.devres_group* @find_group(%struct.device* %dev, i8* %id) #0 !dbg !3342 {
entry:
  %retval = alloca %struct.devres_group*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %node = alloca %struct.devres_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres_node*, align 8
  %grp = alloca %struct.devres_group*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp7 = alloca %struct.devres_group*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3345, metadata !DIExpression()), !dbg !3346
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3351, metadata !DIExpression()), !dbg !3354
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3354
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 28, !dbg !3354
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %devres_head, i32 0, i32 1, !dbg !3354
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3354
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3354
  store i8* %2, i8** %__mptr, align 8, !dbg !3354
  br label %do.body, !dbg !3354

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3355

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3354
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3354
  %4 = bitcast i8* %add.ptr to %struct.devres_node*, !dbg !3354
  store %struct.devres_node* %4, %struct.devres_node** %tmp, align 8, !dbg !3355
  %5 = load %struct.devres_node*, %struct.devres_node** %tmp, align 8, !dbg !3354
  store %struct.devres_node* %5, %struct.devres_node** %node, align 8, !dbg !3357
  br label %for.cond, !dbg !3357

for.cond:                                         ; preds = %do.end24, %do.end
  %6 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !3358
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %6, i32 0, i32 0, !dbg !3358
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3358
  %devres_head2 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 28, !dbg !3358
  %cmp = icmp eq %struct.list_head* %entry1, %devres_head2, !dbg !3358
  %lnot = xor i1 %cmp, true, !dbg !3358
  br i1 %lnot, label %for.body, label %for.end, !dbg !3357

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !3360, metadata !DIExpression()), !dbg !3362
  %8 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !3363
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %8, i32 0, i32 1, !dbg !3365
  %9 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8, !dbg !3365
  %cmp3 = icmp ne void (%struct.device*, i8*)* %9, @group_open_release, !dbg !3366
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3367

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3368

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !3369, metadata !DIExpression()), !dbg !3371
  %10 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !3371
  %11 = bitcast %struct.devres_node* %10 to i8*, !dbg !3371
  store i8* %11, i8** %__mptr4, align 8, !dbg !3371
  br label %do.body5, !dbg !3371

do.body5:                                         ; preds = %if.end
  br label %do.end6, !dbg !3372

do.end6:                                          ; preds = %do.body5
  %12 = load i8*, i8** %__mptr4, align 8, !dbg !3371
  %add.ptr8 = getelementptr i8, i8* %12, i64 0, !dbg !3371
  %13 = bitcast i8* %add.ptr8 to %struct.devres_group*, !dbg !3371
  store %struct.devres_group* %13, %struct.devres_group** %tmp7, align 8, !dbg !3372
  %14 = load %struct.devres_group*, %struct.devres_group** %tmp7, align 8, !dbg !3371
  store %struct.devres_group* %14, %struct.devres_group** %grp, align 8, !dbg !3374
  %15 = load i8*, i8** %id.addr, align 8, !dbg !3375
  %tobool = icmp ne i8* %15, null, !dbg !3375
  br i1 %tobool, label %if.then9, label %if.else, !dbg !3377

if.then9:                                         ; preds = %do.end6
  %16 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3378
  %id10 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %16, i32 0, i32 1, !dbg !3381
  %17 = load i8*, i8** %id10, align 8, !dbg !3381
  %18 = load i8*, i8** %id.addr, align 8, !dbg !3382
  %cmp11 = icmp eq i8* %17, %18, !dbg !3383
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3384

if.then12:                                        ; preds = %if.then9
  %19 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3385
  store %struct.devres_group* %19, %struct.devres_group** %retval, align 8, !dbg !3386
  br label %return, !dbg !3386

if.end13:                                         ; preds = %if.then9
  br label %if.end19, !dbg !3387

if.else:                                          ; preds = %do.end6
  %20 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3388
  %node14 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %20, i32 0, i32 0, !dbg !3390
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node14, i64 0, i64 1, !dbg !3388
  %entry15 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx, i32 0, i32 0, !dbg !3391
  %call = call i32 @list_empty(%struct.list_head* %entry15) #11, !dbg !3392
  %tobool16 = icmp ne i32 %call, 0, !dbg !3392
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3393

if.then17:                                        ; preds = %if.else
  %21 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3394
  store %struct.devres_group* %21, %struct.devres_group** %retval, align 8, !dbg !3395
  br label %return, !dbg !3395

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  br label %for.inc, !dbg !3396

for.inc:                                          ; preds = %if.end19, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !3397, metadata !DIExpression()), !dbg !3399
  %22 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !3399
  %entry21 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %22, i32 0, i32 0, !dbg !3399
  %prev22 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry21, i32 0, i32 1, !dbg !3399
  %23 = load %struct.list_head*, %struct.list_head** %prev22, align 8, !dbg !3399
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !3399
  store i8* %24, i8** %__mptr20, align 8, !dbg !3399
  br label %do.body23, !dbg !3399

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !3400

do.end24:                                         ; preds = %do.body23
  %25 = load i8*, i8** %__mptr20, align 8, !dbg !3399
  %add.ptr26 = getelementptr i8, i8* %25, i64 0, !dbg !3399
  %26 = bitcast i8* %add.ptr26 to %struct.devres_node*, !dbg !3399
  store %struct.devres_node* %26, %struct.devres_node** %tmp25, align 8, !dbg !3400
  %27 = load %struct.devres_node*, %struct.devres_node** %tmp25, align 8, !dbg !3399
  store %struct.devres_node* %27, %struct.devres_node** %node, align 8, !dbg !3358
  br label %for.cond, !dbg !3358, !llvm.loop !3402

for.end:                                          ; preds = %for.cond
  store %struct.devres_group* null, %struct.devres_group** %retval, align 8, !dbg !3404
  br label %return, !dbg !3404

return:                                           ; preds = %for.end, %if.then17, %if.then12
  %28 = load %struct.devres_group*, %struct.devres_group** %retval, align 8, !dbg !3405
  ret %struct.devres_group* %28, !dbg !3405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devres_remove_group(%struct.device* %dev, i8* %id) #0 !dbg !3406 {
entry:
  %lock.addr.i48 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i48, metadata !2093, metadata !DIExpression()), !dbg !3407
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !3409
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !3410
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %grp = alloca %struct.devres_group*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp39 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3417, metadata !DIExpression()), !dbg !3418
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !3421, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3423, metadata !DIExpression()), !dbg !3424
  br label %do.body, !dbg !3425

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3426

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3427, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3430, metadata !DIExpression()), !dbg !3429
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3429
  %conv = zext i1 %cmp to i32, !dbg !3429
  store i32 1, i32* %tmp, align 4, !dbg !3429
  %0 = load i32, i32* %tmp, align 4, !dbg !3429
  br label %do.body2, !dbg !3431

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3432

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3433

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3435, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3439, metadata !DIExpression()), !dbg !3438
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3438
  %conv8 = zext i1 %cmp7 to i32, !dbg !3438
  store i32 1, i32* %tmp9, align 4, !dbg !3438
  %1 = load i32, i32* %tmp9, align 4, !dbg !3438
  %call = call i64 @arch_local_irq_save() #11, !dbg !3440
  store i64 %call, i64* %flags, align 8, !dbg !3440
  br label %do.end, !dbg !3440

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3433

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3432

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3441, !srcloc !3442
  br label %do.body12, !dbg !3441

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3443
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 27, !dbg !3443
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3444
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3445
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3445
  br label %do.end14, !dbg !3443

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3441

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3432

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3431

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3426

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3446
  %6 = load i8*, i8** %id.addr, align 8, !dbg !3447
  %call19 = call %struct.devres_group* @find_group(%struct.device* %5, i8* %6) #11, !dbg !3448
  store %struct.devres_group* %call19, %struct.devres_group** %grp, align 8, !dbg !3449
  %7 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3450
  %tobool = icmp ne %struct.devres_group* %7, null, !dbg !3450
  br i1 %tobool, label %if.then, label %if.else, !dbg !3452

if.then:                                          ; preds = %do.end18
  %8 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3453
  %node = getelementptr inbounds %struct.devres_group, %struct.devres_group* %8, i32 0, i32 0, !dbg !3455
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node, i64 0, i64 0, !dbg !3453
  %entry20 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx, i32 0, i32 0, !dbg !3456
  call void @list_del_init(%struct.list_head* %entry20) #11, !dbg !3457
  %9 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3458
  %node21 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %9, i32 0, i32 0, !dbg !3459
  %arrayidx22 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node21, i64 0, i64 1, !dbg !3458
  %entry23 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx22, i32 0, i32 0, !dbg !3460
  call void @list_del_init(%struct.list_head* %entry23) #11, !dbg !3461
  br label %do.body24, !dbg !3462

do.body24:                                        ; preds = %if.then
  br label %do.end25, !dbg !3463

do.end25:                                         ; preds = %do.body24
  br label %if.end46, !dbg !3465

if.else:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3466, metadata !DIExpression()), !dbg !3468
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3468
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !3469
  %tobool26 = icmp ne i32 %10, 0, !dbg !3469
  %lnot = xor i1 %tobool26, true, !dbg !3469
  %lnot27 = xor i1 %lnot, true, !dbg !3469
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !3469
  %conv28 = sext i32 %lnot.ext to i64, !dbg !3469
  %tobool29 = icmp ne i64 %conv28, 0, !dbg !3469
  br i1 %tobool29, label %if.then30, label %if.end, !dbg !3468

if.then30:                                        ; preds = %if.else
  br label %do.body31, !dbg !3469

do.body31:                                        ; preds = %if.then30
  br label %do.body32, !dbg !3471

do.body32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !3473

do.end33:                                         ; preds = %do.body32
  br label %do.body34, !dbg !3471

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 658, i32 2305, i64 12) #4, !dbg !3475, !srcloc !3477
  br label %do.end35, !dbg !3475

do.end35:                                         ; preds = %do.body34
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 188) #4, !dbg !3478, !srcloc !3480
  br label %do.body36, !dbg !3471

do.body36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !3481

do.end37:                                         ; preds = %do.body36
  br label %do.end38, !dbg !3471

do.end38:                                         ; preds = %do.end37
  br label %if.end, !dbg !3471

if.end:                                           ; preds = %do.end38, %if.else
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !3468
  %tobool40 = icmp ne i32 %11, 0, !dbg !3468
  %lnot41 = xor i1 %tobool40, true, !dbg !3468
  %lnot43 = xor i1 %lnot41, true, !dbg !3468
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !3468
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !3468
  store i64 %conv45, i64* %tmp39, align 8, !dbg !3469
  %12 = load i64, i64* %tmp39, align 8, !dbg !3468
  br label %if.end46

if.end46:                                         ; preds = %if.end, %do.end25
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3483
  %devres_lock47 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 27, !dbg !3484
  %14 = load i64, i64* %flags, align 8, !dbg !3485
  store %struct.spinlock* %devres_lock47, %struct.spinlock** %lock.addr.i48, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !3486
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !3486
  store i32 1, i32* %tmp.i, align 4, !dbg !3486
  %15 = load i32, i32* %tmp.i, align 4, !dbg !3486
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !3487
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !3487
  store i32 1, i32* %tmp8.i, align 4, !dbg !3487
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !3487
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !3488
  call void @arch_local_irq_restore(i64 %17) #10, !dbg !3488
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3489, !srcloc !2228
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i48, align 8, !dbg !3490
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !3490
  %rlock.i49 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !3490
  %20 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3491
  %21 = bitcast %struct.devres_group* %20 to i8*, !dbg !3491
  call void @kfree(i8* %21) #11, !dbg !3492
  ret void, !dbg !3493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devres_release_group(%struct.device* %dev, i8* %id) #0 !dbg !3494 {
entry:
  %lock.addr.i54 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i54, metadata !2093, metadata !DIExpression()), !dbg !3497
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !3501
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !3502
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %grp = alloca %struct.devres_group*, align 8
  %flags = alloca i64, align 8
  %cnt = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %first = alloca %struct.list_head*, align 8
  %end = alloca %struct.list_head*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !3517, metadata !DIExpression()), !dbg !3518
  store i32 0, i32* %cnt, align 4, !dbg !3518
  br label %do.body, !dbg !3519

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3520

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3524, metadata !DIExpression()), !dbg !3523
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3523
  %conv = zext i1 %cmp to i32, !dbg !3523
  store i32 1, i32* %tmp, align 4, !dbg !3523
  %0 = load i32, i32* %tmp, align 4, !dbg !3523
  br label %do.body2, !dbg !3525

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3526

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3527

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3533, metadata !DIExpression()), !dbg !3532
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3532
  %conv8 = zext i1 %cmp7 to i32, !dbg !3532
  store i32 1, i32* %tmp9, align 4, !dbg !3532
  %1 = load i32, i32* %tmp9, align 4, !dbg !3532
  %call = call i64 @arch_local_irq_save() #11, !dbg !3534
  store i64 %call, i64* %flags, align 8, !dbg !3534
  br label %do.end, !dbg !3534

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3527

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3526

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3535, !srcloc !3536
  br label %do.body12, !dbg !3535

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3537
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 27, !dbg !3537
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3538
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3539
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3539
  br label %do.end14, !dbg !3537

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3535

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3526

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3525

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3520

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3540
  %6 = load i8*, i8** %id.addr, align 8, !dbg !3541
  %call19 = call %struct.devres_group* @find_group(%struct.device* %5, i8* %6) #11, !dbg !3542
  store %struct.devres_group* %call19, %struct.devres_group** %grp, align 8, !dbg !3543
  %7 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3544
  %tobool = icmp ne %struct.devres_group* %7, null, !dbg !3544
  br i1 %tobool, label %if.then, label %if.else, !dbg !3545

if.then:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !3546, metadata !DIExpression()), !dbg !3548
  %8 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3549
  %node = getelementptr inbounds %struct.devres_group, %struct.devres_group* %8, i32 0, i32 0, !dbg !3550
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node, i64 0, i64 0, !dbg !3549
  %entry20 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx, i32 0, i32 0, !dbg !3551
  store %struct.list_head* %entry20, %struct.list_head** %first, align 8, !dbg !3548
  call void @llvm.dbg.declare(metadata %struct.list_head** %end, metadata !3552, metadata !DIExpression()), !dbg !3553
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3554
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 28, !dbg !3555
  store %struct.list_head* %devres_head, %struct.list_head** %end, align 8, !dbg !3553
  %10 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3556
  %node21 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %10, i32 0, i32 0, !dbg !3558
  %arrayidx22 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node21, i64 0, i64 1, !dbg !3556
  %entry23 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx22, i32 0, i32 0, !dbg !3559
  %call24 = call i32 @list_empty(%struct.list_head* %entry23) #11, !dbg !3560
  %tobool25 = icmp ne i32 %call24, 0, !dbg !3560
  br i1 %tobool25, label %if.end, label %if.then26, !dbg !3561

if.then26:                                        ; preds = %if.then
  %11 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !3562
  %node27 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %11, i32 0, i32 0, !dbg !3563
  %arrayidx28 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node27, i64 0, i64 1, !dbg !3562
  %entry29 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx28, i32 0, i32 0, !dbg !3564
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry29, i32 0, i32 0, !dbg !3565
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3565
  store %struct.list_head* %12, %struct.list_head** %end, align 8, !dbg !3566
  br label %if.end, !dbg !3567

if.end:                                           ; preds = %if.then26, %if.then
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3568
  %14 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !3569
  %15 = load %struct.list_head*, %struct.list_head** %end, align 8, !dbg !3570
  %16 = load i64, i64* %flags, align 8, !dbg !3571
  %call30 = call i32 @release_nodes(%struct.device* %13, %struct.list_head* %14, %struct.list_head* %15, i64 %16) #11, !dbg !3572
  store i32 %call30, i32* %cnt, align 4, !dbg !3573
  br label %if.end53, !dbg !3574

if.else:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3575, metadata !DIExpression()), !dbg !3577
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3577
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !3578
  %tobool31 = icmp ne i32 %17, 0, !dbg !3578
  %lnot = xor i1 %tobool31, true, !dbg !3578
  %lnot32 = xor i1 %lnot, true, !dbg !3578
  %lnot.ext = zext i1 %lnot32 to i32, !dbg !3578
  %conv33 = sext i32 %lnot.ext to i64, !dbg !3578
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !3578
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !3577

if.then35:                                        ; preds = %if.else
  br label %do.body36, !dbg !3578

do.body36:                                        ; preds = %if.then35
  br label %do.body37, !dbg !3580

do.body37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !3582

do.end38:                                         ; preds = %do.body37
  br label %do.body39, !dbg !3580

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 696, i32 2305, i64 12) #4, !dbg !3584, !srcloc !3586
  br label %do.end40, !dbg !3584

do.end40:                                         ; preds = %do.body39
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 189) #4, !dbg !3587, !srcloc !3589
  br label %do.body41, !dbg !3580

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !3590

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !3580

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !3580

if.end44:                                         ; preds = %do.end43, %if.else
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !3577
  %tobool46 = icmp ne i32 %18, 0, !dbg !3577
  %lnot47 = xor i1 %tobool46, true, !dbg !3577
  %lnot49 = xor i1 %lnot47, true, !dbg !3577
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !3577
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !3577
  store i64 %conv51, i64* %tmp45, align 8, !dbg !3578
  %19 = load i64, i64* %tmp45, align 8, !dbg !3577
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3592
  %devres_lock52 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 27, !dbg !3593
  %21 = load i64, i64* %flags, align 8, !dbg !3594
  store %struct.spinlock* %devres_lock52, %struct.spinlock** %lock.addr.i54, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !3595
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !3595
  store i32 1, i32* %tmp.i, align 4, !dbg !3595
  %22 = load i32, i32* %tmp.i, align 4, !dbg !3595
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !3596
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !3596
  store i32 1, i32* %tmp8.i, align 4, !dbg !3596
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !3596
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !3597
  call void @arch_local_irq_restore(i64 %24) #10, !dbg !3597
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3598, !srcloc !2228
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i54, align 8, !dbg !3599
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !3599
  %rlock.i55 = bitcast %union.anon* %26 to %struct.raw_spinlock*, !dbg !3599
  br label %if.end53

if.end53:                                         ; preds = %if.end44, %if.end
  %27 = load i32, i32* %cnt, align 4, !dbg !3600
  ret i32 %27, !dbg !3601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_add_action(%struct.device* %dev, void (i8*)* %action, i8* %data) #0 !dbg !3602 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %devres = alloca %struct.action_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3605, metadata !DIExpression()), !dbg !3606
  store void (i8*)* %action, void (i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %action.addr, metadata !3607, metadata !DIExpression()), !dbg !3608
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.declare(metadata %struct.action_devres** %devres, metadata !3611, metadata !DIExpression()), !dbg !3617
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_action_release, i64 16, i32 3264) #11, !dbg !3618
  %0 = bitcast i8* %call to %struct.action_devres*, !dbg !3618
  store %struct.action_devres* %0, %struct.action_devres** %devres, align 8, !dbg !3619
  %1 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3620
  %tobool = icmp ne %struct.action_devres* %1, null, !dbg !3620
  br i1 %tobool, label %if.end, label %if.then, !dbg !3622

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3623
  br label %return, !dbg !3623

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !3624
  %3 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3625
  %data1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %3, i32 0, i32 0, !dbg !3626
  store i8* %2, i8** %data1, align 8, !dbg !3627
  %4 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !3628
  %5 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3629
  %action2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %5, i32 0, i32 1, !dbg !3630
  store void (i8*)* %4, void (i8*)** %action2, align 8, !dbg !3631
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3632
  %7 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3633
  %8 = bitcast %struct.action_devres* %7 to i8*, !dbg !3633
  call void @devres_add(%struct.device* %6, i8* %8) #11, !dbg !3634
  store i32 0, i32* %retval, align 4, !dbg !3635
  br label %return, !dbg !3635

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3636
  ret i32 %9, !dbg !3636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !3637 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !3640, metadata !DIExpression()), !dbg !3641
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3642, metadata !DIExpression()), !dbg !3643
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3644, metadata !DIExpression()), !dbg !3645
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !3646
  %1 = load i64, i64* %size.addr, align 8, !dbg !3647
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3648
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #11, !dbg !3649
  ret i8* %call, !dbg !3650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_action_release(%struct.device* %dev, i8* %res) #0 !dbg !3651 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %devres = alloca %struct.action_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.declare(metadata %struct.action_devres** %devres, metadata !3656, metadata !DIExpression()), !dbg !3657
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3658
  %1 = bitcast i8* %0 to %struct.action_devres*, !dbg !3658
  store %struct.action_devres* %1, %struct.action_devres** %devres, align 8, !dbg !3657
  %2 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3659
  %action = getelementptr inbounds %struct.action_devres, %struct.action_devres* %2, i32 0, i32 1, !dbg !3660
  %3 = load void (i8*)*, void (i8*)** %action, align 8, !dbg !3660
  %4 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3661
  %data = getelementptr inbounds %struct.action_devres, %struct.action_devres* %4, i32 0, i32 0, !dbg !3662
  %5 = load i8*, i8** %data, align 8, !dbg !3662
  call void %3(i8* %5) #11, !dbg !3659
  ret void, !dbg !3663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_remove_action(%struct.device* %dev, void (i8*)* %action, i8* %data) #0 !dbg !3664 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %devres = alloca %struct.action_devres, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  store void (i8*)* %action, void (i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %action.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.declare(metadata %struct.action_devres* %devres, metadata !3673, metadata !DIExpression()), !dbg !3674
  %data1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i32 0, i32 0, !dbg !3675
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3676
  store i8* %0, i8** %data1, align 8, !dbg !3675
  %action2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i32 0, i32 1, !dbg !3675
  %1 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !3677
  store void (i8*)* %1, void (i8*)** %action2, align 8, !dbg !3675
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3678, metadata !DIExpression()), !dbg !3680
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3680
  %3 = bitcast %struct.action_devres* %devres to i8*, !dbg !3680
  %call = call i32 @devres_destroy(%struct.device* %2, void (%struct.device*, i8*)* @devm_action_release, i32 (%struct.device*, i8*, i8*)* @devm_action_match, i8* %3) #11, !dbg !3680
  %tobool = icmp ne i32 %call, 0, !dbg !3680
  %lnot = xor i1 %tobool, true, !dbg !3680
  %lnot3 = xor i1 %lnot, true, !dbg !3680
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3680
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3680
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3681
  %tobool4 = icmp ne i32 %4, 0, !dbg !3681
  %lnot5 = xor i1 %tobool4, true, !dbg !3681
  %lnot7 = xor i1 %lnot5, true, !dbg !3681
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3681
  %conv = sext i32 %lnot.ext8 to i64, !dbg !3681
  %tobool9 = icmp ne i64 %conv, 0, !dbg !3681
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3680

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3681

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !3683

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !3685

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !3683

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 773, i32 2305, i64 12) #4, !dbg !3687, !srcloc !3689
  br label %do.end12, !dbg !3687

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 190) #4, !dbg !3690, !srcloc !3692
  br label %do.body13, !dbg !3683

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3693

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3683

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !3683

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !3680
  %tobool16 = icmp ne i32 %5, 0, !dbg !3680
  %lnot17 = xor i1 %tobool16, true, !dbg !3680
  %lnot19 = xor i1 %lnot17, true, !dbg !3680
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3680
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3680
  store i64 %conv21, i64* %tmp, align 8, !dbg !3681
  %6 = load i64, i64* %tmp, align 8, !dbg !3680
  ret void, !dbg !3695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_action_match(%struct.device* %dev, i8* %res, i8* %p) #0 !dbg !3696 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %devres = alloca %struct.action_devres*, align 8
  %target = alloca %struct.action_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3697, metadata !DIExpression()), !dbg !3698
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3699, metadata !DIExpression()), !dbg !3700
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.declare(metadata %struct.action_devres** %devres, metadata !3703, metadata !DIExpression()), !dbg !3704
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3705
  %1 = bitcast i8* %0 to %struct.action_devres*, !dbg !3705
  store %struct.action_devres* %1, %struct.action_devres** %devres, align 8, !dbg !3704
  call void @llvm.dbg.declare(metadata %struct.action_devres** %target, metadata !3706, metadata !DIExpression()), !dbg !3707
  %2 = load i8*, i8** %p.addr, align 8, !dbg !3708
  %3 = bitcast i8* %2 to %struct.action_devres*, !dbg !3708
  store %struct.action_devres* %3, %struct.action_devres** %target, align 8, !dbg !3707
  %4 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3709
  %action = getelementptr inbounds %struct.action_devres, %struct.action_devres* %4, i32 0, i32 1, !dbg !3710
  %5 = load void (i8*)*, void (i8*)** %action, align 8, !dbg !3710
  %6 = load %struct.action_devres*, %struct.action_devres** %target, align 8, !dbg !3711
  %action1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %6, i32 0, i32 1, !dbg !3712
  %7 = load void (i8*)*, void (i8*)** %action1, align 8, !dbg !3712
  %cmp = icmp eq void (i8*)* %5, %7, !dbg !3713
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3714

land.rhs:                                         ; preds = %entry
  %8 = load %struct.action_devres*, %struct.action_devres** %devres, align 8, !dbg !3715
  %data = getelementptr inbounds %struct.action_devres, %struct.action_devres* %8, i32 0, i32 0, !dbg !3716
  %9 = load i8*, i8** %data, align 8, !dbg !3716
  %10 = load %struct.action_devres*, %struct.action_devres** %target, align 8, !dbg !3717
  %data2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %10, i32 0, i32 0, !dbg !3718
  %11 = load i8*, i8** %data2, align 8, !dbg !3718
  %cmp3 = icmp eq i8* %9, %11, !dbg !3719
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !3720
  %land.ext = zext i1 %12 to i32, !dbg !3714
  ret i32 %land.ext, !dbg !3721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_release_action(%struct.device* %dev, void (i8*)* %action, i8* %data) #0 !dbg !3722 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %devres = alloca %struct.action_devres, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3723, metadata !DIExpression()), !dbg !3724
  store void (i8*)* %action, void (i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %action.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.declare(metadata %struct.action_devres* %devres, metadata !3729, metadata !DIExpression()), !dbg !3730
  %data1 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i32 0, i32 0, !dbg !3731
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3732
  store i8* %0, i8** %data1, align 8, !dbg !3731
  %action2 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %devres, i32 0, i32 1, !dbg !3731
  %1 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !3733
  store void (i8*)* %1, void (i8*)** %action2, align 8, !dbg !3731
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3734, metadata !DIExpression()), !dbg !3736
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3736
  %3 = bitcast %struct.action_devres* %devres to i8*, !dbg !3736
  %call = call i32 @devres_release(%struct.device* %2, void (%struct.device*, i8*)* @devm_action_release, i32 (%struct.device*, i8*, i8*)* @devm_action_match, i8* %3) #11, !dbg !3736
  %tobool = icmp ne i32 %call, 0, !dbg !3736
  %lnot = xor i1 %tobool, true, !dbg !3736
  %lnot3 = xor i1 %lnot, true, !dbg !3736
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3736
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3736
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3737
  %tobool4 = icmp ne i32 %4, 0, !dbg !3737
  %lnot5 = xor i1 %tobool4, true, !dbg !3737
  %lnot7 = xor i1 %lnot5, true, !dbg !3737
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3737
  %conv = sext i32 %lnot.ext8 to i64, !dbg !3737
  %tobool9 = icmp ne i64 %conv, 0, !dbg !3737
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3736

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3737

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !3739

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !3741

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !3739

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 795, i32 2305, i64 12) #4, !dbg !3743, !srcloc !3745
  br label %do.end12, !dbg !3743

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 191) #4, !dbg !3746, !srcloc !3748
  br label %do.body13, !dbg !3739

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3749

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3739

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !3739

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !3736
  %tobool16 = icmp ne i32 %5, 0, !dbg !3736
  %lnot17 = xor i1 %tobool16, true, !dbg !3736
  %lnot19 = xor i1 %lnot17, true, !dbg !3736
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3736
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3736
  store i64 %conv21, i64* %tmp, align 8, !dbg !3737
  %6 = load i64, i64* %tmp, align 8, !dbg !3736
  ret void, !dbg !3751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @devm_kmalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !3752 {
entry:
  %retval.i = alloca %struct.devres*, align 8
  %release.addr.i = alloca void (%struct.device*, i8*)*, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr.i, metadata !2018, metadata !DIExpression()), !dbg !3755
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2024, metadata !DIExpression()), !dbg !3757
  %gfp.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr.i, metadata !2026, metadata !DIExpression()), !dbg !3758
  %nid.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr.i, metadata !2028, metadata !DIExpression()), !dbg !3759
  %tot_size.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tot_size.i, metadata !2030, metadata !DIExpression()), !dbg !3760
  %dr.i = alloca %struct.devres*, align 8
  call void @llvm.dbg.declare(metadata %struct.devres** %dr.i, metadata !2032, metadata !DIExpression()), !dbg !3761
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %dr = alloca %struct.devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3764, metadata !DIExpression()), !dbg !3765
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3766, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.declare(metadata %struct.devres** %dr, metadata !3768, metadata !DIExpression()), !dbg !3769
  %0 = load i64, i64* %size.addr, align 8, !dbg !3770
  %tobool = icmp ne i64 %0, 0, !dbg !3770
  %lnot = xor i1 %tobool, true, !dbg !3770
  %lnot1 = xor i1 %lnot, true, !dbg !3770
  %lnot2 = xor i1 %lnot1, true, !dbg !3770
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3770
  %conv = sext i32 %lnot.ext to i64, !dbg !3770
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3770
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3772

if.then:                                          ; preds = %entry
  store i8* inttoptr (i64 16 to i8*), i8** %retval, align 8, !dbg !3773
  br label %return, !dbg !3773

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8, !dbg !3774
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3775
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3776
  %call = call i32 @dev_to_node(%struct.device* %3) #11, !dbg !3777
  store void (%struct.device*, i8*)* @devm_kmalloc_release, void (%struct.device*, i8*)** %release.addr.i, align 8
  store i64 %1, i64* %size.addr.i, align 8
  store i32 %2, i32* %gfp.addr.i, align 4
  store i32 %call, i32* %nid.addr.i, align 4
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3778
  %call.i = call zeroext i1 @check_dr_size(i64 %4, i64* %tot_size.i) #10, !dbg !3779
  br i1 %call.i, label %if.end.i, label %if.then.i, !dbg !3780

if.then.i:                                        ; preds = %if.end
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !3781
  br label %alloc_dr.exit, !dbg !3781

if.end.i:                                         ; preds = %if.end
  %5 = load i64, i64* %tot_size.i, align 8, !dbg !3782
  %6 = load i32, i32* %gfp.addr.i, align 4, !dbg !3782
  %7 = call i8* @llvm.returnaddress(i32 0) #4, !dbg !3782
  %8 = ptrtoint i8* %7 to i64, !dbg !3782
  %call1.i = call i8* @__kmalloc_track_caller(i64 %5, i32 %6, i64 %8) #10, !dbg !3782
  %9 = bitcast i8* %call1.i to %struct.devres*, !dbg !3782
  store %struct.devres* %9, %struct.devres** %dr.i, align 8, !dbg !3783
  %10 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3784
  %tobool.i = icmp ne %struct.devres* %10, null, !dbg !3784
  %lnot.i = xor i1 %tobool.i, true, !dbg !3784
  %lnot3.i = xor i1 %tobool.i, true, !dbg !3784
  %lnot.ext.i = zext i1 %lnot3.i to i32, !dbg !3784
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !3784
  br i1 %lnot3.i, label %if.then5.i, label %if.end6.i, !dbg !3785

if.then5.i:                                       ; preds = %if.end.i
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !3786
  br label %alloc_dr.exit, !dbg !3786

if.end6.i:                                        ; preds = %if.end.i
  %11 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3787
  %12 = bitcast %struct.devres* %11 to i8*, !dbg !3788
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false) #4, !dbg !3788
  %13 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3789
  %node.i = getelementptr inbounds %struct.devres, %struct.devres* %13, i32 0, i32 0, !dbg !3790
  %entry7.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.i, i32 0, i32 0, !dbg !3791
  call void @INIT_LIST_HEAD(%struct.list_head* %entry7.i) #10, !dbg !3792
  %14 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr.i, align 8, !dbg !3793
  %15 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3794
  %node8.i = getelementptr inbounds %struct.devres, %struct.devres* %15, i32 0, i32 0, !dbg !3795
  %release9.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node8.i, i32 0, i32 1, !dbg !3796
  store void (%struct.device*, i8*)* %14, void (%struct.device*, i8*)** %release9.i, align 8, !dbg !3797
  %16 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3798
  store %struct.devres* %16, %struct.devres** %retval.i, align 8, !dbg !3799
  br label %alloc_dr.exit, !dbg !3799

alloc_dr.exit:                                    ; preds = %if.then.i, %if.then5.i, %if.end6.i
  %17 = load %struct.devres*, %struct.devres** %retval.i, align 8, !dbg !3800
  store %struct.devres* %17, %struct.devres** %dr, align 8, !dbg !3801
  %18 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !3802
  %tobool5 = icmp ne %struct.devres* %18, null, !dbg !3802
  %lnot6 = xor i1 %tobool5, true, !dbg !3802
  %lnot8 = xor i1 %lnot6, true, !dbg !3802
  %lnot10 = xor i1 %lnot8, true, !dbg !3802
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !3802
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !3802
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !3802
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3804

if.then14:                                        ; preds = %alloc_dr.exit
  store i8* null, i8** %retval, align 8, !dbg !3805
  br label %return, !dbg !3805

if.end15:                                         ; preds = %alloc_dr.exit
  br label %do.body, !dbg !3806

do.body:                                          ; preds = %if.end15
  br label %do.end, !dbg !3807

do.end:                                           ; preds = %do.body
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3809
  %20 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !3810
  %data = getelementptr inbounds %struct.devres, %struct.devres* %20, i32 0, i32 1, !dbg !3811
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !3810
  call void @devres_add(%struct.device* %19, i8* %arraydecay) #11, !dbg !3812
  %21 = load %struct.devres*, %struct.devres** %dr, align 8, !dbg !3813
  %data16 = getelementptr inbounds %struct.devres, %struct.devres* %21, i32 0, i32 1, !dbg !3814
  %arraydecay17 = getelementptr inbounds [0 x i8], [0 x i8]* %data16, i64 0, i64 0, !dbg !3813
  store i8* %arraydecay17, i8** %retval, align 8, !dbg !3815
  br label %return, !dbg !3815

return:                                           ; preds = %do.end, %if.then14, %if.then
  %22 = load i8*, i8** %retval, align 8, !dbg !3816
  ret i8* %22, !dbg !3816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_kmalloc_release(%struct.device* %dev, i8* %res) #0 !dbg !3817 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3818, metadata !DIExpression()), !dbg !3819
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3820, metadata !DIExpression()), !dbg !3821
  ret void, !dbg !3822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_to_node(%struct.device* %dev) #0 !dbg !3823 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3824, metadata !DIExpression()), !dbg !3825
  ret i32 -1, !dbg !3826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devm_krealloc(%struct.device* %dev, i8* %ptr, i64 %new_size, i32 %gfp) #0 !dbg !3827 {
entry:
  %lock.addr.i161 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i161, metadata !2093, metadata !DIExpression()), !dbg !3830
  %flags.addr.i162 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i162, metadata !2101, metadata !DIExpression()), !dbg !3832
  %tmp.i163 = alloca i32, align 4
  %tmp8.i164 = alloca i32, align 4
  %lock.addr.i159 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i159, metadata !2093, metadata !DIExpression()), !dbg !3833
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2101, metadata !DIExpression()), !dbg !3837
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2103, metadata !DIExpression()), !dbg !3838
  %retval.i = alloca %struct.devres*, align 8
  %release.addr.i = alloca void (%struct.device*, i8*)*, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr.i, metadata !2018, metadata !DIExpression()), !dbg !3845
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2024, metadata !DIExpression()), !dbg !3847
  %gfp.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr.i, metadata !2026, metadata !DIExpression()), !dbg !3848
  %nid.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr.i, metadata !2028, metadata !DIExpression()), !dbg !3849
  %tot_size.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tot_size.i, metadata !2030, metadata !DIExpression()), !dbg !3850
  %dr.i = alloca %struct.devres*, align 8
  call void @llvm.dbg.declare(metadata %struct.devres** %dr.i, metadata !2032, metadata !DIExpression()), !dbg !3851
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %total_new_size = alloca i64, align 8
  %total_old_size = alloca i64, align 8
  %old_dr = alloca %struct.devres*, align 8
  %new_dr = alloca %struct.devres*, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp47 = alloca %struct.devres*, align 8
  %__ret_warn_on52 = alloca i32, align 4
  %tmp76 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp97 = alloca i32, align 4
  %__dummy101 = alloca i64, align 8
  %__dummy2102 = alloca i64, align 8
  %tmp105 = alloca i32, align 4
  %__ret_warn_on121 = alloca i32, align 4
  %tmp145 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3854, metadata !DIExpression()), !dbg !3855
  store i64 %new_size, i64* %new_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %new_size.addr, metadata !3856, metadata !DIExpression()), !dbg !3857
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %total_new_size, metadata !3860, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.declare(metadata i64* %total_old_size, metadata !3862, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata %struct.devres** %old_dr, metadata !3864, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.declare(metadata %struct.devres** %new_dr, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3868, metadata !DIExpression()), !dbg !3869
  %0 = load i64, i64* %new_size.addr, align 8, !dbg !3870
  %tobool = icmp ne i64 %0, 0, !dbg !3870
  %lnot = xor i1 %tobool, true, !dbg !3870
  %lnot1 = xor i1 %lnot, true, !dbg !3870
  %lnot2 = xor i1 %lnot1, true, !dbg !3870
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3870
  %conv = sext i32 %lnot.ext to i64, !dbg !3870
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3870
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3872

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3873
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3875
  call void @devm_kfree(%struct.device* %1, i8* %2) #11, !dbg !3876
  store i8* inttoptr (i64 16 to i8*), i8** %retval, align 8, !dbg !3877
  br label %return, !dbg !3877

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !3878
  %4 = ptrtoint i8* %3 to i64, !dbg !3878
  %cmp = icmp ule i64 %4, 16, !dbg !3878
  %lnot5 = xor i1 %cmp, true, !dbg !3878
  %lnot7 = xor i1 %lnot5, true, !dbg !3878
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3878
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3878
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3878
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3880

if.then11:                                        ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3881
  %6 = load i64, i64* %new_size.addr, align 8, !dbg !3882
  %7 = load i32, i32* %gfp.addr, align 4, !dbg !3883
  %call = call noalias i8* @devm_kmalloc(%struct.device* %5, i64 %6, i32 %7) #11, !dbg !3884
  store i8* %call, i8** %retval, align 8, !dbg !3885
  br label %return, !dbg !3885

if.end12:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3886, metadata !DIExpression()), !dbg !3889
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !3889
  %9 = ptrtoint i8* %8 to i64, !dbg !3889
  %call13 = call zeroext i1 @is_kernel_rodata(i64 %9) #11, !dbg !3889
  %lnot14 = xor i1 %call13, true, !dbg !3889
  %lnot16 = xor i1 %lnot14, true, !dbg !3889
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3889
  store i32 %lnot.ext17, i32* %__ret_warn_on, align 4, !dbg !3889
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !3890
  %tobool18 = icmp ne i32 %10, 0, !dbg !3890
  %lnot19 = xor i1 %tobool18, true, !dbg !3890
  %lnot21 = xor i1 %lnot19, true, !dbg !3890
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3890
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3890
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !3890
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !3889

if.then25:                                        ; preds = %if.end12
  br label %do.body, !dbg !3890

do.body:                                          ; preds = %if.then25
  br label %do.body26, !dbg !3892

do.body26:                                        ; preds = %do.body
  br label %do.end, !dbg !3894

do.end:                                           ; preds = %do.body26
  br label %do.body27, !dbg !3892

do.body27:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 878, i32 2305, i64 12) #4, !dbg !3896, !srcloc !3898
  br label %do.end28, !dbg !3896

do.end28:                                         ; preds = %do.body27
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 192) #4, !dbg !3899, !srcloc !3901
  br label %do.body29, !dbg !3892

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !3902

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !3892

do.end31:                                         ; preds = %do.end30
  br label %if.end32, !dbg !3892

if.end32:                                         ; preds = %do.end31, %if.end12
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !3889
  %tobool33 = icmp ne i32 %11, 0, !dbg !3889
  %lnot34 = xor i1 %tobool33, true, !dbg !3889
  %lnot36 = xor i1 %lnot34, true, !dbg !3889
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !3889
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !3889
  store i64 %conv38, i64* %tmp, align 8, !dbg !3890
  %12 = load i64, i64* %tmp, align 8, !dbg !3889
  %tobool39 = icmp ne i64 %12, 0, !dbg !3904
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3905

if.then40:                                        ; preds = %if.end32
  store i8* null, i8** %retval, align 8, !dbg !3906
  br label %return, !dbg !3906

if.end41:                                         ; preds = %if.end32
  %13 = load i64, i64* %new_size.addr, align 8, !dbg !3907
  %call42 = call zeroext i1 @check_dr_size(i64 %13, i64* %total_new_size) #11, !dbg !3909
  br i1 %call42, label %if.end44, label %if.then43, !dbg !3910

if.then43:                                        ; preds = %if.end41
  store i8* null, i8** %retval, align 8, !dbg !3911
  br label %return, !dbg !3911

if.end44:                                         ; preds = %if.end41
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3912, metadata !DIExpression()), !dbg !3914
  %14 = load i8*, i8** %ptr.addr, align 8, !dbg !3914
  store i8* %14, i8** %__mptr, align 8, !dbg !3914
  br label %do.body45, !dbg !3914

do.body45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !3915

do.end46:                                         ; preds = %do.body45
  %15 = load i8*, i8** %__mptr, align 8, !dbg !3914
  %add.ptr = getelementptr i8, i8* %15, i64 -24, !dbg !3914
  %16 = bitcast i8* %add.ptr to %struct.devres*, !dbg !3914
  store %struct.devres* %16, %struct.devres** %tmp47, align 8, !dbg !3915
  %17 = load %struct.devres*, %struct.devres** %tmp47, align 8, !dbg !3914
  %18 = bitcast %struct.devres* %17 to i8*, !dbg !3917
  %call48 = call i64 @ksize(i8* %18) #11, !dbg !3918
  store i64 %call48, i64* %total_old_size, align 8, !dbg !3919
  %19 = load i64, i64* %total_old_size, align 8, !dbg !3920
  %cmp49 = icmp eq i64 %19, 0, !dbg !3922
  br i1 %cmp49, label %if.then51, label %if.end83, !dbg !3923

if.then51:                                        ; preds = %do.end46
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on52, metadata !3924, metadata !DIExpression()), !dbg !3927
  store i32 1, i32* %__ret_warn_on52, align 4, !dbg !3927
  %20 = load i32, i32* %__ret_warn_on52, align 4, !dbg !3928
  %tobool53 = icmp ne i32 %20, 0, !dbg !3928
  %lnot54 = xor i1 %tobool53, true, !dbg !3928
  %lnot56 = xor i1 %lnot54, true, !dbg !3928
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !3928
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !3928
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !3928
  br i1 %tobool59, label %if.then60, label %if.end75, !dbg !3927

if.then60:                                        ; preds = %if.then51
  br label %do.body61, !dbg !3928

do.body61:                                        ; preds = %if.then60
  br label %do.body62, !dbg !3930

do.body62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !3932

do.end63:                                         ; preds = %do.body62
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !3930
  br label %do.body64, !dbg !3930

do.body64:                                        ; preds = %do.end63
  br label %do.body65, !dbg !3934

do.body65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !3936

do.end66:                                         ; preds = %do.body65
  br label %do.body67, !dbg !3934

do.body67:                                        ; preds = %do.end66
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 890, i32 2313, i64 12) #4, !dbg !3938, !srcloc !3940
  br label %do.end68, !dbg !3938

do.end68:                                         ; preds = %do.body67
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 194) #4, !dbg !3941, !srcloc !3943
  br label %do.body69, !dbg !3934

do.body69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !3944

do.end70:                                         ; preds = %do.body69
  br label %do.end71, !dbg !3934

do.end71:                                         ; preds = %do.end70
  br label %do.body72, !dbg !3930

do.body72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !3946

do.end73:                                         ; preds = %do.body72
  br label %do.end74, !dbg !3930

do.end74:                                         ; preds = %do.end73
  br label %if.end75, !dbg !3930

if.end75:                                         ; preds = %do.end74, %if.then51
  %21 = load i32, i32* %__ret_warn_on52, align 4, !dbg !3927
  %tobool77 = icmp ne i32 %21, 0, !dbg !3927
  %lnot78 = xor i1 %tobool77, true, !dbg !3927
  %lnot80 = xor i1 %lnot78, true, !dbg !3927
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !3927
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !3927
  store i64 %conv82, i64* %tmp76, align 8, !dbg !3928
  %22 = load i64, i64* %tmp76, align 8, !dbg !3927
  store i8* null, i8** %retval, align 8, !dbg !3948
  br label %return, !dbg !3948

if.end83:                                         ; preds = %do.end46
  %23 = load i64, i64* %total_new_size, align 8, !dbg !3949
  %24 = load i64, i64* %total_old_size, align 8, !dbg !3951
  %cmp84 = icmp ule i64 %23, %24, !dbg !3952
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !3953

if.then86:                                        ; preds = %if.end83
  %25 = load i8*, i8** %ptr.addr, align 8, !dbg !3954
  store i8* %25, i8** %retval, align 8, !dbg !3955
  br label %return, !dbg !3955

if.end87:                                         ; preds = %if.end83
  %26 = load i64, i64* %total_new_size, align 8, !dbg !3956
  %27 = load i32, i32* %gfp.addr, align 4, !dbg !3957
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3958
  %call88 = call i32 @dev_to_node(%struct.device* %28) #11, !dbg !3959
  store void (%struct.device*, i8*)* @devm_kmalloc_release, void (%struct.device*, i8*)** %release.addr.i, align 8
  store i64 %26, i64* %size.addr.i, align 8
  store i32 %27, i32* %gfp.addr.i, align 4
  store i32 %call88, i32* %nid.addr.i, align 4
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !3960
  %call.i = call zeroext i1 @check_dr_size(i64 %29, i64* %tot_size.i) #10, !dbg !3961
  br i1 %call.i, label %if.end.i, label %if.then.i, !dbg !3962

if.then.i:                                        ; preds = %if.end87
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !3963
  br label %alloc_dr.exit, !dbg !3963

if.end.i:                                         ; preds = %if.end87
  %30 = load i64, i64* %tot_size.i, align 8, !dbg !3964
  %31 = load i32, i32* %gfp.addr.i, align 4, !dbg !3964
  %32 = call i8* @llvm.returnaddress(i32 0) #4, !dbg !3964
  %33 = ptrtoint i8* %32 to i64, !dbg !3964
  %call1.i = call i8* @__kmalloc_track_caller(i64 %30, i32 %31, i64 %33) #10, !dbg !3964
  %34 = bitcast i8* %call1.i to %struct.devres*, !dbg !3964
  store %struct.devres* %34, %struct.devres** %dr.i, align 8, !dbg !3965
  %35 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3966
  %tobool.i = icmp ne %struct.devres* %35, null, !dbg !3966
  %lnot.i = xor i1 %tobool.i, true, !dbg !3966
  %lnot3.i = xor i1 %tobool.i, true, !dbg !3966
  %lnot.ext.i = zext i1 %lnot3.i to i32, !dbg !3966
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !3966
  br i1 %lnot3.i, label %if.then5.i, label %if.end6.i, !dbg !3967

if.then5.i:                                       ; preds = %if.end.i
  store %struct.devres* null, %struct.devres** %retval.i, align 8, !dbg !3968
  br label %alloc_dr.exit, !dbg !3968

if.end6.i:                                        ; preds = %if.end.i
  %36 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3969
  %37 = bitcast %struct.devres* %36 to i8*, !dbg !3970
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 24, i1 false) #4, !dbg !3970
  %38 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3971
  %node.i = getelementptr inbounds %struct.devres, %struct.devres* %38, i32 0, i32 0, !dbg !3972
  %entry7.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node.i, i32 0, i32 0, !dbg !3973
  call void @INIT_LIST_HEAD(%struct.list_head* %entry7.i) #10, !dbg !3974
  %39 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr.i, align 8, !dbg !3975
  %40 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3976
  %node8.i = getelementptr inbounds %struct.devres, %struct.devres* %40, i32 0, i32 0, !dbg !3977
  %release9.i = getelementptr inbounds %struct.devres_node, %struct.devres_node* %node8.i, i32 0, i32 1, !dbg !3978
  store void (%struct.device*, i8*)* %39, void (%struct.device*, i8*)** %release9.i, align 8, !dbg !3979
  %41 = load %struct.devres*, %struct.devres** %dr.i, align 8, !dbg !3980
  store %struct.devres* %41, %struct.devres** %retval.i, align 8, !dbg !3981
  br label %alloc_dr.exit, !dbg !3981

alloc_dr.exit:                                    ; preds = %if.then.i, %if.then5.i, %if.end6.i
  %42 = load %struct.devres*, %struct.devres** %retval.i, align 8, !dbg !3982
  store %struct.devres* %42, %struct.devres** %new_dr, align 8, !dbg !3983
  %43 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !3984
  %tobool90 = icmp ne %struct.devres* %43, null, !dbg !3984
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !3986

if.then91:                                        ; preds = %alloc_dr.exit
  store i8* null, i8** %retval, align 8, !dbg !3987
  br label %return, !dbg !3987

if.end92:                                         ; preds = %alloc_dr.exit
  br label %do.body93, !dbg !3988

do.body93:                                        ; preds = %if.end92
  br label %do.body94, !dbg !3989

do.body94:                                        ; preds = %do.body93
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3993, metadata !DIExpression()), !dbg !3992
  %cmp95 = icmp eq i64* %__dummy, %__dummy2, !dbg !3992
  %conv96 = zext i1 %cmp95 to i32, !dbg !3992
  store i32 1, i32* %tmp97, align 4, !dbg !3992
  %44 = load i32, i32* %tmp97, align 4, !dbg !3992
  br label %do.body98, !dbg !3994

do.body98:                                        ; preds = %do.body94
  br label %do.body99, !dbg !3995

do.body99:                                        ; preds = %do.body98
  br label %do.body100, !dbg !3996

do.body100:                                       ; preds = %do.body99
  call void @llvm.dbg.declare(metadata i64* %__dummy101, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.declare(metadata i64* %__dummy2102, metadata !4002, metadata !DIExpression()), !dbg !4001
  %cmp103 = icmp eq i64* %__dummy101, %__dummy2102, !dbg !4001
  %conv104 = zext i1 %cmp103 to i32, !dbg !4001
  store i32 1, i32* %tmp105, align 4, !dbg !4001
  %45 = load i32, i32* %tmp105, align 4, !dbg !4001
  %call106 = call i64 @arch_local_irq_save() #11, !dbg !4003
  store i64 %call106, i64* %flags, align 8, !dbg !4003
  br label %do.end107, !dbg !4003

do.end107:                                        ; preds = %do.body100
  br label %do.end108, !dbg !3996

do.end108:                                        ; preds = %do.end107
  br label %do.body109, !dbg !3995

do.body109:                                       ; preds = %do.end108
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4004, !srcloc !4005
  br label %do.body110, !dbg !4004

do.body110:                                       ; preds = %do.body109
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4006
  %devres_lock = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 27, !dbg !4006
  store %struct.spinlock* %devres_lock, %struct.spinlock** %lock.addr.i, align 8
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4007
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4008
  %rlock.i = bitcast %union.anon* %48 to %struct.raw_spinlock*, !dbg !4008
  br label %do.end112, !dbg !4006

do.end112:                                        ; preds = %do.body110
  br label %do.end113, !dbg !4004

do.end113:                                        ; preds = %do.end112
  br label %do.end114, !dbg !3995

do.end114:                                        ; preds = %do.end113
  br label %do.end115, !dbg !3994

do.end115:                                        ; preds = %do.end114
  br label %do.end116, !dbg !3989

do.end116:                                        ; preds = %do.end115
  %49 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4009
  %50 = load i8*, i8** %ptr.addr, align 8, !dbg !4010
  %call117 = call %struct.devres* @find_dr(%struct.device* %49, void (%struct.device*, i8*)* @devm_kmalloc_release, i32 (%struct.device*, i8*, i8*)* @devm_kmalloc_match, i8* %50) #11, !dbg !4011
  store %struct.devres* %call117, %struct.devres** %old_dr, align 8, !dbg !4012
  %51 = load %struct.devres*, %struct.devres** %old_dr, align 8, !dbg !4013
  %tobool118 = icmp ne %struct.devres* %51, null, !dbg !4013
  br i1 %tobool118, label %if.end152, label %if.then119, !dbg !4014

if.then119:                                       ; preds = %do.end116
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4015
  %devres_lock120 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 27, !dbg !4016
  %53 = load i64, i64* %flags, align 8, !dbg !4017
  store %struct.spinlock* %devres_lock120, %struct.spinlock** %lock.addr.i159, align 8
  store i64 %53, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !4018
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !4018
  store i32 1, i32* %tmp.i, align 4, !dbg !4018
  %54 = load i32, i32* %tmp.i, align 4, !dbg !4018
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !4019
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !4019
  store i32 1, i32* %tmp8.i, align 4, !dbg !4019
  %55 = load i32, i32* %tmp8.i, align 4, !dbg !4019
  %56 = load i64, i64* %flags.addr.i, align 8, !dbg !4020
  call void @arch_local_irq_restore(i64 %56) #10, !dbg !4020
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4021, !srcloc !2228
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i159, align 8, !dbg !4022
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !4022
  %rlock.i160 = bitcast %union.anon* %58 to %struct.raw_spinlock*, !dbg !4022
  %59 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !4023
  %60 = bitcast %struct.devres* %59 to i8*, !dbg !4023
  call void @kfree(i8* %60) #11, !dbg !4024
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on121, metadata !4025, metadata !DIExpression()), !dbg !4027
  store i32 1, i32* %__ret_warn_on121, align 4, !dbg !4027
  %61 = load i32, i32* %__ret_warn_on121, align 4, !dbg !4028
  %tobool122 = icmp ne i32 %61, 0, !dbg !4028
  %lnot123 = xor i1 %tobool122, true, !dbg !4028
  %lnot125 = xor i1 %lnot123, true, !dbg !4028
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !4028
  %conv127 = sext i32 %lnot.ext126 to i64, !dbg !4028
  %tobool128 = icmp ne i64 %conv127, 0, !dbg !4028
  br i1 %tobool128, label %if.then129, label %if.end144, !dbg !4027

if.then129:                                       ; preds = %if.then119
  br label %do.body130, !dbg !4028

do.body130:                                       ; preds = %if.then129
  br label %do.body131, !dbg !4030

do.body131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !4032

do.end132:                                        ; preds = %do.body131
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4030
  br label %do.body133, !dbg !4030

do.body133:                                       ; preds = %do.end132
  br label %do.body134, !dbg !4034

do.body134:                                       ; preds = %do.body133
  br label %do.end135, !dbg !4036

do.end135:                                        ; preds = %do.body134
  br label %do.body136, !dbg !4034

do.body136:                                       ; preds = %do.end135
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 920, i32 2313, i64 12) #4, !dbg !4038, !srcloc !4040
  br label %do.end137, !dbg !4038

do.end137:                                        ; preds = %do.body136
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 195) #4, !dbg !4041, !srcloc !4043
  br label %do.body138, !dbg !4034

do.body138:                                       ; preds = %do.end137
  br label %do.end139, !dbg !4044

do.end139:                                        ; preds = %do.body138
  br label %do.end140, !dbg !4034

do.end140:                                        ; preds = %do.end139
  br label %do.body141, !dbg !4030

do.body141:                                       ; preds = %do.end140
  br label %do.end142, !dbg !4046

do.end142:                                        ; preds = %do.body141
  br label %do.end143, !dbg !4030

do.end143:                                        ; preds = %do.end142
  br label %if.end144, !dbg !4030

if.end144:                                        ; preds = %do.end143, %if.then119
  %62 = load i32, i32* %__ret_warn_on121, align 4, !dbg !4027
  %tobool146 = icmp ne i32 %62, 0, !dbg !4027
  %lnot147 = xor i1 %tobool146, true, !dbg !4027
  %lnot149 = xor i1 %lnot147, true, !dbg !4027
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !4027
  %conv151 = sext i32 %lnot.ext150 to i64, !dbg !4027
  store i64 %conv151, i64* %tmp145, align 8, !dbg !4028
  %63 = load i64, i64* %tmp145, align 8, !dbg !4027
  store i8* null, i8** %retval, align 8, !dbg !4048
  br label %return, !dbg !4048

if.end152:                                        ; preds = %do.end116
  %64 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4049
  %65 = load %struct.devres*, %struct.devres** %old_dr, align 8, !dbg !4050
  %node = getelementptr inbounds %struct.devres, %struct.devres* %65, i32 0, i32 0, !dbg !4051
  %66 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !4052
  %node153 = getelementptr inbounds %struct.devres, %struct.devres* %66, i32 0, i32 0, !dbg !4053
  call void @replace_dr(%struct.device* %64, %struct.devres_node* %node, %struct.devres_node* %node153) #11, !dbg !4054
  %67 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4055
  %devres_lock154 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 27, !dbg !4056
  %68 = load i64, i64* %flags, align 8, !dbg !4057
  store %struct.spinlock* %devres_lock154, %struct.spinlock** %lock.addr.i161, align 8
  store i64 %68, i64* %flags.addr.i162, align 8
  call void @llvm.dbg.declare(metadata !112, metadata !2213, metadata !DIExpression()) #4, !dbg !4058
  call void @llvm.dbg.declare(metadata !112, metadata !2217, metadata !DIExpression()) #4, !dbg !4058
  store i32 1, i32* %tmp.i163, align 4, !dbg !4058
  %69 = load i32, i32* %tmp.i163, align 4, !dbg !4058
  call void @llvm.dbg.declare(metadata !112, metadata !2218, metadata !DIExpression()) #4, !dbg !4059
  call void @llvm.dbg.declare(metadata !112, metadata !2224, metadata !DIExpression()) #4, !dbg !4059
  store i32 1, i32* %tmp8.i164, align 4, !dbg !4059
  %70 = load i32, i32* %tmp8.i164, align 4, !dbg !4059
  %71 = load i64, i64* %flags.addr.i162, align 8, !dbg !4060
  call void @arch_local_irq_restore(i64 %71) #10, !dbg !4060
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4061, !srcloc !2228
  %72 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i161, align 8, !dbg !4062
  %73 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %72, i32 0, i32 0, !dbg !4062
  %rlock.i165 = bitcast %union.anon* %73 to %struct.raw_spinlock*, !dbg !4062
  %74 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !4063
  %data = getelementptr inbounds %struct.devres, %struct.devres* %74, i32 0, i32 1, !dbg !4064
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !4065
  %75 = load %struct.devres*, %struct.devres** %old_dr, align 8, !dbg !4066
  %data155 = getelementptr inbounds %struct.devres, %struct.devres* %75, i32 0, i32 1, !dbg !4067
  %arraydecay156 = getelementptr inbounds [0 x i8], [0 x i8]* %data155, i64 0, i64 0, !dbg !4065
  %76 = load i64, i64* %total_old_size, align 8, !dbg !4068
  %sub = sub i64 %76, 24, !dbg !4069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 8 %arraydecay156, i64 %sub, i1 false), !dbg !4065
  %77 = load %struct.devres*, %struct.devres** %old_dr, align 8, !dbg !4070
  %78 = bitcast %struct.devres* %77 to i8*, !dbg !4070
  call void @kfree(i8* %78) #11, !dbg !4071
  %79 = load %struct.devres*, %struct.devres** %new_dr, align 8, !dbg !4072
  %data157 = getelementptr inbounds %struct.devres, %struct.devres* %79, i32 0, i32 1, !dbg !4073
  %arraydecay158 = getelementptr inbounds [0 x i8], [0 x i8]* %data157, i64 0, i64 0, !dbg !4072
  store i8* %arraydecay158, i8** %retval, align 8, !dbg !4074
  br label %return, !dbg !4074

return:                                           ; preds = %if.end152, %if.end144, %if.then91, %if.then86, %if.end75, %if.then43, %if.then40, %if.then11, %if.then
  %80 = load i8*, i8** %retval, align 8, !dbg !4075
  ret i8* %80, !dbg !4075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_kfree(%struct.device* %dev, i8* %p) #0 !dbg !4076 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %p.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4083, metadata !DIExpression()), !dbg !4084
  %0 = load i8*, i8** %p.addr, align 8, !dbg !4085
  %1 = ptrtoint i8* %0 to i64, !dbg !4085
  %call = call zeroext i1 @is_kernel_rodata(i64 %1) #11, !dbg !4085
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !4085

lor.rhs:                                          ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4085
  %3 = ptrtoint i8* %2 to i64, !dbg !4085
  %cmp = icmp ule i64 %3, 16, !dbg !4085
  br label %lor.end, !dbg !4085

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !4085
  %lnot1 = xor i1 %lnot, true, !dbg !4085
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4085
  %conv = sext i32 %lnot.ext to i64, !dbg !4085
  %tobool = icmp ne i64 %conv, 0, !dbg !4085
  br i1 %tobool, label %if.then, label %if.end, !dbg !4087

if.then:                                          ; preds = %lor.end
  br label %return, !dbg !4088

if.end:                                           ; preds = %lor.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4089
  %6 = load i8*, i8** %p.addr, align 8, !dbg !4090
  %call2 = call i32 @devres_destroy(%struct.device* %5, void (%struct.device*, i8*)* @devm_kmalloc_release, i32 (%struct.device*, i8*, i8*)* @devm_kmalloc_match, i8* %6) #11, !dbg !4091
  store i32 %call2, i32* %rc, align 4, !dbg !4092
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4093, metadata !DIExpression()), !dbg !4095
  %7 = load i32, i32* %rc, align 4, !dbg !4095
  %tobool3 = icmp ne i32 %7, 0, !dbg !4095
  %lnot4 = xor i1 %tobool3, true, !dbg !4095
  %lnot6 = xor i1 %lnot4, true, !dbg !4095
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4095
  store i32 %lnot.ext7, i32* %__ret_warn_on, align 4, !dbg !4095
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !4096
  %tobool8 = icmp ne i32 %8, 0, !dbg !4096
  %lnot9 = xor i1 %tobool8, true, !dbg !4096
  %lnot11 = xor i1 %lnot9, true, !dbg !4096
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4096
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4096
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !4096
  br i1 %tobool14, label %if.then15, label %if.end22, !dbg !4095

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !4096

do.body:                                          ; preds = %if.then15
  br label %do.body16, !dbg !4098

do.body16:                                        ; preds = %do.body
  br label %do.end, !dbg !4100

do.end:                                           ; preds = %do.body16
  br label %do.body17, !dbg !4098

do.body17:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 1069, i32 2305, i64 12) #4, !dbg !4102, !srcloc !4104
  br label %do.end18, !dbg !4102

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 196) #4, !dbg !4105, !srcloc !4107
  br label %do.body19, !dbg !4098

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4108

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !4098

do.end21:                                         ; preds = %do.end20
  br label %if.end22, !dbg !4098

if.end22:                                         ; preds = %do.end21, %if.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !4095
  %tobool23 = icmp ne i32 %9, 0, !dbg !4095
  %lnot24 = xor i1 %tobool23, true, !dbg !4095
  %lnot26 = xor i1 %lnot24, true, !dbg !4095
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4095
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !4095
  store i64 %conv28, i64* %tmp, align 8, !dbg !4096
  %10 = load i64, i64* %tmp, align 8, !dbg !4095
  br label %return, !dbg !4110

return:                                           ; preds = %if.end22, %if.then
  ret void, !dbg !4110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_kernel_rodata(i64 %addr) #0 !dbg !4111 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !4115, metadata !DIExpression()), !dbg !4116
  %0 = load i64, i64* %addr.addr, align 8, !dbg !4117
  %cmp = icmp uge i64 %0, ptrtoint ([0 x i8]* @__start_rodata to i64), !dbg !4118
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4119

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %addr.addr, align 8, !dbg !4120
  %cmp1 = icmp ult i64 %1, ptrtoint ([0 x i8]* @__end_rodata to i64), !dbg !4121
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4122
  ret i1 %2, !dbg !4123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @check_dr_size(i64 %size, i64* %tot_size) #0 !dbg !4124 {
entry:
  %retval = alloca i1, align 1
  %size.addr = alloca i64, align 8
  %tot_size.addr = alloca i64*, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64* %tot_size, i64** %tot_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %tot_size.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4132, metadata !DIExpression()), !dbg !4135
  store i64 24, i64* %__a, align 8, !dbg !4135
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4136, metadata !DIExpression()), !dbg !4135
  %0 = load i64, i64* %size.addr, align 8, !dbg !4135
  store i64 %0, i64* %__b, align 8, !dbg !4135
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4137, metadata !DIExpression()), !dbg !4135
  %1 = load i64*, i64** %tot_size.addr, align 8, !dbg !4135
  store i64* %1, i64** %__d, align 8, !dbg !4135
  %cmp = icmp eq i64* %__a, %__b, !dbg !4135
  %conv = zext i1 %cmp to i32, !dbg !4135
  %2 = load i64*, i64** %__d, align 8, !dbg !4135
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4135
  %conv2 = zext i1 %cmp1 to i32, !dbg !4135
  %3 = load i64, i64* %__a, align 8, !dbg !4135
  %4 = load i64, i64* %__b, align 8, !dbg !4135
  %5 = load i64*, i64** %__d, align 8, !dbg !4135
  %6 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %4), !dbg !4135
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4135
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4135
  store i64 %8, i64* %5, align 8, !dbg !4135
  %frombool = zext i1 %7 to i8, !dbg !4135
  store i8 %frombool, i8* %tmp, align 1, !dbg !4135
  %9 = load i8, i8* %tmp, align 1, !dbg !4135
  %tobool = trunc i8 %9 to i1, !dbg !4135
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #11, !dbg !4138
  %lnot = xor i1 %call, true, !dbg !4138
  %lnot3 = xor i1 %lnot, true, !dbg !4138
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4138
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4138
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4138
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4139

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4140
  br label %return, !dbg !4140

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !4141
  br label %return, !dbg !4141

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !4142
  ret i1 %10, !dbg !4142
}

; Function Attrs: noredzone
declare dso_local i64 @ksize(i8*) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_kmalloc_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !4143 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4144, metadata !DIExpression()), !dbg !4145
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4146, metadata !DIExpression()), !dbg !4147
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4150
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4151
  %cmp = icmp eq i8* %0, %1, !dbg !4152
  %conv = zext i1 %cmp to i32, !dbg !4152
  ret i32 %conv, !dbg !4153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @replace_dr(%struct.device* %dev, %struct.devres_node* %old, %struct.devres_node* %new) #0 !dbg !4154 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %old.addr = alloca %struct.devres_node*, align 8
  %new.addr = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4157, metadata !DIExpression()), !dbg !4158
  store %struct.devres_node* %old, %struct.devres_node** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.devres_node** %old.addr, metadata !4159, metadata !DIExpression()), !dbg !4160
  store %struct.devres_node* %new, %struct.devres_node** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.devres_node** %new.addr, metadata !4161, metadata !DIExpression()), !dbg !4162
  br label %do.body, !dbg !4163

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4164

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4166

do.body1:                                         ; preds = %do.end
  %0 = load %struct.devres_node*, %struct.devres_node** %new.addr, align 8, !dbg !4167
  %entry2 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %0, i32 0, i32 0, !dbg !4167
  %call = call i32 @list_empty(%struct.list_head* %entry2) #11, !dbg !4167
  %tobool = icmp ne i32 %call, 0, !dbg !4167
  %lnot = xor i1 %tobool, true, !dbg !4167
  %lnot3 = xor i1 %lnot, true, !dbg !4167
  %lnot4 = xor i1 %lnot3, true, !dbg !4167
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4167
  %conv = sext i32 %lnot.ext to i64, !dbg !4167
  %tobool5 = icmp ne i64 %conv, 0, !dbg !4167
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4170

if.then:                                          ; preds = %do.body1
  br label %do.body6, !dbg !4167

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !4171

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4173

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4171

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 133, i32 0, i64 12) #4, !dbg !4175, !srcloc !4177
  br label %do.end10, !dbg !4175

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !4171

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #4, !dbg !4178, !srcloc !4181
  unreachable, !dbg !4182

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !4171

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4171

if.end:                                           ; preds = %do.end13, %do.body1
  br label %do.end14, !dbg !4170

do.end14:                                         ; preds = %if.end
  %1 = load %struct.devres_node*, %struct.devres_node** %old.addr, align 8, !dbg !4183
  %entry15 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %1, i32 0, i32 0, !dbg !4184
  %2 = load %struct.devres_node*, %struct.devres_node** %new.addr, align 8, !dbg !4185
  %entry16 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %2, i32 0, i32 0, !dbg !4186
  call void @list_replace(%struct.list_head* %entry15, %struct.list_head* %entry16) #11, !dbg !4187
  ret void, !dbg !4188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @devm_kstrdup(%struct.device* %dev, i8* %s, i32 %gfp) #0 !dbg !4189 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %s.addr = alloca i8*, align 8
  %gfp.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4194, metadata !DIExpression()), !dbg !4195
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4196, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4198, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4200, metadata !DIExpression()), !dbg !4201
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4202
  %tobool = icmp ne i8* %0, null, !dbg !4202
  br i1 %tobool, label %if.end, label %if.then, !dbg !4204

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4205
  br label %return, !dbg !4205

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8, !dbg !4206
  %call = call i64 @strlen(i8* %1) #11, !dbg !4207
  %add = add i64 %call, 1, !dbg !4208
  store i64 %add, i64* %size, align 8, !dbg !4209
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4210
  %3 = load i64, i64* %size, align 8, !dbg !4211
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !4212
  %call1 = call noalias i8* @devm_kmalloc(%struct.device* %2, i64 %3, i32 %4) #11, !dbg !4213
  store i8* %call1, i8** %buf, align 8, !dbg !4214
  %5 = load i8*, i8** %buf, align 8, !dbg !4215
  %tobool2 = icmp ne i8* %5, null, !dbg !4215
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4217

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %buf, align 8, !dbg !4218
  %7 = load i8*, i8** %s.addr, align 8, !dbg !4219
  %8 = load i64, i64* %size, align 8, !dbg !4220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4221
  br label %if.end4, !dbg !4221

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load i8*, i8** %buf, align 8, !dbg !4222
  store i8* %9, i8** %retval, align 8, !dbg !4223
  br label %return, !dbg !4223

return:                                           ; preds = %if.end4, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !4224
  ret i8* %10, !dbg !4224
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devm_kstrdup_const(%struct.device* %dev, i8* %s, i32 %gfp) #0 !dbg !4225 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %s.addr = alloca i8*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4234
  %1 = ptrtoint i8* %0 to i64, !dbg !4236
  %call = call zeroext i1 @is_kernel_rodata(i64 %1) #11, !dbg !4237
  br i1 %call, label %if.then, label %if.end, !dbg !4238

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8, !dbg !4239
  store i8* %2, i8** %retval, align 8, !dbg !4240
  br label %return, !dbg !4240

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4241
  %4 = load i8*, i8** %s.addr, align 8, !dbg !4242
  %5 = load i32, i32* %gfp.addr, align 4, !dbg !4243
  %call1 = call noalias i8* @devm_kstrdup(%struct.device* %3, i8* %4, i32 %5) #11, !dbg !4244
  store i8* %call1, i8** %retval, align 8, !dbg !4245
  br label %return, !dbg !4245

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8, !dbg !4246
  ret i8* %6, !dbg !4246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @devm_kvasprintf(%struct.device* %dev, i32 %gfp, i8* %fmt, %struct.__va_list_tag* %ap) #0 !dbg !4247 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %gfp.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  %p = alloca i8*, align 8
  %aq = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4259, metadata !DIExpression()), !dbg !4260
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4261, metadata !DIExpression()), !dbg !4262
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %aq, metadata !4269, metadata !DIExpression()), !dbg !4275
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i64 0, i64 0, !dbg !4276
  %0 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !4276
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4276
  %2 = bitcast %struct.__va_list_tag* %0 to i8*, !dbg !4276
  call void @llvm.va_copy(i8* %1, i8* %2), !dbg !4276
  %3 = load i8*, i8** %fmt.addr, align 8, !dbg !4277
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i64 0, i64 0, !dbg !4278
  %call = call i32 @vsnprintf(i8* null, i64 0, i8* %3, %struct.__va_list_tag* %arraydecay1) #11, !dbg !4279
  store i32 %call, i32* %len, align 4, !dbg !4280
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %aq, i64 0, i64 0, !dbg !4281
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*, !dbg !4281
  call void @llvm.va_end(i8* %arraydecay23), !dbg !4281
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4282
  %5 = load i32, i32* %len, align 4, !dbg !4283
  %add = add i32 %5, 1, !dbg !4284
  %conv = zext i32 %add to i64, !dbg !4283
  %6 = load i32, i32* %gfp.addr, align 4, !dbg !4285
  %call4 = call noalias i8* @devm_kmalloc(%struct.device* %4, i64 %conv, i32 %6) #11, !dbg !4286
  store i8* %call4, i8** %p, align 8, !dbg !4287
  %7 = load i8*, i8** %p, align 8, !dbg !4288
  %tobool = icmp ne i8* %7, null, !dbg !4288
  br i1 %tobool, label %if.end, label %if.then, !dbg !4290

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4291
  br label %return, !dbg !4291

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %p, align 8, !dbg !4292
  %9 = load i32, i32* %len, align 4, !dbg !4293
  %add5 = add i32 %9, 1, !dbg !4294
  %conv6 = zext i32 %add5 to i64, !dbg !4293
  %10 = load i8*, i8** %fmt.addr, align 8, !dbg !4295
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !4296
  %call7 = call i32 @vsnprintf(i8* %8, i64 %conv6, i8* %10, %struct.__va_list_tag* %11) #11, !dbg !4297
  %12 = load i8*, i8** %p, align 8, !dbg !4298
  store i8* %12, i8** %retval, align 8, !dbg !4299
  br label %return, !dbg !4299

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !4300
  ret i8* %13, !dbg !4300
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local noalias i8* @devm_kasprintf(%struct.device* %dev, i32 %gfp, i8* %fmt, ...) #0 !dbg !4301 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %gfp.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %p = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4304, metadata !DIExpression()), !dbg !4305
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4306, metadata !DIExpression()), !dbg !4307
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4312, metadata !DIExpression()), !dbg !4313
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4314
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4314
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4314
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4315
  %1 = load i32, i32* %gfp.addr, align 4, !dbg !4316
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !4317
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4318
  %call = call noalias i8* @devm_kvasprintf(%struct.device* %0, i32 %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #11, !dbg !4319
  store i8* %call, i8** %p, align 8, !dbg !4320
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4321
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !4321
  call void @llvm.va_end(i8* %arraydecay34), !dbg !4321
  %3 = load i8*, i8** %p, align 8, !dbg !4322
  ret i8* %3, !dbg !4323
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @devm_kmemdup(%struct.device* %dev, i8* %src, i64 %len, i32 %gfp) #0 !dbg !4324 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4333, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4335, metadata !DIExpression()), !dbg !4336
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4337
  %1 = load i64, i64* %len.addr, align 8, !dbg !4338
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4339
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %2) #11, !dbg !4340
  store i8* %call, i8** %p, align 8, !dbg !4341
  %3 = load i8*, i8** %p, align 8, !dbg !4342
  %tobool = icmp ne i8* %3, null, !dbg !4342
  br i1 %tobool, label %if.then, label %if.end, !dbg !4344

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !dbg !4345
  %5 = load i8*, i8** %src.addr, align 8, !dbg !4346
  %6 = load i64, i64* %len.addr, align 8, !dbg !4347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %6, i1 false), !dbg !4348
  br label %if.end, !dbg !4348

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %p, align 8, !dbg !4349
  ret i8* %7, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @devm_get_free_pages(%struct.device* %dev, i32 %gfp_mask, i32 %order) #0 !dbg !4351 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %devres = alloca %struct.pages_devres*, align 8
  %addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata %struct.pages_devres** %devres, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !4369
  %1 = load i32, i32* %order.addr, align 4, !dbg !4370
  %call = call i64 @__get_free_pages(i32 %0, i32 %1) #11, !dbg !4371
  store i64 %call, i64* %addr, align 8, !dbg !4372
  %2 = load i64, i64* %addr, align 8, !dbg !4373
  %tobool = icmp ne i64 %2, 0, !dbg !4373
  %lnot = xor i1 %tobool, true, !dbg !4373
  %lnot1 = xor i1 %lnot, true, !dbg !4373
  %lnot2 = xor i1 %lnot1, true, !dbg !4373
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4373
  %conv = sext i32 %lnot.ext to i64, !dbg !4373
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4373
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4375

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !4376
  br label %return, !dbg !4376

if.end:                                           ; preds = %entry
  %call4 = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_pages_release, i64 16, i32 3264) #11, !dbg !4377
  %3 = bitcast i8* %call4 to %struct.pages_devres*, !dbg !4377
  store %struct.pages_devres* %3, %struct.pages_devres** %devres, align 8, !dbg !4378
  %4 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4379
  %tobool5 = icmp ne %struct.pages_devres* %4, null, !dbg !4379
  %lnot6 = xor i1 %tobool5, true, !dbg !4379
  %lnot8 = xor i1 %lnot6, true, !dbg !4379
  %lnot10 = xor i1 %lnot8, true, !dbg !4379
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !4379
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !4379
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !4379
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4381

if.then14:                                        ; preds = %if.end
  %5 = load i64, i64* %addr, align 8, !dbg !4382
  %6 = load i32, i32* %order.addr, align 4, !dbg !4384
  call void @free_pages(i64 %5, i32 %6) #11, !dbg !4385
  store i64 0, i64* %retval, align 8, !dbg !4386
  br label %return, !dbg !4386

if.end15:                                         ; preds = %if.end
  %7 = load i64, i64* %addr, align 8, !dbg !4387
  %8 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4388
  %addr16 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %8, i32 0, i32 0, !dbg !4389
  store i64 %7, i64* %addr16, align 8, !dbg !4390
  %9 = load i32, i32* %order.addr, align 4, !dbg !4391
  %10 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4392
  %order17 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %10, i32 0, i32 1, !dbg !4393
  store i32 %9, i32* %order17, align 8, !dbg !4394
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4395
  %12 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4396
  %13 = bitcast %struct.pages_devres* %12 to i8*, !dbg !4396
  call void @devres_add(%struct.device* %11, i8* %13) #11, !dbg !4397
  %14 = load i64, i64* %addr, align 8, !dbg !4398
  store i64 %14, i64* %retval, align 8, !dbg !4399
  br label %return, !dbg !4399

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !4400
  ret i64 %15, !dbg !4400
}

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_pages_release(%struct.device* %dev, i8* %res) #0 !dbg !4401 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %devres = alloca %struct.pages_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata %struct.pages_devres** %devres, metadata !4406, metadata !DIExpression()), !dbg !4407
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4408
  %1 = bitcast i8* %0 to %struct.pages_devres*, !dbg !4408
  store %struct.pages_devres* %1, %struct.pages_devres** %devres, align 8, !dbg !4407
  %2 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4409
  %addr = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %2, i32 0, i32 0, !dbg !4410
  %3 = load i64, i64* %addr, align 8, !dbg !4410
  %4 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4411
  %order = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %4, i32 0, i32 1, !dbg !4412
  %5 = load i32, i32* %order, align 8, !dbg !4412
  call void @free_pages(i64 %3, i32 %5) #11, !dbg !4413
  ret void, !dbg !4414
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_free_pages(%struct.device* %dev, i64 %addr) #0 !dbg !4415 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i64, align 8
  %devres = alloca %struct.pages_devres, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4418, metadata !DIExpression()), !dbg !4419
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata %struct.pages_devres* %devres, metadata !4422, metadata !DIExpression()), !dbg !4423
  %addr1 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %devres, i32 0, i32 0, !dbg !4424
  %0 = load i64, i64* %addr.addr, align 8, !dbg !4425
  store i64 %0, i64* %addr1, align 8, !dbg !4424
  %order = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %devres, i32 0, i32 1, !dbg !4424
  store i32 0, i32* %order, align 8, !dbg !4424
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4426, metadata !DIExpression()), !dbg !4428
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4428
  %2 = bitcast %struct.pages_devres* %devres to i8*, !dbg !4428
  %call = call i32 @devres_release(%struct.device* %1, void (%struct.device*, i8*)* @devm_pages_release, i32 (%struct.device*, i8*, i8*)* @devm_pages_match, i8* %2) #11, !dbg !4428
  %tobool = icmp ne i32 %call, 0, !dbg !4428
  %lnot = xor i1 %tobool, true, !dbg !4428
  %lnot2 = xor i1 %lnot, true, !dbg !4428
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4428
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4428
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4429
  %tobool3 = icmp ne i32 %3, 0, !dbg !4429
  %lnot4 = xor i1 %tobool3, true, !dbg !4429
  %lnot6 = xor i1 %lnot4, true, !dbg !4429
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4429
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4429
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4429
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4428

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4429

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4431

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4433

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4431

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 1166, i32 2305, i64 12) #4, !dbg !4435, !srcloc !4437
  br label %do.end11, !dbg !4435

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 197) #4, !dbg !4438, !srcloc !4440
  br label %do.body12, !dbg !4431

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4441

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4431

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4431

if.end:                                           ; preds = %do.end14, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4428
  %tobool15 = icmp ne i32 %4, 0, !dbg !4428
  %lnot16 = xor i1 %tobool15, true, !dbg !4428
  %lnot18 = xor i1 %lnot16, true, !dbg !4428
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4428
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4428
  store i64 %conv20, i64* %tmp, align 8, !dbg !4429
  %5 = load i64, i64* %tmp, align 8, !dbg !4428
  ret void, !dbg !4443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_pages_match(%struct.device* %dev, i8* %res, i8* %p) #0 !dbg !4444 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %devres = alloca %struct.pages_devres*, align 8
  %target = alloca %struct.pages_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4445, metadata !DIExpression()), !dbg !4446
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.declare(metadata %struct.pages_devres** %devres, metadata !4451, metadata !DIExpression()), !dbg !4452
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4453
  %1 = bitcast i8* %0 to %struct.pages_devres*, !dbg !4453
  store %struct.pages_devres* %1, %struct.pages_devres** %devres, align 8, !dbg !4452
  call void @llvm.dbg.declare(metadata %struct.pages_devres** %target, metadata !4454, metadata !DIExpression()), !dbg !4455
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4456
  %3 = bitcast i8* %2 to %struct.pages_devres*, !dbg !4456
  store %struct.pages_devres* %3, %struct.pages_devres** %target, align 8, !dbg !4455
  %4 = load %struct.pages_devres*, %struct.pages_devres** %devres, align 8, !dbg !4457
  %addr = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %4, i32 0, i32 0, !dbg !4458
  %5 = load i64, i64* %addr, align 8, !dbg !4458
  %6 = load %struct.pages_devres*, %struct.pages_devres** %target, align 8, !dbg !4459
  %addr1 = getelementptr inbounds %struct.pages_devres, %struct.pages_devres* %6, i32 0, i32 0, !dbg !4460
  %7 = load i64, i64* %addr1, align 8, !dbg !4460
  %cmp = icmp eq i64 %5, %7, !dbg !4461
  %conv = zext i1 %cmp to i32, !dbg !4461
  ret i32 %conv, !dbg !4462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @__devm_alloc_percpu(%struct.device* %dev, i64 %size, i64 %align) #0 !dbg !4463 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %pcpu = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata i8** %pcpu, metadata !4474, metadata !DIExpression()), !dbg !4475
  %0 = load i64, i64* %size.addr, align 8, !dbg !4476
  %1 = load i64, i64* %align.addr, align 8, !dbg !4477
  %call = call i8* @__alloc_percpu(i64 %0, i64 %1) #11, !dbg !4478
  store i8* %call, i8** %pcpu, align 8, !dbg !4479
  %2 = load i8*, i8** %pcpu, align 8, !dbg !4480
  %tobool = icmp ne i8* %2, null, !dbg !4480
  br i1 %tobool, label %if.end, label %if.then, !dbg !4482

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4483
  br label %return, !dbg !4483

if.end:                                           ; preds = %entry
  %call1 = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_percpu_release, i64 8, i32 3264) #11, !dbg !4484
  store i8* %call1, i8** %p, align 8, !dbg !4485
  %3 = load i8*, i8** %p, align 8, !dbg !4486
  %tobool2 = icmp ne i8* %3, null, !dbg !4486
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4488

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %pcpu, align 8, !dbg !4489
  call void @free_percpu(i8* %4) #11, !dbg !4491
  store i8* null, i8** %retval, align 8, !dbg !4492
  br label %return, !dbg !4492

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %pcpu, align 8, !dbg !4493
  %6 = load i8*, i8** %p, align 8, !dbg !4494
  %7 = bitcast i8* %6 to i8**, !dbg !4495
  store i8* %5, i8** %7, align 8, !dbg !4496
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4497
  %9 = load i8*, i8** %p, align 8, !dbg !4498
  call void @devres_add(%struct.device* %8, i8* %9) #11, !dbg !4499
  %10 = load i8*, i8** %pcpu, align 8, !dbg !4500
  store i8* %10, i8** %retval, align 8, !dbg !4501
  br label %return, !dbg !4501

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !4502
  ret i8* %11, !dbg !4502
}

; Function Attrs: noredzone
declare dso_local i8* @__alloc_percpu(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_percpu_release(%struct.device* %dev, i8* %pdata) #0 !dbg !4503 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pdata.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  store i8* %pdata, i8** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdata.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load i8*, i8** %pdata.addr, align 8, !dbg !4510
  %1 = bitcast i8* %0 to i8**, !dbg !4511
  %2 = load i8*, i8** %1, align 8, !dbg !4512
  store i8* %2, i8** %p, align 8, !dbg !4513
  %3 = load i8*, i8** %p, align 8, !dbg !4514
  call void @free_percpu(i8* %3) #11, !dbg !4515
  ret void, !dbg !4516
}

; Function Attrs: noredzone
declare dso_local void @free_percpu(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_free_percpu(%struct.device* %dev, i8* %pdata) #0 !dbg !4517 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pdata.addr = alloca i8*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i8* %pdata, i8** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdata.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4522, metadata !DIExpression()), !dbg !4524
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4524
  %1 = load i8*, i8** %pdata.addr, align 8, !dbg !4524
  %call = call i32 @devres_destroy(%struct.device* %0, void (%struct.device*, i8*)* @devm_percpu_release, i32 (%struct.device*, i8*, i8*)* @devm_percpu_match, i8* %1) #11, !dbg !4524
  %tobool = icmp ne i32 %call, 0, !dbg !4524
  %lnot = xor i1 %tobool, true, !dbg !4524
  %lnot1 = xor i1 %lnot, true, !dbg !4524
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4524
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4524
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4525
  %tobool2 = icmp ne i32 %2, 0, !dbg !4525
  %lnot3 = xor i1 %tobool2, true, !dbg !4525
  %lnot5 = xor i1 %lnot3, true, !dbg !4525
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4525
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4525
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4525
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4524

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4525

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4527

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4529

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4527

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 1231, i32 2305, i64 12) #4, !dbg !4531, !srcloc !4533
  br label %do.end10, !dbg !4531

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 199) #4, !dbg !4534, !srcloc !4536
  br label %do.body11, !dbg !4527

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4537

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4527

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4527

if.end:                                           ; preds = %do.end13, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4524
  %tobool14 = icmp ne i32 %3, 0, !dbg !4524
  %lnot15 = xor i1 %tobool14, true, !dbg !4524
  %lnot17 = xor i1 %lnot15, true, !dbg !4524
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4524
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4524
  store i64 %conv19, i64* %tmp, align 8, !dbg !4525
  %4 = load i64, i64* %tmp, align 8, !dbg !4524
  ret void, !dbg !4539
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_percpu_match(%struct.device* %dev, i8* %data, i8* %p) #0 !dbg !4540 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %devr = alloca %struct.devres*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata %struct.devres** %devr, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4549, metadata !DIExpression()), !dbg !4551
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4551
  store i8* %0, i8** %__mptr, align 8, !dbg !4551
  br label %do.body, !dbg !4551

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4552

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %__mptr, align 8, !dbg !4551
  %add.ptr = getelementptr i8, i8* %1, i64 -24, !dbg !4551
  %2 = bitcast i8* %add.ptr to %struct.devres*, !dbg !4551
  store %struct.devres* %2, %struct.devres** %tmp, align 8, !dbg !4552
  %3 = load %struct.devres*, %struct.devres** %tmp, align 8, !dbg !4551
  store %struct.devres* %3, %struct.devres** %devr, align 8, !dbg !4548
  %4 = load %struct.devres*, %struct.devres** %devr, align 8, !dbg !4554
  %data1 = getelementptr inbounds %struct.devres, %struct.devres* %4, i32 0, i32 1, !dbg !4555
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data1, i64 0, i64 0, !dbg !4556
  %5 = bitcast i8* %arraydecay to i8**, !dbg !4556
  %6 = load i8*, i8** %5, align 8, !dbg !4556
  %7 = load i8*, i8** %p.addr, align 8, !dbg !4557
  %cmp = icmp eq i8* %6, %7, !dbg !4558
  %conv = zext i1 %cmp to i32, !dbg !4558
  ret i32 %conv, !dbg !4559
}

; Function Attrs: noredzone
declare dso_local i8* @__kmalloc_track_caller(i64, i32, i64) #2

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32 immarg) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4560 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4561, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4564, metadata !DIExpression()), !dbg !4563
  %0 = load i64, i64* %__edi, align 8, !dbg !4563
  store i64 %0, i64* %__edi, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4565, metadata !DIExpression()), !dbg !4563
  %1 = load i64, i64* %__esi, align 8, !dbg !4563
  store i64 %1, i64* %__esi, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4566, metadata !DIExpression()), !dbg !4563
  %2 = load i64, i64* %__edx, align 8, !dbg !4563
  store i64 %2, i64* %__edx, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4567, metadata !DIExpression()), !dbg !4563
  %3 = load i64, i64* %__ecx, align 8, !dbg !4563
  store i64 %3, i64* %__ecx, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4568, metadata !DIExpression()), !dbg !4563
  %4 = load i64, i64* %__eax, align 8, !dbg !4563
  store i64 %4, i64* %__eax, align 8, !dbg !4563
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4563
  %6 = call i64 @llvm.read_register.i64(metadata !2009), !dbg !4569
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !4569, !srcloc !4572
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4569
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4569
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4569
  call void @llvm.write_register.i64(metadata !2009, i64 %asmresult1), !dbg !4569
  %8 = load i64, i64* %__eax, align 8, !dbg !4569
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4573, metadata !DIExpression()), !dbg !4575
  store i64 -1, i64* %__mask, align 8, !dbg !4575
  %9 = load i64, i64* %__mask, align 8, !dbg !4575
  store i64 %9, i64* %tmp, align 8, !dbg !4575
  %10 = load i64, i64* %tmp, align 8, !dbg !4575
  %and = and i64 %8, %10, !dbg !4569
  store i64 %and, i64* %__ret, align 8, !dbg !4569
  %11 = load i64, i64* %__ret, align 8, !dbg !4563
  store i64 %11, i64* %tmp2, align 8, !dbg !4576
  %12 = load i64, i64* %tmp2, align 8, !dbg !4563
  ret i64 %12, !dbg !4577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4578 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4581, metadata !DIExpression()), !dbg !4583
  %0 = load i64, i64* %__edi, align 8, !dbg !4583
  store i64 %0, i64* %__edi, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4584, metadata !DIExpression()), !dbg !4583
  %1 = load i64, i64* %__esi, align 8, !dbg !4583
  store i64 %1, i64* %__esi, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4585, metadata !DIExpression()), !dbg !4583
  %2 = load i64, i64* %__edx, align 8, !dbg !4583
  store i64 %2, i64* %__edx, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4586, metadata !DIExpression()), !dbg !4583
  %3 = load i64, i64* %__ecx, align 8, !dbg !4583
  store i64 %3, i64* %__ecx, align 8, !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4587, metadata !DIExpression()), !dbg !4583
  %4 = load i64, i64* %__eax, align 8, !dbg !4583
  store i64 %4, i64* %__eax, align 8, !dbg !4583
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4583
  %6 = call i64 @llvm.read_register.i64(metadata !2009), !dbg !4583
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !4583, !srcloc !4588
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4583
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4583
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4583
  call void @llvm.write_register.i64(metadata !2009, i64 %asmresult1), !dbg !4583
  ret void, !dbg !4589
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4590 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4595, metadata !DIExpression()), !dbg !4597
  %0 = load i64, i64* %__edi, align 8, !dbg !4597
  store i64 %0, i64* %__edi, align 8, !dbg !4597
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4598, metadata !DIExpression()), !dbg !4597
  %1 = load i64, i64* %__esi, align 8, !dbg !4597
  store i64 %1, i64* %__esi, align 8, !dbg !4597
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4599, metadata !DIExpression()), !dbg !4597
  %2 = load i64, i64* %__edx, align 8, !dbg !4597
  store i64 %2, i64* %__edx, align 8, !dbg !4597
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4600, metadata !DIExpression()), !dbg !4597
  %3 = load i64, i64* %__ecx, align 8, !dbg !4597
  store i64 %3, i64* %__ecx, align 8, !dbg !4597
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4601, metadata !DIExpression()), !dbg !4597
  %4 = load i64, i64* %__eax, align 8, !dbg !4597
  store i64 %4, i64* %__eax, align 8, !dbg !4597
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4597
  %6 = call i64 @llvm.read_register.i64(metadata !2009), !dbg !4597
  %7 = load i64, i64* %f.addr, align 8, !dbg !4597
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !4597, !srcloc !4602
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4597
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4597
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4597
  call void @llvm.write_register.i64(metadata !2009, i64 %asmresult1), !dbg !4597
  ret void, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4604 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4611
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4612
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4613
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4613
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4614
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !4615
  ret void, !dbg !4616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4617 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4626
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4628
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4629
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !4630
  br i1 %call, label %if.end, label %if.then, !dbg !4631

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4632

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4633
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4634
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4635
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4636
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4637
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4638
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4639
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4640
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4641
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4642
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4643
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4644
  br label %do.body, !dbg !4645

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4646

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4648

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4646

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4650
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4650
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4650
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4650
  br label %do.end7, !dbg !4650

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4646

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4653 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4660, metadata !DIExpression()), !dbg !4661
  ret i1 true, !dbg !4662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4663 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4666
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !4668
  br i1 %call, label %if.end, label %if.then, !dbg !4669

if.then:                                          ; preds = %entry
  br label %return, !dbg !4670

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4671
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4672
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4672
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4673
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4674
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4674
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !4675
  br label %return, !dbg !4676

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4677 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  ret i1 true, !dbg !4682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4683 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4688
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4689
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4690
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4691
  br label %do.body, !dbg !4692

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4693

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4695

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4693

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4697
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4697
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4697
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4697
  br label %do.end5, !dbg !4697

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4693

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @remove_nodes(%struct.device* %dev, %struct.list_head* %first, %struct.list_head* %end, %struct.list_head* %todo) #0 !dbg !4700 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %first.addr = alloca %struct.list_head*, align 8
  %end.addr = alloca %struct.list_head*, align 8
  %todo.addr = alloca %struct.list_head*, align 8
  %cnt = alloca i32, align 4
  %nr_groups = alloca i32, align 4
  %cur = alloca %struct.list_head*, align 8
  %node = alloca %struct.devres_node*, align 8
  %grp = alloca %struct.devres_group*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres_node*, align 8
  %node14 = alloca %struct.devres_node*, align 8
  %grp15 = alloca %struct.devres_group*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp19 = alloca %struct.devres_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  store %struct.list_head* %first, %struct.list_head** %first.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %first.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  store %struct.list_head* %end, %struct.list_head** %end.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %end.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store %struct.list_head* %todo, %struct.list_head** %todo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %todo.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i32 0, i32* %cnt, align 4, !dbg !4712
  call void @llvm.dbg.declare(metadata i32* %nr_groups, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i32 0, i32* %nr_groups, align 4, !dbg !4714
  call void @llvm.dbg.declare(metadata %struct.list_head** %cur, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load %struct.list_head*, %struct.list_head** %first.addr, align 8, !dbg !4717
  store %struct.list_head* %0, %struct.list_head** %cur, align 8, !dbg !4718
  br label %while.cond, !dbg !4719

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4720
  %2 = load %struct.list_head*, %struct.list_head** %end.addr, align 8, !dbg !4721
  %cmp = icmp ne %struct.list_head* %1, %2, !dbg !4722
  br i1 %cmp, label %while.body, label %while.end, !dbg !4719

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node, metadata !4723, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp, metadata !4726, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4728, metadata !DIExpression()), !dbg !4730
  %3 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4730
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !4730
  store i8* %4, i8** %__mptr, align 8, !dbg !4730
  br label %do.body, !dbg !4730

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4731

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4730
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !4730
  %6 = bitcast i8* %add.ptr to %struct.devres_node*, !dbg !4730
  store %struct.devres_node* %6, %struct.devres_node** %tmp, align 8, !dbg !4731
  %7 = load %struct.devres_node*, %struct.devres_node** %tmp, align 8, !dbg !4730
  store %struct.devres_node* %7, %struct.devres_node** %node, align 8, !dbg !4733
  %8 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4734
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 0, !dbg !4735
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4735
  store %struct.list_head* %9, %struct.list_head** %cur, align 8, !dbg !4736
  %10 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !4737
  %call = call %struct.devres_group* @node_to_group(%struct.devres_node* %10) #11, !dbg !4738
  store %struct.devres_group* %call, %struct.devres_group** %grp, align 8, !dbg !4739
  %11 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !4740
  %tobool = icmp ne %struct.devres_group* %11, null, !dbg !4740
  br i1 %tobool, label %if.then, label %if.else, !dbg !4742

if.then:                                          ; preds = %do.end
  %12 = load %struct.devres_group*, %struct.devres_group** %grp, align 8, !dbg !4743
  %color = getelementptr inbounds %struct.devres_group, %struct.devres_group* %12, i32 0, i32 2, !dbg !4745
  store i32 0, i32* %color, align 8, !dbg !4746
  %13 = load i32, i32* %nr_groups, align 4, !dbg !4747
  %inc = add i32 %13, 1, !dbg !4747
  store i32 %inc, i32* %nr_groups, align 4, !dbg !4747
  br label %if.end7, !dbg !4748

if.else:                                          ; preds = %do.end
  %14 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !4749
  %entry1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %14, i32 0, i32 0, !dbg !4752
  %15 = load %struct.list_head*, %struct.list_head** %first.addr, align 8, !dbg !4753
  %cmp2 = icmp eq %struct.list_head* %entry1, %15, !dbg !4754
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4755

if.then3:                                         ; preds = %if.else
  %16 = load %struct.list_head*, %struct.list_head** %first.addr, align 8, !dbg !4756
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0, !dbg !4757
  %17 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !4757
  store %struct.list_head* %17, %struct.list_head** %first.addr, align 8, !dbg !4758
  br label %if.end, !dbg !4759

if.end:                                           ; preds = %if.then3, %if.else
  %18 = load %struct.devres_node*, %struct.devres_node** %node, align 8, !dbg !4760
  %entry5 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %18, i32 0, i32 0, !dbg !4761
  %19 = load %struct.list_head*, %struct.list_head** %todo.addr, align 8, !dbg !4762
  call void @list_move_tail(%struct.list_head* %entry5, %struct.list_head* %19) #11, !dbg !4763
  %20 = load i32, i32* %cnt, align 4, !dbg !4764
  %inc6 = add i32 %20, 1, !dbg !4764
  store i32 %inc6, i32* %cnt, align 4, !dbg !4764
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %while.cond, !dbg !4719, !llvm.loop !4765

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %nr_groups, align 4, !dbg !4767
  %tobool8 = icmp ne i32 %21, 0, !dbg !4767
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4769

if.then9:                                         ; preds = %while.end
  %22 = load i32, i32* %cnt, align 4, !dbg !4770
  store i32 %22, i32* %retval, align 4, !dbg !4771
  br label %return, !dbg !4771

if.end10:                                         ; preds = %while.end
  %23 = load %struct.list_head*, %struct.list_head** %first.addr, align 8, !dbg !4772
  store %struct.list_head* %23, %struct.list_head** %cur, align 8, !dbg !4773
  br label %while.cond11, !dbg !4774

while.cond11:                                     ; preds = %if.end89, %if.end10
  %24 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4775
  %25 = load %struct.list_head*, %struct.list_head** %end.addr, align 8, !dbg !4776
  %cmp12 = icmp ne %struct.list_head* %24, %25, !dbg !4777
  br i1 %cmp12, label %while.body13, label %while.end90, !dbg !4774

while.body13:                                     ; preds = %while.cond11
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node14, metadata !4778, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.declare(metadata %struct.devres_group** %grp15, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !4783, metadata !DIExpression()), !dbg !4785
  %26 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4785
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !4785
  store i8* %27, i8** %__mptr16, align 8, !dbg !4785
  br label %do.body17, !dbg !4785

do.body17:                                        ; preds = %while.body13
  br label %do.end18, !dbg !4786

do.end18:                                         ; preds = %do.body17
  %28 = load i8*, i8** %__mptr16, align 8, !dbg !4785
  %add.ptr20 = getelementptr i8, i8* %28, i64 0, !dbg !4785
  %29 = bitcast i8* %add.ptr20 to %struct.devres_node*, !dbg !4785
  store %struct.devres_node* %29, %struct.devres_node** %tmp19, align 8, !dbg !4786
  %30 = load %struct.devres_node*, %struct.devres_node** %tmp19, align 8, !dbg !4785
  store %struct.devres_node* %30, %struct.devres_node** %node14, align 8, !dbg !4788
  %31 = load %struct.list_head*, %struct.list_head** %cur, align 8, !dbg !4789
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0, !dbg !4790
  %32 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !4790
  store %struct.list_head* %32, %struct.list_head** %cur, align 8, !dbg !4791
  %33 = load %struct.devres_node*, %struct.devres_node** %node14, align 8, !dbg !4792
  %call22 = call %struct.devres_group* @node_to_group(%struct.devres_node* %33) #11, !dbg !4793
  store %struct.devres_group* %call22, %struct.devres_group** %grp15, align 8, !dbg !4794
  br label %do.body23, !dbg !4795

do.body23:                                        ; preds = %do.end18
  %34 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4796
  %tobool24 = icmp ne %struct.devres_group* %34, null, !dbg !4796
  br i1 %tobool24, label %lor.rhs, label %lor.end, !dbg !4796

lor.rhs:                                          ; preds = %do.body23
  %35 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4796
  %node25 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %35, i32 0, i32 0, !dbg !4796
  %arrayidx = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node25, i64 0, i64 0, !dbg !4796
  %entry26 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx, i32 0, i32 0, !dbg !4796
  %call27 = call i32 @list_empty(%struct.list_head* %entry26) #11, !dbg !4796
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4796
  br label %lor.end, !dbg !4796

lor.end:                                          ; preds = %lor.rhs, %do.body23
  %36 = phi i1 [ true, %do.body23 ], [ %tobool28, %lor.rhs ]
  %lnot = xor i1 %36, true, !dbg !4796
  %lnot29 = xor i1 %lnot, true, !dbg !4796
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !4796
  %conv = sext i32 %lnot.ext to i64, !dbg !4796
  %tobool30 = icmp ne i64 %conv, 0, !dbg !4796
  br i1 %tobool30, label %if.then31, label %if.end40, !dbg !4799

if.then31:                                        ; preds = %lor.end
  br label %do.body32, !dbg !4796

do.body32:                                        ; preds = %if.then31
  br label %do.body33, !dbg !4800

do.body33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4802

do.end34:                                         ; preds = %do.body33
  br label %do.body35, !dbg !4800

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 487, i32 0, i64 12) #4, !dbg !4804, !srcloc !4806
  br label %do.end36, !dbg !4804

do.end36:                                         ; preds = %do.body35
  br label %do.body37, !dbg !4800

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 178) #4, !dbg !4807, !srcloc !4810
  unreachable, !dbg !4811

do.end38:                                         ; No predecessors!
  br label %do.end39, !dbg !4800

do.end39:                                         ; preds = %do.end38
  br label %if.end40, !dbg !4800

if.end40:                                         ; preds = %do.end39, %lor.end
  br label %do.end41, !dbg !4799

do.end41:                                         ; preds = %if.end40
  %37 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4812
  %color42 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %37, i32 0, i32 2, !dbg !4813
  %38 = load i32, i32* %color42, align 8, !dbg !4814
  %inc43 = add i32 %38, 1, !dbg !4814
  store i32 %inc43, i32* %color42, align 8, !dbg !4814
  %39 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4815
  %node44 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %39, i32 0, i32 0, !dbg !4817
  %arrayidx45 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node44, i64 0, i64 1, !dbg !4815
  %entry46 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx45, i32 0, i32 0, !dbg !4818
  %call47 = call i32 @list_empty(%struct.list_head* %entry46) #11, !dbg !4819
  %tobool48 = icmp ne i32 %call47, 0, !dbg !4819
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !4820

if.then49:                                        ; preds = %do.end41
  %40 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4821
  %color50 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %40, i32 0, i32 2, !dbg !4822
  %41 = load i32, i32* %color50, align 8, !dbg !4823
  %inc51 = add i32 %41, 1, !dbg !4823
  store i32 %inc51, i32* %color50, align 8, !dbg !4823
  br label %if.end52, !dbg !4821

if.end52:                                         ; preds = %if.then49, %do.end41
  br label %do.body53, !dbg !4824

do.body53:                                        ; preds = %if.end52
  %42 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4825
  %color54 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %42, i32 0, i32 2, !dbg !4825
  %43 = load i32, i32* %color54, align 8, !dbg !4825
  %cmp55 = icmp sle i32 %43, 0, !dbg !4825
  br i1 %cmp55, label %lor.end61, label %lor.rhs57, !dbg !4825

lor.rhs57:                                        ; preds = %do.body53
  %44 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4825
  %color58 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %44, i32 0, i32 2, !dbg !4825
  %45 = load i32, i32* %color58, align 8, !dbg !4825
  %cmp59 = icmp sgt i32 %45, 2, !dbg !4825
  br label %lor.end61, !dbg !4825

lor.end61:                                        ; preds = %lor.rhs57, %do.body53
  %46 = phi i1 [ true, %do.body53 ], [ %cmp59, %lor.rhs57 ]
  %lnot62 = xor i1 %46, true, !dbg !4825
  %lnot64 = xor i1 %lnot62, true, !dbg !4825
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !4825
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !4825
  %tobool67 = icmp ne i64 %conv66, 0, !dbg !4825
  br i1 %tobool67, label %if.then68, label %if.end77, !dbg !4828

if.then68:                                        ; preds = %lor.end61
  br label %do.body69, !dbg !4825

do.body69:                                        ; preds = %if.then68
  br label %do.body70, !dbg !4829

do.body70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !4831

do.end71:                                         ; preds = %do.body70
  br label %do.body72, !dbg !4829

do.body72:                                        ; preds = %do.end71
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 493, i32 0, i64 12) #4, !dbg !4833, !srcloc !4835
  br label %do.end73, !dbg !4833

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4829

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 179) #4, !dbg !4836, !srcloc !4839
  unreachable, !dbg !4840

do.end75:                                         ; No predecessors!
  br label %do.end76, !dbg !4829

do.end76:                                         ; preds = %do.end75
  br label %if.end77, !dbg !4829

if.end77:                                         ; preds = %do.end76, %lor.end61
  br label %do.end78, !dbg !4828

do.end78:                                         ; preds = %if.end77
  %47 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4841
  %color79 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %47, i32 0, i32 2, !dbg !4843
  %48 = load i32, i32* %color79, align 8, !dbg !4843
  %cmp80 = icmp eq i32 %48, 2, !dbg !4844
  br i1 %cmp80, label %if.then82, label %if.end89, !dbg !4845

if.then82:                                        ; preds = %do.end78
  %49 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4846
  %node83 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %49, i32 0, i32 0, !dbg !4848
  %arrayidx84 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node83, i64 0, i64 0, !dbg !4846
  %entry85 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx84, i32 0, i32 0, !dbg !4849
  %50 = load %struct.list_head*, %struct.list_head** %todo.addr, align 8, !dbg !4850
  call void @list_move_tail(%struct.list_head* %entry85, %struct.list_head* %50) #11, !dbg !4851
  %51 = load %struct.devres_group*, %struct.devres_group** %grp15, align 8, !dbg !4852
  %node86 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %51, i32 0, i32 0, !dbg !4853
  %arrayidx87 = getelementptr [2 x %struct.devres_node], [2 x %struct.devres_node]* %node86, i64 0, i64 1, !dbg !4852
  %entry88 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %arrayidx87, i32 0, i32 0, !dbg !4854
  call void @list_del_init(%struct.list_head* %entry88) #11, !dbg !4855
  br label %if.end89, !dbg !4856

if.end89:                                         ; preds = %if.then82, %do.end78
  br label %while.cond11, !dbg !4774, !llvm.loop !4857

while.end90:                                      ; preds = %while.cond11
  %52 = load i32, i32* %cnt, align 4, !dbg !4859
  store i32 %52, i32* %retval, align 4, !dbg !4860
  br label %return, !dbg !4860

return:                                           ; preds = %while.end90, %if.then9
  %53 = load i32, i32* %retval, align 4, !dbg !4861
  ret i32 %53, !dbg !4861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.devres_group* @node_to_group(%struct.devres_node* %node) #0 !dbg !4862 {
entry:
  %retval = alloca %struct.devres_group*, align 8
  %node.addr = alloca %struct.devres_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.devres_group*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp7 = alloca %struct.devres_group*, align 8
  store %struct.devres_node* %node, %struct.devres_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.devres_node** %node.addr, metadata !4865, metadata !DIExpression()), !dbg !4866
  %0 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !4867
  %release = getelementptr inbounds %struct.devres_node, %struct.devres_node* %0, i32 0, i32 1, !dbg !4869
  %1 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8, !dbg !4869
  %cmp = icmp eq void (%struct.device*, i8*)* %1, @group_open_release, !dbg !4870
  br i1 %cmp, label %if.then, label %if.end, !dbg !4871

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4872, metadata !DIExpression()), !dbg !4874
  %2 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !4874
  %3 = bitcast %struct.devres_node* %2 to i8*, !dbg !4874
  store i8* %3, i8** %__mptr, align 8, !dbg !4874
  br label %do.body, !dbg !4874

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4875

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4874
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4874
  %5 = bitcast i8* %add.ptr to %struct.devres_group*, !dbg !4874
  store %struct.devres_group* %5, %struct.devres_group** %tmp, align 8, !dbg !4875
  %6 = load %struct.devres_group*, %struct.devres_group** %tmp, align 8, !dbg !4874
  store %struct.devres_group* %6, %struct.devres_group** %retval, align 8, !dbg !4877
  br label %return, !dbg !4877

if.end:                                           ; preds = %entry
  %7 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !4878
  %release1 = getelementptr inbounds %struct.devres_node, %struct.devres_node* %7, i32 0, i32 1, !dbg !4880
  %8 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release1, align 8, !dbg !4880
  %cmp2 = icmp eq void (%struct.device*, i8*)* %8, @group_close_release, !dbg !4881
  br i1 %cmp2, label %if.then3, label %if.end9, !dbg !4882

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4883, metadata !DIExpression()), !dbg !4885
  %9 = load %struct.devres_node*, %struct.devres_node** %node.addr, align 8, !dbg !4885
  %10 = bitcast %struct.devres_node* %9 to i8*, !dbg !4885
  store i8* %10, i8** %__mptr4, align 8, !dbg !4885
  br label %do.body5, !dbg !4885

do.body5:                                         ; preds = %if.then3
  br label %do.end6, !dbg !4886

do.end6:                                          ; preds = %do.body5
  %11 = load i8*, i8** %__mptr4, align 8, !dbg !4885
  %add.ptr8 = getelementptr i8, i8* %11, i64 -24, !dbg !4885
  %12 = bitcast i8* %add.ptr8 to %struct.devres_group*, !dbg !4885
  store %struct.devres_group* %12, %struct.devres_group** %tmp7, align 8, !dbg !4886
  %13 = load %struct.devres_group*, %struct.devres_group** %tmp7, align 8, !dbg !4885
  store %struct.devres_group* %13, %struct.devres_group** %retval, align 8, !dbg !4888
  br label %return, !dbg !4888

if.end9:                                          ; preds = %if.end
  store %struct.devres_group* null, %struct.devres_group** %retval, align 8, !dbg !4889
  br label %return, !dbg !4889

return:                                           ; preds = %if.end9, %do.end6, %do.end
  %14 = load %struct.devres_group*, %struct.devres_group** %retval, align 8, !dbg !4890
  ret %struct.devres_group* %14, !dbg !4890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_move_tail(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !4891 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4896
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !4897
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4898
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4899
  call void @list_add_tail(%struct.list_head* %1, %struct.list_head* %2) #11, !dbg !4900
  ret void, !dbg !4901
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !4902 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4906, metadata !DIExpression()), !dbg !4911
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4913, metadata !DIExpression()), !dbg !4914
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  %0 = load i64, i64* %size.addr, align 8, !dbg !4917
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4919
  br i1 %1, label %if.then, label %if.end447, !dbg !4920

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4921
  %tobool = icmp ne i64 %2, 0, !dbg !4921
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4924

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4926
  %cmp = icmp ult i64 %3, 4096, !dbg !4928
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4929

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub = sub i64 %4, 1, !dbg !4931
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4931
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4931

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub4 = sub i64 %6, 1, !dbg !4931
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4931
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4931

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub6 = sub i64 %8, 1, !dbg !4931
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4931
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4931

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4931

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub9 = sub i64 %9, 1, !dbg !4931
  %and = and i64 %sub9, -9223372036854775808, !dbg !4931
  %tobool10 = icmp ne i64 %and, 0, !dbg !4931
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4931

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4931

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub13 = sub i64 %10, 1, !dbg !4931
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4931
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4931
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4931

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4931

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub18 = sub i64 %11, 1, !dbg !4931
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4931
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4931
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4931

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4931

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub23 = sub i64 %12, 1, !dbg !4931
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4931
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4931
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4931

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4931

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub28 = sub i64 %13, 1, !dbg !4931
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4931
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4931
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4931

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4931

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub33 = sub i64 %14, 1, !dbg !4931
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4931
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4931
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4931

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4931

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub38 = sub i64 %15, 1, !dbg !4931
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4931
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4931
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4931

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4931

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub43 = sub i64 %16, 1, !dbg !4931
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4931
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4931
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4931

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4931

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub48 = sub i64 %17, 1, !dbg !4931
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4931
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4931
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4931

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4931

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub53 = sub i64 %18, 1, !dbg !4931
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4931
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4931
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4931

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4931

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub58 = sub i64 %19, 1, !dbg !4931
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4931
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4931
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4931

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4931

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub63 = sub i64 %20, 1, !dbg !4931
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4931
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4931
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4931

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4931

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub68 = sub i64 %21, 1, !dbg !4931
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4931
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4931
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4931

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4931

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub73 = sub i64 %22, 1, !dbg !4931
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4931
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4931
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4931

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4931

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub78 = sub i64 %23, 1, !dbg !4931
  %and79 = and i64 %sub78, 562949953421312, !dbg !4931
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4931
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4931

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4931

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub83 = sub i64 %24, 1, !dbg !4931
  %and84 = and i64 %sub83, 281474976710656, !dbg !4931
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4931
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4931

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4931

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub88 = sub i64 %25, 1, !dbg !4931
  %and89 = and i64 %sub88, 140737488355328, !dbg !4931
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4931
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4931

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4931

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub93 = sub i64 %26, 1, !dbg !4931
  %and94 = and i64 %sub93, 70368744177664, !dbg !4931
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4931
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4931

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4931

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub98 = sub i64 %27, 1, !dbg !4931
  %and99 = and i64 %sub98, 35184372088832, !dbg !4931
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4931
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4931

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4931

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub103 = sub i64 %28, 1, !dbg !4931
  %and104 = and i64 %sub103, 17592186044416, !dbg !4931
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4931
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4931

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4931

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub108 = sub i64 %29, 1, !dbg !4931
  %and109 = and i64 %sub108, 8796093022208, !dbg !4931
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4931
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4931

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4931

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub113 = sub i64 %30, 1, !dbg !4931
  %and114 = and i64 %sub113, 4398046511104, !dbg !4931
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4931
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4931

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4931

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub118 = sub i64 %31, 1, !dbg !4931
  %and119 = and i64 %sub118, 2199023255552, !dbg !4931
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4931
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4931

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4931

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub123 = sub i64 %32, 1, !dbg !4931
  %and124 = and i64 %sub123, 1099511627776, !dbg !4931
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4931
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4931

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4931

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub128 = sub i64 %33, 1, !dbg !4931
  %and129 = and i64 %sub128, 549755813888, !dbg !4931
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4931
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4931

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4931

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub133 = sub i64 %34, 1, !dbg !4931
  %and134 = and i64 %sub133, 274877906944, !dbg !4931
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4931
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4931

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4931

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub138 = sub i64 %35, 1, !dbg !4931
  %and139 = and i64 %sub138, 137438953472, !dbg !4931
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4931
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4931

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4931

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub143 = sub i64 %36, 1, !dbg !4931
  %and144 = and i64 %sub143, 68719476736, !dbg !4931
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4931
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4931

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4931

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub148 = sub i64 %37, 1, !dbg !4931
  %and149 = and i64 %sub148, 34359738368, !dbg !4931
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4931
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4931

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4931

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub153 = sub i64 %38, 1, !dbg !4931
  %and154 = and i64 %sub153, 17179869184, !dbg !4931
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4931
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4931

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4931

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub158 = sub i64 %39, 1, !dbg !4931
  %and159 = and i64 %sub158, 8589934592, !dbg !4931
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4931
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4931

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4931

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub163 = sub i64 %40, 1, !dbg !4931
  %and164 = and i64 %sub163, 4294967296, !dbg !4931
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4931
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4931

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4931

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub168 = sub i64 %41, 1, !dbg !4931
  %and169 = and i64 %sub168, 2147483648, !dbg !4931
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4931
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4931

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4931

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub173 = sub i64 %42, 1, !dbg !4931
  %and174 = and i64 %sub173, 1073741824, !dbg !4931
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4931
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4931

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4931

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub178 = sub i64 %43, 1, !dbg !4931
  %and179 = and i64 %sub178, 536870912, !dbg !4931
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4931
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4931

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4931

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub183 = sub i64 %44, 1, !dbg !4931
  %and184 = and i64 %sub183, 268435456, !dbg !4931
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4931
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4931

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4931

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub188 = sub i64 %45, 1, !dbg !4931
  %and189 = and i64 %sub188, 134217728, !dbg !4931
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4931
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4931

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4931

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub193 = sub i64 %46, 1, !dbg !4931
  %and194 = and i64 %sub193, 67108864, !dbg !4931
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4931
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4931

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4931

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub198 = sub i64 %47, 1, !dbg !4931
  %and199 = and i64 %sub198, 33554432, !dbg !4931
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4931
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4931

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4931

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub203 = sub i64 %48, 1, !dbg !4931
  %and204 = and i64 %sub203, 16777216, !dbg !4931
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4931
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4931

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4931

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub208 = sub i64 %49, 1, !dbg !4931
  %and209 = and i64 %sub208, 8388608, !dbg !4931
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4931
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4931

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4931

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub213 = sub i64 %50, 1, !dbg !4931
  %and214 = and i64 %sub213, 4194304, !dbg !4931
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4931
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4931

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4931

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub218 = sub i64 %51, 1, !dbg !4931
  %and219 = and i64 %sub218, 2097152, !dbg !4931
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4931
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4931

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4931

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub223 = sub i64 %52, 1, !dbg !4931
  %and224 = and i64 %sub223, 1048576, !dbg !4931
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4931
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4931

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4931

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub228 = sub i64 %53, 1, !dbg !4931
  %and229 = and i64 %sub228, 524288, !dbg !4931
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4931
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4931

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4931

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub233 = sub i64 %54, 1, !dbg !4931
  %and234 = and i64 %sub233, 262144, !dbg !4931
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4931
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4931

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4931

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub238 = sub i64 %55, 1, !dbg !4931
  %and239 = and i64 %sub238, 131072, !dbg !4931
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4931
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4931

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4931

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub243 = sub i64 %56, 1, !dbg !4931
  %and244 = and i64 %sub243, 65536, !dbg !4931
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4931
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4931

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4931

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub248 = sub i64 %57, 1, !dbg !4931
  %and249 = and i64 %sub248, 32768, !dbg !4931
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4931
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4931

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4931

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub253 = sub i64 %58, 1, !dbg !4931
  %and254 = and i64 %sub253, 16384, !dbg !4931
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4931
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4931

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4931

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub258 = sub i64 %59, 1, !dbg !4931
  %and259 = and i64 %sub258, 8192, !dbg !4931
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4931
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4931

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4931

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub263 = sub i64 %60, 1, !dbg !4931
  %and264 = and i64 %sub263, 4096, !dbg !4931
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4931
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4931

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4931

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub268 = sub i64 %61, 1, !dbg !4931
  %and269 = and i64 %sub268, 2048, !dbg !4931
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4931
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4931

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4931

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub273 = sub i64 %62, 1, !dbg !4931
  %and274 = and i64 %sub273, 1024, !dbg !4931
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4931
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4931

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4931

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub278 = sub i64 %63, 1, !dbg !4931
  %and279 = and i64 %sub278, 512, !dbg !4931
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4931
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4931

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4931

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub283 = sub i64 %64, 1, !dbg !4931
  %and284 = and i64 %sub283, 256, !dbg !4931
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4931
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4931

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4931

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub288 = sub i64 %65, 1, !dbg !4931
  %and289 = and i64 %sub288, 128, !dbg !4931
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4931
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4931

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4931

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub293 = sub i64 %66, 1, !dbg !4931
  %and294 = and i64 %sub293, 64, !dbg !4931
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4931
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4931

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4931

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub298 = sub i64 %67, 1, !dbg !4931
  %and299 = and i64 %sub298, 32, !dbg !4931
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4931
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4931

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4931

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub303 = sub i64 %68, 1, !dbg !4931
  %and304 = and i64 %sub303, 16, !dbg !4931
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4931
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4931

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4931

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub308 = sub i64 %69, 1, !dbg !4931
  %and309 = and i64 %sub308, 8, !dbg !4931
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4931
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4931

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4931

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub313 = sub i64 %70, 1, !dbg !4931
  %and314 = and i64 %sub313, 4, !dbg !4931
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4931
  %71 = zext i1 %tobool315 to i64, !dbg !4931
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4931
  br label %cond.end, !dbg !4931

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4931
  br label %cond.end317, !dbg !4931

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4931
  br label %cond.end319, !dbg !4931

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4931
  br label %cond.end321, !dbg !4931

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4931
  br label %cond.end323, !dbg !4931

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4931
  br label %cond.end325, !dbg !4931

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4931
  br label %cond.end327, !dbg !4931

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4931
  br label %cond.end329, !dbg !4931

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4931
  br label %cond.end331, !dbg !4931

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4931
  br label %cond.end333, !dbg !4931

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4931
  br label %cond.end335, !dbg !4931

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4931
  br label %cond.end337, !dbg !4931

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4931
  br label %cond.end339, !dbg !4931

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4931
  br label %cond.end341, !dbg !4931

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4931
  br label %cond.end343, !dbg !4931

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4931
  br label %cond.end345, !dbg !4931

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4931
  br label %cond.end347, !dbg !4931

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4931
  br label %cond.end349, !dbg !4931

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4931
  br label %cond.end351, !dbg !4931

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4931
  br label %cond.end353, !dbg !4931

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4931
  br label %cond.end355, !dbg !4931

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4931
  br label %cond.end357, !dbg !4931

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4931
  br label %cond.end359, !dbg !4931

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4931
  br label %cond.end361, !dbg !4931

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4931
  br label %cond.end363, !dbg !4931

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4931
  br label %cond.end365, !dbg !4931

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4931
  br label %cond.end367, !dbg !4931

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4931
  br label %cond.end369, !dbg !4931

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4931
  br label %cond.end371, !dbg !4931

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4931
  br label %cond.end373, !dbg !4931

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4931
  br label %cond.end375, !dbg !4931

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4931
  br label %cond.end377, !dbg !4931

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4931
  br label %cond.end379, !dbg !4931

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4931
  br label %cond.end381, !dbg !4931

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4931
  br label %cond.end383, !dbg !4931

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4931
  br label %cond.end385, !dbg !4931

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4931
  br label %cond.end387, !dbg !4931

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4931
  br label %cond.end389, !dbg !4931

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4931
  br label %cond.end391, !dbg !4931

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4931
  br label %cond.end393, !dbg !4931

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4931
  br label %cond.end395, !dbg !4931

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4931
  br label %cond.end397, !dbg !4931

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4931
  br label %cond.end399, !dbg !4931

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4931
  br label %cond.end401, !dbg !4931

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4931
  br label %cond.end403, !dbg !4931

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4931
  br label %cond.end405, !dbg !4931

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4931
  br label %cond.end407, !dbg !4931

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4931
  br label %cond.end409, !dbg !4931

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4931
  br label %cond.end411, !dbg !4931

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4931
  br label %cond.end413, !dbg !4931

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4931
  br label %cond.end415, !dbg !4931

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4931
  br label %cond.end417, !dbg !4931

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4931
  br label %cond.end419, !dbg !4931

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4931
  br label %cond.end421, !dbg !4931

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4931
  br label %cond.end423, !dbg !4931

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4931
  br label %cond.end425, !dbg !4931

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4931
  br label %cond.end427, !dbg !4931

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4931
  br label %cond.end429, !dbg !4931

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4931
  br label %cond.end431, !dbg !4931

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4931
  br label %cond.end433, !dbg !4931

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4931
  br label %cond.end435, !dbg !4931

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4931
  br label %cond.end437, !dbg !4931

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4931
  br label %cond.end440, !dbg !4931

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4931

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4931
  br label %cond.end444, !dbg !4931

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub443 = sub i64 %72, 1, !dbg !4931
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4931
  br label %cond.end444, !dbg !4931

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4931
  %sub446 = sub i32 %cond445, 12, !dbg !4932
  %add = add i32 %sub446, 1, !dbg !4933
  store i32 %add, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4935
  %dec = add i64 %73, -1, !dbg !4935
  store i64 %dec, i64* %size.addr, align 8, !dbg !4935
  %74 = load i64, i64* %size.addr, align 8, !dbg !4936
  %shr = lshr i64 %74, 12, !dbg !4936
  store i64 %shr, i64* %size.addr, align 8, !dbg !4936
  %75 = load i64, i64* %size.addr, align 8, !dbg !4937
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4914
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4938
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4939
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !4938, !srcloc !4940
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4938
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4941
  %add.i = add i32 %79, 1, !dbg !4942
  store i32 %add.i, i32* %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4944
  ret i32 %80, !dbg !4944
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !4945 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4906, metadata !DIExpression()), !dbg !4949
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4913, metadata !DIExpression()), !dbg !4951
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load i64, i64* %n.addr, align 8, !dbg !4954
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4951
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4955
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4956
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !4955, !srcloc !4940
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4955
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4957
  %add.i = add i32 %4, 1, !dbg !4958
  %sub = sub i32 %add.i, 1, !dbg !4959
  ret i32 %sub, !dbg !4960
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4961 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4973
  ret i8* %0, !dbg !4974
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4975 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4981
  %tobool = trunc i8 %0 to i1, !dbg !4981
  %lnot = xor i1 %tobool, true, !dbg !4981
  %lnot1 = xor i1 %lnot, true, !dbg !4981
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4981
  %conv = sext i32 %lnot.ext to i64, !dbg !4981
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4981
  ret i1 %tobool2, !dbg !4982
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_replace(%struct.list_head* %old, %struct.list_head* %new) #0 !dbg !4983 {
entry:
  %old.addr = alloca %struct.list_head*, align 8
  %new.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %old, %struct.list_head** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %old.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !4988
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4989
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4989
  %2 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4990
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4991
  store %struct.list_head* %1, %struct.list_head** %next1, align 8, !dbg !4992
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4993
  %4 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4994
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0, !dbg !4995
  %5 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !4995
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !4996
  store %struct.list_head* %3, %struct.list_head** %prev, align 8, !dbg !4997
  %6 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !4998
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !4999
  %7 = load %struct.list_head*, %struct.list_head** %prev3, align 8, !dbg !4999
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5000
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5001
  store %struct.list_head* %7, %struct.list_head** %prev4, align 8, !dbg !5002
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5003
  %10 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5004
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1, !dbg !5005
  %11 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !5005
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !5006
  store %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5007
  ret void, !dbg !5008
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!2009}
!llvm.module.flags = !{!2010, !2011, !2012, !2013}
!llvm.ident = !{!2014}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/base/devres.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !53}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !54, line: 305, baseType: !5, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!60 = !{!61, !63, !64, !1991, !190, !1997, !1998, !2001, !2002}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !62, line: 148, baseType: !5)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devres_node", file: !1, line: 18, size: 192, elements: !66)
!66 = !{!67, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !65, file: !1, line: 19, baseType: !68, size: 128)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 178, size: 128, elements: !69)
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !62, line: 179, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !68, file: !62, line: 179, baseType: !71, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !65, file: !1, line: 20, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !28, line: 165, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !63}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !80)
!80 = !{!81, !1570, !1571, !1792, !1793, !1807, !1808, !1809, !1810, !1811, !1812, !1821, !1926, !1939, !1942, !1943, !1947, !1949, !1950, !1951, !1955, !1961, !1962, !1965, !1969, !1972, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1984, !1987, !1988, !1989, !1990}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !79, file: !28, line: 462, baseType: !82, size: 512)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !83, line: 64, size: 512, elements: !84)
!83 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !89, !90, !92, !153, !1407, !1560, !1565, !1566, !1567, !1568, !1569}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 65, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !82, file: !83, line: 66, baseType: !68, size: 128, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !83, line: 67, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !82, file: !83, line: 68, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !83, line: 192, size: 704, elements: !95)
!95 = !{!96, !97, !113, !114}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !94, file: !83, line: 193, baseType: !68, size: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !94, file: !83, line: 194, baseType: !98, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 83, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 71, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 72, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 72, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 73, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !99, line: 20, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !99, line: 21, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 25, elements: !112)
!112 = !{}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !94, file: !83, line: 195, baseType: !82, size: 512, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !94, file: !83, line: 196, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !83, line: 156, size: 192, elements: !118)
!118 = !{!119, !125, !130}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !117, file: !83, line: 157, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !93, !91}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !83, line: 158, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!86, !93, !91}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !117, file: !83, line: 159, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!124, !93, !91, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !83, line: 148, size: 20736, elements: !137)
!137 = !{!138, !143, !147, !148, !152}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !136, file: !83, line: 149, baseType: !139, size: 192)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!141 = !{!142}
!142 = !DISubrange(count: 3)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !136, file: !83, line: 150, baseType: !144, size: 4096, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 4096, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !136, file: !83, line: 151, baseType: !124, size: 32, offset: 4288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !136, file: !83, line: 152, baseType: !149, size: 16384, offset: 4320)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 16384, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 2048)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !136, file: !83, line: 153, baseType: !124, size: 32, offset: 20704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !82, file: !83, line: 69, baseType: !154, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !83, line: 138, size: 448, elements: !156)
!156 = !{!157, !161, !191, !193, !1353, !1386, !1390}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !155, file: !83, line: 139, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !91}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !155, file: !83, line: 140, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !165, line: 230, size: 128, elements: !166)
!165 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !183}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !164, file: !165, line: 231, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !91, !176, !140}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !62, line: 60, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !173, line: 73, baseType: !174)
!173 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !173, line: 15, baseType: !175)
!175 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !165, line: 30, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !165, line: 31, baseType: !86, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !177, file: !165, line: 32, baseType: !181, size: 16, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !62, line: 19, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !164, file: !165, line: 232, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!171, !91, !176, !86, !187}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 55, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !173, line: 72, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !173, line: 16, baseType: !190)
!190 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !155, file: !83, line: 141, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !155, file: !83, line: 142, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !165, line: 84, size: 320, elements: !198)
!198 = !{!199, !200, !204, !1350, !1351}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !165, line: 85, baseType: !86, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !197, file: !165, line: 86, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!181, !91, !176, !124}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !197, file: !165, line: 88, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!181, !91, !208, !124}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !165, line: 168, size: 448, elements: !210)
!210 = !{!211, !212, !213, !214, !224, !225}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !209, file: !165, line: 169, baseType: !177, size: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !165, line: 170, baseType: !187, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !209, file: !165, line: 171, baseType: !63, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !209, file: !165, line: 172, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!171, !218, !91, !208, !140, !221, !187}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !220, line: 526, flags: DIFlagFwdDecl)
!220 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !62, line: 46, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !173, line: 88, baseType: !223)
!223 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !209, file: !165, line: 174, baseType: !215, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !209, file: !165, line: 176, baseType: !226, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!124, !218, !91, !208, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !231, line: 305, size: 1472, elements: !232)
!231 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !234, !235, !236, !237, !245, !246, !1324, !1330, !1331, !1336, !1337, !1340, !1344, !1345, !1346, !1347, !1348}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !230, file: !231, line: 308, baseType: !190, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !230, file: !231, line: 309, baseType: !190, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !230, file: !231, line: 313, baseType: !229, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !230, file: !231, line: 313, baseType: !229, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !230, file: !231, line: 315, baseType: !238, size: 192, align: 64, offset: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !239, line: 24, size: 192, align: 64, elements: !240)
!239 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!240 = !{!241, !242, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !238, file: !239, line: 25, baseType: !190, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !238, file: !239, line: 26, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !238, file: !239, line: 27, baseType: !243, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !230, file: !231, line: 323, baseType: !190, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !230, file: !231, line: 327, baseType: !247, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !231, line: 388, size: 7296, elements: !249)
!249 = !{!250, !1320}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !231, line: 389, baseType: !251, size: 7296)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !231, line: 389, size: 7296, elements: !252)
!252 = !{!253, !254, !258, !264, !268, !269, !270, !271, !272, !280, !285, !286, !287, !288, !297, !298, !299, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !334, !342, !345, !393, !394, !1290, !1291, !1294, !1298, !1299, !1302, !1303, !1304, !1307, !1319}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !251, file: !231, line: 390, baseType: !229, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !251, file: !231, line: 391, baseType: !255, size: 64, offset: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !239, line: 31, size: 64, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !255, file: !239, line: 32, baseType: !243, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !251, file: !231, line: 392, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !260, line: 23, baseType: !261)
!260 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !262, line: 31, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!263 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !251, file: !231, line: 394, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!190, !218, !190, !190, !190, !190}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !251, file: !231, line: 398, baseType: !190, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !251, file: !231, line: 399, baseType: !190, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !251, file: !231, line: 405, baseType: !190, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !251, file: !231, line: 406, baseType: !190, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !251, file: !231, line: 407, baseType: !273, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !220, line: 286, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 286, size: 64, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !275, file: !220, line: 286, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !279, line: 18, baseType: !190)
!279 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !251, file: !231, line: 416, baseType: !281, size: 32, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !62, line: 168, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 166, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !282, file: !62, line: 167, baseType: !124, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !251, file: !231, line: 428, baseType: !281, size: 32, offset: 608)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !251, file: !231, line: 437, baseType: !281, size: 32, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !251, file: !231, line: 447, baseType: !281, size: 32, offset: 672)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !251, file: !231, line: 450, baseType: !289, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !290, line: 13, baseType: !291)
!290 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 175, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 173, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !62, line: 174, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !260, line: 22, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !262, line: 30, baseType: !223)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !251, file: !231, line: 452, baseType: !124, size: 32, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !251, file: !231, line: 454, baseType: !98, offset: 800)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !251, file: !231, line: 457, baseType: !300, size: 256, offset: 832)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !301, line: 35, size: 256, elements: !302)
!301 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !304, !305, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !300, file: !301, line: 36, baseType: !289, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !300, file: !301, line: 42, baseType: !289, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !300, file: !301, line: 46, baseType: !306, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !99, line: 29, baseType: !106)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !300, file: !301, line: 47, baseType: !68, size: 128, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !251, file: !231, line: 459, baseType: !68, size: 128, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !251, file: !231, line: 466, baseType: !190, size: 64, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !251, file: !231, line: 467, baseType: !190, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !251, file: !231, line: 469, baseType: !190, size: 64, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !251, file: !231, line: 470, baseType: !190, size: 64, offset: 1408)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !251, file: !231, line: 471, baseType: !291, size: 64, offset: 1472)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !251, file: !231, line: 472, baseType: !190, size: 64, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !251, file: !231, line: 473, baseType: !190, size: 64, offset: 1600)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !251, file: !231, line: 474, baseType: !190, size: 64, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !251, file: !231, line: 475, baseType: !190, size: 64, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !251, file: !231, line: 477, baseType: !98, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !251, file: !231, line: 478, baseType: !190, size: 64, offset: 1792)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !251, file: !231, line: 478, baseType: !190, size: 64, offset: 1856)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !251, file: !231, line: 478, baseType: !190, size: 64, offset: 1920)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !251, file: !231, line: 478, baseType: !190, size: 64, offset: 1984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !251, file: !231, line: 479, baseType: !190, size: 64, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !251, file: !231, line: 479, baseType: !190, size: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !251, file: !231, line: 479, baseType: !190, size: 64, offset: 2176)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !251, file: !231, line: 480, baseType: !190, size: 64, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !251, file: !231, line: 480, baseType: !190, size: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !251, file: !231, line: 480, baseType: !190, size: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !251, file: !231, line: 480, baseType: !190, size: 64, offset: 2432)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !251, file: !231, line: 482, baseType: !331, size: 2816, offset: 2496)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2816, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 44)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !251, file: !231, line: 488, baseType: !335, size: 256, offset: 5312)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !336, line: 60, size: 256, elements: !337)
!336 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !335, file: !336, line: 61, baseType: !339, size: 256)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 4)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !251, file: !231, line: 490, baseType: !343, size: 64, offset: 5568)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !231, line: 490, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !251, file: !231, line: 493, baseType: !346, size: 896, offset: 5632)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !347, line: 53, baseType: !348)
!347 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 13, size: 896, elements: !349)
!349 = !{!350, !351, !352, !353, !356, !357, !364, !365, !385, !386, !389}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !348, file: !347, line: 18, baseType: !259, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !348, file: !347, line: 28, baseType: !291, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !348, file: !347, line: 31, baseType: !300, size: 256, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !348, file: !347, line: 32, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !347, line: 32, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !348, file: !347, line: 37, baseType: !182, size: 16, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !348, file: !347, line: 40, baseType: !358, size: 192, offset: 512)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !359, line: 53, size: 192, elements: !360)
!359 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !362, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !358, file: !359, line: 54, baseType: !289, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !358, file: !359, line: 55, baseType: !98, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !358, file: !359, line: 59, baseType: !68, size: 128, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !348, file: !347, line: 41, baseType: !63, size: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !348, file: !347, line: 42, baseType: !366, size: 64, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !369, line: 13, size: 896, elements: !370)
!369 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !368, file: !369, line: 14, baseType: !63, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !368, file: !369, line: 15, baseType: !190, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !368, file: !369, line: 17, baseType: !190, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !368, file: !369, line: 17, baseType: !190, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !368, file: !369, line: 19, baseType: !175, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !368, file: !369, line: 21, baseType: !175, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !368, file: !369, line: 22, baseType: !175, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !368, file: !369, line: 23, baseType: !175, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !368, file: !369, line: 24, baseType: !175, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !368, file: !369, line: 25, baseType: !175, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !368, file: !369, line: 26, baseType: !175, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !368, file: !369, line: 27, baseType: !175, size: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !368, file: !369, line: 28, baseType: !175, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !368, file: !369, line: 29, baseType: !175, size: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !348, file: !347, line: 44, baseType: !281, size: 32, offset: 832)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !348, file: !347, line: 50, baseType: !387, size: 16, offset: 864)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !260, line: 19, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !262, line: 24, baseType: !182)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !348, file: !347, line: 51, baseType: !390, size: 16, offset: 880)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !260, line: 18, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !262, line: 23, baseType: !392)
!392 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !231, line: 495, baseType: !190, size: 64, offset: 6528)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !251, file: !231, line: 497, baseType: !395, size: 64, offset: 6592)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !231, line: 381, size: 384, elements: !397)
!397 = !{!398, !399, !1289}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !396, file: !231, line: 382, baseType: !281, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !396, file: !231, line: 383, baseType: !400, size: 128, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !231, line: 376, size: 128, elements: !401)
!401 = !{!402, !1287}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !400, file: !231, line: 377, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !405, line: 640, size: 48640, elements: !406)
!405 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !415, !417, !418, !424, !425, !426, !427, !428, !429, !430, !431, !435, !453, !464, !559, !560, !561, !572, !573, !575, !576, !577, !578, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !657, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !713, !715, !716, !717, !729, !731, !732, !733, !734, !735, !741, !742, !743, !744, !745, !746, !747, !759, !764, !768, !769, !770, !773, !777, !780, !783, !786, !789, !792, !795, !798, !804, !805, !806, !812, !813, !814, !815, !816, !825, !826, !827, !828, !829, !834, !835, !836, !839, !840, !843, !846, !849, !852, !855, !858, !859, !939, !942, !945, !946, !949, !950, !951, !957, !958, !959, !972, !973, !974, !986, !991, !994, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !404, file: !405, line: 646, baseType: !408, size: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !409, line: 56, size: 128, elements: !410)
!409 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !409, line: 57, baseType: !190, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !408, file: !409, line: 58, baseType: !413, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !260, line: 21, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !262, line: 27, baseType: !5)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !405, line: 649, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !175)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !404, file: !405, line: 657, baseType: !63, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !404, file: !405, line: 658, baseType: !419, size: 32, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !420, line: 113, baseType: !421)
!420 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !420, line: 111, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !421, file: !420, line: 112, baseType: !281, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !405, line: 660, baseType: !5, size: 32, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !404, file: !405, line: 661, baseType: !5, size: 32, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !404, file: !405, line: 684, baseType: !124, size: 32, offset: 352)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !404, file: !405, line: 686, baseType: !124, size: 32, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !404, file: !405, line: 687, baseType: !124, size: 32, offset: 416)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !404, file: !405, line: 688, baseType: !124, size: 32, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !404, file: !405, line: 689, baseType: !5, size: 32, offset: 480)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !404, file: !405, line: 691, baseType: !432, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !405, line: 691, flags: DIFlagFwdDecl)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !404, file: !405, line: 692, baseType: !436, size: 832, offset: 576)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !405, line: 451, size: 832, elements: !437)
!437 = !{!438, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !436, file: !405, line: 453, baseType: !439, size: 128)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !405, line: 325, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !439, file: !405, line: 326, baseType: !190, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !439, file: !405, line: 327, baseType: !413, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !436, file: !405, line: 454, baseType: !238, size: 192, align: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !436, file: !405, line: 455, baseType: !68, size: 128, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !436, file: !405, line: 456, baseType: !5, size: 32, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !436, file: !405, line: 458, baseType: !259, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !436, file: !405, line: 459, baseType: !259, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !436, file: !405, line: 460, baseType: !259, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !436, file: !405, line: 461, baseType: !259, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !436, file: !405, line: 463, baseType: !259, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !436, file: !405, line: 465, baseType: !452, offset: 832)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !405, line: 415, elements: !112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !404, file: !405, line: 693, baseType: !454, size: 384, offset: 1408)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !405, line: 489, size: 384, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !454, file: !405, line: 490, baseType: !68, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !454, file: !405, line: 491, baseType: !190, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !454, file: !405, line: 492, baseType: !190, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !454, file: !405, line: 493, baseType: !5, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !454, file: !405, line: 494, baseType: !182, size: 16, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !454, file: !405, line: 495, baseType: !182, size: 16, offset: 304)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !454, file: !405, line: 497, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !404, file: !405, line: 697, baseType: !465, size: 1792, offset: 1792)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !405, line: 507, size: 1792, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !556, !557}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !465, file: !405, line: 508, baseType: !238, size: 192, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !465, file: !405, line: 515, baseType: !259, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !465, file: !405, line: 516, baseType: !259, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !465, file: !405, line: 517, baseType: !259, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !465, file: !405, line: 518, baseType: !259, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !465, file: !405, line: 519, baseType: !259, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !465, file: !405, line: 526, baseType: !295, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !465, file: !405, line: 527, baseType: !259, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !405, line: 528, baseType: !5, size: 32, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !465, file: !405, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !465, file: !405, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !465, file: !405, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !465, file: !405, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !465, file: !405, line: 563, baseType: !481, size: 512, offset: 704)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !482)
!482 = !{!483, !491, !492, !497, !549, !553, !554, !555}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !481, file: !4, line: 119, baseType: !484, size: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !485, line: 9, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !485, line: 10, baseType: !238, size: 192, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !484, file: !485, line: 11, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !490, line: 29, baseType: !295)
!490 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !481, file: !4, line: 120, baseType: !489, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !481, file: !4, line: 121, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!3, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !481, file: !4, line: 122, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !500)
!500 = !{!501, !521, !522, !525, !535, !536, !544, !548}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !499, file: !4, line: 160, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !503, file: !4, line: 215, baseType: !306)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !503, file: !4, line: 216, baseType: !5, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !503, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !503, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !503, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !503, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !503, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !503, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !503, file: !4, line: 233, baseType: !489, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !503, file: !4, line: 234, baseType: !496, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !503, file: !4, line: 235, baseType: !489, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !503, file: !4, line: 236, baseType: !496, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !503, file: !4, line: 237, baseType: !518, size: 4096, offset: 512)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 4096, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 8)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !499, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !499, file: !4, line: 162, baseType: !523, size: 32, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !62, line: 27, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !173, line: 96, baseType: !124)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !499, file: !4, line: 163, baseType: !526, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !527, line: 276, baseType: !528)
!527 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !527, line: 276, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !528, file: !527, line: 276, baseType: !531, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !527, line: 70, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !527, line: 65, size: 32, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !532, file: !527, line: 66, baseType: !5, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !499, file: !4, line: 164, baseType: !496, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !499, file: !4, line: 165, baseType: !537, size: 128, offset: 256)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !485, line: 14, size: 128, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !537, file: !485, line: 15, baseType: !540, size: 128)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !239, line: 125, size: 128, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !540, file: !239, line: 126, baseType: !255, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !540, file: !239, line: 127, baseType: !243, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !499, file: !4, line: 166, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!489}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !499, file: !4, line: 167, baseType: !489, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !481, file: !4, line: 123, baseType: !550, size: 8, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !260, line: 17, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !262, line: 21, baseType: !552)
!552 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !481, file: !4, line: 124, baseType: !550, size: 8, offset: 456)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !481, file: !4, line: 125, baseType: !550, size: 8, offset: 464)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !481, file: !4, line: 126, baseType: !550, size: 8, offset: 472)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !465, file: !405, line: 572, baseType: !481, size: 512, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !465, file: !405, line: 580, baseType: !558, size: 64, offset: 1728)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !404, file: !405, line: 721, baseType: !5, size: 32, offset: 3584)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !404, file: !405, line: 722, baseType: !124, size: 32, offset: 3616)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !404, file: !405, line: 723, baseType: !562, size: 64, offset: 3648)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !565, line: 17, baseType: !566)
!565 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !565, line: 17, size: 64, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !566, file: !565, line: 17, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 1)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !404, file: !405, line: 724, baseType: !564, size: 64, offset: 3712)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !404, file: !405, line: 749, baseType: !574, offset: 3776)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !405, line: 290, elements: !112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !404, file: !405, line: 751, baseType: !68, size: 128, offset: 3776)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !404, file: !405, line: 757, baseType: !247, size: 64, offset: 3904)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !404, file: !405, line: 758, baseType: !247, size: 64, offset: 3968)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !404, file: !405, line: 761, baseType: !579, size: 320, offset: 4032)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !336, line: 34, size: 320, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !579, file: !336, line: 35, baseType: !259, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !579, file: !336, line: 36, baseType: !583, size: 256, offset: 64)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !340)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !404, file: !405, line: 766, baseType: !124, size: 32, offset: 4352)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !404, file: !405, line: 767, baseType: !124, size: 32, offset: 4384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !404, file: !405, line: 768, baseType: !124, size: 32, offset: 4416)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !404, file: !405, line: 770, baseType: !124, size: 32, offset: 4448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !404, file: !405, line: 772, baseType: !190, size: 64, offset: 4480)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !404, file: !405, line: 775, baseType: !5, size: 32, offset: 4544)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !404, file: !405, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !404, file: !405, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !404, file: !405, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !404, file: !405, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !404, file: !405, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !404, file: !405, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !404, file: !405, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !404, file: !405, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !404, file: !405, line: 831, baseType: !190, size: 64, offset: 4672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !404, file: !405, line: 833, baseType: !600, size: 384, offset: 4736)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !601)
!601 = !{!602, !607}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !600, file: !10, line: 26, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!175, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !10, line: 27, baseType: !608, size: 320, offset: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !10, line: 27, size: 320, elements: !609)
!609 = !{!610, !620, !647}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !608, file: !10, line: 36, baseType: !611, size: 320)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !608, file: !10, line: 29, size: 320, elements: !612)
!612 = !{!613, !615, !616, !617, !618, !619}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !611, file: !10, line: 30, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !611, file: !10, line: 31, baseType: !413, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !10, line: 32, baseType: !413, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !611, file: !10, line: 33, baseType: !413, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !611, file: !10, line: 34, baseType: !259, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !611, file: !10, line: 35, baseType: !614, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !608, file: !10, line: 46, baseType: !621, size: 192)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !608, file: !10, line: 38, size: 192, elements: !622)
!622 = !{!623, !624, !625, !646}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !621, file: !10, line: 39, baseType: !523, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !10, line: 41, baseType: !626, size: 64, offset: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !10, line: 41, size: 64, elements: !627)
!627 = !{!628, !636}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !626, file: !10, line: 42, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !631, line: 7, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !630, file: !631, line: 8, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !173, line: 93, baseType: !223)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !630, file: !631, line: 9, baseType: !223, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !626, file: !10, line: 43, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !639, line: 7, size: 64, elements: !640)
!639 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !638, file: !639, line: 8, baseType: !642, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !639, line: 5, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !260, line: 20, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !262, line: 26, baseType: !124)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !638, file: !639, line: 9, baseType: !643, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !621, file: !10, line: 45, baseType: !259, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !608, file: !10, line: 54, baseType: !648, size: 256)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !608, file: !10, line: 48, size: 256, elements: !649)
!649 = !{!650, !653, !654, !655, !656}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !648, file: !10, line: 49, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !648, file: !10, line: 50, baseType: !124, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !648, file: !10, line: 51, baseType: !124, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !10, line: 52, baseType: !190, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !648, file: !10, line: 53, baseType: !190, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !404, file: !405, line: 835, baseType: !658, size: 32, offset: 5120)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !62, line: 22, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !173, line: 28, baseType: !124)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !404, file: !405, line: 836, baseType: !658, size: 32, offset: 5152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !404, file: !405, line: 840, baseType: !190, size: 64, offset: 5184)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !404, file: !405, line: 849, baseType: !403, size: 64, offset: 5248)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !404, file: !405, line: 852, baseType: !403, size: 64, offset: 5312)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !404, file: !405, line: 857, baseType: !68, size: 128, offset: 5376)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !404, file: !405, line: 858, baseType: !68, size: 128, offset: 5504)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !404, file: !405, line: 859, baseType: !403, size: 64, offset: 5632)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !404, file: !405, line: 867, baseType: !68, size: 128, offset: 5696)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !404, file: !405, line: 868, baseType: !68, size: 128, offset: 5824)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !404, file: !405, line: 871, baseType: !670, size: 64, offset: 5952)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !672, line: 59, size: 768, elements: !673)
!672 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!673 = !{!674, !675, !676, !677, !688, !689, !696, !705}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !671, file: !672, line: 61, baseType: !419, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !671, file: !672, line: 62, baseType: !5, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !671, file: !672, line: 63, baseType: !98, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !671, file: !672, line: 65, baseType: !678, size: 256, offset: 64)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !340)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !62, line: 182, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !679, file: !62, line: 183, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !62, line: 186, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !62, line: 187, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !683, file: !62, line: 187, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !671, file: !672, line: 66, baseType: !679, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !671, file: !672, line: 68, baseType: !690, size: 128, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !691, line: 40, baseType: !692)
!691 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !691, line: 36, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !691, line: 37, baseType: !98)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !692, file: !691, line: 38, baseType: !68, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !671, file: !672, line: 69, baseType: !697, size: 128, align: 64, offset: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !62, line: 216, size: 128, align: 64, elements: !698)
!698 = !{!699, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !62, line: 217, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !697, file: !62, line: 218, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !700}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !671, file: !672, line: 70, baseType: !706, size: 128, offset: 640)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 128, elements: !570)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !672, line: 54, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !707, file: !672, line: 55, baseType: !124, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !707, file: !672, line: 56, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !672, line: 56, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !404, file: !405, line: 872, baseType: !714, size: 512, offset: 6016)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 512, elements: !340)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !404, file: !405, line: 873, baseType: !68, size: 128, offset: 6528)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !404, file: !405, line: 874, baseType: !68, size: 128, offset: 6656)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !404, file: !405, line: 876, baseType: !718, size: 64, offset: 6784)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !720, line: 26, size: 192, elements: !721)
!720 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !719, file: !720, line: 27, baseType: !5, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !719, file: !720, line: 28, baseType: !724, size: 128, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !725, line: 43, size: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !724, file: !725, line: 44, baseType: !306)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !724, file: !725, line: 45, baseType: !68, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !404, file: !405, line: 879, baseType: !730, size: 64, offset: 6848)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !404, file: !405, line: 882, baseType: !730, size: 64, offset: 6912)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !404, file: !405, line: 884, baseType: !259, size: 64, offset: 6976)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !404, file: !405, line: 885, baseType: !259, size: 64, offset: 7040)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !404, file: !405, line: 890, baseType: !259, size: 64, offset: 7104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !404, file: !405, line: 891, baseType: !736, size: 128, offset: 7168)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !405, line: 242, size: 128, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !736, file: !405, line: 244, baseType: !259, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !736, file: !405, line: 245, baseType: !259, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !405, line: 246, baseType: !306, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !404, file: !405, line: 900, baseType: !190, size: 64, offset: 7296)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !404, file: !405, line: 901, baseType: !190, size: 64, offset: 7360)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !404, file: !405, line: 904, baseType: !259, size: 64, offset: 7424)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !404, file: !405, line: 907, baseType: !259, size: 64, offset: 7488)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !404, file: !405, line: 910, baseType: !190, size: 64, offset: 7552)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !404, file: !405, line: 911, baseType: !190, size: 64, offset: 7616)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !404, file: !405, line: 914, baseType: !748, size: 640, offset: 7680)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !749, line: 123, size: 640, elements: !750)
!749 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !757, !758}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !748, file: !749, line: 124, baseType: !752, size: 576)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 576, elements: !141)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !749, line: 108, size: 192, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !753, file: !749, line: 109, baseType: !259, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !753, file: !749, line: 110, baseType: !537, size: 128, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !748, file: !749, line: 125, baseType: !5, size: 32, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !748, file: !749, line: 126, baseType: !5, size: 32, offset: 608)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !404, file: !405, line: 917, baseType: !760, size: 192, offset: 8320)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !749, line: 134, size: 192, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !760, file: !749, line: 135, baseType: !697, size: 128, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !760, file: !749, line: 136, baseType: !5, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !404, file: !405, line: 923, baseType: !765, size: 64, offset: 8512)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !405, line: 923, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !404, file: !405, line: 926, baseType: !765, size: 64, offset: 8576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !404, file: !405, line: 929, baseType: !765, size: 64, offset: 8640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !404, file: !405, line: 933, baseType: !771, size: 64, offset: 8704)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !405, line: 933, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !404, file: !405, line: 943, baseType: !774, size: 128, offset: 8768)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 16)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !404, file: !405, line: 945, baseType: !778, size: 64, offset: 8896)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !405, line: 49, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !404, file: !405, line: 956, baseType: !781, size: 64, offset: 8960)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !405, line: 45, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !404, file: !405, line: 959, baseType: !784, size: 64, offset: 9024)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !405, line: 959, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !404, file: !405, line: 962, baseType: !787, size: 64, offset: 9088)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !405, line: 66, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !404, file: !405, line: 966, baseType: !790, size: 64, offset: 9152)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !405, line: 50, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !404, file: !405, line: 969, baseType: !793, size: 64, offset: 9216)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !749, line: 223, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !404, file: !405, line: 970, baseType: !796, size: 64, offset: 9280)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !405, line: 62, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !404, file: !405, line: 971, baseType: !799, size: 64, offset: 9344)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !800, line: 25, baseType: !801)
!800 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !800, line: 23, size: 64, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !801, file: !800, line: 24, baseType: !569, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !404, file: !405, line: 972, baseType: !799, size: 64, offset: 9408)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !404, file: !405, line: 974, baseType: !799, size: 64, offset: 9472)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !404, file: !405, line: 975, baseType: !807, size: 192, offset: 9536)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !808, line: 30, size: 192, elements: !809)
!808 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !807, file: !808, line: 31, baseType: !68, size: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !807, file: !808, line: 32, baseType: !799, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !404, file: !405, line: 976, baseType: !190, size: 64, offset: 9728)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !404, file: !405, line: 977, baseType: !187, size: 64, offset: 9792)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !404, file: !405, line: 978, baseType: !5, size: 32, offset: 9856)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !404, file: !405, line: 980, baseType: !700, size: 64, offset: 9920)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !404, file: !405, line: 989, baseType: !817, size: 128, offset: 9984)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !818, line: 35, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !817, file: !818, line: 36, baseType: !124, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !817, file: !818, line: 37, baseType: !281, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !817, file: !818, line: 38, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !818, line: 23, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !404, file: !405, line: 992, baseType: !259, size: 64, offset: 10112)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !404, file: !405, line: 993, baseType: !259, size: 64, offset: 10176)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !404, file: !405, line: 996, baseType: !98, offset: 10240)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !404, file: !405, line: 999, baseType: !306, offset: 10240)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !404, file: !405, line: 1001, baseType: !830, size: 64, offset: 10240)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !405, line: 636, size: 64, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !405, line: 637, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !404, file: !405, line: 1005, baseType: !540, size: 128, offset: 10304)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !404, file: !405, line: 1007, baseType: !403, size: 64, offset: 10432)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !404, file: !405, line: 1009, baseType: !837, size: 64, offset: 10496)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !405, line: 1009, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !404, file: !405, line: 1043, baseType: !63, size: 64, offset: 10560)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !404, file: !405, line: 1046, baseType: !841, size: 64, offset: 10624)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !405, line: 41, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !404, file: !405, line: 1050, baseType: !844, size: 64, offset: 10688)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !405, line: 42, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !404, file: !405, line: 1054, baseType: !847, size: 64, offset: 10752)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !405, line: 55, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !404, file: !405, line: 1056, baseType: !850, size: 64, offset: 10816)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !405, line: 40, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !404, file: !405, line: 1058, baseType: !853, size: 64, offset: 10880)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !405, line: 47, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !404, file: !405, line: 1061, baseType: !856, size: 64, offset: 10944)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !405, line: 43, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !404, file: !405, line: 1064, baseType: !190, size: 64, offset: 11008)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !404, file: !405, line: 1065, baseType: !860, size: 64, offset: 11072)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !808, line: 14, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !808, line: 12, size: 384, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !808, line: 13, baseType: !865, size: 384)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !808, line: 13, size: 384, elements: !866)
!866 = !{!867, !868, !869, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !865, file: !808, line: 13, baseType: !124, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !865, file: !808, line: 13, baseType: !124, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !865, file: !808, line: 13, baseType: !124, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !865, file: !808, line: 13, baseType: !871, size: 256, offset: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !872, line: 32, size: 256, elements: !873)
!872 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !880, !893, !899, !908, !928, !933}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !871, file: !872, line: 37, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 34, size: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !875, file: !872, line: 35, baseType: !659, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !875, file: !872, line: 36, baseType: !879, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !173, line: 49, baseType: !5)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !871, file: !872, line: 45, baseType: !881, size: 192)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 40, size: 192, elements: !882)
!882 = !{!883, !885, !886, !892}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !881, file: !872, line: 41, baseType: !884, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !173, line: 95, baseType: !124)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !881, file: !872, line: 42, baseType: !124, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !881, file: !872, line: 43, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !872, line: 11, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !872, line: 8, size: 64, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !888, file: !872, line: 9, baseType: !124, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !888, file: !872, line: 10, baseType: !63, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !881, file: !872, line: 44, baseType: !124, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !871, file: !872, line: 52, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 48, size: 128, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !894, file: !872, line: 49, baseType: !659, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !894, file: !872, line: 50, baseType: !879, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !894, file: !872, line: 51, baseType: !887, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !871, file: !872, line: 61, baseType: !900, size: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 55, size: 256, elements: !901)
!901 = !{!902, !903, !904, !905, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !900, file: !872, line: 56, baseType: !659, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !900, file: !872, line: 57, baseType: !879, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !900, file: !872, line: 58, baseType: !124, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !900, file: !872, line: 59, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !173, line: 94, baseType: !174)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !900, file: !872, line: 60, baseType: !906, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !871, file: !872, line: 95, baseType: !909, size: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 64, size: 256, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !909, file: !872, line: 65, baseType: !63, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !872, line: 77, baseType: !913, size: 192, offset: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !872, line: 77, size: 192, elements: !914)
!914 = !{!915, !916, !923}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !913, file: !872, line: 82, baseType: !392, size: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !913, file: !872, line: 88, baseType: !917, size: 192)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !872, line: 84, size: 192, elements: !918)
!918 = !{!919, !921, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !917, file: !872, line: 85, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !519)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !917, file: !872, line: 86, baseType: !63, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !917, file: !872, line: 87, baseType: !63, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !913, file: !872, line: 93, baseType: !924, size: 96)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !872, line: 90, size: 96, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !924, file: !872, line: 91, baseType: !920, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !924, file: !872, line: 92, baseType: !414, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !871, file: !872, line: 101, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 98, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !929, file: !872, line: 99, baseType: !175, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !929, file: !872, line: 100, baseType: !124, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !871, file: !872, line: 108, baseType: !934, size: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 104, size: 128, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !934, file: !872, line: 105, baseType: !63, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !934, file: !872, line: 106, baseType: !124, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !934, file: !872, line: 107, baseType: !5, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !404, file: !405, line: 1067, baseType: !940, offset: 11136)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !941, line: 12, elements: !112)
!941 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !404, file: !405, line: 1099, baseType: !943, size: 64, offset: 11136)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !405, line: 56, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !404, file: !405, line: 1103, baseType: !68, size: 128, offset: 11200)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !404, file: !405, line: 1104, baseType: !947, size: 64, offset: 11328)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !405, line: 46, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !404, file: !405, line: 1105, baseType: !358, size: 192, offset: 11392)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !404, file: !405, line: 1106, baseType: !5, size: 32, offset: 11584)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !404, file: !405, line: 1109, baseType: !952, size: 128, offset: 11648)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 128, elements: !955)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !405, line: 51, flags: DIFlagFwdDecl)
!955 = !{!956}
!956 = !DISubrange(count: 2)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !404, file: !405, line: 1110, baseType: !358, size: 192, offset: 11776)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !404, file: !405, line: 1111, baseType: !68, size: 128, offset: 11968)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !404, file: !405, line: 1173, baseType: !960, size: 64, offset: 12096)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !962, line: 62, size: 256, align: 256, elements: !963)
!962 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!963 = !{!964, !965, !966, !971}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !961, file: !962, line: 75, baseType: !414, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !961, file: !962, line: 90, baseType: !414, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !961, file: !962, line: 124, baseType: !967, size: 64, offset: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !962, line: 109, size: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !967, file: !962, line: 110, baseType: !261, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !967, file: !962, line: 112, baseType: !261, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !962, line: 144, baseType: !414, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !404, file: !405, line: 1174, baseType: !413, size: 32, offset: 12160)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !404, file: !405, line: 1179, baseType: !190, size: 64, offset: 12224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !404, file: !405, line: 1182, baseType: !975, size: 128, offset: 12288)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !336, line: 76, size: 128, elements: !976)
!976 = !{!977, !982, !985}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !975, file: !336, line: 85, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !979, line: 7, size: 64, elements: !980)
!979 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !978, file: !979, line: 12, baseType: !566, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !975, file: !336, line: 88, baseType: !983, size: 8, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 30, baseType: !984)
!984 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !975, file: !336, line: 95, baseType: !983, size: 8, offset: 72)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !405, line: 1184, baseType: !987, size: 128, offset: 12416)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !405, line: 1184, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !987, file: !405, line: 1185, baseType: !419, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !987, file: !405, line: 1186, baseType: !697, size: 128, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !404, file: !405, line: 1190, baseType: !992, size: 64, offset: 12544)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !405, line: 53, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !404, file: !405, line: 1192, baseType: !995, size: 128, offset: 12608)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !336, line: 64, size: 128, elements: !996)
!996 = !{!997, !1090, !1091}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !995, file: !336, line: 65, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !231, line: 68, size: 512, align: 128, elements: !1000)
!1000 = !{!1001, !1002, !1082, !1089}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !231, line: 69, baseType: !190, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !231, line: 77, baseType: !1003, size: 320, offset: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !231, line: 77, size: 320, elements: !1004)
!1004 = !{!1005, !1014, !1019, !1047, !1055, !1061, !1074, !1081}
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 78, baseType: !1006, size: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 78, size: 320, elements: !1007)
!1007 = !{!1008, !1009, !1012, !1013}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1006, file: !231, line: 84, baseType: !68, size: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1006, file: !231, line: 86, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !231, line: 26, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1006, file: !231, line: 87, baseType: !190, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1006, file: !231, line: 94, baseType: !190, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 96, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 96, size: 64, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1015, file: !231, line: 101, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !62, line: 143, baseType: !259)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 103, baseType: !1020, size: 320)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 103, size: 320, elements: !1021)
!1021 = !{!1022, !1032, !1035, !1036}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !231, line: 104, baseType: !1023, size: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !231, line: 104, size: 128, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1023, file: !231, line: 105, baseType: !68, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !231, line: 106, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !231, line: 106, size: 128, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !231, line: 107, baseType: !998, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1027, file: !231, line: 109, baseType: !124, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1027, file: !231, line: 110, baseType: !124, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1020, file: !231, line: 117, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !231, line: 117, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1020, file: !231, line: 119, baseType: !63, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !231, line: 120, baseType: !1037, size: 64, offset: 256)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !231, line: 120, size: 64, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1037, file: !231, line: 121, baseType: !63, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1037, file: !231, line: 122, baseType: !190, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !231, line: 123, baseType: !1042, size: 32)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !231, line: 123, size: 32, elements: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1042, file: !231, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1042, file: !231, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1042, file: !231, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 130, baseType: !1048, size: 192)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 130, size: 192, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1048, file: !231, line: 131, baseType: !190, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1048, file: !231, line: 134, baseType: !552, size: 8, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1048, file: !231, line: 135, baseType: !552, size: 8, offset: 72)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1048, file: !231, line: 136, baseType: !281, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1048, file: !231, line: 137, baseType: !5, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 139, baseType: !1056, size: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 139, size: 256, elements: !1057)
!1057 = !{!1058, !1059, !1060}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1056, file: !231, line: 140, baseType: !190, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1056, file: !231, line: 141, baseType: !281, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1056, file: !231, line: 143, baseType: !68, size: 128, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 145, baseType: !1062, size: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 145, size: 256, elements: !1063)
!1063 = !{!1064, !1065, !1067, !1068, !1073}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1062, file: !231, line: 146, baseType: !190, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1062, file: !231, line: 147, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !220, line: 509, baseType: !998)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1062, file: !231, line: 148, baseType: !190, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !231, line: 149, baseType: !1069, size: 64, offset: 192)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !231, line: 149, size: 64, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1069, file: !231, line: 150, baseType: !247, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1069, file: !231, line: 151, baseType: !281, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1062, file: !231, line: 156, baseType: !98, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !231, line: 159, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !231, line: 159, size: 128, elements: !1076)
!1076 = !{!1077, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1075, file: !231, line: 161, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !231, line: 161, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1075, file: !231, line: 162, baseType: !63, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1003, file: !231, line: 176, baseType: !697, size: 128, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !231, line: 179, baseType: !1083, size: 32, offset: 384)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !231, line: 179, size: 32, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1083, file: !231, line: 184, baseType: !281, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1083, file: !231, line: 192, baseType: !5, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1083, file: !231, line: 194, baseType: !5, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1083, file: !231, line: 195, baseType: !124, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !999, file: !231, line: 199, baseType: !281, size: 32, offset: 416)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !995, file: !336, line: 67, baseType: !414, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !995, file: !336, line: 68, baseType: !414, size: 32, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !404, file: !405, line: 1206, baseType: !124, size: 32, offset: 12736)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !404, file: !405, line: 1207, baseType: !124, size: 32, offset: 12768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !404, file: !405, line: 1209, baseType: !190, size: 64, offset: 12800)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !404, file: !405, line: 1219, baseType: !259, size: 64, offset: 12864)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !404, file: !405, line: 1220, baseType: !259, size: 64, offset: 12928)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !404, file: !405, line: 1317, baseType: !124, size: 32, offset: 12992)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !404, file: !405, line: 1319, baseType: !403, size: 64, offset: 13056)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !404, file: !405, line: 1322, baseType: !1100, size: 64, offset: 13120)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !405, line: 1322, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !404, file: !405, line: 1326, baseType: !419, size: 32, offset: 13184)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !404, file: !405, line: 1342, baseType: !63, size: 64, offset: 13248)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !404, file: !405, line: 1343, baseType: !261, size: 64, offset: 13312)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !404, file: !405, line: 1344, baseType: !259, size: 64, offset: 13376)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !404, file: !405, line: 1345, baseType: !261, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !404, file: !405, line: 1346, baseType: !261, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !404, file: !405, line: 1347, baseType: !261, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !404, file: !405, line: 1348, baseType: !697, size: 128, align: 64, offset: 13504)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !404, file: !405, line: 1358, baseType: !1111, size: 34816, offset: 13824)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1112, line: 485, size: 34816, elements: !1113)
!1112 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1143, !1144, !1145, !1146, !1147, !1148, !1151, !1152, !1153}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1111, file: !1112, line: 487, baseType: !1115, size: 192)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 192, elements: !141)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1117, line: 16, size: 64, elements: !1118)
!1117 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1116, file: !1117, line: 17, baseType: !387, size: 16)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1116, file: !1117, line: 18, baseType: !387, size: 16, offset: 16)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1116, file: !1117, line: 19, baseType: !387, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !1117, line: 19, baseType: !387, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1116, file: !1117, line: 19, baseType: !387, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1116, file: !1117, line: 19, baseType: !387, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1116, file: !1117, line: 19, baseType: !387, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1116, file: !1117, line: 20, baseType: !387, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1116, file: !1117, line: 20, baseType: !387, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1116, file: !1117, line: 20, baseType: !387, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1116, file: !1117, line: 20, baseType: !387, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1116, file: !1117, line: 20, baseType: !387, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1116, file: !1117, line: 20, baseType: !387, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1111, file: !1112, line: 491, baseType: !190, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1111, file: !1112, line: 495, baseType: !182, size: 16, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1111, file: !1112, line: 496, baseType: !182, size: 16, offset: 272)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1111, file: !1112, line: 497, baseType: !182, size: 16, offset: 288)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1111, file: !1112, line: 498, baseType: !182, size: 16, offset: 304)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1111, file: !1112, line: 502, baseType: !190, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1111, file: !1112, line: 503, baseType: !190, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1111, file: !1112, line: 514, baseType: !1140, size: 256, offset: 448)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 256, elements: !340)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1112, line: 483, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1111, file: !1112, line: 516, baseType: !190, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1111, file: !1112, line: 518, baseType: !190, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1111, file: !1112, line: 520, baseType: !190, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1111, file: !1112, line: 521, baseType: !190, size: 64, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1111, file: !1112, line: 522, baseType: !190, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1111, file: !1112, line: 528, baseType: !1149, size: 64, offset: 1024)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1112, line: 10, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1111, file: !1112, line: 535, baseType: !190, size: 64, offset: 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1111, file: !1112, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1111, file: !1112, line: 540, baseType: !1154, size: 33280, offset: 1536)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1155, line: 317, size: 33280, elements: !1156)
!1155 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1154, file: !1155, line: 330, baseType: !5, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1154, file: !1155, line: 337, baseType: !190, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1154, file: !1155, line: 348, baseType: !1160, size: 32768, offset: 512)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1155, line: 304, size: 32768, elements: !1161)
!1161 = !{!1162, !1177, !1216, !1266, !1283}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1160, file: !1155, line: 305, baseType: !1163, size: 896)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1155, line: 12, size: 896, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1176}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1163, file: !1155, line: 13, baseType: !413, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1163, file: !1155, line: 14, baseType: !413, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1163, file: !1155, line: 15, baseType: !413, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1163, file: !1155, line: 16, baseType: !413, size: 32, offset: 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1163, file: !1155, line: 17, baseType: !413, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1163, file: !1155, line: 18, baseType: !413, size: 32, offset: 160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1163, file: !1155, line: 19, baseType: !413, size: 32, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1163, file: !1155, line: 22, baseType: !1173, size: 640, offset: 224)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 640, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 20)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1163, file: !1155, line: 25, baseType: !413, size: 32, offset: 864)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1160, file: !1155, line: 306, baseType: !1178, size: 4096, align: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1155, line: 34, size: 4096, align: 128, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1199, !1200, !1201, !1205, !1207, !1211}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1178, file: !1155, line: 35, baseType: !387, size: 16)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1178, file: !1155, line: 36, baseType: !387, size: 16, offset: 16)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1178, file: !1155, line: 37, baseType: !387, size: 16, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1178, file: !1155, line: 38, baseType: !387, size: 16, offset: 48)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1155, line: 39, baseType: !1185, size: 128, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1155, line: 39, size: 128, elements: !1186)
!1186 = !{!1187, !1192}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1155, line: 40, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !1155, line: 40, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1188, file: !1155, line: 41, baseType: !259, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1188, file: !1155, line: 42, baseType: !259, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1155, line: 44, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !1155, line: 44, size: 128, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1193, file: !1155, line: 45, baseType: !413, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1193, file: !1155, line: 46, baseType: !413, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1193, file: !1155, line: 47, baseType: !413, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1193, file: !1155, line: 48, baseType: !413, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1178, file: !1155, line: 51, baseType: !413, size: 32, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1178, file: !1155, line: 52, baseType: !413, size: 32, offset: 224)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1178, file: !1155, line: 55, baseType: !1202, size: 1024, offset: 256)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1024, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1178, file: !1155, line: 58, baseType: !1206, size: 2048, offset: 1280)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 2048, elements: !145)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1178, file: !1155, line: 60, baseType: !1208, size: 384, offset: 3328)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 384, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 12)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1155, line: 62, baseType: !1212, size: 384, offset: 3712)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1155, line: 62, size: 384, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1212, file: !1155, line: 63, baseType: !1208, size: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1212, file: !1155, line: 64, baseType: !1208, size: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1160, file: !1155, line: 307, baseType: !1217, size: 1088)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1155, line: 79, size: 1088, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1265}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1217, file: !1155, line: 80, baseType: !413, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1217, file: !1155, line: 81, baseType: !413, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1217, file: !1155, line: 82, baseType: !413, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1217, file: !1155, line: 83, baseType: !413, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1217, file: !1155, line: 84, baseType: !413, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1217, file: !1155, line: 85, baseType: !413, size: 32, offset: 160)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1217, file: !1155, line: 86, baseType: !413, size: 32, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1217, file: !1155, line: 88, baseType: !1173, size: 640, offset: 224)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1217, file: !1155, line: 89, baseType: !550, size: 8, offset: 864)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1217, file: !1155, line: 90, baseType: !550, size: 8, offset: 872)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1217, file: !1155, line: 91, baseType: !550, size: 8, offset: 880)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1217, file: !1155, line: 92, baseType: !550, size: 8, offset: 888)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1217, file: !1155, line: 93, baseType: !550, size: 8, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1217, file: !1155, line: 94, baseType: !550, size: 8, offset: 904)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1217, file: !1155, line: 95, baseType: !1234, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1236, line: 11, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1235, file: !1236, line: 12, baseType: !175, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1235, file: !1236, line: 13, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1242, line: 56, size: 1344, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1241, file: !1242, line: 61, baseType: !190, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1241, file: !1242, line: 62, baseType: !190, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1241, file: !1242, line: 63, baseType: !190, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1241, file: !1242, line: 64, baseType: !190, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1241, file: !1242, line: 65, baseType: !190, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1241, file: !1242, line: 66, baseType: !190, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1241, file: !1242, line: 68, baseType: !190, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1241, file: !1242, line: 69, baseType: !190, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1241, file: !1242, line: 70, baseType: !190, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1241, file: !1242, line: 71, baseType: !190, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1241, file: !1242, line: 72, baseType: !190, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1241, file: !1242, line: 73, baseType: !190, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1241, file: !1242, line: 74, baseType: !190, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1241, file: !1242, line: 75, baseType: !190, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1241, file: !1242, line: 76, baseType: !190, size: 64, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1241, file: !1242, line: 81, baseType: !190, size: 64, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1241, file: !1242, line: 83, baseType: !190, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1241, file: !1242, line: 84, baseType: !190, size: 64, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 85, baseType: !190, size: 64, offset: 1152)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1241, file: !1242, line: 86, baseType: !190, size: 64, offset: 1216)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1241, file: !1242, line: 87, baseType: !190, size: 64, offset: 1280)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1217, file: !1155, line: 96, baseType: !413, size: 32, offset: 1024)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1160, file: !1155, line: 308, baseType: !1267, size: 4608, align: 512)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1155, line: 289, size: 4608, align: 512, elements: !1268)
!1268 = !{!1269, !1270, !1279}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1267, file: !1155, line: 290, baseType: !1178, size: 4096, align: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1267, file: !1155, line: 291, baseType: !1271, size: 512, offset: 4096)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1155, line: 268, size: 512, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1271, file: !1155, line: 269, baseType: !259, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1271, file: !1155, line: 270, baseType: !259, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1271, file: !1155, line: 271, baseType: !1276, size: 384, offset: 128)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 384, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 6)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1267, file: !1155, line: 292, baseType: !1280, offset: 4608)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 0)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1160, file: !1155, line: 309, baseType: !1284, size: 32768)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 32768, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 4096)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !231, line: 378, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !396, file: !231, line: 384, baseType: !719, size: 192, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !251, file: !231, line: 500, baseType: !98, offset: 6656)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !251, file: !231, line: 501, baseType: !1292, size: 64, offset: 6656)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !231, line: 387, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !251, file: !231, line: 516, baseType: !1295, size: 64, offset: 6720)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1297, line: 18, flags: DIFlagFwdDecl)
!1297 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !251, file: !231, line: 519, baseType: !218, size: 64, offset: 6784)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !251, file: !231, line: 521, baseType: !1300, size: 64, offset: 6848)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !231, line: 521, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !251, file: !231, line: 545, baseType: !281, size: 32, offset: 6912)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !251, file: !231, line: 548, baseType: !983, size: 8, offset: 6944)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !251, file: !231, line: 550, baseType: !1305, offset: 6952)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1306, line: 142, elements: !112)
!1306 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !251, file: !231, line: 554, baseType: !1308, size: 256, offset: 6976)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1309, line: 102, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1308, file: !1309, line: 103, baseType: !289, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1308, file: !1309, line: 104, baseType: !68, size: 128, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1308, file: !1309, line: 105, baseType: !1314, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1309, line: 21, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !251, file: !231, line: 557, baseType: !413, size: 32, offset: 7232)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !248, file: !231, line: 565, baseType: !1321, offset: 7296)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: -1)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !230, file: !231, line: 333, baseType: !1325, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !220, line: 284, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !220, line: 284, size: 64, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1326, file: !220, line: 284, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !279, line: 19, baseType: !190)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !230, file: !231, line: 334, baseType: !190, size: 64, offset: 640)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !230, file: !231, line: 343, baseType: !1332, size: 256, offset: 704)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !230, file: !231, line: 340, size: 256, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1332, file: !231, line: 341, baseType: !238, size: 192, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1332, file: !231, line: 342, baseType: !190, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !230, file: !231, line: 351, baseType: !68, size: 128, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !230, file: !231, line: 353, baseType: !1338, size: 64, offset: 1088)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !231, line: 353, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !230, file: !231, line: 356, baseType: !1341, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !231, line: 356, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !230, file: !231, line: 359, baseType: !190, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !230, file: !231, line: 361, baseType: !218, size: 64, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !230, file: !231, line: 362, baseType: !63, size: 64, offset: 1344)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !230, file: !231, line: 365, baseType: !289, size: 64, offset: 1408)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !230, file: !231, line: 373, baseType: !1349, offset: 1472)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !231, line: 296, elements: !112)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !197, file: !165, line: 90, baseType: !192, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !197, file: !165, line: 91, baseType: !1352, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !155, file: !83, line: 143, baseType: !1354, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1357, !91}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1360)
!1360 = !{!1361, !1362, !1366, !1370, !1378, !1382}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1359, file: !16, line: 40, baseType: !15, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1359, file: !16, line: 41, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!983}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1359, file: !16, line: 42, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!63}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1359, file: !16, line: 43, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1374, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1359, file: !16, line: 44, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1374}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1359, file: !16, line: 45, baseType: !1383, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !63}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !155, file: !83, line: 144, baseType: !1387, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1374, !91}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !155, file: !83, line: 145, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !91, !1394, !1400}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1297, line: 23, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 21, size: 32, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1396, file: !1297, line: 22, baseType: !1399, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !62, line: 32, baseType: !879)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1297, line: 28, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 26, size: 32, elements: !1403)
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1402, file: !1297, line: 27, baseType: !1405, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !62, line: 33, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !173, line: 50, baseType: !5)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !82, file: !83, line: 70, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1410, line: 123, size: 1024, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1553, !1554, !1555, !1556, !1557}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1409, file: !1410, line: 124, baseType: !281, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1409, file: !1410, line: 125, baseType: !281, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1409, file: !1410, line: 135, baseType: !1408, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1409, file: !1410, line: 136, baseType: !86, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1409, file: !1410, line: 138, baseType: !238, size: 192, align: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1409, file: !1410, line: 140, baseType: !1374, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1409, file: !1410, line: 141, baseType: !5, size: 32, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 142, baseType: !1420, size: 256, offset: 512)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 142, size: 256, elements: !1421)
!1421 = !{!1422, !1476, !1480}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1420, file: !1410, line: 143, baseType: !1423, size: 192)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1410, line: 91, size: 192, elements: !1424)
!1424 = !{!1425, !1426, !1427}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1423, file: !1410, line: 92, baseType: !190, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1423, file: !1410, line: 94, baseType: !255, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1423, file: !1410, line: 100, baseType: !1428, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1410, line: 180, size: 704, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1446, !1447, !1448, !1474, !1475}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1429, file: !1410, line: 182, baseType: !1408, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !1410, line: 183, baseType: !5, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1429, file: !1410, line: 186, baseType: !1434, size: 192, offset: 128)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1435, line: 19, size: 192, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1444, !1445}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1434, file: !1435, line: 20, baseType: !1438, size: 128)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1439, line: 292, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1438, file: !1439, line: 293, baseType: !98)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1438, file: !1439, line: 295, baseType: !61, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1438, file: !1439, line: 296, baseType: !63, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1434, file: !1435, line: 21, baseType: !5, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1434, file: !1435, line: 22, baseType: !5, size: 32, offset: 160)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1429, file: !1410, line: 187, baseType: !413, size: 32, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1429, file: !1410, line: 188, baseType: !413, size: 32, offset: 352)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1429, file: !1410, line: 189, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1410, line: 168, size: 320, elements: !1451)
!1451 = !{!1452, !1458, !1462, !1466, !1470}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1450, file: !1410, line: 169, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!124, !1456, !1428}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !220, line: 539, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1450, file: !1410, line: 171, baseType: !1459, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!124, !1408, !86, !181}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1450, file: !1410, line: 173, baseType: !1463, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!124, !1408}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1450, file: !1410, line: 174, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!124, !1408, !1408, !86}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1450, file: !1410, line: 176, baseType: !1471, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!124, !1456, !1408, !1428}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1429, file: !1410, line: 192, baseType: !68, size: 128, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1429, file: !1410, line: 194, baseType: !690, size: 128, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1420, file: !1410, line: 144, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1410, line: 103, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1477, file: !1410, line: 104, baseType: !1408, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1420, file: !1410, line: 145, baseType: !1481, size: 256)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1410, line: 107, size: 256, elements: !1482)
!1482 = !{!1483, !1548, !1551, !1552}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1481, file: !1410, line: 108, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1410, line: 217, size: 768, elements: !1487)
!1487 = !{!1488, !1508, !1512, !1516, !1521, !1525, !1529, !1533, !1534, !1535, !1536, !1544}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1486, file: !1410, line: 222, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!124, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1410, line: 197, size: 1088, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1493, file: !1410, line: 199, baseType: !1408, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1493, file: !1410, line: 200, baseType: !218, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1493, file: !1410, line: 201, baseType: !1456, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1493, file: !1410, line: 202, baseType: !63, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1493, file: !1410, line: 205, baseType: !358, size: 192, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1493, file: !1410, line: 206, baseType: !358, size: 192, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1493, file: !1410, line: 207, baseType: !124, size: 32, offset: 640)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1493, file: !1410, line: 208, baseType: !68, size: 128, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1493, file: !1410, line: 209, baseType: !140, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1493, file: !1410, line: 211, baseType: !187, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1493, file: !1410, line: 212, baseType: !983, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1493, file: !1410, line: 213, baseType: !983, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1493, file: !1410, line: 214, baseType: !1341, size: 64, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1486, file: !1410, line: 223, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !1492}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1486, file: !1410, line: 236, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!124, !1456, !63}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1486, file: !1410, line: 238, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!63, !1456, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1486, file: !1410, line: 239, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!63, !1456, !63, !1520}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1486, file: !1410, line: 240, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1456, !63}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1486, file: !1410, line: 242, baseType: !1530, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!171, !1492, !140, !187, !221}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1486, file: !1410, line: 252, baseType: !187, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1486, file: !1410, line: 259, baseType: !983, size: 8, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1486, file: !1410, line: 260, baseType: !1530, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1486, file: !1410, line: 263, baseType: !1537, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1540, !1492, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1541, line: 52, baseType: !5)
!1541 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1410, line: 27, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1486, file: !1410, line: 266, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!124, !1492, !229}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1481, file: !1410, line: 109, baseType: !1549, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1410, line: 31, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1481, file: !1410, line: 110, baseType: !221, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1481, file: !1410, line: 111, baseType: !1408, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1409, file: !1410, line: 148, baseType: !63, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1409, file: !1410, line: 154, baseType: !259, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !1410, line: 156, baseType: !182, size: 16, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1409, file: !1410, line: 157, baseType: !181, size: 16, offset: 912)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1409, file: !1410, line: 158, baseType: !1558, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1410, line: 32, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !82, file: !83, line: 71, baseType: !1561, size: 32, offset: 448)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1562, line: 19, size: 32, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1561, file: !1562, line: 20, baseType: !419, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !82, file: !83, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !82, file: !83, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !82, file: !83, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !82, file: !83, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !82, file: !83, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !28, line: 463, baseType: !78, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !79, file: !28, line: 465, baseType: !1572, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1574, line: 88, size: 1664, elements: !1575)
!1574 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1593, !1594, !1595, !1596, !1597, !1598, !1789, !1790, !1791}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !1573, file: !1574, line: 89, baseType: !1577, size: 256, align: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1578, line: 18, size: 256, align: 64, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582, !1592}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1577, file: !1578, line: 19, baseType: !98)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1577, file: !1578, line: 20, baseType: !68, size: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1577, file: !1578, line: 21, baseType: !1583, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1578, line: 37, size: 256, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1587, file: !1578, line: 38, baseType: !63, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1587, file: !1578, line: 39, baseType: !68, size: 128, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1587, file: !1578, line: 40, baseType: !1561, size: 32, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1577, file: !1578, line: 22, baseType: !1583, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !1573, file: !1574, line: 90, baseType: !1587, size: 256, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !1573, file: !1574, line: 91, baseType: !1587, size: 256, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1573, file: !1574, line: 92, baseType: !1587, size: 256, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !1573, file: !1574, line: 93, baseType: !1587, size: 256, offset: 1024)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !1573, file: !1574, line: 94, baseType: !68, size: 128, offset: 1280)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !1573, file: !1574, line: 95, baseType: !1599, size: 64, offset: 1408)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1601)
!1601 = !{!1602, !1603, !1747, !1748, !1749, !1750, !1751, !1755, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1600, file: !22, line: 96, baseType: !86, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1600, file: !22, line: 97, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1606, line: 82, size: 1408, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1618, !1622, !1626, !1630, !1631, !1632, !1633, !1634, !1642, !1643, !1644, !1645, !1673, !1677, !1743, !1746}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !1606, line: 83, baseType: !86, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1605, file: !1606, line: 84, baseType: !86, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1605, file: !1606, line: 85, baseType: !78, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1605, file: !1606, line: 86, baseType: !194, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1605, file: !1606, line: 87, baseType: !194, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1605, file: !1606, line: 88, baseType: !194, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1605, file: !1606, line: 90, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!124, !78, !1599}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1605, file: !1606, line: 91, baseType: !1619, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!124, !78, !135}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1605, file: !1606, line: 92, baseType: !1623, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!124, !78}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1605, file: !1606, line: 93, baseType: !1627, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !78}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1605, file: !1606, line: 94, baseType: !1623, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1605, file: !1606, line: 95, baseType: !1627, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1605, file: !1606, line: 97, baseType: !1623, size: 64, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1605, file: !1606, line: 98, baseType: !1623, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1605, file: !1606, line: 100, baseType: !1635, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!124, !78, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1639, file: !35, line: 51, baseType: !124, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1605, file: !1606, line: 101, baseType: !1623, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1605, file: !1606, line: 103, baseType: !1623, size: 64, offset: 1024)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1605, file: !1606, line: 105, baseType: !1623, size: 64, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1605, file: !1606, line: 107, baseType: !1646, size: 64, offset: 1152)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1648, file: !35, line: 279, baseType: !1623, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1648, file: !35, line: 280, baseType: !1627, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1648, file: !35, line: 281, baseType: !1623, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1648, file: !35, line: 282, baseType: !1623, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1648, file: !35, line: 283, baseType: !1623, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1648, file: !35, line: 284, baseType: !1623, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1648, file: !35, line: 285, baseType: !1623, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1648, file: !35, line: 286, baseType: !1623, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1648, file: !35, line: 287, baseType: !1623, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1648, file: !35, line: 288, baseType: !1623, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1648, file: !35, line: 289, baseType: !1623, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1648, file: !35, line: 290, baseType: !1623, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1648, file: !35, line: 291, baseType: !1623, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1648, file: !35, line: 292, baseType: !1623, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1648, file: !35, line: 293, baseType: !1623, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1648, file: !35, line: 294, baseType: !1623, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1648, file: !35, line: 295, baseType: !1623, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1648, file: !35, line: 296, baseType: !1623, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1648, file: !35, line: 297, baseType: !1623, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1648, file: !35, line: 298, baseType: !1623, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1648, file: !35, line: 299, baseType: !1623, size: 64, offset: 1280)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1648, file: !35, line: 300, baseType: !1623, size: 64, offset: 1344)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1648, file: !35, line: 301, baseType: !1623, size: 64, offset: 1408)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1605, file: !1606, line: 109, baseType: !1674, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1606, line: 109, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1605, file: !1606, line: 111, baseType: !1678, size: 64, offset: 1280)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1574, line: 40, size: 2880, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1704, !1705, !1706, !1707}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1679, file: !1574, line: 41, baseType: !94, size: 704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !1679, file: !1574, line: 42, baseType: !93, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !1679, file: !1574, line: 43, baseType: !68, size: 128, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1679, file: !1574, line: 44, baseType: !358, size: 192, offset: 896)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !1679, file: !1574, line: 46, baseType: !93, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1679, file: !1574, line: 47, baseType: !1577, size: 256, align: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !1679, file: !1574, line: 48, baseType: !1577, size: 256, align: 64, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !1679, file: !1574, line: 49, baseType: !1689, size: 320, offset: 1664)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1690, line: 65, size: 320, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1689, file: !1690, line: 66, baseType: !300, size: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1689, file: !1690, line: 67, baseType: !1694, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1690, line: 54, size: 192, elements: !1696)
!1696 = !{!1697, !1702, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1695, file: !1690, line: 55, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1690, line: 51, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!124, !1694, !190, !63}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1695, file: !1690, line: 56, baseType: !1694, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1695, file: !1690, line: 57, baseType: !124, size: 32, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !1679, file: !1574, line: 50, baseType: !5, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1679, file: !1574, line: 51, baseType: !1604, size: 64, offset: 2048)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !1679, file: !1574, line: 53, baseType: !94, size: 704, offset: 2112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1679, file: !1574, line: 54, baseType: !1708, size: 64, offset: 2816)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1710, line: 54, size: 960, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1717, !1718, !1719, !1720, !1721, !1726, !1730, !1731, !1732, !1733, !1737, !1741, !1742}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 55, baseType: !86, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1709, file: !1710, line: 56, baseType: !1714, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1716, line: 76, flags: DIFlagFwdDecl)
!1716 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1709, file: !1710, line: 58, baseType: !194, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1709, file: !1710, line: 59, baseType: !194, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1709, file: !1710, line: 60, baseType: !91, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1709, file: !1710, line: 62, baseType: !1619, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1709, file: !1710, line: 63, baseType: !1722, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!140, !78, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1709, file: !1710, line: 65, baseType: !1727, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1708}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1709, file: !1710, line: 66, baseType: !1627, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1709, file: !1710, line: 68, baseType: !1623, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1709, file: !1710, line: 70, baseType: !1357, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1709, file: !1710, line: 71, baseType: !1734, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!1374, !78}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1709, file: !1710, line: 73, baseType: !1738, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !78, !1394, !1400}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1709, file: !1710, line: 75, baseType: !1646, size: 64, offset: 832)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1709, file: !1710, line: 77, baseType: !1678, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1605, file: !1606, line: 112, baseType: !1744, offset: 1344)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1745, line: 187, elements: !112)
!1745 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1605, file: !1606, line: 114, baseType: !983, size: 8, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1600, file: !22, line: 99, baseType: !1714, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1600, file: !22, line: 100, baseType: !86, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1600, file: !22, line: 102, baseType: !983, size: 8, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1600, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1600, file: !22, line: 105, baseType: !1752, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !22, line: 105, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1600, file: !22, line: 106, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !22, line: 106, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1600, file: !22, line: 108, baseType: !1623, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1600, file: !22, line: 109, baseType: !1627, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1600, file: !22, line: 110, baseType: !1623, size: 64, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1600, file: !22, line: 111, baseType: !1627, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1600, file: !22, line: 112, baseType: !1635, size: 64, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1600, file: !22, line: 113, baseType: !1623, size: 64, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1600, file: !22, line: 114, baseType: !194, size: 64, offset: 832)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1600, file: !22, line: 115, baseType: !194, size: 64, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1600, file: !22, line: 117, baseType: !1646, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1600, file: !22, line: 118, baseType: !1627, size: 64, offset: 1024)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1600, file: !22, line: 120, baseType: !1770, size: 64, offset: 1088)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1574, line: 58, size: 1152, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1788}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1771, file: !1574, line: 59, baseType: !82, size: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1771, file: !1574, line: 60, baseType: !1577, size: 256, align: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1771, file: !1574, line: 61, baseType: !1587, size: 256, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1771, file: !1574, line: 62, baseType: !1777, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1779, line: 46, size: 768, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781, !1782, !1783, !1784, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1778, file: !1779, line: 47, baseType: !82, size: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1778, file: !1779, line: 48, baseType: !1714, size: 64, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1778, file: !1779, line: 49, baseType: !91, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1778, file: !1779, line: 50, baseType: !1785, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1779, line: 50, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1778, file: !1779, line: 51, baseType: !718, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1771, file: !1574, line: 63, baseType: !1599, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !1573, file: !1574, line: 96, baseType: !140, size: 64, offset: 1472)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1573, file: !1574, line: 97, baseType: !78, size: 64, offset: 1536)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1573, file: !1574, line: 98, baseType: !550, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !79, file: !28, line: 467, baseType: !86, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !28, line: 468, baseType: !1794, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1805, !1806}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1796, file: !28, line: 88, baseType: !86, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1796, file: !28, line: 89, baseType: !194, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1796, file: !28, line: 90, baseType: !1619, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1796, file: !28, line: 91, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!140, !78, !1725, !1394, !1400}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1796, file: !28, line: 93, baseType: !1627, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1796, file: !28, line: 95, baseType: !1646, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !79, file: !28, line: 470, baseType: !1604, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !79, file: !28, line: 471, baseType: !1599, size: 64, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !79, file: !28, line: 473, baseType: !63, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !79, file: !28, line: 475, baseType: !63, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !79, file: !28, line: 480, baseType: !358, size: 192, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !79, file: !28, line: 484, baseType: !1813, size: 576, offset: 1216)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1813, file: !28, line: 362, baseType: !68, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1813, file: !28, line: 363, baseType: !68, size: 128, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1813, file: !28, line: 364, baseType: !68, size: 128, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1813, file: !28, line: 365, baseType: !68, size: 128, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1813, file: !28, line: 366, baseType: !983, size: 8, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1813, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !79, file: !28, line: 485, baseType: !1822, size: 2304, offset: 1792)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1919, !1923}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1822, file: !35, line: 566, baseType: !1638, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1822, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1822, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1822, file: !35, line: 569, baseType: !983, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1822, file: !35, line: 570, baseType: !983, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1822, file: !35, line: 571, baseType: !983, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1822, file: !35, line: 572, baseType: !983, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1822, file: !35, line: 573, baseType: !983, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1822, file: !35, line: 574, baseType: !983, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1822, file: !35, line: 575, baseType: !983, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1822, file: !35, line: 576, baseType: !983, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1822, file: !35, line: 577, baseType: !413, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !35, line: 578, baseType: !98, offset: 96)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1822, file: !35, line: 580, baseType: !68, size: 128, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1822, file: !35, line: 581, baseType: !719, size: 192, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1822, file: !35, line: 582, baseType: !1840, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1842, line: 43, size: 1472, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1851, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1841, file: !1842, line: 44, baseType: !86, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1841, file: !1842, line: 45, baseType: !124, size: 32, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1841, file: !1842, line: 46, baseType: !68, size: 128, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !1842, line: 47, baseType: !98, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1841, file: !1842, line: 48, baseType: !1849, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1841, file: !1842, line: 49, baseType: !1852, size: 320, offset: 320)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1853, line: 11, size: 320, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856, !1857, !1862}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1852, file: !1853, line: 16, baseType: !683, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1852, file: !1853, line: 17, baseType: !190, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1852, file: !1853, line: 18, baseType: !1858, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1852, file: !1853, line: 19, baseType: !413, size: 32, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1841, file: !1842, line: 50, baseType: !190, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1841, file: !1842, line: 51, baseType: !489, size: 64, offset: 704)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1841, file: !1842, line: 52, baseType: !489, size: 64, offset: 768)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1841, file: !1842, line: 53, baseType: !489, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1841, file: !1842, line: 54, baseType: !489, size: 64, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1841, file: !1842, line: 55, baseType: !489, size: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1841, file: !1842, line: 56, baseType: !190, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1841, file: !1842, line: 57, baseType: !190, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1841, file: !1842, line: 58, baseType: !190, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1841, file: !1842, line: 59, baseType: !190, size: 64, offset: 1216)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1841, file: !1842, line: 60, baseType: !190, size: 64, offset: 1280)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1841, file: !1842, line: 61, baseType: !78, size: 64, offset: 1344)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1841, file: !1842, line: 62, baseType: !983, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1841, file: !1842, line: 63, baseType: !983, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1822, file: !35, line: 583, baseType: !983, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1822, file: !35, line: 584, baseType: !983, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1822, file: !35, line: 585, baseType: !983, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1822, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1822, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1822, file: !35, line: 592, baseType: !481, size: 512, offset: 576)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1822, file: !35, line: 593, baseType: !259, size: 64, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1822, file: !35, line: 594, baseType: !1308, size: 256, offset: 1152)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1822, file: !35, line: 595, baseType: !690, size: 128, offset: 1408)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1822, file: !35, line: 596, baseType: !1849, size: 64, offset: 1536)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1822, file: !35, line: 597, baseType: !281, size: 32, offset: 1600)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1822, file: !35, line: 598, baseType: !281, size: 32, offset: 1632)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1822, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1822, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1822, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1822, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1822, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1822, file: !35, line: 604, baseType: !983, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1822, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1822, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1822, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1822, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1822, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1822, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1822, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1822, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1822, file: !35, line: 613, baseType: !124, size: 32, offset: 1792)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1822, file: !35, line: 614, baseType: !124, size: 32, offset: 1824)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1822, file: !35, line: 615, baseType: !259, size: 64, offset: 1856)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1822, file: !35, line: 616, baseType: !259, size: 64, offset: 1920)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1822, file: !35, line: 617, baseType: !259, size: 64, offset: 1984)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1822, file: !35, line: 618, baseType: !259, size: 64, offset: 2048)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1822, file: !35, line: 620, baseType: !1910, size: 64, offset: 2112)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1911, file: !35, line: 537, baseType: !98)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1911, file: !35, line: 538, baseType: !5, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1911, file: !35, line: 540, baseType: !68, size: 128, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1911, file: !35, line: 543, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1822, file: !35, line: 621, baseType: !1920, size: 64, offset: 2176)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !78, !643}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1822, file: !35, line: 622, baseType: !1924, size: 64, offset: 2240)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !79, file: !28, line: 486, baseType: !1927, size: 64, offset: 4096)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1936, !1937, !1938}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1928, file: !35, line: 643, baseType: !1648, size: 1472)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1928, file: !35, line: 644, baseType: !1623, size: 64, offset: 1472)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1928, file: !35, line: 645, baseType: !1933, size: 64, offset: 1536)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !78, !983}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1928, file: !35, line: 646, baseType: !1623, size: 64, offset: 1600)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1928, file: !35, line: 647, baseType: !1627, size: 64, offset: 1664)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1928, file: !35, line: 648, baseType: !1627, size: 64, offset: 1728)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !79, file: !28, line: 493, baseType: !1940, size: 64, offset: 4160)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !79, file: !28, line: 499, baseType: !68, size: 128, offset: 4224)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !79, file: !28, line: 502, baseType: !1944, size: 64, offset: 4352)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !79, file: !28, line: 504, baseType: !1948, size: 64, offset: 4416)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !79, file: !28, line: 505, baseType: !259, size: 64, offset: 4480)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !79, file: !28, line: 510, baseType: !259, size: 64, offset: 4544)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !79, file: !28, line: 511, baseType: !1952, size: 64, offset: 4608)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !79, file: !28, line: 513, baseType: !1956, size: 64, offset: 4672)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1957, file: !28, line: 293, baseType: !5, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1957, file: !28, line: 294, baseType: !190, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !79, file: !28, line: 515, baseType: !68, size: 128, offset: 4736)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !79, file: !28, line: 526, baseType: !1963, offset: 4864)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1964, line: 5, elements: !112)
!1964 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !79, file: !28, line: 528, baseType: !1966, size: 64, offset: 4864)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1968, line: 14, flags: DIFlagFwdDecl)
!1968 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !79, file: !28, line: 529, baseType: !1970, size: 64, offset: 4928)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1606, line: 22, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !79, file: !28, line: 534, baseType: !1973, size: 32, offset: 4992)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !62, line: 16, baseType: !1974)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !62, line: 13, baseType: !413)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !79, file: !28, line: 535, baseType: !413, size: 32, offset: 5024)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !79, file: !28, line: 537, baseType: !98, offset: 5056)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !79, file: !28, line: 538, baseType: !68, size: 128, offset: 5056)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !79, file: !28, line: 540, baseType: !1708, size: 64, offset: 5184)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !79, file: !28, line: 541, baseType: !194, size: 64, offset: 5248)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !79, file: !28, line: 543, baseType: !1627, size: 64, offset: 5312)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !79, file: !28, line: 544, baseType: !1982, size: 64, offset: 5376)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !79, file: !28, line: 545, baseType: !1985, size: 64, offset: 5440)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !79, file: !28, line: 547, baseType: !983, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !79, file: !28, line: 548, baseType: !983, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !79, file: !28, line: 549, baseType: !983, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !79, file: !28, line: 550, baseType: !983, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devres", file: !1, line: 27, size: 192, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1992, file: !1, line: 28, baseType: !65, size: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1992, file: !1, line: 36, baseType: !1996, align: 64, offset: 192)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, elements: !1322)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devres_group", file: !1, line: 39, size: 512, elements: !2004)
!2004 = !{!2005, !2007, !2008}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2003, file: !1, line: 40, baseType: !2006, size: 384)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 384, elements: !955)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2003, file: !1, line: 41, baseType: !63, size: 64, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !2003, file: !1, line: 42, baseType: !124, size: 32, offset: 448)
!2009 = !{!"rsp"}
!2010 = !{i32 7, !"Dwarf Version", i32 4}
!2011 = !{i32 2, !"Debug Info Version", i32 3}
!2012 = !{i32 1, !"wchar_size", i32 2}
!2013 = !{i32 1, !"Code Model", i32 2}
!2014 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2015 = distinct !DISubprogram(name: "devres_alloc_node", scope: !1, file: !1, line: 165, type: !2016, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!63, !74, !187, !61, !124}
!2018 = !DILocalVariable(name: "release", arg: 1, scope: !2019, file: !1, line: 102, type: !74)
!2019 = distinct !DISubprogram(name: "alloc_dr", scope: !1, file: !1, line: 102, type: !2020, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1991, !74, !187, !61, !124}
!2022 = !DILocation(line: 102, column: 62, scope: !2019, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 169, column: 7, scope: !2015)
!2024 = !DILocalVariable(name: "size", arg: 2, scope: !2019, file: !1, line: 103, type: !187)
!2025 = !DILocation(line: 103, column: 14, scope: !2019, inlinedAt: !2023)
!2026 = !DILocalVariable(name: "gfp", arg: 3, scope: !2019, file: !1, line: 103, type: !61)
!2027 = !DILocation(line: 103, column: 26, scope: !2019, inlinedAt: !2023)
!2028 = !DILocalVariable(name: "nid", arg: 4, scope: !2019, file: !1, line: 103, type: !124)
!2029 = !DILocation(line: 103, column: 35, scope: !2019, inlinedAt: !2023)
!2030 = !DILocalVariable(name: "tot_size", scope: !2019, file: !1, line: 105, type: !187)
!2031 = !DILocation(line: 105, column: 9, scope: !2019, inlinedAt: !2023)
!2032 = !DILocalVariable(name: "dr", scope: !2019, file: !1, line: 106, type: !1991)
!2033 = !DILocation(line: 106, column: 17, scope: !2019, inlinedAt: !2023)
!2034 = !DILocalVariable(name: "release", arg: 1, scope: !2015, file: !1, line: 165, type: !74)
!2035 = !DILocation(line: 165, column: 39, scope: !2015)
!2036 = !DILocalVariable(name: "size", arg: 2, scope: !2015, file: !1, line: 165, type: !187)
!2037 = !DILocation(line: 165, column: 55, scope: !2015)
!2038 = !DILocalVariable(name: "gfp", arg: 3, scope: !2015, file: !1, line: 165, type: !61)
!2039 = !DILocation(line: 165, column: 67, scope: !2015)
!2040 = !DILocalVariable(name: "nid", arg: 4, scope: !2015, file: !1, line: 165, type: !124)
!2041 = !DILocation(line: 165, column: 76, scope: !2015)
!2042 = !DILocalVariable(name: "dr", scope: !2015, file: !1, line: 167, type: !1991)
!2043 = !DILocation(line: 167, column: 17, scope: !2015)
!2044 = !DILocation(line: 169, column: 16, scope: !2015)
!2045 = !DILocation(line: 169, column: 25, scope: !2015)
!2046 = !DILocation(line: 169, column: 31, scope: !2015)
!2047 = !DILocation(line: 169, column: 35, scope: !2015)
!2048 = !DILocation(line: 169, column: 49, scope: !2015)
!2049 = !DILocation(line: 108, column: 21, scope: !2050, inlinedAt: !2023)
!2050 = distinct !DILexicalBlock(scope: !2019, file: !1, line: 108, column: 6)
!2051 = !DILocation(line: 108, column: 7, scope: !2050, inlinedAt: !2023)
!2052 = !DILocation(line: 108, column: 6, scope: !2019, inlinedAt: !2023)
!2053 = !DILocation(line: 109, column: 3, scope: !2050, inlinedAt: !2023)
!2054 = !DILocation(line: 111, column: 7, scope: !2019, inlinedAt: !2023)
!2055 = !DILocation(line: 111, column: 5, scope: !2019, inlinedAt: !2023)
!2056 = !DILocation(line: 112, column: 6, scope: !2057, inlinedAt: !2023)
!2057 = distinct !DILexicalBlock(scope: !2019, file: !1, line: 112, column: 6)
!2058 = !DILocation(line: 112, column: 6, scope: !2019, inlinedAt: !2023)
!2059 = !DILocation(line: 113, column: 3, scope: !2057, inlinedAt: !2023)
!2060 = !DILocation(line: 115, column: 9, scope: !2019, inlinedAt: !2023)
!2061 = !DILocation(line: 115, column: 2, scope: !2019, inlinedAt: !2023)
!2062 = !DILocation(line: 117, column: 18, scope: !2019, inlinedAt: !2023)
!2063 = !DILocation(line: 117, column: 22, scope: !2019, inlinedAt: !2023)
!2064 = !DILocation(line: 117, column: 27, scope: !2019, inlinedAt: !2023)
!2065 = !DILocation(line: 117, column: 2, scope: !2019, inlinedAt: !2023)
!2066 = !DILocation(line: 118, column: 21, scope: !2019, inlinedAt: !2023)
!2067 = !DILocation(line: 118, column: 2, scope: !2019, inlinedAt: !2023)
!2068 = !DILocation(line: 118, column: 6, scope: !2019, inlinedAt: !2023)
!2069 = !DILocation(line: 118, column: 11, scope: !2019, inlinedAt: !2023)
!2070 = !DILocation(line: 118, column: 19, scope: !2019, inlinedAt: !2023)
!2071 = !DILocation(line: 119, column: 9, scope: !2019, inlinedAt: !2023)
!2072 = !DILocation(line: 119, column: 2, scope: !2019, inlinedAt: !2023)
!2073 = !DILocation(line: 120, column: 1, scope: !2019, inlinedAt: !2023)
!2074 = !DILocation(line: 169, column: 5, scope: !2015)
!2075 = !DILocation(line: 170, column: 6, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 170, column: 6)
!2077 = !DILocation(line: 170, column: 6, scope: !2015)
!2078 = !DILocation(line: 171, column: 3, scope: !2076)
!2079 = !DILocation(line: 172, column: 9, scope: !2015)
!2080 = !DILocation(line: 172, column: 13, scope: !2015)
!2081 = !DILocation(line: 172, column: 2, scope: !2015)
!2082 = !DILocation(line: 173, column: 1, scope: !2015)
!2083 = distinct !DISubprogram(name: "devres_for_each_res", scope: !1, file: !1, line: 192, type: !2084, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !78, !74, !2086, !63, !2090, !63}
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !28, line: 166, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!124, !78, !63, !63}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !78, !63, !63}
!2093 = !DILocalVariable(name: "lock", arg: 1, scope: !2094, file: !2095, line: 407, type: !2098)
!2094 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2095, file: !2095, line: 407, type: !2096, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2095 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !2098, !190}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2099 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 215, column: 2, scope: !2083)
!2101 = !DILocalVariable(name: "flags", arg: 2, scope: !2094, file: !2095, line: 407, type: !190)
!2102 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2100)
!2103 = !DILocalVariable(name: "lock", arg: 1, scope: !2104, file: !2095, line: 327, type: !2098)
!2104 = distinct !DISubprogram(name: "spinlock_check", scope: !2095, file: !2095, line: 327, type: !2105, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2107, !2098}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!2108 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 204, column: 2, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !1, line: 204, column: 2)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 204, column: 2)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 204, column: 2)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 204, column: 2)
!2114 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 204, column: 2)
!2115 = !DILocalVariable(name: "dev", arg: 1, scope: !2083, file: !1, line: 192, type: !78)
!2116 = !DILocation(line: 192, column: 41, scope: !2083)
!2117 = !DILocalVariable(name: "release", arg: 2, scope: !2083, file: !1, line: 192, type: !74)
!2118 = !DILocation(line: 192, column: 59, scope: !2083)
!2119 = !DILocalVariable(name: "match", arg: 3, scope: !2083, file: !1, line: 193, type: !2086)
!2120 = !DILocation(line: 193, column: 15, scope: !2083)
!2121 = !DILocalVariable(name: "match_data", arg: 4, scope: !2083, file: !1, line: 193, type: !63)
!2122 = !DILocation(line: 193, column: 28, scope: !2083)
!2123 = !DILocalVariable(name: "fn", arg: 5, scope: !2083, file: !1, line: 194, type: !2090)
!2124 = !DILocation(line: 194, column: 11, scope: !2083)
!2125 = !DILocalVariable(name: "data", arg: 6, scope: !2083, file: !1, line: 195, type: !63)
!2126 = !DILocation(line: 195, column: 10, scope: !2083)
!2127 = !DILocalVariable(name: "node", scope: !2083, file: !1, line: 197, type: !64)
!2128 = !DILocation(line: 197, column: 22, scope: !2083)
!2129 = !DILocalVariable(name: "tmp", scope: !2083, file: !1, line: 198, type: !64)
!2130 = !DILocation(line: 198, column: 22, scope: !2083)
!2131 = !DILocalVariable(name: "flags", scope: !2083, file: !1, line: 199, type: !190)
!2132 = !DILocation(line: 199, column: 16, scope: !2083)
!2133 = !DILocation(line: 201, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 201, column: 6)
!2135 = !DILocation(line: 201, column: 6, scope: !2083)
!2136 = !DILocation(line: 202, column: 3, scope: !2134)
!2137 = !DILocation(line: 204, column: 2, scope: !2083)
!2138 = !DILocation(line: 204, column: 2, scope: !2114)
!2139 = !DILocalVariable(name: "__dummy", scope: !2140, file: !1, line: 204, type: !190)
!2140 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 204, column: 2)
!2141 = !DILocation(line: 204, column: 2, scope: !2140)
!2142 = !DILocalVariable(name: "__dummy2", scope: !2140, file: !1, line: 204, type: !190)
!2143 = !DILocation(line: 204, column: 2, scope: !2113)
!2144 = !DILocation(line: 204, column: 2, scope: !2112)
!2145 = !DILocation(line: 204, column: 2, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 204, column: 2)
!2147 = !DILocalVariable(name: "__dummy", scope: !2148, file: !1, line: 204, type: !190)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 204, column: 2)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 204, column: 2)
!2150 = !DILocation(line: 204, column: 2, scope: !2148)
!2151 = !DILocalVariable(name: "__dummy2", scope: !2148, file: !1, line: 204, type: !190)
!2152 = !DILocation(line: 204, column: 2, scope: !2149)
!2153 = !DILocation(line: 204, column: 2, scope: !2111)
!2154 = !{i32 -2143507637}
!2155 = !DILocation(line: 204, column: 2, scope: !2110)
!2156 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2109)
!2157 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2109)
!2158 = !DILocalVariable(name: "__mptr", scope: !2159, file: !1, line: 205, type: !63)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 205, column: 2)
!2160 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 205, column: 2)
!2161 = !DILocation(line: 205, column: 2, scope: !2159)
!2162 = !DILocation(line: 205, column: 2, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 205, column: 2)
!2164 = !DILocation(line: 205, column: 2, scope: !2160)
!2165 = !DILocalVariable(name: "__mptr", scope: !2166, file: !1, line: 205, type: !63)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 205, column: 2)
!2167 = !DILocation(line: 205, column: 2, scope: !2166)
!2168 = !DILocation(line: 205, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 205, column: 2)
!2170 = !DILocation(line: 205, column: 2, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 205, column: 2)
!2172 = !DILocalVariable(name: "dr", scope: !2173, file: !1, line: 207, type: !1991)
!2173 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 206, column: 30)
!2174 = !DILocation(line: 207, column: 18, scope: !2173)
!2175 = !DILocalVariable(name: "__mptr", scope: !2176, file: !1, line: 207, type: !63)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 207, column: 23)
!2177 = !DILocation(line: 207, column: 23, scope: !2176)
!2178 = !DILocation(line: 207, column: 23, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 207, column: 23)
!2180 = !DILocation(line: 209, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 209, column: 7)
!2182 = !DILocation(line: 209, column: 13, scope: !2181)
!2183 = !DILocation(line: 209, column: 24, scope: !2181)
!2184 = !DILocation(line: 209, column: 21, scope: !2181)
!2185 = !DILocation(line: 209, column: 7, scope: !2173)
!2186 = !DILocation(line: 210, column: 4, scope: !2181)
!2187 = !DILocation(line: 211, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 211, column: 7)
!2189 = !DILocation(line: 211, column: 13, scope: !2188)
!2190 = !DILocation(line: 211, column: 17, scope: !2188)
!2191 = !DILocation(line: 211, column: 23, scope: !2188)
!2192 = !DILocation(line: 211, column: 28, scope: !2188)
!2193 = !DILocation(line: 211, column: 32, scope: !2188)
!2194 = !DILocation(line: 211, column: 38, scope: !2188)
!2195 = !DILocation(line: 211, column: 7, scope: !2173)
!2196 = !DILocation(line: 212, column: 4, scope: !2188)
!2197 = !DILocation(line: 213, column: 3, scope: !2173)
!2198 = !DILocation(line: 213, column: 6, scope: !2173)
!2199 = !DILocation(line: 213, column: 11, scope: !2173)
!2200 = !DILocation(line: 213, column: 15, scope: !2173)
!2201 = !DILocation(line: 213, column: 21, scope: !2173)
!2202 = !DILocation(line: 214, column: 2, scope: !2173)
!2203 = !DILocalVariable(name: "__mptr", scope: !2204, file: !1, line: 205, type: !63)
!2204 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 205, column: 2)
!2205 = !DILocation(line: 205, column: 2, scope: !2204)
!2206 = !DILocation(line: 205, column: 2, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 205, column: 2)
!2208 = distinct !{!2208, !2164, !2209}
!2209 = !DILocation(line: 214, column: 2, scope: !2160)
!2210 = !DILocation(line: 215, column: 26, scope: !2083)
!2211 = !DILocation(line: 215, column: 31, scope: !2083)
!2212 = !DILocation(line: 215, column: 44, scope: !2083)
!2213 = !DILocalVariable(name: "__dummy", scope: !2214, file: !2095, line: 409, type: !190)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !2095, line: 409, column: 2)
!2215 = distinct !DILexicalBlock(scope: !2094, file: !2095, line: 409, column: 2)
!2216 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2100)
!2217 = !DILocalVariable(name: "__dummy2", scope: !2214, file: !2095, line: 409, type: !190)
!2218 = !DILocalVariable(name: "__dummy", scope: !2219, file: !2095, line: 409, type: !190)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !2095, line: 409, column: 2)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2095, line: 409, column: 2)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2095, line: 409, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2215, file: !2095, line: 409, column: 2)
!2223 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2100)
!2224 = !DILocalVariable(name: "__dummy2", scope: !2219, file: !2095, line: 409, type: !190)
!2225 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2100)
!2226 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2100)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !2095, line: 409, column: 2)
!2228 = !{i32 -2145266578}
!2229 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2100)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !2095, line: 409, column: 2)
!2231 = !DILocation(line: 216, column: 1, scope: !2083)
!2232 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2233, file: !2233, line: 666, type: !2234, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2233 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!190}
!2236 = !DILocalVariable(name: "f", scope: !2232, file: !2233, line: 668, type: !190)
!2237 = !DILocation(line: 668, column: 16, scope: !2232)
!2238 = !DILocation(line: 670, column: 6, scope: !2232)
!2239 = !DILocation(line: 670, column: 4, scope: !2232)
!2240 = !DILocation(line: 671, column: 2, scope: !2232)
!2241 = !DILocation(line: 672, column: 9, scope: !2232)
!2242 = !DILocation(line: 672, column: 2, scope: !2232)
!2243 = distinct !DISubprogram(name: "devres_free", scope: !1, file: !1, line: 225, type: !1384, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2244 = !DILocalVariable(name: "res", arg: 1, scope: !2243, file: !1, line: 225, type: !63)
!2245 = !DILocation(line: 225, column: 24, scope: !2243)
!2246 = !DILocation(line: 227, column: 6, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 227, column: 6)
!2248 = !DILocation(line: 227, column: 6, scope: !2243)
!2249 = !DILocalVariable(name: "dr", scope: !2250, file: !1, line: 228, type: !1991)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 227, column: 11)
!2251 = !DILocation(line: 228, column: 18, scope: !2250)
!2252 = !DILocalVariable(name: "__mptr", scope: !2253, file: !1, line: 228, type: !63)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 228, column: 23)
!2254 = !DILocation(line: 228, column: 23, scope: !2253)
!2255 = !DILocation(line: 228, column: 23, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !1, line: 228, column: 23)
!2257 = !DILocation(line: 230, column: 3, scope: !2250)
!2258 = !DILocation(line: 230, column: 3, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !1, line: 230, column: 3)
!2260 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 230, column: 3)
!2261 = !DILocation(line: 230, column: 3, scope: !2260)
!2262 = !DILocation(line: 230, column: 3, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 230, column: 3)
!2264 = !DILocation(line: 230, column: 3, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 230, column: 3)
!2266 = !DILocation(line: 230, column: 3, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 230, column: 3)
!2268 = !{i32 -2143498469, i32 -2143498440, i32 -2143498394, i32 -2143498336, i32 -2143498282, i32 -2143498228, i32 -2143498173, i32 -2143498142}
!2269 = !DILocation(line: 230, column: 3, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 230, column: 3)
!2271 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 230, column: 3)
!2272 = !{i32 -2143497698, i32 -2143497691, i32 -2143497637, i32 -2143497606, i32 -2143497576}
!2273 = !DILocation(line: 230, column: 3, scope: !2271)
!2274 = !DILocation(line: 231, column: 9, scope: !2250)
!2275 = !DILocation(line: 231, column: 3, scope: !2250)
!2276 = !DILocation(line: 232, column: 2, scope: !2250)
!2277 = !DILocation(line: 233, column: 1, scope: !2243)
!2278 = distinct !DISubprogram(name: "list_empty", scope: !2279, file: !2279, line: 280, type: !2280, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2279 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!124, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!2284 = !DILocalVariable(name: "head", arg: 1, scope: !2278, file: !2279, line: 280, type: !2282)
!2285 = !DILocation(line: 280, column: 54, scope: !2278)
!2286 = !DILocation(line: 282, column: 9, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2278, file: !2279, line: 282, column: 9)
!2288 = !DILocation(line: 282, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2287, file: !2279, line: 282, column: 9)
!2290 = !DILocation(line: 282, column: 34, scope: !2278)
!2291 = !DILocation(line: 282, column: 31, scope: !2278)
!2292 = !DILocation(line: 282, column: 2, scope: !2278)
!2293 = distinct !DISubprogram(name: "devres_add", scope: !1, file: !1, line: 245, type: !76, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2294 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 252, column: 2, scope: !2293)
!2296 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2295)
!2297 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 250, column: 2, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 250, column: 2)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 250, column: 2)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 250, column: 2)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 250, column: 2)
!2303 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 250, column: 2)
!2304 = !DILocalVariable(name: "dev", arg: 1, scope: !2293, file: !1, line: 245, type: !78)
!2305 = !DILocation(line: 245, column: 32, scope: !2293)
!2306 = !DILocalVariable(name: "res", arg: 2, scope: !2293, file: !1, line: 245, type: !63)
!2307 = !DILocation(line: 245, column: 43, scope: !2293)
!2308 = !DILocalVariable(name: "dr", scope: !2293, file: !1, line: 247, type: !1991)
!2309 = !DILocation(line: 247, column: 17, scope: !2293)
!2310 = !DILocalVariable(name: "__mptr", scope: !2311, file: !1, line: 247, type: !63)
!2311 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 247, column: 22)
!2312 = !DILocation(line: 247, column: 22, scope: !2311)
!2313 = !DILocation(line: 247, column: 22, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 247, column: 22)
!2315 = !DILocalVariable(name: "flags", scope: !2293, file: !1, line: 248, type: !190)
!2316 = !DILocation(line: 248, column: 16, scope: !2293)
!2317 = !DILocation(line: 250, column: 2, scope: !2293)
!2318 = !DILocation(line: 250, column: 2, scope: !2303)
!2319 = !DILocalVariable(name: "__dummy", scope: !2320, file: !1, line: 250, type: !190)
!2320 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 250, column: 2)
!2321 = !DILocation(line: 250, column: 2, scope: !2320)
!2322 = !DILocalVariable(name: "__dummy2", scope: !2320, file: !1, line: 250, type: !190)
!2323 = !DILocation(line: 250, column: 2, scope: !2302)
!2324 = !DILocation(line: 250, column: 2, scope: !2301)
!2325 = !DILocation(line: 250, column: 2, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 250, column: 2)
!2327 = !DILocalVariable(name: "__dummy", scope: !2328, file: !1, line: 250, type: !190)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 250, column: 2)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !1, line: 250, column: 2)
!2330 = !DILocation(line: 250, column: 2, scope: !2328)
!2331 = !DILocalVariable(name: "__dummy2", scope: !2328, file: !1, line: 250, type: !190)
!2332 = !DILocation(line: 250, column: 2, scope: !2329)
!2333 = !DILocation(line: 250, column: 2, scope: !2300)
!2334 = !{i32 -2143495131}
!2335 = !DILocation(line: 250, column: 2, scope: !2299)
!2336 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2298)
!2337 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2298)
!2338 = !DILocation(line: 251, column: 9, scope: !2293)
!2339 = !DILocation(line: 251, column: 15, scope: !2293)
!2340 = !DILocation(line: 251, column: 19, scope: !2293)
!2341 = !DILocation(line: 251, column: 2, scope: !2293)
!2342 = !DILocation(line: 252, column: 26, scope: !2293)
!2343 = !DILocation(line: 252, column: 31, scope: !2293)
!2344 = !DILocation(line: 252, column: 44, scope: !2293)
!2345 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2295)
!2346 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2295)
!2347 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2295)
!2348 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2295)
!2349 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2295)
!2350 = !DILocation(line: 253, column: 1, scope: !2293)
!2351 = distinct !DISubprogram(name: "add_dr", scope: !1, file: !1, line: 122, type: !2352, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !78, !64}
!2354 = !DILocalVariable(name: "dev", arg: 1, scope: !2351, file: !1, line: 122, type: !78)
!2355 = !DILocation(line: 122, column: 35, scope: !2351)
!2356 = !DILocalVariable(name: "node", arg: 2, scope: !2351, file: !1, line: 122, type: !64)
!2357 = !DILocation(line: 122, column: 60, scope: !2351)
!2358 = !DILocation(line: 124, column: 2, scope: !2351)
!2359 = !DILocation(line: 124, column: 2, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2351, file: !1, line: 124, column: 2)
!2361 = !DILocation(line: 125, column: 2, scope: !2351)
!2362 = !DILocation(line: 125, column: 2, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 125, column: 2)
!2364 = distinct !DILexicalBlock(scope: !2351, file: !1, line: 125, column: 2)
!2365 = !DILocation(line: 125, column: 2, scope: !2364)
!2366 = !DILocation(line: 125, column: 2, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 125, column: 2)
!2368 = !DILocation(line: 125, column: 2, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2367, file: !1, line: 125, column: 2)
!2370 = !DILocation(line: 125, column: 2, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !1, line: 125, column: 2)
!2372 = !{i32 -2143510904, i32 -2143510875, i32 -2143510829, i32 -2143510771, i32 -2143510717, i32 -2143510663, i32 -2143510608, i32 -2143510577}
!2373 = !DILocation(line: 125, column: 2, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 125, column: 2)
!2375 = distinct !DILexicalBlock(scope: !2367, file: !1, line: 125, column: 2)
!2376 = !{i32 -2143510133, i32 -2143510126, i32 -2143510072, i32 -2143510041, i32 -2143510011}
!2377 = !DILocation(line: 125, column: 2, scope: !2375)
!2378 = !DILocation(line: 126, column: 17, scope: !2351)
!2379 = !DILocation(line: 126, column: 23, scope: !2351)
!2380 = !DILocation(line: 126, column: 31, scope: !2351)
!2381 = !DILocation(line: 126, column: 36, scope: !2351)
!2382 = !DILocation(line: 126, column: 2, scope: !2351)
!2383 = !DILocation(line: 127, column: 1, scope: !2351)
!2384 = distinct !DISubprogram(name: "devres_find", scope: !1, file: !1, line: 288, type: !2385, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!63, !78, !74, !2086, !63}
!2387 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 296, column: 2, scope: !2384)
!2389 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2388)
!2390 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 294, column: 2, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !1, line: 294, column: 2)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !1, line: 294, column: 2)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !1, line: 294, column: 2)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !1, line: 294, column: 2)
!2396 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 294, column: 2)
!2397 = !DILocalVariable(name: "dev", arg: 1, scope: !2384, file: !1, line: 288, type: !78)
!2398 = !DILocation(line: 288, column: 35, scope: !2384)
!2399 = !DILocalVariable(name: "release", arg: 2, scope: !2384, file: !1, line: 288, type: !74)
!2400 = !DILocation(line: 288, column: 53, scope: !2384)
!2401 = !DILocalVariable(name: "match", arg: 3, scope: !2384, file: !1, line: 289, type: !2086)
!2402 = !DILocation(line: 289, column: 17, scope: !2384)
!2403 = !DILocalVariable(name: "match_data", arg: 4, scope: !2384, file: !1, line: 289, type: !63)
!2404 = !DILocation(line: 289, column: 30, scope: !2384)
!2405 = !DILocalVariable(name: "dr", scope: !2384, file: !1, line: 291, type: !1991)
!2406 = !DILocation(line: 291, column: 17, scope: !2384)
!2407 = !DILocalVariable(name: "flags", scope: !2384, file: !1, line: 292, type: !190)
!2408 = !DILocation(line: 292, column: 16, scope: !2384)
!2409 = !DILocation(line: 294, column: 2, scope: !2384)
!2410 = !DILocation(line: 294, column: 2, scope: !2396)
!2411 = !DILocalVariable(name: "__dummy", scope: !2412, file: !1, line: 294, type: !190)
!2412 = distinct !DILexicalBlock(scope: !2395, file: !1, line: 294, column: 2)
!2413 = !DILocation(line: 294, column: 2, scope: !2412)
!2414 = !DILocalVariable(name: "__dummy2", scope: !2412, file: !1, line: 294, type: !190)
!2415 = !DILocation(line: 294, column: 2, scope: !2395)
!2416 = !DILocation(line: 294, column: 2, scope: !2394)
!2417 = !DILocation(line: 294, column: 2, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2394, file: !1, line: 294, column: 2)
!2419 = !DILocalVariable(name: "__dummy", scope: !2420, file: !1, line: 294, type: !190)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 294, column: 2)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 294, column: 2)
!2422 = !DILocation(line: 294, column: 2, scope: !2420)
!2423 = !DILocalVariable(name: "__dummy2", scope: !2420, file: !1, line: 294, type: !190)
!2424 = !DILocation(line: 294, column: 2, scope: !2421)
!2425 = !DILocation(line: 294, column: 2, scope: !2393)
!2426 = !{i32 -2143488610}
!2427 = !DILocation(line: 294, column: 2, scope: !2392)
!2428 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2391)
!2429 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2391)
!2430 = !DILocation(line: 295, column: 15, scope: !2384)
!2431 = !DILocation(line: 295, column: 20, scope: !2384)
!2432 = !DILocation(line: 295, column: 29, scope: !2384)
!2433 = !DILocation(line: 295, column: 36, scope: !2384)
!2434 = !DILocation(line: 295, column: 7, scope: !2384)
!2435 = !DILocation(line: 295, column: 5, scope: !2384)
!2436 = !DILocation(line: 296, column: 26, scope: !2384)
!2437 = !DILocation(line: 296, column: 31, scope: !2384)
!2438 = !DILocation(line: 296, column: 44, scope: !2384)
!2439 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2388)
!2440 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2388)
!2441 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2388)
!2442 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2388)
!2443 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2388)
!2444 = !DILocation(line: 298, column: 6, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 298, column: 6)
!2446 = !DILocation(line: 298, column: 6, scope: !2384)
!2447 = !DILocation(line: 299, column: 10, scope: !2445)
!2448 = !DILocation(line: 299, column: 14, scope: !2445)
!2449 = !DILocation(line: 299, column: 3, scope: !2445)
!2450 = !DILocation(line: 300, column: 2, scope: !2384)
!2451 = !DILocation(line: 301, column: 1, scope: !2384)
!2452 = distinct !DISubprogram(name: "find_dr", scope: !1, file: !1, line: 256, type: !2453, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!1991, !78, !74, !2086, !63}
!2455 = !DILocalVariable(name: "dev", arg: 1, scope: !2452, file: !1, line: 256, type: !78)
!2456 = !DILocation(line: 256, column: 46, scope: !2452)
!2457 = !DILocalVariable(name: "release", arg: 2, scope: !2452, file: !1, line: 256, type: !74)
!2458 = !DILocation(line: 256, column: 64, scope: !2452)
!2459 = !DILocalVariable(name: "match", arg: 3, scope: !2452, file: !1, line: 257, type: !2086)
!2460 = !DILocation(line: 257, column: 21, scope: !2452)
!2461 = !DILocalVariable(name: "match_data", arg: 4, scope: !2452, file: !1, line: 257, type: !63)
!2462 = !DILocation(line: 257, column: 34, scope: !2452)
!2463 = !DILocalVariable(name: "node", scope: !2452, file: !1, line: 259, type: !64)
!2464 = !DILocation(line: 259, column: 22, scope: !2452)
!2465 = !DILocalVariable(name: "__mptr", scope: !2466, file: !1, line: 261, type: !63)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 261, column: 2)
!2467 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 261, column: 2)
!2468 = !DILocation(line: 261, column: 2, scope: !2466)
!2469 = !DILocation(line: 261, column: 2, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !1, line: 261, column: 2)
!2471 = !DILocation(line: 261, column: 2, scope: !2467)
!2472 = !DILocation(line: 261, column: 2, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 261, column: 2)
!2474 = !DILocalVariable(name: "dr", scope: !2475, file: !1, line: 262, type: !1991)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 261, column: 62)
!2476 = !DILocation(line: 262, column: 18, scope: !2475)
!2477 = !DILocalVariable(name: "__mptr", scope: !2478, file: !1, line: 262, type: !63)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 262, column: 23)
!2479 = !DILocation(line: 262, column: 23, scope: !2478)
!2480 = !DILocation(line: 262, column: 23, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 262, column: 23)
!2482 = !DILocation(line: 264, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 264, column: 7)
!2484 = !DILocation(line: 264, column: 13, scope: !2483)
!2485 = !DILocation(line: 264, column: 24, scope: !2483)
!2486 = !DILocation(line: 264, column: 21, scope: !2483)
!2487 = !DILocation(line: 264, column: 7, scope: !2475)
!2488 = !DILocation(line: 265, column: 4, scope: !2483)
!2489 = !DILocation(line: 266, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2475, file: !1, line: 266, column: 7)
!2491 = !DILocation(line: 266, column: 13, scope: !2490)
!2492 = !DILocation(line: 266, column: 17, scope: !2490)
!2493 = !DILocation(line: 266, column: 23, scope: !2490)
!2494 = !DILocation(line: 266, column: 28, scope: !2490)
!2495 = !DILocation(line: 266, column: 32, scope: !2490)
!2496 = !DILocation(line: 266, column: 38, scope: !2490)
!2497 = !DILocation(line: 266, column: 7, scope: !2475)
!2498 = !DILocation(line: 267, column: 4, scope: !2490)
!2499 = !DILocation(line: 268, column: 10, scope: !2475)
!2500 = !DILocation(line: 268, column: 3, scope: !2475)
!2501 = !DILocalVariable(name: "__mptr", scope: !2502, file: !1, line: 261, type: !63)
!2502 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 261, column: 2)
!2503 = !DILocation(line: 261, column: 2, scope: !2502)
!2504 = !DILocation(line: 261, column: 2, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 261, column: 2)
!2506 = distinct !{!2506, !2471, !2507}
!2507 = !DILocation(line: 269, column: 2, scope: !2467)
!2508 = !DILocation(line: 271, column: 2, scope: !2452)
!2509 = !DILocation(line: 272, column: 1, scope: !2452)
!2510 = distinct !DISubprogram(name: "devres_get", scope: !1, file: !1, line: 318, type: !2511, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!63, !78, !63, !2086, !63}
!2513 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 332, column: 2, scope: !2510)
!2515 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2514)
!2516 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 325, column: 2, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 325, column: 2)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !1, line: 325, column: 2)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 325, column: 2)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !1, line: 325, column: 2)
!2522 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 325, column: 2)
!2523 = !DILocalVariable(name: "dev", arg: 1, scope: !2510, file: !1, line: 318, type: !78)
!2524 = !DILocation(line: 318, column: 34, scope: !2510)
!2525 = !DILocalVariable(name: "new_res", arg: 2, scope: !2510, file: !1, line: 318, type: !63)
!2526 = !DILocation(line: 318, column: 45, scope: !2510)
!2527 = !DILocalVariable(name: "match", arg: 3, scope: !2510, file: !1, line: 319, type: !2086)
!2528 = !DILocation(line: 319, column: 16, scope: !2510)
!2529 = !DILocalVariable(name: "match_data", arg: 4, scope: !2510, file: !1, line: 319, type: !63)
!2530 = !DILocation(line: 319, column: 29, scope: !2510)
!2531 = !DILocalVariable(name: "new_dr", scope: !2510, file: !1, line: 321, type: !1991)
!2532 = !DILocation(line: 321, column: 17, scope: !2510)
!2533 = !DILocalVariable(name: "__mptr", scope: !2534, file: !1, line: 321, type: !63)
!2534 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 321, column: 26)
!2535 = !DILocation(line: 321, column: 26, scope: !2534)
!2536 = !DILocation(line: 321, column: 26, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 321, column: 26)
!2538 = !DILocalVariable(name: "dr", scope: !2510, file: !1, line: 322, type: !1991)
!2539 = !DILocation(line: 322, column: 17, scope: !2510)
!2540 = !DILocalVariable(name: "flags", scope: !2510, file: !1, line: 323, type: !190)
!2541 = !DILocation(line: 323, column: 16, scope: !2510)
!2542 = !DILocation(line: 325, column: 2, scope: !2510)
!2543 = !DILocation(line: 325, column: 2, scope: !2522)
!2544 = !DILocalVariable(name: "__dummy", scope: !2545, file: !1, line: 325, type: !190)
!2545 = distinct !DILexicalBlock(scope: !2521, file: !1, line: 325, column: 2)
!2546 = !DILocation(line: 325, column: 2, scope: !2545)
!2547 = !DILocalVariable(name: "__dummy2", scope: !2545, file: !1, line: 325, type: !190)
!2548 = !DILocation(line: 325, column: 2, scope: !2521)
!2549 = !DILocation(line: 325, column: 2, scope: !2520)
!2550 = !DILocation(line: 325, column: 2, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2520, file: !1, line: 325, column: 2)
!2552 = !DILocalVariable(name: "__dummy", scope: !2553, file: !1, line: 325, type: !190)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !1, line: 325, column: 2)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !1, line: 325, column: 2)
!2555 = !DILocation(line: 325, column: 2, scope: !2553)
!2556 = !DILocalVariable(name: "__dummy2", scope: !2553, file: !1, line: 325, type: !190)
!2557 = !DILocation(line: 325, column: 2, scope: !2554)
!2558 = !DILocation(line: 325, column: 2, scope: !2519)
!2559 = !{i32 -2143486002}
!2560 = !DILocation(line: 325, column: 2, scope: !2518)
!2561 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2517)
!2562 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2517)
!2563 = !DILocation(line: 326, column: 15, scope: !2510)
!2564 = !DILocation(line: 326, column: 20, scope: !2510)
!2565 = !DILocation(line: 326, column: 28, scope: !2510)
!2566 = !DILocation(line: 326, column: 33, scope: !2510)
!2567 = !DILocation(line: 326, column: 42, scope: !2510)
!2568 = !DILocation(line: 326, column: 49, scope: !2510)
!2569 = !DILocation(line: 326, column: 7, scope: !2510)
!2570 = !DILocation(line: 326, column: 5, scope: !2510)
!2571 = !DILocation(line: 327, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 327, column: 6)
!2573 = !DILocation(line: 327, column: 6, scope: !2510)
!2574 = !DILocation(line: 328, column: 10, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 327, column: 11)
!2576 = !DILocation(line: 328, column: 16, scope: !2575)
!2577 = !DILocation(line: 328, column: 24, scope: !2575)
!2578 = !DILocation(line: 328, column: 3, scope: !2575)
!2579 = !DILocation(line: 329, column: 8, scope: !2575)
!2580 = !DILocation(line: 329, column: 6, scope: !2575)
!2581 = !DILocation(line: 330, column: 11, scope: !2575)
!2582 = !DILocation(line: 331, column: 2, scope: !2575)
!2583 = !DILocation(line: 332, column: 26, scope: !2510)
!2584 = !DILocation(line: 332, column: 31, scope: !2510)
!2585 = !DILocation(line: 332, column: 44, scope: !2510)
!2586 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2514)
!2587 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2514)
!2588 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2514)
!2589 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2514)
!2590 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2514)
!2591 = !DILocation(line: 333, column: 14, scope: !2510)
!2592 = !DILocation(line: 333, column: 2, scope: !2510)
!2593 = !DILocation(line: 335, column: 9, scope: !2510)
!2594 = !DILocation(line: 335, column: 13, scope: !2510)
!2595 = !DILocation(line: 335, column: 2, scope: !2510)
!2596 = distinct !DISubprogram(name: "devres_remove", scope: !1, file: !1, line: 354, type: !2385, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2597 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 366, column: 2, scope: !2596)
!2599 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2598)
!2600 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 360, column: 2, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 360, column: 2)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !1, line: 360, column: 2)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 360, column: 2)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 360, column: 2)
!2606 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 360, column: 2)
!2607 = !DILocalVariable(name: "dev", arg: 1, scope: !2596, file: !1, line: 354, type: !78)
!2608 = !DILocation(line: 354, column: 37, scope: !2596)
!2609 = !DILocalVariable(name: "release", arg: 2, scope: !2596, file: !1, line: 354, type: !74)
!2610 = !DILocation(line: 354, column: 55, scope: !2596)
!2611 = !DILocalVariable(name: "match", arg: 3, scope: !2596, file: !1, line: 355, type: !2086)
!2612 = !DILocation(line: 355, column: 19, scope: !2596)
!2613 = !DILocalVariable(name: "match_data", arg: 4, scope: !2596, file: !1, line: 355, type: !63)
!2614 = !DILocation(line: 355, column: 32, scope: !2596)
!2615 = !DILocalVariable(name: "dr", scope: !2596, file: !1, line: 357, type: !1991)
!2616 = !DILocation(line: 357, column: 17, scope: !2596)
!2617 = !DILocalVariable(name: "flags", scope: !2596, file: !1, line: 358, type: !190)
!2618 = !DILocation(line: 358, column: 16, scope: !2596)
!2619 = !DILocation(line: 360, column: 2, scope: !2596)
!2620 = !DILocation(line: 360, column: 2, scope: !2606)
!2621 = !DILocalVariable(name: "__dummy", scope: !2622, file: !1, line: 360, type: !190)
!2622 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 360, column: 2)
!2623 = !DILocation(line: 360, column: 2, scope: !2622)
!2624 = !DILocalVariable(name: "__dummy2", scope: !2622, file: !1, line: 360, type: !190)
!2625 = !DILocation(line: 360, column: 2, scope: !2605)
!2626 = !DILocation(line: 360, column: 2, scope: !2604)
!2627 = !DILocation(line: 360, column: 2, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2604, file: !1, line: 360, column: 2)
!2629 = !DILocalVariable(name: "__dummy", scope: !2630, file: !1, line: 360, type: !190)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 360, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 360, column: 2)
!2632 = !DILocation(line: 360, column: 2, scope: !2630)
!2633 = !DILocalVariable(name: "__dummy2", scope: !2630, file: !1, line: 360, type: !190)
!2634 = !DILocation(line: 360, column: 2, scope: !2631)
!2635 = !DILocation(line: 360, column: 2, scope: !2603)
!2636 = !{i32 -2143484842}
!2637 = !DILocation(line: 360, column: 2, scope: !2602)
!2638 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2601)
!2639 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2601)
!2640 = !DILocation(line: 361, column: 15, scope: !2596)
!2641 = !DILocation(line: 361, column: 20, scope: !2596)
!2642 = !DILocation(line: 361, column: 29, scope: !2596)
!2643 = !DILocation(line: 361, column: 36, scope: !2596)
!2644 = !DILocation(line: 361, column: 7, scope: !2596)
!2645 = !DILocation(line: 361, column: 5, scope: !2596)
!2646 = !DILocation(line: 362, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 362, column: 6)
!2648 = !DILocation(line: 362, column: 6, scope: !2596)
!2649 = !DILocation(line: 363, column: 18, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 362, column: 10)
!2651 = !DILocation(line: 363, column: 22, scope: !2650)
!2652 = !DILocation(line: 363, column: 27, scope: !2650)
!2653 = !DILocation(line: 363, column: 3, scope: !2650)
!2654 = !DILocation(line: 364, column: 3, scope: !2650)
!2655 = !DILocation(line: 364, column: 3, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !1, line: 364, column: 3)
!2657 = !DILocation(line: 365, column: 2, scope: !2650)
!2658 = !DILocation(line: 366, column: 26, scope: !2596)
!2659 = !DILocation(line: 366, column: 31, scope: !2596)
!2660 = !DILocation(line: 366, column: 44, scope: !2596)
!2661 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2598)
!2662 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2598)
!2663 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2598)
!2664 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2598)
!2665 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2598)
!2666 = !DILocation(line: 368, column: 6, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 368, column: 6)
!2668 = !DILocation(line: 368, column: 6, scope: !2596)
!2669 = !DILocation(line: 369, column: 10, scope: !2667)
!2670 = !DILocation(line: 369, column: 14, scope: !2667)
!2671 = !DILocation(line: 369, column: 3, scope: !2667)
!2672 = !DILocation(line: 370, column: 2, scope: !2596)
!2673 = !DILocation(line: 371, column: 1, scope: !2596)
!2674 = distinct !DISubprogram(name: "list_del_init", scope: !2279, file: !2279, line: 202, type: !2675, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !71}
!2677 = !DILocalVariable(name: "entry", arg: 1, scope: !2674, file: !2279, line: 202, type: !71)
!2678 = !DILocation(line: 202, column: 52, scope: !2674)
!2679 = !DILocation(line: 204, column: 19, scope: !2674)
!2680 = !DILocation(line: 204, column: 2, scope: !2674)
!2681 = !DILocation(line: 205, column: 17, scope: !2674)
!2682 = !DILocation(line: 205, column: 2, scope: !2674)
!2683 = !DILocation(line: 206, column: 1, scope: !2674)
!2684 = distinct !DISubprogram(name: "devres_destroy", scope: !1, file: !1, line: 392, type: !2685, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!124, !78, !74, !2086, !63}
!2687 = !DILocalVariable(name: "dev", arg: 1, scope: !2684, file: !1, line: 392, type: !78)
!2688 = !DILocation(line: 392, column: 35, scope: !2684)
!2689 = !DILocalVariable(name: "release", arg: 2, scope: !2684, file: !1, line: 392, type: !74)
!2690 = !DILocation(line: 392, column: 53, scope: !2684)
!2691 = !DILocalVariable(name: "match", arg: 3, scope: !2684, file: !1, line: 393, type: !2086)
!2692 = !DILocation(line: 393, column: 17, scope: !2684)
!2693 = !DILocalVariable(name: "match_data", arg: 4, scope: !2684, file: !1, line: 393, type: !63)
!2694 = !DILocation(line: 393, column: 30, scope: !2684)
!2695 = !DILocalVariable(name: "res", scope: !2684, file: !1, line: 395, type: !63)
!2696 = !DILocation(line: 395, column: 8, scope: !2684)
!2697 = !DILocation(line: 397, column: 22, scope: !2684)
!2698 = !DILocation(line: 397, column: 27, scope: !2684)
!2699 = !DILocation(line: 397, column: 36, scope: !2684)
!2700 = !DILocation(line: 397, column: 43, scope: !2684)
!2701 = !DILocation(line: 397, column: 8, scope: !2684)
!2702 = !DILocation(line: 397, column: 6, scope: !2684)
!2703 = !DILocation(line: 398, column: 6, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 398, column: 6)
!2705 = !DILocation(line: 398, column: 6, scope: !2684)
!2706 = !DILocation(line: 399, column: 3, scope: !2704)
!2707 = !DILocation(line: 401, column: 14, scope: !2684)
!2708 = !DILocation(line: 401, column: 2, scope: !2684)
!2709 = !DILocation(line: 402, column: 2, scope: !2684)
!2710 = !DILocation(line: 403, column: 1, scope: !2684)
!2711 = distinct !DISubprogram(name: "devres_release", scope: !1, file: !1, line: 422, type: !2685, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2712 = !DILocalVariable(name: "dev", arg: 1, scope: !2711, file: !1, line: 422, type: !78)
!2713 = !DILocation(line: 422, column: 35, scope: !2711)
!2714 = !DILocalVariable(name: "release", arg: 2, scope: !2711, file: !1, line: 422, type: !74)
!2715 = !DILocation(line: 422, column: 53, scope: !2711)
!2716 = !DILocalVariable(name: "match", arg: 3, scope: !2711, file: !1, line: 423, type: !2086)
!2717 = !DILocation(line: 423, column: 17, scope: !2711)
!2718 = !DILocalVariable(name: "match_data", arg: 4, scope: !2711, file: !1, line: 423, type: !63)
!2719 = !DILocation(line: 423, column: 30, scope: !2711)
!2720 = !DILocalVariable(name: "res", scope: !2711, file: !1, line: 425, type: !63)
!2721 = !DILocation(line: 425, column: 8, scope: !2711)
!2722 = !DILocation(line: 427, column: 22, scope: !2711)
!2723 = !DILocation(line: 427, column: 27, scope: !2711)
!2724 = !DILocation(line: 427, column: 36, scope: !2711)
!2725 = !DILocation(line: 427, column: 43, scope: !2711)
!2726 = !DILocation(line: 427, column: 8, scope: !2711)
!2727 = !DILocation(line: 427, column: 6, scope: !2711)
!2728 = !DILocation(line: 428, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 428, column: 6)
!2730 = !DILocation(line: 428, column: 6, scope: !2711)
!2731 = !DILocation(line: 429, column: 3, scope: !2729)
!2732 = !DILocation(line: 431, column: 4, scope: !2711)
!2733 = !DILocation(line: 431, column: 13, scope: !2711)
!2734 = !DILocation(line: 431, column: 18, scope: !2711)
!2735 = !DILocation(line: 431, column: 2, scope: !2711)
!2736 = !DILocation(line: 432, column: 14, scope: !2711)
!2737 = !DILocation(line: 432, column: 2, scope: !2711)
!2738 = !DILocation(line: 433, column: 2, scope: !2711)
!2739 = !DILocation(line: 434, column: 1, scope: !2711)
!2740 = distinct !DISubprogram(name: "devres_release_all", scope: !1, file: !1, line: 537, type: !1624, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2741 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 544, column: 2, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 544, column: 2)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 544, column: 2)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 544, column: 2)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 544, column: 2)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 544, column: 2)
!2748 = !DILocalVariable(name: "dev", arg: 1, scope: !2740, file: !1, line: 537, type: !78)
!2749 = !DILocation(line: 537, column: 39, scope: !2740)
!2750 = !DILocalVariable(name: "flags", scope: !2740, file: !1, line: 539, type: !190)
!2751 = !DILocation(line: 539, column: 16, scope: !2740)
!2752 = !DILocalVariable(name: "__ret_warn_on", scope: !2753, file: !1, line: 542, type: !124)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !1, line: 542, column: 6)
!2754 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 542, column: 6)
!2755 = !DILocation(line: 542, column: 6, scope: !2753)
!2756 = !DILocation(line: 542, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 542, column: 6)
!2758 = !DILocation(line: 542, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 542, column: 6)
!2760 = !DILocation(line: 542, column: 6, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 542, column: 6)
!2762 = !DILocation(line: 542, column: 6, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 542, column: 6)
!2764 = !{i32 -2143472330, i32 -2143472301, i32 -2143472255, i32 -2143472197, i32 -2143472143, i32 -2143472089, i32 -2143472034, i32 -2143472003}
!2765 = !DILocation(line: 542, column: 6, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 542, column: 6)
!2767 = !{i32 -2143471600, i32 -2143471593, i32 -2143471541, i32 -2143471510, i32 -2143471480}
!2768 = !DILocation(line: 542, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 542, column: 6)
!2770 = !DILocation(line: 542, column: 6, scope: !2754)
!2771 = !DILocation(line: 542, column: 6, scope: !2740)
!2772 = !DILocation(line: 543, column: 3, scope: !2754)
!2773 = !DILocation(line: 544, column: 2, scope: !2740)
!2774 = !DILocation(line: 544, column: 2, scope: !2747)
!2775 = !DILocalVariable(name: "__dummy", scope: !2776, file: !1, line: 544, type: !190)
!2776 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 544, column: 2)
!2777 = !DILocation(line: 544, column: 2, scope: !2776)
!2778 = !DILocalVariable(name: "__dummy2", scope: !2776, file: !1, line: 544, type: !190)
!2779 = !DILocation(line: 544, column: 2, scope: !2746)
!2780 = !DILocation(line: 544, column: 2, scope: !2745)
!2781 = !DILocation(line: 544, column: 2, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 544, column: 2)
!2783 = !DILocalVariable(name: "__dummy", scope: !2784, file: !1, line: 544, type: !190)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !1, line: 544, column: 2)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !1, line: 544, column: 2)
!2786 = !DILocation(line: 544, column: 2, scope: !2784)
!2787 = !DILocalVariable(name: "__dummy2", scope: !2784, file: !1, line: 544, type: !190)
!2788 = !DILocation(line: 544, column: 2, scope: !2785)
!2789 = !DILocation(line: 544, column: 2, scope: !2744)
!2790 = !{i32 -2143470466}
!2791 = !DILocation(line: 544, column: 2, scope: !2743)
!2792 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2742)
!2793 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2742)
!2794 = !DILocation(line: 545, column: 23, scope: !2740)
!2795 = !DILocation(line: 545, column: 28, scope: !2740)
!2796 = !DILocation(line: 545, column: 33, scope: !2740)
!2797 = !DILocation(line: 545, column: 45, scope: !2740)
!2798 = !DILocation(line: 545, column: 52, scope: !2740)
!2799 = !DILocation(line: 545, column: 57, scope: !2740)
!2800 = !DILocation(line: 546, column: 9, scope: !2740)
!2801 = !DILocation(line: 545, column: 9, scope: !2740)
!2802 = !DILocation(line: 545, column: 2, scope: !2740)
!2803 = !DILocation(line: 547, column: 1, scope: !2740)
!2804 = distinct !DISubprogram(name: "release_nodes", scope: !1, file: !1, line: 506, type: !2805, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!124, !78, !71, !71, !190}
!2807 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 516, column: 2, scope: !2804)
!2809 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2808)
!2810 = !DILocalVariable(name: "dev", arg: 1, scope: !2804, file: !1, line: 506, type: !78)
!2811 = !DILocation(line: 506, column: 41, scope: !2804)
!2812 = !DILocalVariable(name: "first", arg: 2, scope: !2804, file: !1, line: 506, type: !71)
!2813 = !DILocation(line: 506, column: 64, scope: !2804)
!2814 = !DILocalVariable(name: "end", arg: 3, scope: !2804, file: !1, line: 507, type: !71)
!2815 = !DILocation(line: 507, column: 23, scope: !2804)
!2816 = !DILocalVariable(name: "flags", arg: 4, scope: !2804, file: !1, line: 507, type: !190)
!2817 = !DILocation(line: 507, column: 42, scope: !2804)
!2818 = !DILocalVariable(name: "todo", scope: !2804, file: !1, line: 510, type: !68)
!2819 = !DILocation(line: 510, column: 2, scope: !2804)
!2820 = !DILocalVariable(name: "cnt", scope: !2804, file: !1, line: 511, type: !124)
!2821 = !DILocation(line: 511, column: 6, scope: !2804)
!2822 = !DILocalVariable(name: "dr", scope: !2804, file: !1, line: 512, type: !1991)
!2823 = !DILocation(line: 512, column: 17, scope: !2804)
!2824 = !DILocalVariable(name: "tmp", scope: !2804, file: !1, line: 512, type: !1991)
!2825 = !DILocation(line: 512, column: 22, scope: !2804)
!2826 = !DILocation(line: 514, column: 21, scope: !2804)
!2827 = !DILocation(line: 514, column: 26, scope: !2804)
!2828 = !DILocation(line: 514, column: 33, scope: !2804)
!2829 = !DILocation(line: 514, column: 8, scope: !2804)
!2830 = !DILocation(line: 514, column: 6, scope: !2804)
!2831 = !DILocation(line: 516, column: 26, scope: !2804)
!2832 = !DILocation(line: 516, column: 31, scope: !2804)
!2833 = !DILocation(line: 516, column: 44, scope: !2804)
!2834 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2808)
!2835 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2808)
!2836 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2808)
!2837 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2808)
!2838 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2808)
!2839 = !DILocalVariable(name: "__mptr", scope: !2840, file: !1, line: 521, type: !63)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 521, column: 2)
!2841 = distinct !DILexicalBlock(scope: !2804, file: !1, line: 521, column: 2)
!2842 = !DILocation(line: 521, column: 2, scope: !2840)
!2843 = !DILocation(line: 521, column: 2, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !1, line: 521, column: 2)
!2845 = !DILocation(line: 521, column: 2, scope: !2841)
!2846 = !DILocalVariable(name: "__mptr", scope: !2847, file: !1, line: 521, type: !63)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 521, column: 2)
!2848 = !DILocation(line: 521, column: 2, scope: !2847)
!2849 = !DILocation(line: 521, column: 2, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !1, line: 521, column: 2)
!2851 = !DILocation(line: 521, column: 2, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 521, column: 2)
!2853 = !DILocation(line: 522, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2852, file: !1, line: 521, column: 63)
!2855 = !DILocation(line: 522, column: 3, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2854, file: !1, line: 522, column: 3)
!2857 = !DILocation(line: 523, column: 3, scope: !2854)
!2858 = !DILocation(line: 523, column: 7, scope: !2854)
!2859 = !DILocation(line: 523, column: 12, scope: !2854)
!2860 = !DILocation(line: 523, column: 20, scope: !2854)
!2861 = !DILocation(line: 523, column: 25, scope: !2854)
!2862 = !DILocation(line: 523, column: 29, scope: !2854)
!2863 = !DILocation(line: 524, column: 9, scope: !2854)
!2864 = !DILocation(line: 524, column: 3, scope: !2854)
!2865 = !DILocation(line: 525, column: 2, scope: !2854)
!2866 = !DILocalVariable(name: "__mptr", scope: !2867, file: !1, line: 521, type: !63)
!2867 = distinct !DILexicalBlock(scope: !2852, file: !1, line: 521, column: 2)
!2868 = !DILocation(line: 521, column: 2, scope: !2867)
!2869 = !DILocation(line: 521, column: 2, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !1, line: 521, column: 2)
!2871 = distinct !{!2871, !2845, !2872}
!2872 = !DILocation(line: 525, column: 2, scope: !2841)
!2873 = !DILocation(line: 527, column: 9, scope: !2804)
!2874 = !DILocation(line: 527, column: 2, scope: !2804)
!2875 = distinct !DISubprogram(name: "devres_open_group", scope: !1, file: !1, line: 562, type: !2876, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!63, !78, !63, !61}
!2878 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 583, column: 2, scope: !2875)
!2880 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !2879)
!2881 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 581, column: 2, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 581, column: 2)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !1, line: 581, column: 2)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 581, column: 2)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !1, line: 581, column: 2)
!2887 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 581, column: 2)
!2888 = !DILocalVariable(name: "s", arg: 1, scope: !2889, file: !54, line: 445, type: !1033)
!2889 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !54, file: !54, line: 445, type: !2890, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!63, !1033, !61, !187}
!2892 = !DILocation(line: 445, column: 72, scope: !2889, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 552, column: 10, scope: !2894, inlinedAt: !2899)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !54, line: 540, column: 34)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !54, line: 540, column: 6)
!2896 = distinct !DISubprogram(name: "kmalloc", scope: !54, file: !54, line: 538, type: !2897, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!63, !187, !61}
!2899 = distinct !DILocation(line: 567, column: 8, scope: !2875)
!2900 = !DILocalVariable(name: "flags", arg: 2, scope: !2889, file: !54, line: 446, type: !61)
!2901 = !DILocation(line: 446, column: 9, scope: !2889, inlinedAt: !2893)
!2902 = !DILocalVariable(name: "size", arg: 3, scope: !2889, file: !54, line: 446, type: !187)
!2903 = !DILocation(line: 446, column: 23, scope: !2889, inlinedAt: !2893)
!2904 = !DILocalVariable(name: "ret", scope: !2889, file: !54, line: 448, type: !63)
!2905 = !DILocation(line: 448, column: 8, scope: !2889, inlinedAt: !2893)
!2906 = !DILocalVariable(name: "flags", arg: 1, scope: !2907, file: !54, line: 318, type: !61)
!2907 = distinct !DISubprogram(name: "kmalloc_type", scope: !54, file: !54, line: 318, type: !2908, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!53, !61}
!2910 = !DILocation(line: 318, column: 67, scope: !2907, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 553, column: 20, scope: !2894, inlinedAt: !2899)
!2912 = !DILocalVariable(name: "size", arg: 1, scope: !2913, file: !54, line: 346, type: !187)
!2913 = distinct !DISubprogram(name: "kmalloc_index", scope: !54, file: !54, line: 346, type: !2914, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!5, !187}
!2916 = !DILocation(line: 346, column: 58, scope: !2913, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 547, column: 11, scope: !2894, inlinedAt: !2899)
!2918 = !DILocalVariable(name: "size", arg: 1, scope: !2919, file: !54, line: 472, type: !187)
!2919 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !54, file: !54, line: 472, type: !2920, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!63, !187, !61, !5}
!2922 = !DILocation(line: 472, column: 28, scope: !2919, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 481, column: 9, scope: !2924, inlinedAt: !2925)
!2924 = distinct !DISubprogram(name: "kmalloc_large", scope: !54, file: !54, line: 478, type: !2897, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!2925 = distinct !DILocation(line: 545, column: 11, scope: !2926, inlinedAt: !2899)
!2926 = distinct !DILexicalBlock(scope: !2894, file: !54, line: 544, column: 7)
!2927 = !DILocalVariable(name: "flags", arg: 2, scope: !2919, file: !54, line: 472, type: !61)
!2928 = !DILocation(line: 472, column: 40, scope: !2919, inlinedAt: !2923)
!2929 = !DILocalVariable(name: "order", arg: 3, scope: !2919, file: !54, line: 472, type: !5)
!2930 = !DILocation(line: 472, column: 60, scope: !2919, inlinedAt: !2923)
!2931 = !DILocalVariable(name: "size", arg: 1, scope: !2924, file: !54, line: 478, type: !187)
!2932 = !DILocation(line: 478, column: 51, scope: !2924, inlinedAt: !2925)
!2933 = !DILocalVariable(name: "flags", arg: 2, scope: !2924, file: !54, line: 478, type: !61)
!2934 = !DILocation(line: 478, column: 63, scope: !2924, inlinedAt: !2925)
!2935 = !DILocalVariable(name: "order", scope: !2924, file: !54, line: 480, type: !5)
!2936 = !DILocation(line: 480, column: 15, scope: !2924, inlinedAt: !2925)
!2937 = !DILocalVariable(name: "size", arg: 1, scope: !2896, file: !54, line: 538, type: !187)
!2938 = !DILocation(line: 538, column: 45, scope: !2896, inlinedAt: !2899)
!2939 = !DILocalVariable(name: "flags", arg: 2, scope: !2896, file: !54, line: 538, type: !61)
!2940 = !DILocation(line: 538, column: 57, scope: !2896, inlinedAt: !2899)
!2941 = !DILocalVariable(name: "index", scope: !2894, file: !54, line: 542, type: !5)
!2942 = !DILocation(line: 542, column: 16, scope: !2894, inlinedAt: !2899)
!2943 = !DILocalVariable(name: "dev", arg: 1, scope: !2875, file: !1, line: 562, type: !78)
!2944 = !DILocation(line: 562, column: 41, scope: !2875)
!2945 = !DILocalVariable(name: "id", arg: 2, scope: !2875, file: !1, line: 562, type: !63)
!2946 = !DILocation(line: 562, column: 52, scope: !2875)
!2947 = !DILocalVariable(name: "gfp", arg: 3, scope: !2875, file: !1, line: 562, type: !61)
!2948 = !DILocation(line: 562, column: 62, scope: !2875)
!2949 = !DILocalVariable(name: "grp", scope: !2875, file: !1, line: 564, type: !2002)
!2950 = !DILocation(line: 564, column: 23, scope: !2875)
!2951 = !DILocalVariable(name: "flags", scope: !2875, file: !1, line: 565, type: !190)
!2952 = !DILocation(line: 565, column: 16, scope: !2875)
!2953 = !DILocation(line: 567, column: 30, scope: !2875)
!2954 = !DILocation(line: 540, column: 27, scope: !2895, inlinedAt: !2899)
!2955 = !DILocation(line: 540, column: 6, scope: !2895, inlinedAt: !2899)
!2956 = !DILocation(line: 540, column: 6, scope: !2896, inlinedAt: !2899)
!2957 = !DILocation(line: 544, column: 7, scope: !2926, inlinedAt: !2899)
!2958 = !DILocation(line: 544, column: 12, scope: !2926, inlinedAt: !2899)
!2959 = !DILocation(line: 544, column: 7, scope: !2894, inlinedAt: !2899)
!2960 = !DILocation(line: 545, column: 25, scope: !2926, inlinedAt: !2899)
!2961 = !DILocation(line: 545, column: 31, scope: !2926, inlinedAt: !2899)
!2962 = !DILocation(line: 480, column: 33, scope: !2924, inlinedAt: !2925)
!2963 = !DILocation(line: 480, column: 23, scope: !2924, inlinedAt: !2925)
!2964 = !DILocation(line: 481, column: 29, scope: !2924, inlinedAt: !2925)
!2965 = !DILocation(line: 481, column: 35, scope: !2924, inlinedAt: !2925)
!2966 = !DILocation(line: 481, column: 42, scope: !2924, inlinedAt: !2925)
!2967 = !DILocation(line: 474, column: 23, scope: !2919, inlinedAt: !2923)
!2968 = !DILocation(line: 474, column: 29, scope: !2919, inlinedAt: !2923)
!2969 = !DILocation(line: 474, column: 36, scope: !2919, inlinedAt: !2923)
!2970 = !DILocation(line: 474, column: 9, scope: !2919, inlinedAt: !2923)
!2971 = !DILocation(line: 545, column: 4, scope: !2926, inlinedAt: !2899)
!2972 = !DILocation(line: 547, column: 25, scope: !2894, inlinedAt: !2899)
!2973 = !DILocation(line: 348, column: 7, scope: !2974, inlinedAt: !2917)
!2974 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 348, column: 6)
!2975 = !DILocation(line: 348, column: 6, scope: !2913, inlinedAt: !2917)
!2976 = !DILocation(line: 349, column: 3, scope: !2974, inlinedAt: !2917)
!2977 = !DILocation(line: 351, column: 6, scope: !2978, inlinedAt: !2917)
!2978 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 351, column: 6)
!2979 = !DILocation(line: 351, column: 11, scope: !2978, inlinedAt: !2917)
!2980 = !DILocation(line: 351, column: 6, scope: !2913, inlinedAt: !2917)
!2981 = !DILocation(line: 352, column: 3, scope: !2978, inlinedAt: !2917)
!2982 = !DILocation(line: 354, column: 32, scope: !2983, inlinedAt: !2917)
!2983 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 354, column: 6)
!2984 = !DILocation(line: 354, column: 37, scope: !2983, inlinedAt: !2917)
!2985 = !DILocation(line: 354, column: 42, scope: !2983, inlinedAt: !2917)
!2986 = !DILocation(line: 354, column: 45, scope: !2983, inlinedAt: !2917)
!2987 = !DILocation(line: 354, column: 50, scope: !2983, inlinedAt: !2917)
!2988 = !DILocation(line: 354, column: 6, scope: !2913, inlinedAt: !2917)
!2989 = !DILocation(line: 355, column: 3, scope: !2983, inlinedAt: !2917)
!2990 = !DILocation(line: 356, column: 32, scope: !2991, inlinedAt: !2917)
!2991 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 356, column: 6)
!2992 = !DILocation(line: 356, column: 37, scope: !2991, inlinedAt: !2917)
!2993 = !DILocation(line: 356, column: 43, scope: !2991, inlinedAt: !2917)
!2994 = !DILocation(line: 356, column: 46, scope: !2991, inlinedAt: !2917)
!2995 = !DILocation(line: 356, column: 51, scope: !2991, inlinedAt: !2917)
!2996 = !DILocation(line: 356, column: 6, scope: !2913, inlinedAt: !2917)
!2997 = !DILocation(line: 357, column: 3, scope: !2991, inlinedAt: !2917)
!2998 = !DILocation(line: 358, column: 6, scope: !2999, inlinedAt: !2917)
!2999 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 358, column: 6)
!3000 = !DILocation(line: 358, column: 11, scope: !2999, inlinedAt: !2917)
!3001 = !DILocation(line: 358, column: 6, scope: !2913, inlinedAt: !2917)
!3002 = !DILocation(line: 358, column: 26, scope: !2999, inlinedAt: !2917)
!3003 = !DILocation(line: 359, column: 6, scope: !3004, inlinedAt: !2917)
!3004 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 359, column: 6)
!3005 = !DILocation(line: 359, column: 11, scope: !3004, inlinedAt: !2917)
!3006 = !DILocation(line: 359, column: 6, scope: !2913, inlinedAt: !2917)
!3007 = !DILocation(line: 359, column: 26, scope: !3004, inlinedAt: !2917)
!3008 = !DILocation(line: 360, column: 6, scope: !3009, inlinedAt: !2917)
!3009 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 360, column: 6)
!3010 = !DILocation(line: 360, column: 11, scope: !3009, inlinedAt: !2917)
!3011 = !DILocation(line: 360, column: 6, scope: !2913, inlinedAt: !2917)
!3012 = !DILocation(line: 360, column: 26, scope: !3009, inlinedAt: !2917)
!3013 = !DILocation(line: 361, column: 6, scope: !3014, inlinedAt: !2917)
!3014 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 361, column: 6)
!3015 = !DILocation(line: 361, column: 11, scope: !3014, inlinedAt: !2917)
!3016 = !DILocation(line: 361, column: 6, scope: !2913, inlinedAt: !2917)
!3017 = !DILocation(line: 361, column: 26, scope: !3014, inlinedAt: !2917)
!3018 = !DILocation(line: 362, column: 6, scope: !3019, inlinedAt: !2917)
!3019 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 362, column: 6)
!3020 = !DILocation(line: 362, column: 11, scope: !3019, inlinedAt: !2917)
!3021 = !DILocation(line: 362, column: 6, scope: !2913, inlinedAt: !2917)
!3022 = !DILocation(line: 362, column: 26, scope: !3019, inlinedAt: !2917)
!3023 = !DILocation(line: 363, column: 6, scope: !3024, inlinedAt: !2917)
!3024 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 363, column: 6)
!3025 = !DILocation(line: 363, column: 11, scope: !3024, inlinedAt: !2917)
!3026 = !DILocation(line: 363, column: 6, scope: !2913, inlinedAt: !2917)
!3027 = !DILocation(line: 363, column: 26, scope: !3024, inlinedAt: !2917)
!3028 = !DILocation(line: 364, column: 6, scope: !3029, inlinedAt: !2917)
!3029 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 364, column: 6)
!3030 = !DILocation(line: 364, column: 11, scope: !3029, inlinedAt: !2917)
!3031 = !DILocation(line: 364, column: 6, scope: !2913, inlinedAt: !2917)
!3032 = !DILocation(line: 364, column: 26, scope: !3029, inlinedAt: !2917)
!3033 = !DILocation(line: 365, column: 6, scope: !3034, inlinedAt: !2917)
!3034 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 365, column: 6)
!3035 = !DILocation(line: 365, column: 11, scope: !3034, inlinedAt: !2917)
!3036 = !DILocation(line: 365, column: 6, scope: !2913, inlinedAt: !2917)
!3037 = !DILocation(line: 365, column: 26, scope: !3034, inlinedAt: !2917)
!3038 = !DILocation(line: 366, column: 6, scope: !3039, inlinedAt: !2917)
!3039 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 366, column: 6)
!3040 = !DILocation(line: 366, column: 11, scope: !3039, inlinedAt: !2917)
!3041 = !DILocation(line: 366, column: 6, scope: !2913, inlinedAt: !2917)
!3042 = !DILocation(line: 366, column: 26, scope: !3039, inlinedAt: !2917)
!3043 = !DILocation(line: 367, column: 6, scope: !3044, inlinedAt: !2917)
!3044 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 367, column: 6)
!3045 = !DILocation(line: 367, column: 11, scope: !3044, inlinedAt: !2917)
!3046 = !DILocation(line: 367, column: 6, scope: !2913, inlinedAt: !2917)
!3047 = !DILocation(line: 367, column: 26, scope: !3044, inlinedAt: !2917)
!3048 = !DILocation(line: 368, column: 6, scope: !3049, inlinedAt: !2917)
!3049 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 368, column: 6)
!3050 = !DILocation(line: 368, column: 11, scope: !3049, inlinedAt: !2917)
!3051 = !DILocation(line: 368, column: 6, scope: !2913, inlinedAt: !2917)
!3052 = !DILocation(line: 368, column: 26, scope: !3049, inlinedAt: !2917)
!3053 = !DILocation(line: 369, column: 6, scope: !3054, inlinedAt: !2917)
!3054 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 369, column: 6)
!3055 = !DILocation(line: 369, column: 11, scope: !3054, inlinedAt: !2917)
!3056 = !DILocation(line: 369, column: 6, scope: !2913, inlinedAt: !2917)
!3057 = !DILocation(line: 369, column: 26, scope: !3054, inlinedAt: !2917)
!3058 = !DILocation(line: 370, column: 6, scope: !3059, inlinedAt: !2917)
!3059 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 370, column: 6)
!3060 = !DILocation(line: 370, column: 11, scope: !3059, inlinedAt: !2917)
!3061 = !DILocation(line: 370, column: 6, scope: !2913, inlinedAt: !2917)
!3062 = !DILocation(line: 370, column: 26, scope: !3059, inlinedAt: !2917)
!3063 = !DILocation(line: 371, column: 6, scope: !3064, inlinedAt: !2917)
!3064 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 371, column: 6)
!3065 = !DILocation(line: 371, column: 11, scope: !3064, inlinedAt: !2917)
!3066 = !DILocation(line: 371, column: 6, scope: !2913, inlinedAt: !2917)
!3067 = !DILocation(line: 371, column: 26, scope: !3064, inlinedAt: !2917)
!3068 = !DILocation(line: 372, column: 6, scope: !3069, inlinedAt: !2917)
!3069 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 372, column: 6)
!3070 = !DILocation(line: 372, column: 11, scope: !3069, inlinedAt: !2917)
!3071 = !DILocation(line: 372, column: 6, scope: !2913, inlinedAt: !2917)
!3072 = !DILocation(line: 372, column: 26, scope: !3069, inlinedAt: !2917)
!3073 = !DILocation(line: 373, column: 6, scope: !3074, inlinedAt: !2917)
!3074 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 373, column: 6)
!3075 = !DILocation(line: 373, column: 11, scope: !3074, inlinedAt: !2917)
!3076 = !DILocation(line: 373, column: 6, scope: !2913, inlinedAt: !2917)
!3077 = !DILocation(line: 373, column: 26, scope: !3074, inlinedAt: !2917)
!3078 = !DILocation(line: 374, column: 6, scope: !3079, inlinedAt: !2917)
!3079 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 374, column: 6)
!3080 = !DILocation(line: 374, column: 11, scope: !3079, inlinedAt: !2917)
!3081 = !DILocation(line: 374, column: 6, scope: !2913, inlinedAt: !2917)
!3082 = !DILocation(line: 374, column: 26, scope: !3079, inlinedAt: !2917)
!3083 = !DILocation(line: 375, column: 6, scope: !3084, inlinedAt: !2917)
!3084 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 375, column: 6)
!3085 = !DILocation(line: 375, column: 11, scope: !3084, inlinedAt: !2917)
!3086 = !DILocation(line: 375, column: 6, scope: !2913, inlinedAt: !2917)
!3087 = !DILocation(line: 375, column: 27, scope: !3084, inlinedAt: !2917)
!3088 = !DILocation(line: 376, column: 6, scope: !3089, inlinedAt: !2917)
!3089 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 376, column: 6)
!3090 = !DILocation(line: 376, column: 11, scope: !3089, inlinedAt: !2917)
!3091 = !DILocation(line: 376, column: 6, scope: !2913, inlinedAt: !2917)
!3092 = !DILocation(line: 376, column: 32, scope: !3089, inlinedAt: !2917)
!3093 = !DILocation(line: 377, column: 6, scope: !3094, inlinedAt: !2917)
!3094 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 377, column: 6)
!3095 = !DILocation(line: 377, column: 11, scope: !3094, inlinedAt: !2917)
!3096 = !DILocation(line: 377, column: 6, scope: !2913, inlinedAt: !2917)
!3097 = !DILocation(line: 377, column: 32, scope: !3094, inlinedAt: !2917)
!3098 = !DILocation(line: 378, column: 6, scope: !3099, inlinedAt: !2917)
!3099 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 378, column: 6)
!3100 = !DILocation(line: 378, column: 11, scope: !3099, inlinedAt: !2917)
!3101 = !DILocation(line: 378, column: 6, scope: !2913, inlinedAt: !2917)
!3102 = !DILocation(line: 378, column: 32, scope: !3099, inlinedAt: !2917)
!3103 = !DILocation(line: 379, column: 6, scope: !3104, inlinedAt: !2917)
!3104 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 379, column: 6)
!3105 = !DILocation(line: 379, column: 11, scope: !3104, inlinedAt: !2917)
!3106 = !DILocation(line: 379, column: 6, scope: !2913, inlinedAt: !2917)
!3107 = !DILocation(line: 379, column: 33, scope: !3104, inlinedAt: !2917)
!3108 = !DILocation(line: 380, column: 6, scope: !3109, inlinedAt: !2917)
!3109 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 380, column: 6)
!3110 = !DILocation(line: 380, column: 11, scope: !3109, inlinedAt: !2917)
!3111 = !DILocation(line: 380, column: 6, scope: !2913, inlinedAt: !2917)
!3112 = !DILocation(line: 380, column: 33, scope: !3109, inlinedAt: !2917)
!3113 = !DILocation(line: 381, column: 6, scope: !3114, inlinedAt: !2917)
!3114 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 381, column: 6)
!3115 = !DILocation(line: 381, column: 11, scope: !3114, inlinedAt: !2917)
!3116 = !DILocation(line: 381, column: 6, scope: !2913, inlinedAt: !2917)
!3117 = !DILocation(line: 381, column: 33, scope: !3114, inlinedAt: !2917)
!3118 = !DILocation(line: 382, column: 2, scope: !3119, inlinedAt: !2917)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !54, line: 382, column: 2)
!3120 = distinct !DILexicalBlock(scope: !2913, file: !54, line: 382, column: 2)
!3121 = !{i32 -2143539604, i32 -2143539575, i32 -2143539529, i32 -2143539471, i32 -2143539417, i32 -2143539363, i32 -2143539308, i32 -2143539277}
!3122 = !DILocation(line: 382, column: 2, scope: !3123, inlinedAt: !2917)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !54, line: 382, column: 2)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !54, line: 382, column: 2)
!3125 = !{i32 -2143538834, i32 -2143538827, i32 -2143538773, i32 -2143538742, i32 -2143538712}
!3126 = !DILocation(line: 382, column: 2, scope: !3124, inlinedAt: !2917)
!3127 = !DILocation(line: 386, column: 1, scope: !2913, inlinedAt: !2917)
!3128 = !DILocation(line: 547, column: 9, scope: !2894, inlinedAt: !2899)
!3129 = !DILocation(line: 549, column: 8, scope: !3130, inlinedAt: !2899)
!3130 = distinct !DILexicalBlock(scope: !2894, file: !54, line: 549, column: 7)
!3131 = !DILocation(line: 549, column: 7, scope: !2894, inlinedAt: !2899)
!3132 = !DILocation(line: 550, column: 4, scope: !3130, inlinedAt: !2899)
!3133 = !DILocation(line: 553, column: 33, scope: !2894, inlinedAt: !2899)
!3134 = !DILocation(line: 325, column: 6, scope: !3135, inlinedAt: !2911)
!3135 = distinct !DILexicalBlock(scope: !2907, file: !54, line: 325, column: 6)
!3136 = !DILocation(line: 325, column: 6, scope: !2907, inlinedAt: !2911)
!3137 = !DILocation(line: 326, column: 3, scope: !3135, inlinedAt: !2911)
!3138 = !DILocation(line: 332, column: 9, scope: !2907, inlinedAt: !2911)
!3139 = !DILocation(line: 332, column: 15, scope: !2907, inlinedAt: !2911)
!3140 = !DILocation(line: 332, column: 2, scope: !2907, inlinedAt: !2911)
!3141 = !DILocation(line: 336, column: 1, scope: !2907, inlinedAt: !2911)
!3142 = !DILocation(line: 553, column: 5, scope: !2894, inlinedAt: !2899)
!3143 = !DILocation(line: 553, column: 41, scope: !2894, inlinedAt: !2899)
!3144 = !DILocation(line: 554, column: 5, scope: !2894, inlinedAt: !2899)
!3145 = !DILocation(line: 554, column: 12, scope: !2894, inlinedAt: !2899)
!3146 = !DILocation(line: 448, column: 31, scope: !2889, inlinedAt: !2893)
!3147 = !DILocation(line: 448, column: 34, scope: !2889, inlinedAt: !2893)
!3148 = !DILocation(line: 448, column: 14, scope: !2889, inlinedAt: !2893)
!3149 = !DILocation(line: 450, column: 22, scope: !2889, inlinedAt: !2893)
!3150 = !DILocation(line: 450, column: 25, scope: !2889, inlinedAt: !2893)
!3151 = !DILocation(line: 450, column: 30, scope: !2889, inlinedAt: !2893)
!3152 = !DILocation(line: 450, column: 36, scope: !2889, inlinedAt: !2893)
!3153 = !DILocation(line: 450, column: 8, scope: !2889, inlinedAt: !2893)
!3154 = !DILocation(line: 450, column: 6, scope: !2889, inlinedAt: !2893)
!3155 = !DILocation(line: 451, column: 9, scope: !2889, inlinedAt: !2893)
!3156 = !DILocation(line: 552, column: 3, scope: !2894, inlinedAt: !2899)
!3157 = !DILocation(line: 557, column: 19, scope: !2896, inlinedAt: !2899)
!3158 = !DILocation(line: 557, column: 25, scope: !2896, inlinedAt: !2899)
!3159 = !DILocation(line: 557, column: 9, scope: !2896, inlinedAt: !2899)
!3160 = !DILocation(line: 557, column: 2, scope: !2896, inlinedAt: !2899)
!3161 = !DILocation(line: 558, column: 1, scope: !2896, inlinedAt: !2899)
!3162 = !DILocation(line: 567, column: 8, scope: !2875)
!3163 = !DILocation(line: 567, column: 6, scope: !2875)
!3164 = !DILocation(line: 568, column: 6, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 568, column: 6)
!3166 = !DILocation(line: 568, column: 6, scope: !2875)
!3167 = !DILocation(line: 569, column: 3, scope: !3165)
!3168 = !DILocation(line: 571, column: 2, scope: !2875)
!3169 = !DILocation(line: 571, column: 7, scope: !2875)
!3170 = !DILocation(line: 571, column: 15, scope: !2875)
!3171 = !DILocation(line: 571, column: 23, scope: !2875)
!3172 = !DILocation(line: 572, column: 2, scope: !2875)
!3173 = !DILocation(line: 572, column: 7, scope: !2875)
!3174 = !DILocation(line: 572, column: 15, scope: !2875)
!3175 = !DILocation(line: 572, column: 23, scope: !2875)
!3176 = !DILocation(line: 573, column: 18, scope: !2875)
!3177 = !DILocation(line: 573, column: 23, scope: !2875)
!3178 = !DILocation(line: 573, column: 31, scope: !2875)
!3179 = !DILocation(line: 573, column: 2, scope: !2875)
!3180 = !DILocation(line: 574, column: 18, scope: !2875)
!3181 = !DILocation(line: 574, column: 23, scope: !2875)
!3182 = !DILocation(line: 574, column: 31, scope: !2875)
!3183 = !DILocation(line: 574, column: 2, scope: !2875)
!3184 = !DILocation(line: 575, column: 2, scope: !2875)
!3185 = !DILocation(line: 575, column: 2, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 575, column: 2)
!3187 = !DILocation(line: 576, column: 2, scope: !2875)
!3188 = !DILocation(line: 576, column: 2, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 576, column: 2)
!3190 = !DILocation(line: 577, column: 12, scope: !2875)
!3191 = !DILocation(line: 577, column: 2, scope: !2875)
!3192 = !DILocation(line: 577, column: 7, scope: !2875)
!3193 = !DILocation(line: 577, column: 10, scope: !2875)
!3194 = !DILocation(line: 578, column: 6, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 578, column: 6)
!3196 = !DILocation(line: 578, column: 6, scope: !2875)
!3197 = !DILocation(line: 579, column: 13, scope: !3195)
!3198 = !DILocation(line: 579, column: 3, scope: !3195)
!3199 = !DILocation(line: 579, column: 8, scope: !3195)
!3200 = !DILocation(line: 579, column: 11, scope: !3195)
!3201 = !DILocation(line: 581, column: 2, scope: !2875)
!3202 = !DILocation(line: 581, column: 2, scope: !2887)
!3203 = !DILocalVariable(name: "__dummy", scope: !3204, file: !1, line: 581, type: !190)
!3204 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 581, column: 2)
!3205 = !DILocation(line: 581, column: 2, scope: !3204)
!3206 = !DILocalVariable(name: "__dummy2", scope: !3204, file: !1, line: 581, type: !190)
!3207 = !DILocation(line: 581, column: 2, scope: !2886)
!3208 = !DILocation(line: 581, column: 2, scope: !2885)
!3209 = !DILocation(line: 581, column: 2, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !2885, file: !1, line: 581, column: 2)
!3211 = !DILocalVariable(name: "__dummy", scope: !3212, file: !1, line: 581, type: !190)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 581, column: 2)
!3213 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 581, column: 2)
!3214 = !DILocation(line: 581, column: 2, scope: !3212)
!3215 = !DILocalVariable(name: "__dummy2", scope: !3212, file: !1, line: 581, type: !190)
!3216 = !DILocation(line: 581, column: 2, scope: !3213)
!3217 = !DILocation(line: 581, column: 2, scope: !2884)
!3218 = !{i32 -2143469329}
!3219 = !DILocation(line: 581, column: 2, scope: !2883)
!3220 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !2882)
!3221 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !2882)
!3222 = !DILocation(line: 582, column: 9, scope: !2875)
!3223 = !DILocation(line: 582, column: 15, scope: !2875)
!3224 = !DILocation(line: 582, column: 20, scope: !2875)
!3225 = !DILocation(line: 582, column: 2, scope: !2875)
!3226 = !DILocation(line: 583, column: 26, scope: !2875)
!3227 = !DILocation(line: 583, column: 31, scope: !2875)
!3228 = !DILocation(line: 583, column: 44, scope: !2875)
!3229 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !2879)
!3230 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !2879)
!3231 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !2879)
!3232 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !2879)
!3233 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !2879)
!3234 = !DILocation(line: 584, column: 9, scope: !2875)
!3235 = !DILocation(line: 584, column: 14, scope: !2875)
!3236 = !DILocation(line: 584, column: 2, scope: !2875)
!3237 = !DILocation(line: 585, column: 1, scope: !2875)
!3238 = distinct !DISubprogram(name: "group_open_release", scope: !1, file: !1, line: 73, type: !76, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3239 = !DILocalVariable(name: "dev", arg: 1, scope: !3238, file: !1, line: 73, type: !78)
!3240 = !DILocation(line: 73, column: 47, scope: !3238)
!3241 = !DILocalVariable(name: "res", arg: 2, scope: !3238, file: !1, line: 73, type: !63)
!3242 = !DILocation(line: 73, column: 58, scope: !3238)
!3243 = !DILocation(line: 76, column: 1, scope: !3238)
!3244 = distinct !DISubprogram(name: "group_close_release", scope: !1, file: !1, line: 78, type: !76, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3245 = !DILocalVariable(name: "dev", arg: 1, scope: !3244, file: !1, line: 78, type: !78)
!3246 = !DILocation(line: 78, column: 48, scope: !3244)
!3247 = !DILocalVariable(name: "res", arg: 2, scope: !3244, file: !1, line: 78, type: !63)
!3248 = !DILocation(line: 78, column: 59, scope: !3244)
!3249 = !DILocation(line: 81, column: 1, scope: !3244)
!3250 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2279, file: !2279, line: 33, type: !2675, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3251 = !DILocalVariable(name: "list", arg: 1, scope: !3250, file: !2279, line: 33, type: !71)
!3252 = !DILocation(line: 33, column: 53, scope: !3250)
!3253 = !DILocation(line: 35, column: 2, scope: !3250)
!3254 = !DILocation(line: 35, column: 2, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !2279, line: 35, column: 2)
!3256 = !DILocation(line: 35, column: 2, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !2279, line: 35, column: 2)
!3258 = !DILocation(line: 35, column: 2, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !2279, line: 35, column: 2)
!3260 = !DILocation(line: 36, column: 15, scope: !3250)
!3261 = !DILocation(line: 36, column: 2, scope: !3250)
!3262 = !DILocation(line: 36, column: 8, scope: !3250)
!3263 = !DILocation(line: 36, column: 13, scope: !3250)
!3264 = !DILocation(line: 37, column: 1, scope: !3250)
!3265 = distinct !DISubprogram(name: "devres_close_group", scope: !1, file: !1, line: 619, type: !76, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3266 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 632, column: 2, scope: !3265)
!3268 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !3267)
!3269 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 624, column: 2, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !1, line: 624, column: 2)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 624, column: 2)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !1, line: 624, column: 2)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !1, line: 624, column: 2)
!3275 = distinct !DILexicalBlock(scope: !3265, file: !1, line: 624, column: 2)
!3276 = !DILocalVariable(name: "dev", arg: 1, scope: !3265, file: !1, line: 619, type: !78)
!3277 = !DILocation(line: 619, column: 40, scope: !3265)
!3278 = !DILocalVariable(name: "id", arg: 2, scope: !3265, file: !1, line: 619, type: !63)
!3279 = !DILocation(line: 619, column: 51, scope: !3265)
!3280 = !DILocalVariable(name: "grp", scope: !3265, file: !1, line: 621, type: !2002)
!3281 = !DILocation(line: 621, column: 23, scope: !3265)
!3282 = !DILocalVariable(name: "flags", scope: !3265, file: !1, line: 622, type: !190)
!3283 = !DILocation(line: 622, column: 16, scope: !3265)
!3284 = !DILocation(line: 624, column: 2, scope: !3265)
!3285 = !DILocation(line: 624, column: 2, scope: !3275)
!3286 = !DILocalVariable(name: "__dummy", scope: !3287, file: !1, line: 624, type: !190)
!3287 = distinct !DILexicalBlock(scope: !3274, file: !1, line: 624, column: 2)
!3288 = !DILocation(line: 624, column: 2, scope: !3287)
!3289 = !DILocalVariable(name: "__dummy2", scope: !3287, file: !1, line: 624, type: !190)
!3290 = !DILocation(line: 624, column: 2, scope: !3274)
!3291 = !DILocation(line: 624, column: 2, scope: !3273)
!3292 = !DILocation(line: 624, column: 2, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 624, column: 2)
!3294 = !DILocalVariable(name: "__dummy", scope: !3295, file: !1, line: 624, type: !190)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !1, line: 624, column: 2)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !1, line: 624, column: 2)
!3297 = !DILocation(line: 624, column: 2, scope: !3295)
!3298 = !DILocalVariable(name: "__dummy2", scope: !3295, file: !1, line: 624, type: !190)
!3299 = !DILocation(line: 624, column: 2, scope: !3296)
!3300 = !DILocation(line: 624, column: 2, scope: !3272)
!3301 = !{i32 -2143462716}
!3302 = !DILocation(line: 624, column: 2, scope: !3271)
!3303 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !3270)
!3304 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !3270)
!3305 = !DILocation(line: 626, column: 19, scope: !3265)
!3306 = !DILocation(line: 626, column: 24, scope: !3265)
!3307 = !DILocation(line: 626, column: 8, scope: !3265)
!3308 = !DILocation(line: 626, column: 6, scope: !3265)
!3309 = !DILocation(line: 627, column: 6, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3265, file: !1, line: 627, column: 6)
!3311 = !DILocation(line: 627, column: 6, scope: !3265)
!3312 = !DILocation(line: 628, column: 10, scope: !3310)
!3313 = !DILocation(line: 628, column: 16, scope: !3310)
!3314 = !DILocation(line: 628, column: 21, scope: !3310)
!3315 = !DILocation(line: 628, column: 3, scope: !3310)
!3316 = !DILocalVariable(name: "__ret_warn_on", scope: !3317, file: !1, line: 630, type: !124)
!3317 = distinct !DILexicalBlock(scope: !3310, file: !1, line: 630, column: 3)
!3318 = !DILocation(line: 630, column: 3, scope: !3317)
!3319 = !DILocation(line: 630, column: 3, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3317, file: !1, line: 630, column: 3)
!3321 = !DILocation(line: 630, column: 3, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3320, file: !1, line: 630, column: 3)
!3323 = !DILocation(line: 630, column: 3, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 630, column: 3)
!3325 = !DILocation(line: 630, column: 3, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 630, column: 3)
!3327 = !{i32 -2143462093, i32 -2143462064, i32 -2143462018, i32 -2143461960, i32 -2143461906, i32 -2143461852, i32 -2143461797, i32 -2143461766}
!3328 = !DILocation(line: 630, column: 3, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 630, column: 3)
!3330 = !{i32 -2143461363, i32 -2143461356, i32 -2143461304, i32 -2143461273, i32 -2143461243}
!3331 = !DILocation(line: 630, column: 3, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 630, column: 3)
!3333 = !DILocation(line: 632, column: 26, scope: !3265)
!3334 = !DILocation(line: 632, column: 31, scope: !3265)
!3335 = !DILocation(line: 632, column: 44, scope: !3265)
!3336 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !3267)
!3337 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !3267)
!3338 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !3267)
!3339 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !3267)
!3340 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !3267)
!3341 = !DILocation(line: 633, column: 1, scope: !3265)
!3342 = distinct !DISubprogram(name: "find_group", scope: !1, file: !1, line: 589, type: !3343, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!2002, !78, !63}
!3345 = !DILocalVariable(name: "dev", arg: 1, scope: !3342, file: !1, line: 589, type: !78)
!3346 = !DILocation(line: 589, column: 56, scope: !3342)
!3347 = !DILocalVariable(name: "id", arg: 2, scope: !3342, file: !1, line: 589, type: !63)
!3348 = !DILocation(line: 589, column: 67, scope: !3342)
!3349 = !DILocalVariable(name: "node", scope: !3342, file: !1, line: 591, type: !64)
!3350 = !DILocation(line: 591, column: 22, scope: !3342)
!3351 = !DILocalVariable(name: "__mptr", scope: !3352, file: !1, line: 593, type: !63)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !1, line: 593, column: 2)
!3353 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 593, column: 2)
!3354 = !DILocation(line: 593, column: 2, scope: !3352)
!3355 = !DILocation(line: 593, column: 2, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !1, line: 593, column: 2)
!3357 = !DILocation(line: 593, column: 2, scope: !3353)
!3358 = !DILocation(line: 593, column: 2, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3353, file: !1, line: 593, column: 2)
!3360 = !DILocalVariable(name: "grp", scope: !3361, file: !1, line: 594, type: !2002)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !1, line: 593, column: 62)
!3362 = !DILocation(line: 594, column: 24, scope: !3361)
!3363 = !DILocation(line: 596, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !1, line: 596, column: 7)
!3365 = !DILocation(line: 596, column: 13, scope: !3364)
!3366 = !DILocation(line: 596, column: 21, scope: !3364)
!3367 = !DILocation(line: 596, column: 7, scope: !3361)
!3368 = !DILocation(line: 597, column: 4, scope: !3364)
!3369 = !DILocalVariable(name: "__mptr", scope: !3370, file: !1, line: 599, type: !63)
!3370 = distinct !DILexicalBlock(scope: !3361, file: !1, line: 599, column: 9)
!3371 = !DILocation(line: 599, column: 9, scope: !3370)
!3372 = !DILocation(line: 599, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !1, line: 599, column: 9)
!3374 = !DILocation(line: 599, column: 7, scope: !3361)
!3375 = !DILocation(line: 601, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3361, file: !1, line: 601, column: 7)
!3377 = !DILocation(line: 601, column: 7, scope: !3361)
!3378 = !DILocation(line: 602, column: 8, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 602, column: 8)
!3380 = distinct !DILexicalBlock(scope: !3376, file: !1, line: 601, column: 11)
!3381 = !DILocation(line: 602, column: 13, scope: !3379)
!3382 = !DILocation(line: 602, column: 19, scope: !3379)
!3383 = !DILocation(line: 602, column: 16, scope: !3379)
!3384 = !DILocation(line: 602, column: 8, scope: !3380)
!3385 = !DILocation(line: 603, column: 12, scope: !3379)
!3386 = !DILocation(line: 603, column: 5, scope: !3379)
!3387 = !DILocation(line: 604, column: 3, scope: !3380)
!3388 = !DILocation(line: 604, column: 26, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3376, file: !1, line: 604, column: 14)
!3390 = !DILocation(line: 604, column: 31, scope: !3389)
!3391 = !DILocation(line: 604, column: 39, scope: !3389)
!3392 = !DILocation(line: 604, column: 14, scope: !3389)
!3393 = !DILocation(line: 604, column: 14, scope: !3376)
!3394 = !DILocation(line: 605, column: 11, scope: !3389)
!3395 = !DILocation(line: 605, column: 4, scope: !3389)
!3396 = !DILocation(line: 606, column: 2, scope: !3361)
!3397 = !DILocalVariable(name: "__mptr", scope: !3398, file: !1, line: 593, type: !63)
!3398 = distinct !DILexicalBlock(scope: !3359, file: !1, line: 593, column: 2)
!3399 = !DILocation(line: 593, column: 2, scope: !3398)
!3400 = !DILocation(line: 593, column: 2, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !1, line: 593, column: 2)
!3402 = distinct !{!3402, !3357, !3403}
!3403 = !DILocation(line: 606, column: 2, scope: !3353)
!3404 = !DILocation(line: 608, column: 2, scope: !3342)
!3405 = !DILocation(line: 609, column: 1, scope: !3342)
!3406 = distinct !DISubprogram(name: "devres_remove_group", scope: !1, file: !1, line: 645, type: !76, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3407 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 660, column: 2, scope: !3406)
!3409 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !3408)
!3410 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 650, column: 2, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !1, line: 650, column: 2)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !1, line: 650, column: 2)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !1, line: 650, column: 2)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !1, line: 650, column: 2)
!3416 = distinct !DILexicalBlock(scope: !3406, file: !1, line: 650, column: 2)
!3417 = !DILocalVariable(name: "dev", arg: 1, scope: !3406, file: !1, line: 645, type: !78)
!3418 = !DILocation(line: 645, column: 41, scope: !3406)
!3419 = !DILocalVariable(name: "id", arg: 2, scope: !3406, file: !1, line: 645, type: !63)
!3420 = !DILocation(line: 645, column: 52, scope: !3406)
!3421 = !DILocalVariable(name: "grp", scope: !3406, file: !1, line: 647, type: !2002)
!3422 = !DILocation(line: 647, column: 23, scope: !3406)
!3423 = !DILocalVariable(name: "flags", scope: !3406, file: !1, line: 648, type: !190)
!3424 = !DILocation(line: 648, column: 16, scope: !3406)
!3425 = !DILocation(line: 650, column: 2, scope: !3406)
!3426 = !DILocation(line: 650, column: 2, scope: !3416)
!3427 = !DILocalVariable(name: "__dummy", scope: !3428, file: !1, line: 650, type: !190)
!3428 = distinct !DILexicalBlock(scope: !3415, file: !1, line: 650, column: 2)
!3429 = !DILocation(line: 650, column: 2, scope: !3428)
!3430 = !DILocalVariable(name: "__dummy2", scope: !3428, file: !1, line: 650, type: !190)
!3431 = !DILocation(line: 650, column: 2, scope: !3415)
!3432 = !DILocation(line: 650, column: 2, scope: !3414)
!3433 = !DILocation(line: 650, column: 2, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3414, file: !1, line: 650, column: 2)
!3435 = !DILocalVariable(name: "__dummy", scope: !3436, file: !1, line: 650, type: !190)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !1, line: 650, column: 2)
!3437 = distinct !DILexicalBlock(scope: !3434, file: !1, line: 650, column: 2)
!3438 = !DILocation(line: 650, column: 2, scope: !3436)
!3439 = !DILocalVariable(name: "__dummy2", scope: !3436, file: !1, line: 650, type: !190)
!3440 = !DILocation(line: 650, column: 2, scope: !3437)
!3441 = !DILocation(line: 650, column: 2, scope: !3413)
!3442 = !{i32 -2143460129}
!3443 = !DILocation(line: 650, column: 2, scope: !3412)
!3444 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !3411)
!3445 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !3411)
!3446 = !DILocation(line: 652, column: 19, scope: !3406)
!3447 = !DILocation(line: 652, column: 24, scope: !3406)
!3448 = !DILocation(line: 652, column: 8, scope: !3406)
!3449 = !DILocation(line: 652, column: 6, scope: !3406)
!3450 = !DILocation(line: 653, column: 6, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3406, file: !1, line: 653, column: 6)
!3452 = !DILocation(line: 653, column: 6, scope: !3406)
!3453 = !DILocation(line: 654, column: 18, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 653, column: 11)
!3455 = !DILocation(line: 654, column: 23, scope: !3454)
!3456 = !DILocation(line: 654, column: 31, scope: !3454)
!3457 = !DILocation(line: 654, column: 3, scope: !3454)
!3458 = !DILocation(line: 655, column: 18, scope: !3454)
!3459 = !DILocation(line: 655, column: 23, scope: !3454)
!3460 = !DILocation(line: 655, column: 31, scope: !3454)
!3461 = !DILocation(line: 655, column: 3, scope: !3454)
!3462 = !DILocation(line: 656, column: 3, scope: !3454)
!3463 = !DILocation(line: 656, column: 3, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3454, file: !1, line: 656, column: 3)
!3465 = !DILocation(line: 657, column: 2, scope: !3454)
!3466 = !DILocalVariable(name: "__ret_warn_on", scope: !3467, file: !1, line: 658, type: !124)
!3467 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 658, column: 3)
!3468 = !DILocation(line: 658, column: 3, scope: !3467)
!3469 = !DILocation(line: 658, column: 3, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !1, line: 658, column: 3)
!3471 = !DILocation(line: 658, column: 3, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3470, file: !1, line: 658, column: 3)
!3473 = !DILocation(line: 658, column: 3, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 658, column: 3)
!3475 = !DILocation(line: 658, column: 3, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 658, column: 3)
!3477 = !{i32 -2143459490, i32 -2143459461, i32 -2143459415, i32 -2143459357, i32 -2143459303, i32 -2143459249, i32 -2143459194, i32 -2143459163}
!3478 = !DILocation(line: 658, column: 3, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 658, column: 3)
!3480 = !{i32 -2143458760, i32 -2143458753, i32 -2143458701, i32 -2143458670, i32 -2143458640}
!3481 = !DILocation(line: 658, column: 3, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 658, column: 3)
!3483 = !DILocation(line: 660, column: 26, scope: !3406)
!3484 = !DILocation(line: 660, column: 31, scope: !3406)
!3485 = !DILocation(line: 660, column: 44, scope: !3406)
!3486 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !3408)
!3487 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !3408)
!3488 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !3408)
!3489 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !3408)
!3490 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !3408)
!3491 = !DILocation(line: 662, column: 8, scope: !3406)
!3492 = !DILocation(line: 662, column: 2, scope: !3406)
!3493 = !DILocation(line: 663, column: 1, scope: !3406)
!3494 = distinct !DISubprogram(name: "devres_release_group", scope: !1, file: !1, line: 678, type: !3495, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!124, !78, !63}
!3497 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 697, column: 3, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !1, line: 695, column: 9)
!3500 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 687, column: 6)
!3501 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !3498)
!3502 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 684, column: 2, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 684, column: 2)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 684, column: 2)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 684, column: 2)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !1, line: 684, column: 2)
!3508 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 684, column: 2)
!3509 = !DILocalVariable(name: "dev", arg: 1, scope: !3494, file: !1, line: 678, type: !78)
!3510 = !DILocation(line: 678, column: 41, scope: !3494)
!3511 = !DILocalVariable(name: "id", arg: 2, scope: !3494, file: !1, line: 678, type: !63)
!3512 = !DILocation(line: 678, column: 52, scope: !3494)
!3513 = !DILocalVariable(name: "grp", scope: !3494, file: !1, line: 680, type: !2002)
!3514 = !DILocation(line: 680, column: 23, scope: !3494)
!3515 = !DILocalVariable(name: "flags", scope: !3494, file: !1, line: 681, type: !190)
!3516 = !DILocation(line: 681, column: 16, scope: !3494)
!3517 = !DILocalVariable(name: "cnt", scope: !3494, file: !1, line: 682, type: !124)
!3518 = !DILocation(line: 682, column: 6, scope: !3494)
!3519 = !DILocation(line: 684, column: 2, scope: !3494)
!3520 = !DILocation(line: 684, column: 2, scope: !3508)
!3521 = !DILocalVariable(name: "__dummy", scope: !3522, file: !1, line: 684, type: !190)
!3522 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 684, column: 2)
!3523 = !DILocation(line: 684, column: 2, scope: !3522)
!3524 = !DILocalVariable(name: "__dummy2", scope: !3522, file: !1, line: 684, type: !190)
!3525 = !DILocation(line: 684, column: 2, scope: !3507)
!3526 = !DILocation(line: 684, column: 2, scope: !3506)
!3527 = !DILocation(line: 684, column: 2, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 684, column: 2)
!3529 = !DILocalVariable(name: "__dummy", scope: !3530, file: !1, line: 684, type: !190)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !1, line: 684, column: 2)
!3531 = distinct !DILexicalBlock(scope: !3528, file: !1, line: 684, column: 2)
!3532 = !DILocation(line: 684, column: 2, scope: !3530)
!3533 = !DILocalVariable(name: "__dummy2", scope: !3530, file: !1, line: 684, type: !190)
!3534 = !DILocation(line: 684, column: 2, scope: !3531)
!3535 = !DILocation(line: 684, column: 2, scope: !3505)
!3536 = !{i32 -2143457524}
!3537 = !DILocation(line: 684, column: 2, scope: !3504)
!3538 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !3503)
!3539 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !3503)
!3540 = !DILocation(line: 686, column: 19, scope: !3494)
!3541 = !DILocation(line: 686, column: 24, scope: !3494)
!3542 = !DILocation(line: 686, column: 8, scope: !3494)
!3543 = !DILocation(line: 686, column: 6, scope: !3494)
!3544 = !DILocation(line: 687, column: 6, scope: !3500)
!3545 = !DILocation(line: 687, column: 6, scope: !3494)
!3546 = !DILocalVariable(name: "first", scope: !3547, file: !1, line: 688, type: !71)
!3547 = distinct !DILexicalBlock(scope: !3500, file: !1, line: 687, column: 11)
!3548 = !DILocation(line: 688, column: 21, scope: !3547)
!3549 = !DILocation(line: 688, column: 30, scope: !3547)
!3550 = !DILocation(line: 688, column: 35, scope: !3547)
!3551 = !DILocation(line: 688, column: 43, scope: !3547)
!3552 = !DILocalVariable(name: "end", scope: !3547, file: !1, line: 689, type: !71)
!3553 = !DILocation(line: 689, column: 21, scope: !3547)
!3554 = !DILocation(line: 689, column: 28, scope: !3547)
!3555 = !DILocation(line: 689, column: 33, scope: !3547)
!3556 = !DILocation(line: 691, column: 20, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !1, line: 691, column: 7)
!3558 = !DILocation(line: 691, column: 25, scope: !3557)
!3559 = !DILocation(line: 691, column: 33, scope: !3557)
!3560 = !DILocation(line: 691, column: 8, scope: !3557)
!3561 = !DILocation(line: 691, column: 7, scope: !3547)
!3562 = !DILocation(line: 692, column: 10, scope: !3557)
!3563 = !DILocation(line: 692, column: 15, scope: !3557)
!3564 = !DILocation(line: 692, column: 23, scope: !3557)
!3565 = !DILocation(line: 692, column: 29, scope: !3557)
!3566 = !DILocation(line: 692, column: 8, scope: !3557)
!3567 = !DILocation(line: 692, column: 4, scope: !3557)
!3568 = !DILocation(line: 694, column: 23, scope: !3547)
!3569 = !DILocation(line: 694, column: 28, scope: !3547)
!3570 = !DILocation(line: 694, column: 35, scope: !3547)
!3571 = !DILocation(line: 694, column: 40, scope: !3547)
!3572 = !DILocation(line: 694, column: 9, scope: !3547)
!3573 = !DILocation(line: 694, column: 7, scope: !3547)
!3574 = !DILocation(line: 695, column: 2, scope: !3547)
!3575 = !DILocalVariable(name: "__ret_warn_on", scope: !3576, file: !1, line: 696, type: !124)
!3576 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 696, column: 3)
!3577 = !DILocation(line: 696, column: 3, scope: !3576)
!3578 = !DILocation(line: 696, column: 3, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 696, column: 3)
!3580 = !DILocation(line: 696, column: 3, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 696, column: 3)
!3582 = !DILocation(line: 696, column: 3, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 696, column: 3)
!3584 = !DILocation(line: 696, column: 3, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 696, column: 3)
!3586 = !{i32 -2143456901, i32 -2143456872, i32 -2143456826, i32 -2143456768, i32 -2143456714, i32 -2143456660, i32 -2143456605, i32 -2143456574}
!3587 = !DILocation(line: 696, column: 3, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 696, column: 3)
!3589 = !{i32 -2143456171, i32 -2143456164, i32 -2143456112, i32 -2143456081, i32 -2143456051}
!3590 = !DILocation(line: 696, column: 3, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 696, column: 3)
!3592 = !DILocation(line: 697, column: 27, scope: !3499)
!3593 = !DILocation(line: 697, column: 32, scope: !3499)
!3594 = !DILocation(line: 697, column: 45, scope: !3499)
!3595 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !3498)
!3596 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !3498)
!3597 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !3498)
!3598 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !3498)
!3599 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !3498)
!3600 = !DILocation(line: 700, column: 9, scope: !3494)
!3601 = !DILocation(line: 700, column: 2, scope: !3494)
!3602 = distinct !DISubprogram(name: "devm_add_action", scope: !1, file: !1, line: 739, type: !3603, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!124, !78, !1383, !63}
!3605 = !DILocalVariable(name: "dev", arg: 1, scope: !3602, file: !1, line: 739, type: !78)
!3606 = !DILocation(line: 739, column: 36, scope: !3602)
!3607 = !DILocalVariable(name: "action", arg: 2, scope: !3602, file: !1, line: 739, type: !1383)
!3608 = !DILocation(line: 739, column: 48, scope: !3602)
!3609 = !DILocalVariable(name: "data", arg: 3, scope: !3602, file: !1, line: 739, type: !63)
!3610 = !DILocation(line: 739, column: 71, scope: !3602)
!3611 = !DILocalVariable(name: "devres", scope: !3602, file: !1, line: 741, type: !3612)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "action_devres", file: !1, line: 709, size: 128, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3613, file: !1, line: 710, baseType: !63, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3613, file: !1, line: 711, baseType: !1383, size: 64, offset: 64)
!3617 = !DILocation(line: 741, column: 24, scope: !3602)
!3618 = !DILocation(line: 743, column: 11, scope: !3602)
!3619 = !DILocation(line: 743, column: 9, scope: !3602)
!3620 = !DILocation(line: 745, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3602, file: !1, line: 745, column: 6)
!3622 = !DILocation(line: 745, column: 6, scope: !3602)
!3623 = !DILocation(line: 746, column: 3, scope: !3621)
!3624 = !DILocation(line: 748, column: 17, scope: !3602)
!3625 = !DILocation(line: 748, column: 2, scope: !3602)
!3626 = !DILocation(line: 748, column: 10, scope: !3602)
!3627 = !DILocation(line: 748, column: 15, scope: !3602)
!3628 = !DILocation(line: 749, column: 19, scope: !3602)
!3629 = !DILocation(line: 749, column: 2, scope: !3602)
!3630 = !DILocation(line: 749, column: 10, scope: !3602)
!3631 = !DILocation(line: 749, column: 17, scope: !3602)
!3632 = !DILocation(line: 751, column: 13, scope: !3602)
!3633 = !DILocation(line: 751, column: 18, scope: !3602)
!3634 = !DILocation(line: 751, column: 2, scope: !3602)
!3635 = !DILocation(line: 752, column: 2, scope: !3602)
!3636 = !DILocation(line: 753, column: 1, scope: !3602)
!3637 = distinct !DISubprogram(name: "devres_alloc", scope: !28, file: !28, line: 178, type: !3638, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!63, !74, !187, !61}
!3640 = !DILocalVariable(name: "release", arg: 1, scope: !3637, file: !28, line: 178, type: !74)
!3641 = !DILocation(line: 178, column: 47, scope: !3637)
!3642 = !DILocalVariable(name: "size", arg: 2, scope: !3637, file: !28, line: 178, type: !187)
!3643 = !DILocation(line: 178, column: 63, scope: !3637)
!3644 = !DILocalVariable(name: "gfp", arg: 3, scope: !3637, file: !28, line: 178, type: !61)
!3645 = !DILocation(line: 178, column: 75, scope: !3637)
!3646 = !DILocation(line: 180, column: 27, scope: !3637)
!3647 = !DILocation(line: 180, column: 36, scope: !3637)
!3648 = !DILocation(line: 180, column: 42, scope: !3637)
!3649 = !DILocation(line: 180, column: 9, scope: !3637)
!3650 = !DILocation(line: 180, column: 2, scope: !3637)
!3651 = distinct !DISubprogram(name: "devm_action_release", scope: !1, file: !1, line: 723, type: !76, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3652 = !DILocalVariable(name: "dev", arg: 1, scope: !3651, file: !1, line: 723, type: !78)
!3653 = !DILocation(line: 723, column: 48, scope: !3651)
!3654 = !DILocalVariable(name: "res", arg: 2, scope: !3651, file: !1, line: 723, type: !63)
!3655 = !DILocation(line: 723, column: 59, scope: !3651)
!3656 = !DILocalVariable(name: "devres", scope: !3651, file: !1, line: 725, type: !3612)
!3657 = !DILocation(line: 725, column: 24, scope: !3651)
!3658 = !DILocation(line: 725, column: 33, scope: !3651)
!3659 = !DILocation(line: 727, column: 2, scope: !3651)
!3660 = !DILocation(line: 727, column: 10, scope: !3651)
!3661 = !DILocation(line: 727, column: 17, scope: !3651)
!3662 = !DILocation(line: 727, column: 25, scope: !3651)
!3663 = !DILocation(line: 728, column: 1, scope: !3651)
!3664 = distinct !DISubprogram(name: "devm_remove_action", scope: !1, file: !1, line: 765, type: !3665, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !78, !1383, !63}
!3667 = !DILocalVariable(name: "dev", arg: 1, scope: !3664, file: !1, line: 765, type: !78)
!3668 = !DILocation(line: 765, column: 40, scope: !3664)
!3669 = !DILocalVariable(name: "action", arg: 2, scope: !3664, file: !1, line: 765, type: !1383)
!3670 = !DILocation(line: 765, column: 52, scope: !3664)
!3671 = !DILocalVariable(name: "data", arg: 3, scope: !3664, file: !1, line: 765, type: !63)
!3672 = !DILocation(line: 765, column: 75, scope: !3664)
!3673 = !DILocalVariable(name: "devres", scope: !3664, file: !1, line: 767, type: !3613)
!3674 = !DILocation(line: 767, column: 23, scope: !3664)
!3675 = !DILocation(line: 767, column: 32, scope: !3664)
!3676 = !DILocation(line: 768, column: 11, scope: !3664)
!3677 = !DILocation(line: 769, column: 13, scope: !3664)
!3678 = !DILocalVariable(name: "__ret_warn_on", scope: !3679, file: !1, line: 772, type: !124)
!3679 = distinct !DILexicalBlock(scope: !3664, file: !1, line: 772, column: 2)
!3680 = !DILocation(line: 772, column: 2, scope: !3679)
!3681 = !DILocation(line: 772, column: 2, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !1, line: 772, column: 2)
!3683 = !DILocation(line: 772, column: 2, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3682, file: !1, line: 772, column: 2)
!3685 = !DILocation(line: 772, column: 2, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3684, file: !1, line: 772, column: 2)
!3687 = !DILocation(line: 772, column: 2, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !1, line: 772, column: 2)
!3689 = !{i32 -2143455013, i32 -2143454984, i32 -2143454938, i32 -2143454880, i32 -2143454826, i32 -2143454772, i32 -2143454717, i32 -2143454686}
!3690 = !DILocation(line: 772, column: 2, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3684, file: !1, line: 772, column: 2)
!3692 = !{i32 -2143454283, i32 -2143454276, i32 -2143454224, i32 -2143454193, i32 -2143454163}
!3693 = !DILocation(line: 772, column: 2, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3684, file: !1, line: 772, column: 2)
!3695 = !DILocation(line: 774, column: 1, scope: !3664)
!3696 = distinct !DISubprogram(name: "devm_action_match", scope: !1, file: !1, line: 714, type: !2088, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3697 = !DILocalVariable(name: "dev", arg: 1, scope: !3696, file: !1, line: 714, type: !78)
!3698 = !DILocation(line: 714, column: 45, scope: !3696)
!3699 = !DILocalVariable(name: "res", arg: 2, scope: !3696, file: !1, line: 714, type: !63)
!3700 = !DILocation(line: 714, column: 56, scope: !3696)
!3701 = !DILocalVariable(name: "p", arg: 3, scope: !3696, file: !1, line: 714, type: !63)
!3702 = !DILocation(line: 714, column: 67, scope: !3696)
!3703 = !DILocalVariable(name: "devres", scope: !3696, file: !1, line: 716, type: !3612)
!3704 = !DILocation(line: 716, column: 24, scope: !3696)
!3705 = !DILocation(line: 716, column: 33, scope: !3696)
!3706 = !DILocalVariable(name: "target", scope: !3696, file: !1, line: 717, type: !3612)
!3707 = !DILocation(line: 717, column: 24, scope: !3696)
!3708 = !DILocation(line: 717, column: 33, scope: !3696)
!3709 = !DILocation(line: 719, column: 9, scope: !3696)
!3710 = !DILocation(line: 719, column: 17, scope: !3696)
!3711 = !DILocation(line: 719, column: 27, scope: !3696)
!3712 = !DILocation(line: 719, column: 35, scope: !3696)
!3713 = !DILocation(line: 719, column: 24, scope: !3696)
!3714 = !DILocation(line: 719, column: 42, scope: !3696)
!3715 = !DILocation(line: 720, column: 9, scope: !3696)
!3716 = !DILocation(line: 720, column: 17, scope: !3696)
!3717 = !DILocation(line: 720, column: 25, scope: !3696)
!3718 = !DILocation(line: 720, column: 33, scope: !3696)
!3719 = !DILocation(line: 720, column: 22, scope: !3696)
!3720 = !DILocation(line: 0, scope: !3696)
!3721 = !DILocation(line: 719, column: 2, scope: !3696)
!3722 = distinct !DISubprogram(name: "devm_release_action", scope: !1, file: !1, line: 787, type: !3665, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3723 = !DILocalVariable(name: "dev", arg: 1, scope: !3722, file: !1, line: 787, type: !78)
!3724 = !DILocation(line: 787, column: 41, scope: !3722)
!3725 = !DILocalVariable(name: "action", arg: 2, scope: !3722, file: !1, line: 787, type: !1383)
!3726 = !DILocation(line: 787, column: 53, scope: !3722)
!3727 = !DILocalVariable(name: "data", arg: 3, scope: !3722, file: !1, line: 787, type: !63)
!3728 = !DILocation(line: 787, column: 76, scope: !3722)
!3729 = !DILocalVariable(name: "devres", scope: !3722, file: !1, line: 789, type: !3613)
!3730 = !DILocation(line: 789, column: 23, scope: !3722)
!3731 = !DILocation(line: 789, column: 32, scope: !3722)
!3732 = !DILocation(line: 790, column: 11, scope: !3722)
!3733 = !DILocation(line: 791, column: 13, scope: !3722)
!3734 = !DILocalVariable(name: "__ret_warn_on", scope: !3735, file: !1, line: 794, type: !124)
!3735 = distinct !DILexicalBlock(scope: !3722, file: !1, line: 794, column: 2)
!3736 = !DILocation(line: 794, column: 2, scope: !3735)
!3737 = !DILocation(line: 794, column: 2, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !1, line: 794, column: 2)
!3739 = !DILocation(line: 794, column: 2, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !1, line: 794, column: 2)
!3741 = !DILocation(line: 794, column: 2, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 794, column: 2)
!3743 = !DILocation(line: 794, column: 2, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 794, column: 2)
!3745 = !{i32 -2143453410, i32 -2143453381, i32 -2143453335, i32 -2143453277, i32 -2143453223, i32 -2143453169, i32 -2143453114, i32 -2143453083}
!3746 = !DILocation(line: 794, column: 2, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 794, column: 2)
!3748 = !{i32 -2143452680, i32 -2143452673, i32 -2143452621, i32 -2143452590, i32 -2143452560}
!3749 = !DILocation(line: 794, column: 2, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 794, column: 2)
!3751 = !DILocation(line: 797, column: 1, scope: !3722)
!3752 = distinct !DISubprogram(name: "devm_kmalloc", scope: !1, file: !1, line: 826, type: !3753, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!63, !78, !187, !61}
!3755 = !DILocation(line: 102, column: 62, scope: !2019, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 834, column: 7, scope: !3752)
!3757 = !DILocation(line: 103, column: 14, scope: !2019, inlinedAt: !3756)
!3758 = !DILocation(line: 103, column: 26, scope: !2019, inlinedAt: !3756)
!3759 = !DILocation(line: 103, column: 35, scope: !2019, inlinedAt: !3756)
!3760 = !DILocation(line: 105, column: 9, scope: !2019, inlinedAt: !3756)
!3761 = !DILocation(line: 106, column: 17, scope: !2019, inlinedAt: !3756)
!3762 = !DILocalVariable(name: "dev", arg: 1, scope: !3752, file: !1, line: 826, type: !78)
!3763 = !DILocation(line: 826, column: 35, scope: !3752)
!3764 = !DILocalVariable(name: "size", arg: 2, scope: !3752, file: !1, line: 826, type: !187)
!3765 = !DILocation(line: 826, column: 47, scope: !3752)
!3766 = !DILocalVariable(name: "gfp", arg: 3, scope: !3752, file: !1, line: 826, type: !61)
!3767 = !DILocation(line: 826, column: 59, scope: !3752)
!3768 = !DILocalVariable(name: "dr", scope: !3752, file: !1, line: 828, type: !1991)
!3769 = !DILocation(line: 828, column: 17, scope: !3752)
!3770 = !DILocation(line: 830, column: 6, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 830, column: 6)
!3772 = !DILocation(line: 830, column: 6, scope: !3752)
!3773 = !DILocation(line: 831, column: 3, scope: !3771)
!3774 = !DILocation(line: 834, column: 38, scope: !3752)
!3775 = !DILocation(line: 834, column: 44, scope: !3752)
!3776 = !DILocation(line: 834, column: 61, scope: !3752)
!3777 = !DILocation(line: 834, column: 49, scope: !3752)
!3778 = !DILocation(line: 108, column: 21, scope: !2050, inlinedAt: !3756)
!3779 = !DILocation(line: 108, column: 7, scope: !2050, inlinedAt: !3756)
!3780 = !DILocation(line: 108, column: 6, scope: !2019, inlinedAt: !3756)
!3781 = !DILocation(line: 109, column: 3, scope: !2050, inlinedAt: !3756)
!3782 = !DILocation(line: 111, column: 7, scope: !2019, inlinedAt: !3756)
!3783 = !DILocation(line: 111, column: 5, scope: !2019, inlinedAt: !3756)
!3784 = !DILocation(line: 112, column: 6, scope: !2057, inlinedAt: !3756)
!3785 = !DILocation(line: 112, column: 6, scope: !2019, inlinedAt: !3756)
!3786 = !DILocation(line: 113, column: 3, scope: !2057, inlinedAt: !3756)
!3787 = !DILocation(line: 115, column: 9, scope: !2019, inlinedAt: !3756)
!3788 = !DILocation(line: 115, column: 2, scope: !2019, inlinedAt: !3756)
!3789 = !DILocation(line: 117, column: 18, scope: !2019, inlinedAt: !3756)
!3790 = !DILocation(line: 117, column: 22, scope: !2019, inlinedAt: !3756)
!3791 = !DILocation(line: 117, column: 27, scope: !2019, inlinedAt: !3756)
!3792 = !DILocation(line: 117, column: 2, scope: !2019, inlinedAt: !3756)
!3793 = !DILocation(line: 118, column: 21, scope: !2019, inlinedAt: !3756)
!3794 = !DILocation(line: 118, column: 2, scope: !2019, inlinedAt: !3756)
!3795 = !DILocation(line: 118, column: 6, scope: !2019, inlinedAt: !3756)
!3796 = !DILocation(line: 118, column: 11, scope: !2019, inlinedAt: !3756)
!3797 = !DILocation(line: 118, column: 19, scope: !2019, inlinedAt: !3756)
!3798 = !DILocation(line: 119, column: 9, scope: !2019, inlinedAt: !3756)
!3799 = !DILocation(line: 119, column: 2, scope: !2019, inlinedAt: !3756)
!3800 = !DILocation(line: 120, column: 1, scope: !2019, inlinedAt: !3756)
!3801 = !DILocation(line: 834, column: 5, scope: !3752)
!3802 = !DILocation(line: 835, column: 6, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 835, column: 6)
!3804 = !DILocation(line: 835, column: 6, scope: !3752)
!3805 = !DILocation(line: 836, column: 3, scope: !3803)
!3806 = !DILocation(line: 842, column: 2, scope: !3752)
!3807 = !DILocation(line: 842, column: 2, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 842, column: 2)
!3809 = !DILocation(line: 843, column: 13, scope: !3752)
!3810 = !DILocation(line: 843, column: 18, scope: !3752)
!3811 = !DILocation(line: 843, column: 22, scope: !3752)
!3812 = !DILocation(line: 843, column: 2, scope: !3752)
!3813 = !DILocation(line: 844, column: 9, scope: !3752)
!3814 = !DILocation(line: 844, column: 13, scope: !3752)
!3815 = !DILocation(line: 844, column: 2, scope: !3752)
!3816 = !DILocation(line: 845, column: 1, scope: !3752)
!3817 = distinct !DISubprogram(name: "devm_kmalloc_release", scope: !1, file: !1, line: 803, type: !76, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3818 = !DILocalVariable(name: "dev", arg: 1, scope: !3817, file: !1, line: 803, type: !78)
!3819 = !DILocation(line: 803, column: 49, scope: !3817)
!3820 = !DILocalVariable(name: "res", arg: 2, scope: !3817, file: !1, line: 803, type: !63)
!3821 = !DILocation(line: 803, column: 60, scope: !3817)
!3822 = !DILocation(line: 806, column: 1, scope: !3817)
!3823 = distinct !DISubprogram(name: "dev_to_node", scope: !28, file: !28, line: 630, type: !1624, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3824 = !DILocalVariable(name: "dev", arg: 1, scope: !3823, file: !28, line: 630, type: !78)
!3825 = !DILocation(line: 630, column: 46, scope: !3823)
!3826 = !DILocation(line: 632, column: 2, scope: !3823)
!3827 = distinct !DISubprogram(name: "devm_krealloc", scope: !1, file: !1, line: 864, type: !3828, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!63, !78, !63, !187, !61}
!3830 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 926, column: 2, scope: !3827)
!3832 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !3831)
!3833 = !DILocation(line: 407, column: 64, scope: !2094, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 918, column: 3, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !1, line: 917, column: 15)
!3836 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 917, column: 6)
!3837 = !DILocation(line: 407, column: 84, scope: !2094, inlinedAt: !3834)
!3838 = !DILocation(line: 327, column: 67, scope: !2104, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 914, column: 2, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 914, column: 2)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 914, column: 2)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !1, line: 914, column: 2)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !1, line: 914, column: 2)
!3844 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 914, column: 2)
!3845 = !DILocation(line: 102, column: 62, scope: !2019, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 905, column: 11, scope: !3827)
!3847 = !DILocation(line: 103, column: 14, scope: !2019, inlinedAt: !3846)
!3848 = !DILocation(line: 103, column: 26, scope: !2019, inlinedAt: !3846)
!3849 = !DILocation(line: 103, column: 35, scope: !2019, inlinedAt: !3846)
!3850 = !DILocation(line: 105, column: 9, scope: !2019, inlinedAt: !3846)
!3851 = !DILocation(line: 106, column: 17, scope: !2019, inlinedAt: !3846)
!3852 = !DILocalVariable(name: "dev", arg: 1, scope: !3827, file: !1, line: 864, type: !78)
!3853 = !DILocation(line: 864, column: 36, scope: !3827)
!3854 = !DILocalVariable(name: "ptr", arg: 2, scope: !3827, file: !1, line: 864, type: !63)
!3855 = !DILocation(line: 864, column: 47, scope: !3827)
!3856 = !DILocalVariable(name: "new_size", arg: 3, scope: !3827, file: !1, line: 864, type: !187)
!3857 = !DILocation(line: 864, column: 59, scope: !3827)
!3858 = !DILocalVariable(name: "gfp", arg: 4, scope: !3827, file: !1, line: 864, type: !61)
!3859 = !DILocation(line: 864, column: 75, scope: !3827)
!3860 = !DILocalVariable(name: "total_new_size", scope: !3827, file: !1, line: 866, type: !187)
!3861 = !DILocation(line: 866, column: 9, scope: !3827)
!3862 = !DILocalVariable(name: "total_old_size", scope: !3827, file: !1, line: 866, type: !187)
!3863 = !DILocation(line: 866, column: 25, scope: !3827)
!3864 = !DILocalVariable(name: "old_dr", scope: !3827, file: !1, line: 867, type: !1991)
!3865 = !DILocation(line: 867, column: 17, scope: !3827)
!3866 = !DILocalVariable(name: "new_dr", scope: !3827, file: !1, line: 867, type: !1991)
!3867 = !DILocation(line: 867, column: 26, scope: !3827)
!3868 = !DILocalVariable(name: "flags", scope: !3827, file: !1, line: 868, type: !190)
!3869 = !DILocation(line: 868, column: 16, scope: !3827)
!3870 = !DILocation(line: 870, column: 6, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 870, column: 6)
!3872 = !DILocation(line: 870, column: 6, scope: !3827)
!3873 = !DILocation(line: 871, column: 14, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3871, file: !1, line: 870, column: 27)
!3875 = !DILocation(line: 871, column: 19, scope: !3874)
!3876 = !DILocation(line: 871, column: 3, scope: !3874)
!3877 = !DILocation(line: 872, column: 3, scope: !3874)
!3878 = !DILocation(line: 875, column: 6, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 875, column: 6)
!3880 = !DILocation(line: 875, column: 6, scope: !3827)
!3881 = !DILocation(line: 876, column: 23, scope: !3879)
!3882 = !DILocation(line: 876, column: 28, scope: !3879)
!3883 = !DILocation(line: 876, column: 38, scope: !3879)
!3884 = !DILocation(line: 876, column: 10, scope: !3879)
!3885 = !DILocation(line: 876, column: 3, scope: !3879)
!3886 = !DILocalVariable(name: "__ret_warn_on", scope: !3887, file: !1, line: 878, type: !124)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !1, line: 878, column: 6)
!3888 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 878, column: 6)
!3889 = !DILocation(line: 878, column: 6, scope: !3887)
!3890 = !DILocation(line: 878, column: 6, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !1, line: 878, column: 6)
!3892 = !DILocation(line: 878, column: 6, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 878, column: 6)
!3894 = !DILocation(line: 878, column: 6, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 878, column: 6)
!3896 = !DILocation(line: 878, column: 6, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 878, column: 6)
!3898 = !{i32 -2143451434, i32 -2143451405, i32 -2143451359, i32 -2143451301, i32 -2143451247, i32 -2143451193, i32 -2143451138, i32 -2143451107}
!3899 = !DILocation(line: 878, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 878, column: 6)
!3901 = !{i32 -2143450704, i32 -2143450697, i32 -2143450645, i32 -2143450614, i32 -2143450584}
!3902 = !DILocation(line: 878, column: 6, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 878, column: 6)
!3904 = !DILocation(line: 878, column: 6, scope: !3888)
!3905 = !DILocation(line: 878, column: 6, scope: !3827)
!3906 = !DILocation(line: 883, column: 3, scope: !3888)
!3907 = !DILocation(line: 885, column: 21, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 885, column: 6)
!3909 = !DILocation(line: 885, column: 7, scope: !3908)
!3910 = !DILocation(line: 885, column: 6, scope: !3827)
!3911 = !DILocation(line: 886, column: 3, scope: !3908)
!3912 = !DILocalVariable(name: "__mptr", scope: !3913, file: !1, line: 888, type: !63)
!3913 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 888, column: 25)
!3914 = !DILocation(line: 888, column: 25, scope: !3913)
!3915 = !DILocation(line: 888, column: 25, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !1, line: 888, column: 25)
!3917 = !DILocation(line: 888, column: 25, scope: !3827)
!3918 = !DILocation(line: 888, column: 19, scope: !3827)
!3919 = !DILocation(line: 888, column: 17, scope: !3827)
!3920 = !DILocation(line: 889, column: 6, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 889, column: 6)
!3922 = !DILocation(line: 889, column: 21, scope: !3921)
!3923 = !DILocation(line: 889, column: 6, scope: !3827)
!3924 = !DILocalVariable(name: "__ret_warn_on", scope: !3925, file: !1, line: 890, type: !124)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !1, line: 890, column: 3)
!3926 = distinct !DILexicalBlock(scope: !3921, file: !1, line: 889, column: 27)
!3927 = !DILocation(line: 890, column: 3, scope: !3925)
!3928 = !DILocation(line: 890, column: 3, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !1, line: 890, column: 3)
!3930 = !DILocation(line: 890, column: 3, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3929, file: !1, line: 890, column: 3)
!3932 = !DILocation(line: 890, column: 3, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3931, file: !1, line: 890, column: 3)
!3934 = !DILocation(line: 890, column: 3, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !1, line: 890, column: 3)
!3936 = !DILocation(line: 890, column: 3, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 890, column: 3)
!3938 = !DILocation(line: 890, column: 3, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 890, column: 3)
!3940 = !{i32 -2143448277, i32 -2143448248, i32 -2143448202, i32 -2143448144, i32 -2143448090, i32 -2143448036, i32 -2143447981, i32 -2143447950}
!3941 = !DILocation(line: 890, column: 3, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 890, column: 3)
!3943 = !{i32 -2143447536, i32 -2143447529, i32 -2143447477, i32 -2143447446, i32 -2143447416}
!3944 = !DILocation(line: 890, column: 3, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 890, column: 3)
!3946 = !DILocation(line: 890, column: 3, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3931, file: !1, line: 890, column: 3)
!3948 = !DILocation(line: 891, column: 3, scope: !3926)
!3949 = !DILocation(line: 898, column: 6, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 898, column: 6)
!3951 = !DILocation(line: 898, column: 24, scope: !3950)
!3952 = !DILocation(line: 898, column: 21, scope: !3950)
!3953 = !DILocation(line: 898, column: 6, scope: !3827)
!3954 = !DILocation(line: 899, column: 10, scope: !3950)
!3955 = !DILocation(line: 899, column: 3, scope: !3950)
!3956 = !DILocation(line: 906, column: 6, scope: !3827)
!3957 = !DILocation(line: 906, column: 22, scope: !3827)
!3958 = !DILocation(line: 906, column: 39, scope: !3827)
!3959 = !DILocation(line: 906, column: 27, scope: !3827)
!3960 = !DILocation(line: 108, column: 21, scope: !2050, inlinedAt: !3846)
!3961 = !DILocation(line: 108, column: 7, scope: !2050, inlinedAt: !3846)
!3962 = !DILocation(line: 108, column: 6, scope: !2019, inlinedAt: !3846)
!3963 = !DILocation(line: 109, column: 3, scope: !2050, inlinedAt: !3846)
!3964 = !DILocation(line: 111, column: 7, scope: !2019, inlinedAt: !3846)
!3965 = !DILocation(line: 111, column: 5, scope: !2019, inlinedAt: !3846)
!3966 = !DILocation(line: 112, column: 6, scope: !2057, inlinedAt: !3846)
!3967 = !DILocation(line: 112, column: 6, scope: !2019, inlinedAt: !3846)
!3968 = !DILocation(line: 113, column: 3, scope: !2057, inlinedAt: !3846)
!3969 = !DILocation(line: 115, column: 9, scope: !2019, inlinedAt: !3846)
!3970 = !DILocation(line: 115, column: 2, scope: !2019, inlinedAt: !3846)
!3971 = !DILocation(line: 117, column: 18, scope: !2019, inlinedAt: !3846)
!3972 = !DILocation(line: 117, column: 22, scope: !2019, inlinedAt: !3846)
!3973 = !DILocation(line: 117, column: 27, scope: !2019, inlinedAt: !3846)
!3974 = !DILocation(line: 117, column: 2, scope: !2019, inlinedAt: !3846)
!3975 = !DILocation(line: 118, column: 21, scope: !2019, inlinedAt: !3846)
!3976 = !DILocation(line: 118, column: 2, scope: !2019, inlinedAt: !3846)
!3977 = !DILocation(line: 118, column: 6, scope: !2019, inlinedAt: !3846)
!3978 = !DILocation(line: 118, column: 11, scope: !2019, inlinedAt: !3846)
!3979 = !DILocation(line: 118, column: 19, scope: !2019, inlinedAt: !3846)
!3980 = !DILocation(line: 119, column: 9, scope: !2019, inlinedAt: !3846)
!3981 = !DILocation(line: 119, column: 2, scope: !2019, inlinedAt: !3846)
!3982 = !DILocation(line: 120, column: 1, scope: !2019, inlinedAt: !3846)
!3983 = !DILocation(line: 905, column: 9, scope: !3827)
!3984 = !DILocation(line: 907, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3827, file: !1, line: 907, column: 6)
!3986 = !DILocation(line: 907, column: 6, scope: !3827)
!3987 = !DILocation(line: 908, column: 3, scope: !3985)
!3988 = !DILocation(line: 914, column: 2, scope: !3827)
!3989 = !DILocation(line: 914, column: 2, scope: !3844)
!3990 = !DILocalVariable(name: "__dummy", scope: !3991, file: !1, line: 914, type: !190)
!3991 = distinct !DILexicalBlock(scope: !3843, file: !1, line: 914, column: 2)
!3992 = !DILocation(line: 914, column: 2, scope: !3991)
!3993 = !DILocalVariable(name: "__dummy2", scope: !3991, file: !1, line: 914, type: !190)
!3994 = !DILocation(line: 914, column: 2, scope: !3843)
!3995 = !DILocation(line: 914, column: 2, scope: !3842)
!3996 = !DILocation(line: 914, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 914, column: 2)
!3998 = !DILocalVariable(name: "__dummy", scope: !3999, file: !1, line: 914, type: !190)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !1, line: 914, column: 2)
!4000 = distinct !DILexicalBlock(scope: !3997, file: !1, line: 914, column: 2)
!4001 = !DILocation(line: 914, column: 2, scope: !3999)
!4002 = !DILocalVariable(name: "__dummy2", scope: !3999, file: !1, line: 914, type: !190)
!4003 = !DILocation(line: 914, column: 2, scope: !4000)
!4004 = !DILocation(line: 914, column: 2, scope: !3841)
!4005 = !{i32 -2143446365}
!4006 = !DILocation(line: 914, column: 2, scope: !3840)
!4007 = !DILocation(line: 329, column: 10, scope: !2104, inlinedAt: !3839)
!4008 = !DILocation(line: 329, column: 16, scope: !2104, inlinedAt: !3839)
!4009 = !DILocation(line: 916, column: 19, scope: !3827)
!4010 = !DILocation(line: 916, column: 66, scope: !3827)
!4011 = !DILocation(line: 916, column: 11, scope: !3827)
!4012 = !DILocation(line: 916, column: 9, scope: !3827)
!4013 = !DILocation(line: 917, column: 7, scope: !3836)
!4014 = !DILocation(line: 917, column: 6, scope: !3827)
!4015 = !DILocation(line: 918, column: 27, scope: !3835)
!4016 = !DILocation(line: 918, column: 32, scope: !3835)
!4017 = !DILocation(line: 918, column: 45, scope: !3835)
!4018 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !3834)
!4019 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !3834)
!4020 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !3834)
!4021 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !3834)
!4022 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !3834)
!4023 = !DILocation(line: 919, column: 9, scope: !3835)
!4024 = !DILocation(line: 919, column: 3, scope: !3835)
!4025 = !DILocalVariable(name: "__ret_warn_on", scope: !4026, file: !1, line: 920, type: !124)
!4026 = distinct !DILexicalBlock(scope: !3835, file: !1, line: 920, column: 3)
!4027 = !DILocation(line: 920, column: 3, scope: !4026)
!4028 = !DILocation(line: 920, column: 3, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4026, file: !1, line: 920, column: 3)
!4030 = !DILocation(line: 920, column: 3, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4029, file: !1, line: 920, column: 3)
!4032 = !DILocation(line: 920, column: 3, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4031, file: !1, line: 920, column: 3)
!4034 = !DILocation(line: 920, column: 3, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4031, file: !1, line: 920, column: 3)
!4036 = !DILocation(line: 920, column: 3, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 920, column: 3)
!4038 = !DILocation(line: 920, column: 3, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 920, column: 3)
!4040 = !{i32 -2143445426, i32 -2143445397, i32 -2143445351, i32 -2143445293, i32 -2143445239, i32 -2143445185, i32 -2143445130, i32 -2143445099}
!4041 = !DILocation(line: 920, column: 3, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 920, column: 3)
!4043 = !{i32 -2143444685, i32 -2143444678, i32 -2143444626, i32 -2143444595, i32 -2143444565}
!4044 = !DILocation(line: 920, column: 3, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 920, column: 3)
!4046 = !DILocation(line: 920, column: 3, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4031, file: !1, line: 920, column: 3)
!4048 = !DILocation(line: 921, column: 3, scope: !3835)
!4049 = !DILocation(line: 924, column: 13, scope: !3827)
!4050 = !DILocation(line: 924, column: 19, scope: !3827)
!4051 = !DILocation(line: 924, column: 27, scope: !3827)
!4052 = !DILocation(line: 924, column: 34, scope: !3827)
!4053 = !DILocation(line: 924, column: 42, scope: !3827)
!4054 = !DILocation(line: 924, column: 2, scope: !3827)
!4055 = !DILocation(line: 926, column: 26, scope: !3827)
!4056 = !DILocation(line: 926, column: 31, scope: !3827)
!4057 = !DILocation(line: 926, column: 44, scope: !3827)
!4058 = !DILocation(line: 409, column: 2, scope: !2214, inlinedAt: !3831)
!4059 = !DILocation(line: 409, column: 2, scope: !2219, inlinedAt: !3831)
!4060 = !DILocation(line: 409, column: 2, scope: !2220, inlinedAt: !3831)
!4061 = !DILocation(line: 409, column: 2, scope: !2227, inlinedAt: !3831)
!4062 = !DILocation(line: 409, column: 2, scope: !2230, inlinedAt: !3831)
!4063 = !DILocation(line: 932, column: 9, scope: !3827)
!4064 = !DILocation(line: 932, column: 17, scope: !3827)
!4065 = !DILocation(line: 932, column: 2, scope: !3827)
!4066 = !DILocation(line: 932, column: 23, scope: !3827)
!4067 = !DILocation(line: 932, column: 31, scope: !3827)
!4068 = !DILocation(line: 933, column: 9, scope: !3827)
!4069 = !DILocation(line: 933, column: 24, scope: !3827)
!4070 = !DILocation(line: 939, column: 8, scope: !3827)
!4071 = !DILocation(line: 939, column: 2, scope: !3827)
!4072 = !DILocation(line: 941, column: 9, scope: !3827)
!4073 = !DILocation(line: 941, column: 17, scope: !3827)
!4074 = !DILocation(line: 941, column: 2, scope: !3827)
!4075 = !DILocation(line: 942, column: 1, scope: !3827)
!4076 = distinct !DISubprogram(name: "devm_kfree", scope: !1, file: !1, line: 1056, type: !4077, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !78, !1374}
!4079 = !DILocalVariable(name: "dev", arg: 1, scope: !4076, file: !1, line: 1056, type: !78)
!4080 = !DILocation(line: 1056, column: 32, scope: !4076)
!4081 = !DILocalVariable(name: "p", arg: 2, scope: !4076, file: !1, line: 1056, type: !1374)
!4082 = !DILocation(line: 1056, column: 49, scope: !4076)
!4083 = !DILocalVariable(name: "rc", scope: !4076, file: !1, line: 1058, type: !124)
!4084 = !DILocation(line: 1058, column: 6, scope: !4076)
!4085 = !DILocation(line: 1064, column: 6, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4076, file: !1, line: 1064, column: 6)
!4087 = !DILocation(line: 1064, column: 6, scope: !4076)
!4088 = !DILocation(line: 1065, column: 3, scope: !4086)
!4089 = !DILocation(line: 1067, column: 22, scope: !4076)
!4090 = !DILocation(line: 1068, column: 36, scope: !4076)
!4091 = !DILocation(line: 1067, column: 7, scope: !4076)
!4092 = !DILocation(line: 1067, column: 5, scope: !4076)
!4093 = !DILocalVariable(name: "__ret_warn_on", scope: !4094, file: !1, line: 1069, type: !124)
!4094 = distinct !DILexicalBlock(scope: !4076, file: !1, line: 1069, column: 2)
!4095 = !DILocation(line: 1069, column: 2, scope: !4094)
!4096 = !DILocation(line: 1069, column: 2, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4094, file: !1, line: 1069, column: 2)
!4098 = !DILocation(line: 1069, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !1, line: 1069, column: 2)
!4100 = !DILocation(line: 1069, column: 2, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 1069, column: 2)
!4102 = !DILocation(line: 1069, column: 2, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 1069, column: 2)
!4104 = !{i32 -2143443052, i32 -2143443023, i32 -2143442977, i32 -2143442919, i32 -2143442865, i32 -2143442811, i32 -2143442756, i32 -2143442725}
!4105 = !DILocation(line: 1069, column: 2, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 1069, column: 2)
!4107 = !{i32 -2143442321, i32 -2143442314, i32 -2143442262, i32 -2143442231, i32 -2143442201}
!4108 = !DILocation(line: 1069, column: 2, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 1069, column: 2)
!4110 = !DILocation(line: 1070, column: 1, scope: !4076)
!4111 = distinct !DISubprogram(name: "is_kernel_rodata", scope: !4112, file: !4112, line: 169, type: !4113, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4112 = !DIFile(filename: "./include/asm-generic/sections.h", directory: "/home/lizy2001/genbc/linux")
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!983, !190}
!4115 = !DILocalVariable(name: "addr", arg: 1, scope: !4111, file: !4112, line: 169, type: !190)
!4116 = !DILocation(line: 169, column: 51, scope: !4111)
!4117 = !DILocation(line: 171, column: 9, scope: !4111)
!4118 = !DILocation(line: 171, column: 14, scope: !4111)
!4119 = !DILocation(line: 171, column: 47, scope: !4111)
!4120 = !DILocation(line: 172, column: 9, scope: !4111)
!4121 = !DILocation(line: 172, column: 14, scope: !4111)
!4122 = !DILocation(line: 0, scope: !4111)
!4123 = !DILocation(line: 171, column: 2, scope: !4111)
!4124 = distinct !DISubprogram(name: "check_dr_size", scope: !1, file: !1, line: 92, type: !4125, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!983, !187, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!4128 = !DILocalVariable(name: "size", arg: 1, scope: !4124, file: !1, line: 92, type: !187)
!4129 = !DILocation(line: 92, column: 34, scope: !4124)
!4130 = !DILocalVariable(name: "tot_size", arg: 2, scope: !4124, file: !1, line: 92, type: !4127)
!4131 = !DILocation(line: 92, column: 48, scope: !4124)
!4132 = !DILocalVariable(name: "__a", scope: !4133, file: !1, line: 95, type: !190)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !1, line: 95, column: 6)
!4134 = distinct !DILexicalBlock(scope: !4124, file: !1, line: 95, column: 6)
!4135 = !DILocation(line: 95, column: 6, scope: !4133)
!4136 = !DILocalVariable(name: "__b", scope: !4133, file: !1, line: 95, type: !187)
!4137 = !DILocalVariable(name: "__d", scope: !4133, file: !1, line: 95, type: !4127)
!4138 = !DILocation(line: 95, column: 6, scope: !4134)
!4139 = !DILocation(line: 95, column: 6, scope: !4124)
!4140 = !DILocation(line: 97, column: 3, scope: !4134)
!4141 = !DILocation(line: 99, column: 2, scope: !4124)
!4142 = !DILocation(line: 100, column: 1, scope: !4124)
!4143 = distinct !DISubprogram(name: "devm_kmalloc_match", scope: !1, file: !1, line: 808, type: !2088, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4144 = !DILocalVariable(name: "dev", arg: 1, scope: !4143, file: !1, line: 808, type: !78)
!4145 = !DILocation(line: 808, column: 46, scope: !4143)
!4146 = !DILocalVariable(name: "res", arg: 2, scope: !4143, file: !1, line: 808, type: !63)
!4147 = !DILocation(line: 808, column: 57, scope: !4143)
!4148 = !DILocalVariable(name: "data", arg: 3, scope: !4143, file: !1, line: 808, type: !63)
!4149 = !DILocation(line: 808, column: 68, scope: !4143)
!4150 = !DILocation(line: 810, column: 9, scope: !4143)
!4151 = !DILocation(line: 810, column: 16, scope: !4143)
!4152 = !DILocation(line: 810, column: 13, scope: !4143)
!4153 = !DILocation(line: 810, column: 2, scope: !4143)
!4154 = distinct !DISubprogram(name: "replace_dr", scope: !1, file: !1, line: 129, type: !4155, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !78, !64, !64}
!4157 = !DILocalVariable(name: "dev", arg: 1, scope: !4154, file: !1, line: 129, type: !78)
!4158 = !DILocation(line: 129, column: 39, scope: !4154)
!4159 = !DILocalVariable(name: "old", arg: 2, scope: !4154, file: !1, line: 130, type: !64)
!4160 = !DILocation(line: 130, column: 30, scope: !4154)
!4161 = !DILocalVariable(name: "new", arg: 3, scope: !4154, file: !1, line: 130, type: !64)
!4162 = !DILocation(line: 130, column: 55, scope: !4154)
!4163 = !DILocation(line: 132, column: 2, scope: !4154)
!4164 = !DILocation(line: 132, column: 2, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4154, file: !1, line: 132, column: 2)
!4166 = !DILocation(line: 133, column: 2, scope: !4154)
!4167 = !DILocation(line: 133, column: 2, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !1, line: 133, column: 2)
!4169 = distinct !DILexicalBlock(scope: !4154, file: !1, line: 133, column: 2)
!4170 = !DILocation(line: 133, column: 2, scope: !4169)
!4171 = !DILocation(line: 133, column: 2, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4168, file: !1, line: 133, column: 2)
!4173 = !DILocation(line: 133, column: 2, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 133, column: 2)
!4175 = !DILocation(line: 133, column: 2, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 133, column: 2)
!4177 = !{i32 -2143509664, i32 -2143509635, i32 -2143509589, i32 -2143509531, i32 -2143509477, i32 -2143509423, i32 -2143509368, i32 -2143509337}
!4178 = !DILocation(line: 133, column: 2, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !1, line: 133, column: 2)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 133, column: 2)
!4181 = !{i32 -2143508893, i32 -2143508886, i32 -2143508832, i32 -2143508801, i32 -2143508771}
!4182 = !DILocation(line: 133, column: 2, scope: !4180)
!4183 = !DILocation(line: 134, column: 16, scope: !4154)
!4184 = !DILocation(line: 134, column: 21, scope: !4154)
!4185 = !DILocation(line: 134, column: 29, scope: !4154)
!4186 = !DILocation(line: 134, column: 34, scope: !4154)
!4187 = !DILocation(line: 134, column: 2, scope: !4154)
!4188 = !DILocation(line: 135, column: 1, scope: !4154)
!4189 = distinct !DISubprogram(name: "devm_kstrdup", scope: !1, file: !1, line: 955, type: !4190, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!140, !78, !86, !61}
!4192 = !DILocalVariable(name: "dev", arg: 1, scope: !4189, file: !1, line: 955, type: !78)
!4193 = !DILocation(line: 955, column: 35, scope: !4189)
!4194 = !DILocalVariable(name: "s", arg: 2, scope: !4189, file: !1, line: 955, type: !86)
!4195 = !DILocation(line: 955, column: 52, scope: !4189)
!4196 = !DILocalVariable(name: "gfp", arg: 3, scope: !4189, file: !1, line: 955, type: !61)
!4197 = !DILocation(line: 955, column: 61, scope: !4189)
!4198 = !DILocalVariable(name: "size", scope: !4189, file: !1, line: 957, type: !187)
!4199 = !DILocation(line: 957, column: 9, scope: !4189)
!4200 = !DILocalVariable(name: "buf", scope: !4189, file: !1, line: 958, type: !140)
!4201 = !DILocation(line: 958, column: 8, scope: !4189)
!4202 = !DILocation(line: 960, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4189, file: !1, line: 960, column: 6)
!4204 = !DILocation(line: 960, column: 6, scope: !4189)
!4205 = !DILocation(line: 961, column: 3, scope: !4203)
!4206 = !DILocation(line: 963, column: 16, scope: !4189)
!4207 = !DILocation(line: 963, column: 9, scope: !4189)
!4208 = !DILocation(line: 963, column: 19, scope: !4189)
!4209 = !DILocation(line: 963, column: 7, scope: !4189)
!4210 = !DILocation(line: 964, column: 21, scope: !4189)
!4211 = !DILocation(line: 964, column: 26, scope: !4189)
!4212 = !DILocation(line: 964, column: 32, scope: !4189)
!4213 = !DILocation(line: 964, column: 8, scope: !4189)
!4214 = !DILocation(line: 964, column: 6, scope: !4189)
!4215 = !DILocation(line: 965, column: 6, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4189, file: !1, line: 965, column: 6)
!4217 = !DILocation(line: 965, column: 6, scope: !4189)
!4218 = !DILocation(line: 966, column: 10, scope: !4216)
!4219 = !DILocation(line: 966, column: 15, scope: !4216)
!4220 = !DILocation(line: 966, column: 18, scope: !4216)
!4221 = !DILocation(line: 966, column: 3, scope: !4216)
!4222 = !DILocation(line: 967, column: 9, scope: !4189)
!4223 = !DILocation(line: 967, column: 2, scope: !4189)
!4224 = !DILocation(line: 968, column: 1, scope: !4189)
!4225 = distinct !DISubprogram(name: "devm_kstrdup_const", scope: !1, file: !1, line: 984, type: !4226, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!86, !78, !86, !61}
!4228 = !DILocalVariable(name: "dev", arg: 1, scope: !4225, file: !1, line: 984, type: !78)
!4229 = !DILocation(line: 984, column: 47, scope: !4225)
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4225, file: !1, line: 984, type: !86)
!4231 = !DILocation(line: 984, column: 64, scope: !4225)
!4232 = !DILocalVariable(name: "gfp", arg: 3, scope: !4225, file: !1, line: 984, type: !61)
!4233 = !DILocation(line: 984, column: 73, scope: !4225)
!4234 = !DILocation(line: 986, column: 38, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4225, file: !1, line: 986, column: 6)
!4236 = !DILocation(line: 986, column: 23, scope: !4235)
!4237 = !DILocation(line: 986, column: 6, scope: !4235)
!4238 = !DILocation(line: 986, column: 6, scope: !4225)
!4239 = !DILocation(line: 987, column: 10, scope: !4235)
!4240 = !DILocation(line: 987, column: 3, scope: !4235)
!4241 = !DILocation(line: 989, column: 22, scope: !4225)
!4242 = !DILocation(line: 989, column: 27, scope: !4225)
!4243 = !DILocation(line: 989, column: 30, scope: !4225)
!4244 = !DILocation(line: 989, column: 9, scope: !4225)
!4245 = !DILocation(line: 989, column: 2, scope: !4225)
!4246 = !DILocation(line: 990, column: 1, scope: !4225)
!4247 = distinct !DISubprogram(name: "devm_kvasprintf", scope: !1, file: !1, line: 1004, type: !4248, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!140, !78, !61, !86, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 990, size: 192, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4256}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4251, file: !1, line: 990, baseType: !5, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4251, file: !1, line: 990, baseType: !5, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4251, file: !1, line: 990, baseType: !63, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4251, file: !1, line: 990, baseType: !63, size: 64, offset: 128)
!4257 = !DILocalVariable(name: "dev", arg: 1, scope: !4247, file: !1, line: 1004, type: !78)
!4258 = !DILocation(line: 1004, column: 38, scope: !4247)
!4259 = !DILocalVariable(name: "gfp", arg: 2, scope: !4247, file: !1, line: 1004, type: !61)
!4260 = !DILocation(line: 1004, column: 49, scope: !4247)
!4261 = !DILocalVariable(name: "fmt", arg: 3, scope: !4247, file: !1, line: 1004, type: !86)
!4262 = !DILocation(line: 1004, column: 66, scope: !4247)
!4263 = !DILocalVariable(name: "ap", arg: 4, scope: !4247, file: !1, line: 1005, type: !4250)
!4264 = !DILocation(line: 1005, column: 17, scope: !4247)
!4265 = !DILocalVariable(name: "len", scope: !4247, file: !1, line: 1007, type: !5)
!4266 = !DILocation(line: 1007, column: 15, scope: !4247)
!4267 = !DILocalVariable(name: "p", scope: !4247, file: !1, line: 1008, type: !140)
!4268 = !DILocation(line: 1008, column: 8, scope: !4247)
!4269 = !DILocalVariable(name: "aq", scope: !4247, file: !1, line: 1009, type: !4270)
!4270 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4271, line: 99, baseType: !4272)
!4271 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4271, line: 40, baseType: !4273)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 1009, baseType: !4274)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4251, size: 192, elements: !570)
!4275 = !DILocation(line: 1009, column: 10, scope: !4247)
!4276 = !DILocation(line: 1011, column: 2, scope: !4247)
!4277 = !DILocation(line: 1012, column: 27, scope: !4247)
!4278 = !DILocation(line: 1012, column: 32, scope: !4247)
!4279 = !DILocation(line: 1012, column: 8, scope: !4247)
!4280 = !DILocation(line: 1012, column: 6, scope: !4247)
!4281 = !DILocation(line: 1013, column: 2, scope: !4247)
!4282 = !DILocation(line: 1015, column: 19, scope: !4247)
!4283 = !DILocation(line: 1015, column: 24, scope: !4247)
!4284 = !DILocation(line: 1015, column: 27, scope: !4247)
!4285 = !DILocation(line: 1015, column: 31, scope: !4247)
!4286 = !DILocation(line: 1015, column: 6, scope: !4247)
!4287 = !DILocation(line: 1015, column: 4, scope: !4247)
!4288 = !DILocation(line: 1016, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4247, file: !1, line: 1016, column: 6)
!4290 = !DILocation(line: 1016, column: 6, scope: !4247)
!4291 = !DILocation(line: 1017, column: 3, scope: !4289)
!4292 = !DILocation(line: 1019, column: 12, scope: !4247)
!4293 = !DILocation(line: 1019, column: 15, scope: !4247)
!4294 = !DILocation(line: 1019, column: 18, scope: !4247)
!4295 = !DILocation(line: 1019, column: 22, scope: !4247)
!4296 = !DILocation(line: 1019, column: 27, scope: !4247)
!4297 = !DILocation(line: 1019, column: 2, scope: !4247)
!4298 = !DILocation(line: 1021, column: 9, scope: !4247)
!4299 = !DILocation(line: 1021, column: 2, scope: !4247)
!4300 = !DILocation(line: 1022, column: 1, scope: !4247)
!4301 = distinct !DISubprogram(name: "devm_kasprintf", scope: !1, file: !1, line: 1036, type: !4302, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!140, !78, !61, !86, null}
!4304 = !DILocalVariable(name: "dev", arg: 1, scope: !4301, file: !1, line: 1036, type: !78)
!4305 = !DILocation(line: 1036, column: 37, scope: !4301)
!4306 = !DILocalVariable(name: "gfp", arg: 2, scope: !4301, file: !1, line: 1036, type: !61)
!4307 = !DILocation(line: 1036, column: 48, scope: !4301)
!4308 = !DILocalVariable(name: "fmt", arg: 3, scope: !4301, file: !1, line: 1036, type: !86)
!4309 = !DILocation(line: 1036, column: 65, scope: !4301)
!4310 = !DILocalVariable(name: "ap", scope: !4301, file: !1, line: 1038, type: !4270)
!4311 = !DILocation(line: 1038, column: 10, scope: !4301)
!4312 = !DILocalVariable(name: "p", scope: !4301, file: !1, line: 1039, type: !140)
!4313 = !DILocation(line: 1039, column: 8, scope: !4301)
!4314 = !DILocation(line: 1041, column: 2, scope: !4301)
!4315 = !DILocation(line: 1042, column: 22, scope: !4301)
!4316 = !DILocation(line: 1042, column: 27, scope: !4301)
!4317 = !DILocation(line: 1042, column: 32, scope: !4301)
!4318 = !DILocation(line: 1042, column: 37, scope: !4301)
!4319 = !DILocation(line: 1042, column: 6, scope: !4301)
!4320 = !DILocation(line: 1042, column: 4, scope: !4301)
!4321 = !DILocation(line: 1043, column: 2, scope: !4301)
!4322 = !DILocation(line: 1045, column: 9, scope: !4301)
!4323 = !DILocation(line: 1045, column: 2, scope: !4301)
!4324 = distinct !DISubprogram(name: "devm_kmemdup", scope: !1, file: !1, line: 1082, type: !4325, scopeLine: 1083, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!63, !78, !1374, !187, !61}
!4327 = !DILocalVariable(name: "dev", arg: 1, scope: !4324, file: !1, line: 1082, type: !78)
!4328 = !DILocation(line: 1082, column: 35, scope: !4324)
!4329 = !DILocalVariable(name: "src", arg: 2, scope: !4324, file: !1, line: 1082, type: !1374)
!4330 = !DILocation(line: 1082, column: 52, scope: !4324)
!4331 = !DILocalVariable(name: "len", arg: 3, scope: !4324, file: !1, line: 1082, type: !187)
!4332 = !DILocation(line: 1082, column: 64, scope: !4324)
!4333 = !DILocalVariable(name: "gfp", arg: 4, scope: !4324, file: !1, line: 1082, type: !61)
!4334 = !DILocation(line: 1082, column: 75, scope: !4324)
!4335 = !DILocalVariable(name: "p", scope: !4324, file: !1, line: 1084, type: !63)
!4336 = !DILocation(line: 1084, column: 8, scope: !4324)
!4337 = !DILocation(line: 1086, column: 19, scope: !4324)
!4338 = !DILocation(line: 1086, column: 24, scope: !4324)
!4339 = !DILocation(line: 1086, column: 29, scope: !4324)
!4340 = !DILocation(line: 1086, column: 6, scope: !4324)
!4341 = !DILocation(line: 1086, column: 4, scope: !4324)
!4342 = !DILocation(line: 1087, column: 6, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 1087, column: 6)
!4344 = !DILocation(line: 1087, column: 6, scope: !4324)
!4345 = !DILocation(line: 1088, column: 10, scope: !4343)
!4346 = !DILocation(line: 1088, column: 13, scope: !4343)
!4347 = !DILocation(line: 1088, column: 18, scope: !4343)
!4348 = !DILocation(line: 1088, column: 3, scope: !4343)
!4349 = !DILocation(line: 1090, column: 9, scope: !4324)
!4350 = !DILocation(line: 1090, column: 2, scope: !4324)
!4351 = distinct !DISubprogram(name: "devm_get_free_pages", scope: !1, file: !1, line: 1127, type: !4352, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!190, !78, !61, !5}
!4354 = !DILocalVariable(name: "dev", arg: 1, scope: !4351, file: !1, line: 1127, type: !78)
!4355 = !DILocation(line: 1127, column: 50, scope: !4351)
!4356 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !4351, file: !1, line: 1128, type: !61)
!4357 = !DILocation(line: 1128, column: 13, scope: !4351)
!4358 = !DILocalVariable(name: "order", arg: 3, scope: !4351, file: !1, line: 1128, type: !5)
!4359 = !DILocation(line: 1128, column: 36, scope: !4351)
!4360 = !DILocalVariable(name: "devres", scope: !4351, file: !1, line: 1130, type: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pages_devres", file: !1, line: 1094, size: 128, elements: !4363)
!4363 = !{!4364, !4365}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4362, file: !1, line: 1095, baseType: !190, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !4362, file: !1, line: 1096, baseType: !5, size: 32, offset: 64)
!4366 = !DILocation(line: 1130, column: 23, scope: !4351)
!4367 = !DILocalVariable(name: "addr", scope: !4351, file: !1, line: 1131, type: !190)
!4368 = !DILocation(line: 1131, column: 16, scope: !4351)
!4369 = !DILocation(line: 1133, column: 26, scope: !4351)
!4370 = !DILocation(line: 1133, column: 36, scope: !4351)
!4371 = !DILocation(line: 1133, column: 9, scope: !4351)
!4372 = !DILocation(line: 1133, column: 7, scope: !4351)
!4373 = !DILocation(line: 1135, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 1135, column: 6)
!4375 = !DILocation(line: 1135, column: 6, scope: !4351)
!4376 = !DILocation(line: 1136, column: 3, scope: !4374)
!4377 = !DILocation(line: 1138, column: 11, scope: !4351)
!4378 = !DILocation(line: 1138, column: 9, scope: !4351)
!4379 = !DILocation(line: 1140, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 1140, column: 6)
!4381 = !DILocation(line: 1140, column: 6, scope: !4351)
!4382 = !DILocation(line: 1141, column: 14, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 1140, column: 25)
!4384 = !DILocation(line: 1141, column: 20, scope: !4383)
!4385 = !DILocation(line: 1141, column: 3, scope: !4383)
!4386 = !DILocation(line: 1142, column: 3, scope: !4383)
!4387 = !DILocation(line: 1145, column: 17, scope: !4351)
!4388 = !DILocation(line: 1145, column: 2, scope: !4351)
!4389 = !DILocation(line: 1145, column: 10, scope: !4351)
!4390 = !DILocation(line: 1145, column: 15, scope: !4351)
!4391 = !DILocation(line: 1146, column: 18, scope: !4351)
!4392 = !DILocation(line: 1146, column: 2, scope: !4351)
!4393 = !DILocation(line: 1146, column: 10, scope: !4351)
!4394 = !DILocation(line: 1146, column: 16, scope: !4351)
!4395 = !DILocation(line: 1148, column: 13, scope: !4351)
!4396 = !DILocation(line: 1148, column: 18, scope: !4351)
!4397 = !DILocation(line: 1148, column: 2, scope: !4351)
!4398 = !DILocation(line: 1149, column: 9, scope: !4351)
!4399 = !DILocation(line: 1149, column: 2, scope: !4351)
!4400 = !DILocation(line: 1150, column: 1, scope: !4351)
!4401 = distinct !DISubprogram(name: "devm_pages_release", scope: !1, file: !1, line: 1107, type: !76, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4402 = !DILocalVariable(name: "dev", arg: 1, scope: !4401, file: !1, line: 1107, type: !78)
!4403 = !DILocation(line: 1107, column: 47, scope: !4401)
!4404 = !DILocalVariable(name: "res", arg: 2, scope: !4401, file: !1, line: 1107, type: !63)
!4405 = !DILocation(line: 1107, column: 58, scope: !4401)
!4406 = !DILocalVariable(name: "devres", scope: !4401, file: !1, line: 1109, type: !4361)
!4407 = !DILocation(line: 1109, column: 23, scope: !4401)
!4408 = !DILocation(line: 1109, column: 32, scope: !4401)
!4409 = !DILocation(line: 1111, column: 13, scope: !4401)
!4410 = !DILocation(line: 1111, column: 21, scope: !4401)
!4411 = !DILocation(line: 1111, column: 27, scope: !4401)
!4412 = !DILocation(line: 1111, column: 35, scope: !4401)
!4413 = !DILocation(line: 1111, column: 2, scope: !4401)
!4414 = !DILocation(line: 1112, column: 1, scope: !4401)
!4415 = distinct !DISubprogram(name: "devm_free_pages", scope: !1, file: !1, line: 1161, type: !4416, scopeLine: 1162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !78, !190}
!4418 = !DILocalVariable(name: "dev", arg: 1, scope: !4415, file: !1, line: 1161, type: !78)
!4419 = !DILocation(line: 1161, column: 37, scope: !4415)
!4420 = !DILocalVariable(name: "addr", arg: 2, scope: !4415, file: !1, line: 1161, type: !190)
!4421 = !DILocation(line: 1161, column: 56, scope: !4415)
!4422 = !DILocalVariable(name: "devres", scope: !4415, file: !1, line: 1163, type: !4362)
!4423 = !DILocation(line: 1163, column: 22, scope: !4415)
!4424 = !DILocation(line: 1163, column: 31, scope: !4415)
!4425 = !DILocation(line: 1163, column: 41, scope: !4415)
!4426 = !DILocalVariable(name: "__ret_warn_on", scope: !4427, file: !1, line: 1165, type: !124)
!4427 = distinct !DILexicalBlock(scope: !4415, file: !1, line: 1165, column: 2)
!4428 = !DILocation(line: 1165, column: 2, scope: !4427)
!4429 = !DILocation(line: 1165, column: 2, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !1, line: 1165, column: 2)
!4431 = !DILocation(line: 1165, column: 2, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 1165, column: 2)
!4433 = !DILocation(line: 1165, column: 2, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1165, column: 2)
!4435 = !DILocation(line: 1165, column: 2, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1165, column: 2)
!4437 = !{i32 -2143441021, i32 -2143440992, i32 -2143440946, i32 -2143440888, i32 -2143440834, i32 -2143440780, i32 -2143440725, i32 -2143440694}
!4438 = !DILocation(line: 1165, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1165, column: 2)
!4440 = !{i32 -2143440290, i32 -2143440283, i32 -2143440231, i32 -2143440200, i32 -2143440170}
!4441 = !DILocation(line: 1165, column: 2, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1165, column: 2)
!4443 = !DILocation(line: 1167, column: 1, scope: !4415)
!4444 = distinct !DISubprogram(name: "devm_pages_match", scope: !1, file: !1, line: 1099, type: !2088, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4445 = !DILocalVariable(name: "dev", arg: 1, scope: !4444, file: !1, line: 1099, type: !78)
!4446 = !DILocation(line: 1099, column: 44, scope: !4444)
!4447 = !DILocalVariable(name: "res", arg: 2, scope: !4444, file: !1, line: 1099, type: !63)
!4448 = !DILocation(line: 1099, column: 55, scope: !4444)
!4449 = !DILocalVariable(name: "p", arg: 3, scope: !4444, file: !1, line: 1099, type: !63)
!4450 = !DILocation(line: 1099, column: 66, scope: !4444)
!4451 = !DILocalVariable(name: "devres", scope: !4444, file: !1, line: 1101, type: !4361)
!4452 = !DILocation(line: 1101, column: 23, scope: !4444)
!4453 = !DILocation(line: 1101, column: 32, scope: !4444)
!4454 = !DILocalVariable(name: "target", scope: !4444, file: !1, line: 1102, type: !4361)
!4455 = !DILocation(line: 1102, column: 23, scope: !4444)
!4456 = !DILocation(line: 1102, column: 32, scope: !4444)
!4457 = !DILocation(line: 1104, column: 9, scope: !4444)
!4458 = !DILocation(line: 1104, column: 17, scope: !4444)
!4459 = !DILocation(line: 1104, column: 25, scope: !4444)
!4460 = !DILocation(line: 1104, column: 33, scope: !4444)
!4461 = !DILocation(line: 1104, column: 22, scope: !4444)
!4462 = !DILocation(line: 1104, column: 2, scope: !4444)
!4463 = distinct !DISubprogram(name: "__devm_alloc_percpu", scope: !1, file: !1, line: 1197, type: !4464, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!63, !78, !187, !187}
!4466 = !DILocalVariable(name: "dev", arg: 1, scope: !4463, file: !1, line: 1197, type: !78)
!4467 = !DILocation(line: 1197, column: 51, scope: !4463)
!4468 = !DILocalVariable(name: "size", arg: 2, scope: !4463, file: !1, line: 1197, type: !187)
!4469 = !DILocation(line: 1197, column: 63, scope: !4463)
!4470 = !DILocalVariable(name: "align", arg: 3, scope: !4463, file: !1, line: 1198, type: !187)
!4471 = !DILocation(line: 1198, column: 10, scope: !4463)
!4472 = !DILocalVariable(name: "p", scope: !4463, file: !1, line: 1200, type: !63)
!4473 = !DILocation(line: 1200, column: 8, scope: !4463)
!4474 = !DILocalVariable(name: "pcpu", scope: !4463, file: !1, line: 1201, type: !63)
!4475 = !DILocation(line: 1201, column: 17, scope: !4463)
!4476 = !DILocation(line: 1203, column: 24, scope: !4463)
!4477 = !DILocation(line: 1203, column: 30, scope: !4463)
!4478 = !DILocation(line: 1203, column: 9, scope: !4463)
!4479 = !DILocation(line: 1203, column: 7, scope: !4463)
!4480 = !DILocation(line: 1204, column: 7, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4463, file: !1, line: 1204, column: 6)
!4482 = !DILocation(line: 1204, column: 6, scope: !4463)
!4483 = !DILocation(line: 1205, column: 3, scope: !4481)
!4484 = !DILocation(line: 1207, column: 6, scope: !4463)
!4485 = !DILocation(line: 1207, column: 4, scope: !4463)
!4486 = !DILocation(line: 1208, column: 7, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4463, file: !1, line: 1208, column: 6)
!4488 = !DILocation(line: 1208, column: 6, scope: !4463)
!4489 = !DILocation(line: 1209, column: 15, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !1, line: 1208, column: 10)
!4491 = !DILocation(line: 1209, column: 3, scope: !4490)
!4492 = !DILocation(line: 1210, column: 3, scope: !4490)
!4493 = !DILocation(line: 1213, column: 25, scope: !4463)
!4494 = !DILocation(line: 1213, column: 21, scope: !4463)
!4495 = !DILocation(line: 1213, column: 3, scope: !4463)
!4496 = !DILocation(line: 1213, column: 23, scope: !4463)
!4497 = !DILocation(line: 1215, column: 13, scope: !4463)
!4498 = !DILocation(line: 1215, column: 18, scope: !4463)
!4499 = !DILocation(line: 1215, column: 2, scope: !4463)
!4500 = !DILocation(line: 1217, column: 9, scope: !4463)
!4501 = !DILocation(line: 1217, column: 2, scope: !4463)
!4502 = !DILocation(line: 1218, column: 1, scope: !4463)
!4503 = distinct !DISubprogram(name: "devm_percpu_release", scope: !1, file: !1, line: 1170, type: !76, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4504 = !DILocalVariable(name: "dev", arg: 1, scope: !4503, file: !1, line: 1170, type: !78)
!4505 = !DILocation(line: 1170, column: 48, scope: !4503)
!4506 = !DILocalVariable(name: "pdata", arg: 2, scope: !4503, file: !1, line: 1170, type: !63)
!4507 = !DILocation(line: 1170, column: 59, scope: !4503)
!4508 = !DILocalVariable(name: "p", scope: !4503, file: !1, line: 1172, type: !63)
!4509 = !DILocation(line: 1172, column: 17, scope: !4503)
!4510 = !DILocation(line: 1174, column: 25, scope: !4503)
!4511 = !DILocation(line: 1174, column: 7, scope: !4503)
!4512 = !DILocation(line: 1174, column: 6, scope: !4503)
!4513 = !DILocation(line: 1174, column: 4, scope: !4503)
!4514 = !DILocation(line: 1175, column: 14, scope: !4503)
!4515 = !DILocation(line: 1175, column: 2, scope: !4503)
!4516 = !DILocation(line: 1176, column: 1, scope: !4503)
!4517 = distinct !DISubprogram(name: "devm_free_percpu", scope: !1, file: !1, line: 1228, type: !76, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4518 = !DILocalVariable(name: "dev", arg: 1, scope: !4517, file: !1, line: 1228, type: !78)
!4519 = !DILocation(line: 1228, column: 38, scope: !4517)
!4520 = !DILocalVariable(name: "pdata", arg: 2, scope: !4517, file: !1, line: 1228, type: !63)
!4521 = !DILocation(line: 1228, column: 58, scope: !4517)
!4522 = !DILocalVariable(name: "__ret_warn_on", scope: !4523, file: !1, line: 1230, type: !124)
!4523 = distinct !DILexicalBlock(scope: !4517, file: !1, line: 1230, column: 2)
!4524 = !DILocation(line: 1230, column: 2, scope: !4523)
!4525 = !DILocation(line: 1230, column: 2, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4523, file: !1, line: 1230, column: 2)
!4527 = !DILocation(line: 1230, column: 2, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 1230, column: 2)
!4529 = !DILocation(line: 1230, column: 2, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 1230, column: 2)
!4531 = !DILocation(line: 1230, column: 2, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 1230, column: 2)
!4533 = !{i32 -2143437694, i32 -2143437665, i32 -2143437619, i32 -2143437561, i32 -2143437507, i32 -2143437453, i32 -2143437398, i32 -2143437367}
!4534 = !DILocation(line: 1230, column: 2, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 1230, column: 2)
!4536 = !{i32 -2143432902, i32 -2143432895, i32 -2143432843, i32 -2143432812, i32 -2143432782}
!4537 = !DILocation(line: 1230, column: 2, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 1230, column: 2)
!4539 = !DILocation(line: 1232, column: 1, scope: !4517)
!4540 = distinct !DISubprogram(name: "devm_percpu_match", scope: !1, file: !1, line: 1178, type: !2088, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4541 = !DILocalVariable(name: "dev", arg: 1, scope: !4540, file: !1, line: 1178, type: !78)
!4542 = !DILocation(line: 1178, column: 45, scope: !4540)
!4543 = !DILocalVariable(name: "data", arg: 2, scope: !4540, file: !1, line: 1178, type: !63)
!4544 = !DILocation(line: 1178, column: 56, scope: !4540)
!4545 = !DILocalVariable(name: "p", arg: 3, scope: !4540, file: !1, line: 1178, type: !63)
!4546 = !DILocation(line: 1178, column: 68, scope: !4540)
!4547 = !DILocalVariable(name: "devr", scope: !4540, file: !1, line: 1180, type: !1991)
!4548 = !DILocation(line: 1180, column: 17, scope: !4540)
!4549 = !DILocalVariable(name: "__mptr", scope: !4550, file: !1, line: 1180, type: !63)
!4550 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 1180, column: 24)
!4551 = !DILocation(line: 1180, column: 24, scope: !4550)
!4552 = !DILocation(line: 1180, column: 24, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4550, file: !1, line: 1180, column: 24)
!4554 = !DILocation(line: 1182, column: 19, scope: !4540)
!4555 = !DILocation(line: 1182, column: 25, scope: !4540)
!4556 = !DILocation(line: 1182, column: 9, scope: !4540)
!4557 = !DILocation(line: 1182, column: 33, scope: !4540)
!4558 = !DILocation(line: 1182, column: 30, scope: !4540)
!4559 = !DILocation(line: 1182, column: 2, scope: !4540)
!4560 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2233, file: !2233, line: 646, type: !2234, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4561 = !DILocalVariable(name: "__ret", scope: !4562, file: !2233, line: 648, type: !190)
!4562 = distinct !DILexicalBlock(scope: !4560, file: !2233, line: 648, column: 9)
!4563 = !DILocation(line: 648, column: 9, scope: !4562)
!4564 = !DILocalVariable(name: "__edi", scope: !4562, file: !2233, line: 648, type: !190)
!4565 = !DILocalVariable(name: "__esi", scope: !4562, file: !2233, line: 648, type: !190)
!4566 = !DILocalVariable(name: "__edx", scope: !4562, file: !2233, line: 648, type: !190)
!4567 = !DILocalVariable(name: "__ecx", scope: !4562, file: !2233, line: 648, type: !190)
!4568 = !DILocalVariable(name: "__eax", scope: !4562, file: !2233, line: 648, type: !190)
!4569 = !DILocation(line: 648, column: 9, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !2233, line: 648, column: 9)
!4571 = distinct !DILexicalBlock(scope: !4562, file: !2233, line: 648, column: 9)
!4572 = !{i32 -2145743421, i32 -2145741106, i32 -2145740872, i32 -2145740821, i32 -2145740793, i32 -2145740768, i32 -2145741084, i32 -2145741071, i32 -2145740633, i32 -2145740514, i32 -2145740979, i32 -2145740952, i32 -2145740924, i32 -2145740894}
!4573 = !DILocalVariable(name: "__mask", scope: !4574, file: !2233, line: 648, type: !190)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !2233, line: 648, column: 9)
!4575 = !DILocation(line: 648, column: 9, scope: !4574)
!4576 = !DILocation(line: 648, column: 9, scope: !4571)
!4577 = !DILocation(line: 648, column: 2, scope: !4560)
!4578 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2233, file: !2233, line: 656, type: !4579, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null}
!4581 = !DILocalVariable(name: "__edi", scope: !4582, file: !2233, line: 658, type: !190)
!4582 = distinct !DILexicalBlock(scope: !4578, file: !2233, line: 658, column: 2)
!4583 = !DILocation(line: 658, column: 2, scope: !4582)
!4584 = !DILocalVariable(name: "__esi", scope: !4582, file: !2233, line: 658, type: !190)
!4585 = !DILocalVariable(name: "__edx", scope: !4582, file: !2233, line: 658, type: !190)
!4586 = !DILocalVariable(name: "__ecx", scope: !4582, file: !2233, line: 658, type: !190)
!4587 = !DILocalVariable(name: "__eax", scope: !4582, file: !2233, line: 658, type: !190)
!4588 = !{i32 -2145736327, i32 -2145735595, i32 -2145735361, i32 -2145735310, i32 -2145735282, i32 -2145735257, i32 -2145735573, i32 -2145735560, i32 -2145735122, i32 -2145735003, i32 -2145735468, i32 -2145735441, i32 -2145735413, i32 -2145735383}
!4589 = !DILocation(line: 659, column: 1, scope: !4578)
!4590 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2233, file: !2233, line: 651, type: !4591, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !190}
!4593 = !DILocalVariable(name: "f", arg: 1, scope: !4590, file: !2233, line: 651, type: !190)
!4594 = !DILocation(line: 651, column: 65, scope: !4590)
!4595 = !DILocalVariable(name: "__edi", scope: !4596, file: !2233, line: 653, type: !190)
!4596 = distinct !DILexicalBlock(scope: !4590, file: !2233, line: 653, column: 2)
!4597 = !DILocation(line: 653, column: 2, scope: !4596)
!4598 = !DILocalVariable(name: "__esi", scope: !4596, file: !2233, line: 653, type: !190)
!4599 = !DILocalVariable(name: "__edx", scope: !4596, file: !2233, line: 653, type: !190)
!4600 = !DILocalVariable(name: "__ecx", scope: !4596, file: !2233, line: 653, type: !190)
!4601 = !DILocalVariable(name: "__eax", scope: !4596, file: !2233, line: 653, type: !190)
!4602 = !{i32 -2145738954, i32 -2145738204, i32 -2145737970, i32 -2145737919, i32 -2145737891, i32 -2145737866, i32 -2145738182, i32 -2145738169, i32 -2145737731, i32 -2145737612, i32 -2145738077, i32 -2145738050, i32 -2145738022, i32 -2145737992}
!4603 = !DILocation(line: 654, column: 1, scope: !4590)
!4604 = distinct !DISubprogram(name: "list_add_tail", scope: !2279, file: !2279, line: 98, type: !4605, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !71, !71}
!4607 = !DILocalVariable(name: "new", arg: 1, scope: !4604, file: !2279, line: 98, type: !71)
!4608 = !DILocation(line: 98, column: 52, scope: !4604)
!4609 = !DILocalVariable(name: "head", arg: 2, scope: !4604, file: !2279, line: 98, type: !71)
!4610 = !DILocation(line: 98, column: 75, scope: !4604)
!4611 = !DILocation(line: 100, column: 13, scope: !4604)
!4612 = !DILocation(line: 100, column: 18, scope: !4604)
!4613 = !DILocation(line: 100, column: 24, scope: !4604)
!4614 = !DILocation(line: 100, column: 30, scope: !4604)
!4615 = !DILocation(line: 100, column: 2, scope: !4604)
!4616 = !DILocation(line: 101, column: 1, scope: !4604)
!4617 = distinct !DISubprogram(name: "__list_add", scope: !2279, file: !2279, line: 63, type: !4618, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !71, !71, !71}
!4620 = !DILocalVariable(name: "new", arg: 1, scope: !4617, file: !2279, line: 63, type: !71)
!4621 = !DILocation(line: 63, column: 49, scope: !4617)
!4622 = !DILocalVariable(name: "prev", arg: 2, scope: !4617, file: !2279, line: 64, type: !71)
!4623 = !DILocation(line: 64, column: 28, scope: !4617)
!4624 = !DILocalVariable(name: "next", arg: 3, scope: !4617, file: !2279, line: 65, type: !71)
!4625 = !DILocation(line: 65, column: 28, scope: !4617)
!4626 = !DILocation(line: 67, column: 24, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4617, file: !2279, line: 67, column: 6)
!4628 = !DILocation(line: 67, column: 29, scope: !4627)
!4629 = !DILocation(line: 67, column: 35, scope: !4627)
!4630 = !DILocation(line: 67, column: 7, scope: !4627)
!4631 = !DILocation(line: 67, column: 6, scope: !4617)
!4632 = !DILocation(line: 68, column: 3, scope: !4627)
!4633 = !DILocation(line: 70, column: 15, scope: !4617)
!4634 = !DILocation(line: 70, column: 2, scope: !4617)
!4635 = !DILocation(line: 70, column: 8, scope: !4617)
!4636 = !DILocation(line: 70, column: 13, scope: !4617)
!4637 = !DILocation(line: 71, column: 14, scope: !4617)
!4638 = !DILocation(line: 71, column: 2, scope: !4617)
!4639 = !DILocation(line: 71, column: 7, scope: !4617)
!4640 = !DILocation(line: 71, column: 12, scope: !4617)
!4641 = !DILocation(line: 72, column: 14, scope: !4617)
!4642 = !DILocation(line: 72, column: 2, scope: !4617)
!4643 = !DILocation(line: 72, column: 7, scope: !4617)
!4644 = !DILocation(line: 72, column: 12, scope: !4617)
!4645 = !DILocation(line: 73, column: 2, scope: !4617)
!4646 = !DILocation(line: 73, column: 2, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4617, file: !2279, line: 73, column: 2)
!4648 = !DILocation(line: 73, column: 2, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4647, file: !2279, line: 73, column: 2)
!4650 = !DILocation(line: 73, column: 2, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4647, file: !2279, line: 73, column: 2)
!4652 = !DILocation(line: 74, column: 1, scope: !4617)
!4653 = distinct !DISubprogram(name: "__list_add_valid", scope: !2279, file: !2279, line: 45, type: !4654, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!983, !71, !71, !71}
!4656 = !DILocalVariable(name: "new", arg: 1, scope: !4653, file: !2279, line: 45, type: !71)
!4657 = !DILocation(line: 45, column: 55, scope: !4653)
!4658 = !DILocalVariable(name: "prev", arg: 2, scope: !4653, file: !2279, line: 46, type: !71)
!4659 = !DILocation(line: 46, column: 23, scope: !4653)
!4660 = !DILocalVariable(name: "next", arg: 3, scope: !4653, file: !2279, line: 47, type: !71)
!4661 = !DILocation(line: 47, column: 23, scope: !4653)
!4662 = !DILocation(line: 49, column: 2, scope: !4653)
!4663 = distinct !DISubprogram(name: "__list_del_entry", scope: !2279, file: !2279, line: 130, type: !2675, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4664 = !DILocalVariable(name: "entry", arg: 1, scope: !4663, file: !2279, line: 130, type: !71)
!4665 = !DILocation(line: 130, column: 55, scope: !4663)
!4666 = !DILocation(line: 132, column: 30, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4663, file: !2279, line: 132, column: 6)
!4668 = !DILocation(line: 132, column: 7, scope: !4667)
!4669 = !DILocation(line: 132, column: 6, scope: !4663)
!4670 = !DILocation(line: 133, column: 3, scope: !4667)
!4671 = !DILocation(line: 135, column: 13, scope: !4663)
!4672 = !DILocation(line: 135, column: 20, scope: !4663)
!4673 = !DILocation(line: 135, column: 26, scope: !4663)
!4674 = !DILocation(line: 135, column: 33, scope: !4663)
!4675 = !DILocation(line: 135, column: 2, scope: !4663)
!4676 = !DILocation(line: 136, column: 1, scope: !4663)
!4677 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2279, file: !2279, line: 51, type: !4678, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!983, !71}
!4680 = !DILocalVariable(name: "entry", arg: 1, scope: !4677, file: !2279, line: 51, type: !71)
!4681 = !DILocation(line: 51, column: 61, scope: !4677)
!4682 = !DILocation(line: 53, column: 2, scope: !4677)
!4683 = distinct !DISubprogram(name: "__list_del", scope: !2279, file: !2279, line: 110, type: !4605, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4684 = !DILocalVariable(name: "prev", arg: 1, scope: !4683, file: !2279, line: 110, type: !71)
!4685 = !DILocation(line: 110, column: 50, scope: !4683)
!4686 = !DILocalVariable(name: "next", arg: 2, scope: !4683, file: !2279, line: 110, type: !71)
!4687 = !DILocation(line: 110, column: 75, scope: !4683)
!4688 = !DILocation(line: 112, column: 15, scope: !4683)
!4689 = !DILocation(line: 112, column: 2, scope: !4683)
!4690 = !DILocation(line: 112, column: 8, scope: !4683)
!4691 = !DILocation(line: 112, column: 13, scope: !4683)
!4692 = !DILocation(line: 113, column: 2, scope: !4683)
!4693 = !DILocation(line: 113, column: 2, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4683, file: !2279, line: 113, column: 2)
!4695 = !DILocation(line: 113, column: 2, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4694, file: !2279, line: 113, column: 2)
!4697 = !DILocation(line: 113, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !2279, line: 113, column: 2)
!4699 = !DILocation(line: 114, column: 1, scope: !4683)
!4700 = distinct !DISubprogram(name: "remove_nodes", scope: !1, file: !1, line: 437, type: !4701, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!124, !78, !71, !71, !71}
!4703 = !DILocalVariable(name: "dev", arg: 1, scope: !4700, file: !1, line: 437, type: !78)
!4704 = !DILocation(line: 437, column: 40, scope: !4700)
!4705 = !DILocalVariable(name: "first", arg: 2, scope: !4700, file: !1, line: 438, type: !71)
!4706 = !DILocation(line: 438, column: 22, scope: !4700)
!4707 = !DILocalVariable(name: "end", arg: 3, scope: !4700, file: !1, line: 438, type: !71)
!4708 = !DILocation(line: 438, column: 47, scope: !4700)
!4709 = !DILocalVariable(name: "todo", arg: 4, scope: !4700, file: !1, line: 439, type: !71)
!4710 = !DILocation(line: 439, column: 22, scope: !4700)
!4711 = !DILocalVariable(name: "cnt", scope: !4700, file: !1, line: 441, type: !124)
!4712 = !DILocation(line: 441, column: 6, scope: !4700)
!4713 = !DILocalVariable(name: "nr_groups", scope: !4700, file: !1, line: 441, type: !124)
!4714 = !DILocation(line: 441, column: 15, scope: !4700)
!4715 = !DILocalVariable(name: "cur", scope: !4700, file: !1, line: 442, type: !71)
!4716 = !DILocation(line: 442, column: 20, scope: !4700)
!4717 = !DILocation(line: 447, column: 8, scope: !4700)
!4718 = !DILocation(line: 447, column: 6, scope: !4700)
!4719 = !DILocation(line: 448, column: 2, scope: !4700)
!4720 = !DILocation(line: 448, column: 9, scope: !4700)
!4721 = !DILocation(line: 448, column: 16, scope: !4700)
!4722 = !DILocation(line: 448, column: 13, scope: !4700)
!4723 = !DILocalVariable(name: "node", scope: !4724, file: !1, line: 449, type: !64)
!4724 = distinct !DILexicalBlock(scope: !4700, file: !1, line: 448, column: 21)
!4725 = !DILocation(line: 449, column: 23, scope: !4724)
!4726 = !DILocalVariable(name: "grp", scope: !4724, file: !1, line: 450, type: !2002)
!4727 = !DILocation(line: 450, column: 24, scope: !4724)
!4728 = !DILocalVariable(name: "__mptr", scope: !4729, file: !1, line: 452, type: !63)
!4729 = distinct !DILexicalBlock(scope: !4724, file: !1, line: 452, column: 10)
!4730 = !DILocation(line: 452, column: 10, scope: !4729)
!4731 = !DILocation(line: 452, column: 10, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4729, file: !1, line: 452, column: 10)
!4733 = !DILocation(line: 452, column: 8, scope: !4724)
!4734 = !DILocation(line: 453, column: 9, scope: !4724)
!4735 = !DILocation(line: 453, column: 14, scope: !4724)
!4736 = !DILocation(line: 453, column: 7, scope: !4724)
!4737 = !DILocation(line: 455, column: 23, scope: !4724)
!4738 = !DILocation(line: 455, column: 9, scope: !4724)
!4739 = !DILocation(line: 455, column: 7, scope: !4724)
!4740 = !DILocation(line: 456, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4724, file: !1, line: 456, column: 7)
!4742 = !DILocation(line: 456, column: 7, scope: !4724)
!4743 = !DILocation(line: 458, column: 4, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !1, line: 456, column: 12)
!4745 = !DILocation(line: 458, column: 9, scope: !4744)
!4746 = !DILocation(line: 458, column: 15, scope: !4744)
!4747 = !DILocation(line: 459, column: 13, scope: !4744)
!4748 = !DILocation(line: 460, column: 3, scope: !4744)
!4749 = !DILocation(line: 462, column: 9, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !1, line: 462, column: 8)
!4751 = distinct !DILexicalBlock(scope: !4741, file: !1, line: 460, column: 10)
!4752 = !DILocation(line: 462, column: 15, scope: !4750)
!4753 = !DILocation(line: 462, column: 24, scope: !4750)
!4754 = !DILocation(line: 462, column: 21, scope: !4750)
!4755 = !DILocation(line: 462, column: 8, scope: !4751)
!4756 = !DILocation(line: 463, column: 13, scope: !4750)
!4757 = !DILocation(line: 463, column: 20, scope: !4750)
!4758 = !DILocation(line: 463, column: 11, scope: !4750)
!4759 = !DILocation(line: 463, column: 5, scope: !4750)
!4760 = !DILocation(line: 464, column: 20, scope: !4751)
!4761 = !DILocation(line: 464, column: 26, scope: !4751)
!4762 = !DILocation(line: 464, column: 33, scope: !4751)
!4763 = !DILocation(line: 464, column: 4, scope: !4751)
!4764 = !DILocation(line: 465, column: 7, scope: !4751)
!4765 = distinct !{!4765, !4719, !4766}
!4766 = !DILocation(line: 467, column: 2, scope: !4700)
!4767 = !DILocation(line: 469, column: 7, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4700, file: !1, line: 469, column: 6)
!4769 = !DILocation(line: 469, column: 6, scope: !4700)
!4770 = !DILocation(line: 470, column: 10, scope: !4768)
!4771 = !DILocation(line: 470, column: 3, scope: !4768)
!4772 = !DILocation(line: 478, column: 8, scope: !4700)
!4773 = !DILocation(line: 478, column: 6, scope: !4700)
!4774 = !DILocation(line: 479, column: 2, scope: !4700)
!4775 = !DILocation(line: 479, column: 9, scope: !4700)
!4776 = !DILocation(line: 479, column: 16, scope: !4700)
!4777 = !DILocation(line: 479, column: 13, scope: !4700)
!4778 = !DILocalVariable(name: "node", scope: !4779, file: !1, line: 480, type: !64)
!4779 = distinct !DILexicalBlock(scope: !4700, file: !1, line: 479, column: 21)
!4780 = !DILocation(line: 480, column: 23, scope: !4779)
!4781 = !DILocalVariable(name: "grp", scope: !4779, file: !1, line: 481, type: !2002)
!4782 = !DILocation(line: 481, column: 24, scope: !4779)
!4783 = !DILocalVariable(name: "__mptr", scope: !4784, file: !1, line: 483, type: !63)
!4784 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 483, column: 10)
!4785 = !DILocation(line: 483, column: 10, scope: !4784)
!4786 = !DILocation(line: 483, column: 10, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4784, file: !1, line: 483, column: 10)
!4788 = !DILocation(line: 483, column: 8, scope: !4779)
!4789 = !DILocation(line: 484, column: 9, scope: !4779)
!4790 = !DILocation(line: 484, column: 14, scope: !4779)
!4791 = !DILocation(line: 484, column: 7, scope: !4779)
!4792 = !DILocation(line: 486, column: 23, scope: !4779)
!4793 = !DILocation(line: 486, column: 9, scope: !4779)
!4794 = !DILocation(line: 486, column: 7, scope: !4779)
!4795 = !DILocation(line: 487, column: 3, scope: !4779)
!4796 = !DILocation(line: 487, column: 3, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !1, line: 487, column: 3)
!4798 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 487, column: 3)
!4799 = !DILocation(line: 487, column: 3, scope: !4798)
!4800 = !DILocation(line: 487, column: 3, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4797, file: !1, line: 487, column: 3)
!4802 = !DILocation(line: 487, column: 3, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 487, column: 3)
!4804 = !DILocation(line: 487, column: 3, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 487, column: 3)
!4806 = !{i32 -2143480963, i32 -2143480934, i32 -2143480888, i32 -2143480830, i32 -2143480776, i32 -2143480722, i32 -2143480667, i32 -2143480636}
!4807 = !DILocation(line: 487, column: 3, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !1, line: 487, column: 3)
!4809 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 487, column: 3)
!4810 = !{i32 -2143480192, i32 -2143480185, i32 -2143480131, i32 -2143480100, i32 -2143480070}
!4811 = !DILocation(line: 487, column: 3, scope: !4809)
!4812 = !DILocation(line: 489, column: 3, scope: !4779)
!4813 = !DILocation(line: 489, column: 8, scope: !4779)
!4814 = !DILocation(line: 489, column: 13, scope: !4779)
!4815 = !DILocation(line: 490, column: 19, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 490, column: 7)
!4817 = !DILocation(line: 490, column: 24, scope: !4816)
!4818 = !DILocation(line: 490, column: 32, scope: !4816)
!4819 = !DILocation(line: 490, column: 7, scope: !4816)
!4820 = !DILocation(line: 490, column: 7, scope: !4779)
!4821 = !DILocation(line: 491, column: 4, scope: !4816)
!4822 = !DILocation(line: 491, column: 9, scope: !4816)
!4823 = !DILocation(line: 491, column: 14, scope: !4816)
!4824 = !DILocation(line: 493, column: 3, scope: !4779)
!4825 = !DILocation(line: 493, column: 3, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !1, line: 493, column: 3)
!4827 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 493, column: 3)
!4828 = !DILocation(line: 493, column: 3, scope: !4827)
!4829 = !DILocation(line: 493, column: 3, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4826, file: !1, line: 493, column: 3)
!4831 = !DILocation(line: 493, column: 3, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 493, column: 3)
!4833 = !DILocation(line: 493, column: 3, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 493, column: 3)
!4835 = !{i32 -2143479721, i32 -2143479692, i32 -2143479646, i32 -2143479588, i32 -2143479534, i32 -2143479480, i32 -2143479425, i32 -2143479394}
!4836 = !DILocation(line: 493, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !1, line: 493, column: 3)
!4838 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 493, column: 3)
!4839 = !{i32 -2143478950, i32 -2143478943, i32 -2143478889, i32 -2143478858, i32 -2143478828}
!4840 = !DILocation(line: 493, column: 3, scope: !4838)
!4841 = !DILocation(line: 494, column: 7, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 494, column: 7)
!4843 = !DILocation(line: 494, column: 12, scope: !4842)
!4844 = !DILocation(line: 494, column: 18, scope: !4842)
!4845 = !DILocation(line: 494, column: 7, scope: !4779)
!4846 = !DILocation(line: 498, column: 20, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 494, column: 24)
!4848 = !DILocation(line: 498, column: 25, scope: !4847)
!4849 = !DILocation(line: 498, column: 33, scope: !4847)
!4850 = !DILocation(line: 498, column: 40, scope: !4847)
!4851 = !DILocation(line: 498, column: 4, scope: !4847)
!4852 = !DILocation(line: 499, column: 19, scope: !4847)
!4853 = !DILocation(line: 499, column: 24, scope: !4847)
!4854 = !DILocation(line: 499, column: 32, scope: !4847)
!4855 = !DILocation(line: 499, column: 4, scope: !4847)
!4856 = !DILocation(line: 500, column: 3, scope: !4847)
!4857 = distinct !{!4857, !4774, !4858}
!4858 = !DILocation(line: 501, column: 2, scope: !4700)
!4859 = !DILocation(line: 503, column: 9, scope: !4700)
!4860 = !DILocation(line: 503, column: 2, scope: !4700)
!4861 = !DILocation(line: 504, column: 1, scope: !4700)
!4862 = distinct !DISubprogram(name: "node_to_group", scope: !1, file: !1, line: 83, type: !4863, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!2002, !64}
!4865 = !DILocalVariable(name: "node", arg: 1, scope: !4862, file: !1, line: 83, type: !64)
!4866 = !DILocation(line: 83, column: 64, scope: !4862)
!4867 = !DILocation(line: 85, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4862, file: !1, line: 85, column: 6)
!4869 = !DILocation(line: 85, column: 12, scope: !4868)
!4870 = !DILocation(line: 85, column: 20, scope: !4868)
!4871 = !DILocation(line: 85, column: 6, scope: !4862)
!4872 = !DILocalVariable(name: "__mptr", scope: !4873, file: !1, line: 86, type: !63)
!4873 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 86, column: 10)
!4874 = !DILocation(line: 86, column: 10, scope: !4873)
!4875 = !DILocation(line: 86, column: 10, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 86, column: 10)
!4877 = !DILocation(line: 86, column: 3, scope: !4868)
!4878 = !DILocation(line: 87, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4862, file: !1, line: 87, column: 6)
!4880 = !DILocation(line: 87, column: 12, scope: !4879)
!4881 = !DILocation(line: 87, column: 20, scope: !4879)
!4882 = !DILocation(line: 87, column: 6, scope: !4862)
!4883 = !DILocalVariable(name: "__mptr", scope: !4884, file: !1, line: 88, type: !63)
!4884 = distinct !DILexicalBlock(scope: !4879, file: !1, line: 88, column: 10)
!4885 = !DILocation(line: 88, column: 10, scope: !4884)
!4886 = !DILocation(line: 88, column: 10, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !1, line: 88, column: 10)
!4888 = !DILocation(line: 88, column: 3, scope: !4879)
!4889 = !DILocation(line: 89, column: 2, scope: !4862)
!4890 = !DILocation(line: 90, column: 1, scope: !4862)
!4891 = distinct !DISubprogram(name: "list_move_tail", scope: !2279, file: !2279, line: 224, type: !4605, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4892 = !DILocalVariable(name: "list", arg: 1, scope: !4891, file: !2279, line: 224, type: !71)
!4893 = !DILocation(line: 224, column: 53, scope: !4891)
!4894 = !DILocalVariable(name: "head", arg: 2, scope: !4891, file: !2279, line: 225, type: !71)
!4895 = !DILocation(line: 225, column: 25, scope: !4891)
!4896 = !DILocation(line: 227, column: 19, scope: !4891)
!4897 = !DILocation(line: 227, column: 2, scope: !4891)
!4898 = !DILocation(line: 228, column: 16, scope: !4891)
!4899 = !DILocation(line: 228, column: 22, scope: !4891)
!4900 = !DILocation(line: 228, column: 2, scope: !4891)
!4901 = !DILocation(line: 229, column: 1, scope: !4891)
!4902 = distinct !DISubprogram(name: "get_order", scope: !4903, file: !4903, line: 29, type: !4904, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4903 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!124, !190}
!4906 = !DILocalVariable(name: "x", arg: 1, scope: !4907, file: !4908, line: 366, type: !261)
!4907 = distinct !DISubprogram(name: "fls64", scope: !4908, file: !4908, line: 366, type: !4909, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4908 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!124, !261}
!4911 = !DILocation(line: 366, column: 40, scope: !4907, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 46, column: 9, scope: !4902)
!4913 = !DILocalVariable(name: "bitpos", scope: !4907, file: !4908, line: 368, type: !124)
!4914 = !DILocation(line: 368, column: 6, scope: !4907, inlinedAt: !4912)
!4915 = !DILocalVariable(name: "size", arg: 1, scope: !4902, file: !4903, line: 29, type: !190)
!4916 = !DILocation(line: 29, column: 63, scope: !4902)
!4917 = !DILocation(line: 31, column: 27, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 31, column: 6)
!4919 = !DILocation(line: 31, column: 6, scope: !4918)
!4920 = !DILocation(line: 31, column: 6, scope: !4902)
!4921 = !DILocation(line: 32, column: 8, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !4903, line: 32, column: 7)
!4923 = distinct !DILexicalBlock(scope: !4918, file: !4903, line: 31, column: 34)
!4924 = !DILocation(line: 32, column: 7, scope: !4923)
!4925 = !DILocation(line: 33, column: 4, scope: !4922)
!4926 = !DILocation(line: 35, column: 7, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4923, file: !4903, line: 35, column: 7)
!4928 = !DILocation(line: 35, column: 12, scope: !4927)
!4929 = !DILocation(line: 35, column: 7, scope: !4923)
!4930 = !DILocation(line: 36, column: 4, scope: !4927)
!4931 = !DILocation(line: 38, column: 10, scope: !4923)
!4932 = !DILocation(line: 38, column: 28, scope: !4923)
!4933 = !DILocation(line: 38, column: 41, scope: !4923)
!4934 = !DILocation(line: 38, column: 3, scope: !4923)
!4935 = !DILocation(line: 41, column: 6, scope: !4902)
!4936 = !DILocation(line: 42, column: 7, scope: !4902)
!4937 = !DILocation(line: 46, column: 15, scope: !4902)
!4938 = !DILocation(line: 374, column: 2, scope: !4907, inlinedAt: !4912)
!4939 = !DILocation(line: 376, column: 14, scope: !4907, inlinedAt: !4912)
!4940 = !{i32 407027}
!4941 = !DILocation(line: 377, column: 9, scope: !4907, inlinedAt: !4912)
!4942 = !DILocation(line: 377, column: 16, scope: !4907, inlinedAt: !4912)
!4943 = !DILocation(line: 46, column: 2, scope: !4902)
!4944 = !DILocation(line: 48, column: 1, scope: !4902)
!4945 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4946, file: !4946, line: 30, type: !4947, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4946 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!124, !259}
!4949 = !DILocation(line: 366, column: 40, scope: !4907, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 32, column: 9, scope: !4945)
!4951 = !DILocation(line: 368, column: 6, scope: !4907, inlinedAt: !4950)
!4952 = !DILocalVariable(name: "n", arg: 1, scope: !4945, file: !4946, line: 30, type: !259)
!4953 = !DILocation(line: 30, column: 21, scope: !4945)
!4954 = !DILocation(line: 32, column: 15, scope: !4945)
!4955 = !DILocation(line: 374, column: 2, scope: !4907, inlinedAt: !4950)
!4956 = !DILocation(line: 376, column: 14, scope: !4907, inlinedAt: !4950)
!4957 = !DILocation(line: 377, column: 9, scope: !4907, inlinedAt: !4950)
!4958 = !DILocation(line: 377, column: 16, scope: !4907, inlinedAt: !4950)
!4959 = !DILocation(line: 32, column: 18, scope: !4945)
!4960 = !DILocation(line: 32, column: 2, scope: !4945)
!4961 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4962, file: !4962, line: 137, type: !4963, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4962 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!63, !1033, !1374, !187, !61}
!4965 = !DILocalVariable(name: "s", arg: 1, scope: !4961, file: !4962, line: 137, type: !1033)
!4966 = !DILocation(line: 137, column: 54, scope: !4961)
!4967 = !DILocalVariable(name: "object", arg: 2, scope: !4961, file: !4962, line: 137, type: !1374)
!4968 = !DILocation(line: 137, column: 69, scope: !4961)
!4969 = !DILocalVariable(name: "size", arg: 3, scope: !4961, file: !4962, line: 138, type: !187)
!4970 = !DILocation(line: 138, column: 12, scope: !4961)
!4971 = !DILocalVariable(name: "flags", arg: 4, scope: !4961, file: !4962, line: 138, type: !61)
!4972 = !DILocation(line: 138, column: 24, scope: !4961)
!4973 = !DILocation(line: 140, column: 17, scope: !4961)
!4974 = !DILocation(line: 140, column: 2, scope: !4961)
!4975 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4976, file: !4976, line: 52, type: !4977, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4976 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!983, !983}
!4979 = !DILocalVariable(name: "overflow", arg: 1, scope: !4975, file: !4976, line: 52, type: !983)
!4980 = !DILocation(line: 52, column: 60, scope: !4975)
!4981 = !DILocation(line: 54, column: 9, scope: !4975)
!4982 = !DILocation(line: 54, column: 2, scope: !4975)
!4983 = distinct !DISubprogram(name: "list_replace", scope: !2279, file: !2279, line: 158, type: !4605, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !112)
!4984 = !DILocalVariable(name: "old", arg: 1, scope: !4983, file: !2279, line: 158, type: !71)
!4985 = !DILocation(line: 158, column: 51, scope: !4983)
!4986 = !DILocalVariable(name: "new", arg: 2, scope: !4983, file: !2279, line: 159, type: !71)
!4987 = !DILocation(line: 159, column: 23, scope: !4983)
!4988 = !DILocation(line: 161, column: 14, scope: !4983)
!4989 = !DILocation(line: 161, column: 19, scope: !4983)
!4990 = !DILocation(line: 161, column: 2, scope: !4983)
!4991 = !DILocation(line: 161, column: 7, scope: !4983)
!4992 = !DILocation(line: 161, column: 12, scope: !4983)
!4993 = !DILocation(line: 162, column: 20, scope: !4983)
!4994 = !DILocation(line: 162, column: 2, scope: !4983)
!4995 = !DILocation(line: 162, column: 7, scope: !4983)
!4996 = !DILocation(line: 162, column: 13, scope: !4983)
!4997 = !DILocation(line: 162, column: 18, scope: !4983)
!4998 = !DILocation(line: 163, column: 14, scope: !4983)
!4999 = !DILocation(line: 163, column: 19, scope: !4983)
!5000 = !DILocation(line: 163, column: 2, scope: !4983)
!5001 = !DILocation(line: 163, column: 7, scope: !4983)
!5002 = !DILocation(line: 163, column: 12, scope: !4983)
!5003 = !DILocation(line: 164, column: 20, scope: !4983)
!5004 = !DILocation(line: 164, column: 2, scope: !4983)
!5005 = !DILocation(line: 164, column: 7, scope: !4983)
!5006 = !DILocation(line: 164, column: 13, scope: !4983)
!5007 = !DILocation(line: 164, column: 18, scope: !4983)
!5008 = !DILocation(line: 165, column: 1, scope: !4983)
