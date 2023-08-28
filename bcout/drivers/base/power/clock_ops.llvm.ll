; ModuleID = '../bcout/drivers/base/power/clock_ops.llvm.bc'
source_filename = "drivers/base/power/clock_ops.c"
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
%struct.pm_domain_data = type { %struct.list_head, %struct.device* }
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
%struct.clk = type opaque
%struct.pm_clock_entry = type { %struct.list_head, i8*, %struct.clk*, i32 }
%struct.pm_clk_notifier_block = type { %struct.notifier_block, %struct.dev_pm_domain*, [0 x i8*] }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to suspend device\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to suspend clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to resume clock\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"clk_prepare() failed\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: failed to enable clk %p, error %d\0A\00", align 1
@__func__.__pm_clk_enable = private unnamed_addr constant [16 x i8] c"__pm_clk_enable\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_add(%struct.device* %dev, i8* %con_id) #0 !dbg !2079 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2082, metadata !DIExpression()), !dbg !2083
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2084, metadata !DIExpression()), !dbg !2085
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2086
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2087
  %call = call i32 @__pm_clk_add(%struct.device* %0, i8* %1, %struct.clk* null) #9, !dbg !2088
  ret i32 %call, !dbg !2089
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__pm_clk_add(%struct.device* %dev, i8* %con_id, %struct.clk* %clk) #0 !dbg !2090 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !2093, metadata !DIExpression()), !dbg !2099
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2103
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %clk.addr = alloca %struct.clk*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2107, metadata !DIExpression()), !dbg !2108
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2109, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2111, metadata !DIExpression()), !dbg !2112
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2113
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2114
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2112
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2115, metadata !DIExpression()), !dbg !2116
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2117
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2117
  br i1 %tobool, label %if.end, label %if.then, !dbg !2119

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2120
  br label %return, !dbg !2120

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !2121
  %2 = bitcast i8* %call1 to %struct.pm_clock_entry*, !dbg !2121
  store %struct.pm_clock_entry* %2, %struct.pm_clock_entry** %ce, align 8, !dbg !2122
  %3 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2123
  %tobool2 = icmp ne %struct.pm_clock_entry* %3, null, !dbg !2123
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2125

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %con_id.addr, align 8, !dbg !2127
  %tobool5 = icmp ne i8* %4, null, !dbg !2127
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !2129

if.then6:                                         ; preds = %if.end4
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !2130
  %call7 = call noalias i8* @kstrdup(i8* %5, i32 3264) #9, !dbg !2132
  %6 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2133
  %con_id8 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %6, i32 0, i32 1, !dbg !2134
  store i8* %call7, i8** %con_id8, align 8, !dbg !2135
  %7 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2136
  %con_id9 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %7, i32 0, i32 1, !dbg !2138
  %8 = load i8*, i8** %con_id9, align 8, !dbg !2138
  %tobool10 = icmp ne i8* %8, null, !dbg !2136
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2139

if.then11:                                        ; preds = %if.then6
  %9 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2140
  %10 = bitcast %struct.pm_clock_entry* %9 to i8*, !dbg !2140
  call void @kfree(i8* %10) #9, !dbg !2142
  store i32 -12, i32* %retval, align 4, !dbg !2143
  br label %return, !dbg !2143

if.end12:                                         ; preds = %if.then6
  br label %if.end17, !dbg !2144

if.else:                                          ; preds = %if.end4
  %11 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2145
  %12 = bitcast %struct.clk* %11 to i8*, !dbg !2145
  %call13 = call zeroext i1 @IS_ERR(i8* %12) #9, !dbg !2148
  br i1 %call13, label %if.then14, label %if.end15, !dbg !2149

if.then14:                                        ; preds = %if.else
  %13 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2150
  %14 = bitcast %struct.pm_clock_entry* %13 to i8*, !dbg !2150
  call void @kfree(i8* %14) #9, !dbg !2152
  store i32 -2, i32* %retval, align 4, !dbg !2153
  br label %return, !dbg !2153

if.end15:                                         ; preds = %if.else
  %15 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2154
  %16 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2155
  %clk16 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %16, i32 0, i32 2, !dbg !2156
  store %struct.clk* %15, %struct.clk** %clk16, align 8, !dbg !2157
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end12
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2158
  %18 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2159
  call void @pm_clk_acquire(%struct.device* %17, %struct.pm_clock_entry* %18) #9, !dbg !2160
  %19 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2161
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %19, i32 0, i32 0, !dbg !2162
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !2163
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2166, !srcloc !2168
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2169
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !2169
  %rlock.i = bitcast %union.anon* %21 to %struct.raw_spinlock*, !dbg !2169
  %22 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2171
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %22, i32 0, i32 0, !dbg !2172
  %23 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2173
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %23, i32 0, i32 2, !dbg !2174
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %clock_list) #9, !dbg !2175
  %24 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2176
  %lock18 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %24, i32 0, i32 0, !dbg !2177
  store %struct.spinlock* %lock18, %struct.spinlock** %lock.addr.i19, align 8
  call void @arch_local_irq_enable() #10, !dbg !2178
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2181, !srcloc !2183
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !2184
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !2184
  %rlock.i20 = bitcast %union.anon* %26 to %struct.raw_spinlock*, !dbg !2184
  store i32 0, i32* %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

return:                                           ; preds = %if.end17, %if.then14, %if.then11, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !2187
  ret i32 %27, !dbg !2187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_add_clk(%struct.device* %dev, %struct.clk* %clk) #0 !dbg !2188 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2193, metadata !DIExpression()), !dbg !2194
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2195
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2196
  %call = call i32 @__pm_clk_add(%struct.device* %0, i8* null, %struct.clk* %1) #9, !dbg !2197
  ret i32 %call, !dbg !2198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pm_clk_add_clk(%struct.device* %dev, i8* %name) #0 !dbg !2199 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %clk = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2200, metadata !DIExpression()), !dbg !2201
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2206, metadata !DIExpression()), !dbg !2207
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2208
  %tobool = icmp ne %struct.device* %0, null, !dbg !2208
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2210

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2211
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2212
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2212
  %tobool1 = icmp ne %struct.device_node* %2, null, !dbg !2211
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2213

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %name.addr, align 8, !dbg !2214
  %tobool3 = icmp ne i8* %3, null, !dbg !2214
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2215

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2216
  br label %return, !dbg !2216

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2217
  %of_node4 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 23, !dbg !2218
  %5 = load %struct.device_node*, %struct.device_node** %of_node4, align 8, !dbg !2218
  %6 = load i8*, i8** %name.addr, align 8, !dbg !2219
  %call = call %struct.clk* @of_clk_get_by_name(%struct.device_node* %5, i8* %6) #9, !dbg !2220
  store %struct.clk* %call, %struct.clk** %clk, align 8, !dbg !2221
  %7 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2222
  %8 = bitcast %struct.clk* %7 to i8*, !dbg !2222
  %call5 = call zeroext i1 @IS_ERR(i8* %8) #9, !dbg !2224
  br i1 %call5, label %if.then6, label %if.end8, !dbg !2225

if.then6:                                         ; preds = %if.end
  %9 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2226
  %10 = bitcast %struct.clk* %9 to i8*, !dbg !2226
  %call7 = call i64 @PTR_ERR(i8* %10) #9, !dbg !2227
  %conv = trunc i64 %call7 to i32, !dbg !2227
  store i32 %conv, i32* %retval, align 4, !dbg !2228
  br label %return, !dbg !2228

if.end8:                                          ; preds = %if.end
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2229
  %12 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2230
  %call9 = call i32 @pm_clk_add_clk(%struct.device* %11, %struct.clk* %12) #9, !dbg !2231
  store i32 %call9, i32* %ret, align 4, !dbg !2232
  %13 = load i32, i32* %ret, align 4, !dbg !2233
  %tobool10 = icmp ne i32 %13, 0, !dbg !2233
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2235

if.then11:                                        ; preds = %if.end8
  %14 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2236
  call void @clk_put(%struct.clk* %14) #9, !dbg !2238
  %15 = load i32, i32* %ret, align 4, !dbg !2239
  store i32 %15, i32* %retval, align 4, !dbg !2240
  br label %return, !dbg !2240

if.end12:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4, !dbg !2241
  br label %return, !dbg !2241

return:                                           ; preds = %if.end12, %if.then11, %if.then6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2242
  ret i32 %16, !dbg !2242
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2243 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2247, metadata !DIExpression()), !dbg !2248
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2249
  %1 = ptrtoint i8* %0 to i64, !dbg !2249
  %2 = inttoptr i64 %1 to i8*, !dbg !2249
  %3 = ptrtoint i8* %2 to i64, !dbg !2249
  %cmp = icmp uge i64 %3, -4095, !dbg !2249
  %lnot = xor i1 %cmp, true, !dbg !2249
  %lnot1 = xor i1 %lnot, true, !dbg !2249
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2249
  %conv = sext i32 %lnot.ext to i64, !dbg !2249
  %tobool = icmp ne i64 %conv, 0, !dbg !2249
  ret i1 %tobool, !dbg !2250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2251 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2254, metadata !DIExpression()), !dbg !2255
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2256
  %1 = ptrtoint i8* %0 to i64, !dbg !2257
  ret i64 %1, !dbg !2258
}

; Function Attrs: noredzone
declare dso_local void @clk_put(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pm_clk_add_clks(%struct.device* %dev) #0 !dbg !2259 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %clks = alloca %struct.clk**, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2260, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.declare(metadata %struct.clk*** %clks, metadata !2262, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2265, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2267, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2269, metadata !DIExpression()), !dbg !2270
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2271
  %tobool = icmp ne %struct.device* %0, null, !dbg !2271
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2273

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2274
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2275
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2275
  %tobool1 = icmp ne %struct.device_node* %2, null, !dbg !2274
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2276

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2277
  br label %return, !dbg !2277

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2278
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !2279
  %4 = load %struct.device_node*, %struct.device_node** %of_node2, align 8, !dbg !2279
  %call = call i32 @of_clk_get_parent_count(%struct.device_node* %4) #9, !dbg !2280
  store i32 %call, i32* %count, align 4, !dbg !2281
  %5 = load i32, i32* %count, align 4, !dbg !2282
  %cmp = icmp sle i32 %5, 0, !dbg !2284
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2285

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !2286
  br label %return, !dbg !2286

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %count, align 4, !dbg !2287
  %conv = sext i32 %6 to i64, !dbg !2287
  %call5 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #9, !dbg !2288
  %7 = bitcast i8* %call5 to %struct.clk**, !dbg !2288
  store %struct.clk** %7, %struct.clk*** %clks, align 8, !dbg !2289
  %8 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2290
  %tobool6 = icmp ne %struct.clk** %8, null, !dbg !2290
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2292

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !2293
  br label %return, !dbg !2293

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !2294
  br label %for.cond, !dbg !2296

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i32, i32* %i, align 4, !dbg !2297
  %10 = load i32, i32* %count, align 4, !dbg !2299
  %cmp9 = icmp slt i32 %9, %10, !dbg !2300
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2301

for.body:                                         ; preds = %for.cond
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2302
  %of_node11 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 23, !dbg !2304
  %12 = load %struct.device_node*, %struct.device_node** %of_node11, align 8, !dbg !2304
  %13 = load i32, i32* %i, align 4, !dbg !2305
  %call12 = call %struct.clk* @of_clk_get(%struct.device_node* %12, i32 %13) #9, !dbg !2306
  %14 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2307
  %15 = load i32, i32* %i, align 4, !dbg !2308
  %idxprom = sext i32 %15 to i64, !dbg !2307
  %arrayidx = getelementptr %struct.clk*, %struct.clk** %14, i64 %idxprom, !dbg !2307
  store %struct.clk* %call12, %struct.clk** %arrayidx, align 8, !dbg !2309
  %16 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2310
  %17 = load i32, i32* %i, align 4, !dbg !2312
  %idxprom13 = sext i32 %17 to i64, !dbg !2310
  %arrayidx14 = getelementptr %struct.clk*, %struct.clk** %16, i64 %idxprom13, !dbg !2310
  %18 = load %struct.clk*, %struct.clk** %arrayidx14, align 8, !dbg !2310
  %19 = bitcast %struct.clk* %18 to i8*, !dbg !2310
  %call15 = call zeroext i1 @IS_ERR(i8* %19) #9, !dbg !2313
  br i1 %call15, label %if.then16, label %if.end21, !dbg !2314

if.then16:                                        ; preds = %for.body
  %20 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2315
  %21 = load i32, i32* %i, align 4, !dbg !2317
  %idxprom17 = sext i32 %21 to i64, !dbg !2315
  %arrayidx18 = getelementptr %struct.clk*, %struct.clk** %20, i64 %idxprom17, !dbg !2315
  %22 = load %struct.clk*, %struct.clk** %arrayidx18, align 8, !dbg !2315
  %23 = bitcast %struct.clk* %22 to i8*, !dbg !2315
  %call19 = call i64 @PTR_ERR(i8* %23) #9, !dbg !2318
  %conv20 = trunc i64 %call19 to i32, !dbg !2318
  store i32 %conv20, i32* %ret, align 4, !dbg !2319
  br label %error, !dbg !2320

if.end21:                                         ; preds = %for.body
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2321
  %25 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2322
  %26 = load i32, i32* %i, align 4, !dbg !2323
  %idxprom22 = sext i32 %26 to i64, !dbg !2322
  %arrayidx23 = getelementptr %struct.clk*, %struct.clk** %25, i64 %idxprom22, !dbg !2322
  %27 = load %struct.clk*, %struct.clk** %arrayidx23, align 8, !dbg !2322
  %call24 = call i32 @pm_clk_add_clk(%struct.device* %24, %struct.clk* %27) #9, !dbg !2324
  store i32 %call24, i32* %ret, align 4, !dbg !2325
  %28 = load i32, i32* %ret, align 4, !dbg !2326
  %tobool25 = icmp ne i32 %28, 0, !dbg !2326
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !2328

if.then26:                                        ; preds = %if.end21
  %29 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2329
  %30 = load i32, i32* %i, align 4, !dbg !2331
  %idxprom27 = sext i32 %30 to i64, !dbg !2329
  %arrayidx28 = getelementptr %struct.clk*, %struct.clk** %29, i64 %idxprom27, !dbg !2329
  %31 = load %struct.clk*, %struct.clk** %arrayidx28, align 8, !dbg !2329
  call void @clk_put(%struct.clk* %31) #9, !dbg !2332
  br label %error, !dbg !2333

if.end29:                                         ; preds = %if.end21
  br label %for.inc, !dbg !2334

for.inc:                                          ; preds = %if.end29
  %32 = load i32, i32* %i, align 4, !dbg !2335
  %inc = add i32 %32, 1, !dbg !2335
  store i32 %inc, i32* %i, align 4, !dbg !2335
  br label %for.cond, !dbg !2336, !llvm.loop !2337

for.end:                                          ; preds = %for.cond
  %33 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2339
  %34 = bitcast %struct.clk** %33 to i8*, !dbg !2339
  call void @kfree(i8* %34) #9, !dbg !2340
  %35 = load i32, i32* %i, align 4, !dbg !2341
  store i32 %35, i32* %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

error:                                            ; preds = %if.then26, %if.then16
  call void @llvm.dbg.label(metadata !2343), !dbg !2344
  br label %while.cond, !dbg !2345

while.cond:                                       ; preds = %while.body, %error
  %36 = load i32, i32* %i, align 4, !dbg !2346
  %dec = add i32 %36, -1, !dbg !2346
  store i32 %dec, i32* %i, align 4, !dbg !2346
  %tobool30 = icmp ne i32 %36, 0, !dbg !2345
  br i1 %tobool30, label %while.body, label %while.end, !dbg !2345

while.body:                                       ; preds = %while.cond
  %37 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2347
  %38 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2348
  %39 = load i32, i32* %i, align 4, !dbg !2349
  %idxprom31 = sext i32 %39 to i64, !dbg !2348
  %arrayidx32 = getelementptr %struct.clk*, %struct.clk** %38, i64 %idxprom31, !dbg !2348
  %40 = load %struct.clk*, %struct.clk** %arrayidx32, align 8, !dbg !2348
  call void @pm_clk_remove_clk(%struct.device* %37, %struct.clk* %40) #9, !dbg !2350
  br label %while.cond, !dbg !2345, !llvm.loop !2351

while.end:                                        ; preds = %while.cond
  %41 = load %struct.clk**, %struct.clk*** %clks, align 8, !dbg !2353
  %42 = bitcast %struct.clk** %41 to i8*, !dbg !2353
  call void @kfree(i8* %42) #9, !dbg !2354
  %43 = load i32, i32* %ret, align 4, !dbg !2355
  store i32 %43, i32* %retval, align 4, !dbg !2356
  br label %return, !dbg !2356

return:                                           ; preds = %while.end, %for.end, %if.then7, %if.then3, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !2357
  ret i32 %44, !dbg !2357
}

; Function Attrs: noredzone
declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2358 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2365, metadata !DIExpression()), !dbg !2366
  %0 = load i64, i64* %n.addr, align 8, !dbg !2367
  %1 = load i64, i64* %size.addr, align 8, !dbg !2368
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2369
  %or = or i32 %2, 256, !dbg !2370
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #9, !dbg !2371
  ret i8* %call, !dbg !2372
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_clk_remove_clk(%struct.device* %dev, %struct.clk* %clk) #0 !dbg !2373 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !2093, metadata !DIExpression()), !dbg !2376
  %lock.addr.i17 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i17, metadata !2093, metadata !DIExpression()), !dbg !2378
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2380
  %dev.addr = alloca %struct.device*, align 8
  %clk.addr = alloca %struct.clk*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pm_clock_entry*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp12 = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2386, metadata !DIExpression()), !dbg !2387
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2388
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2389
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2387
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2390, metadata !DIExpression()), !dbg !2391
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2392
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2392
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2394

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2395
  %tobool1 = icmp ne %struct.clk* %2, null, !dbg !2395
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2396

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2397

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2398
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %3, i32 0, i32 0, !dbg !2399
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !2400
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2401, !srcloc !2168
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2402
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2402
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2402
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2403, metadata !DIExpression()), !dbg !2406
  %6 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2406
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %6, i32 0, i32 2, !dbg !2406
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clock_list, i32 0, i32 0, !dbg !2406
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2406
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2406
  store i8* %8, i8** %__mptr, align 8, !dbg !2406
  br label %do.body, !dbg !2406

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2407

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2406
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !2406
  %10 = bitcast i8* %add.ptr to %struct.pm_clock_entry*, !dbg !2406
  store %struct.pm_clock_entry* %10, %struct.pm_clock_entry** %tmp, align 8, !dbg !2407
  %11 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp, align 8, !dbg !2406
  store %struct.pm_clock_entry* %11, %struct.pm_clock_entry** %ce, align 8, !dbg !2409
  br label %for.cond, !dbg !2409

for.cond:                                         ; preds = %do.end11, %do.end
  %12 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2410
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %12, i32 0, i32 0, !dbg !2410
  %13 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2410
  %clock_list2 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %13, i32 0, i32 2, !dbg !2410
  %cmp = icmp eq %struct.list_head* %node, %clock_list2, !dbg !2410
  %lnot = xor i1 %cmp, true, !dbg !2410
  br i1 %lnot, label %for.body, label %for.end, !dbg !2409

for.body:                                         ; preds = %for.cond
  %14 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2412
  %15 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2415
  %clk3 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %15, i32 0, i32 2, !dbg !2416
  %16 = load %struct.clk*, %struct.clk** %clk3, align 8, !dbg !2416
  %cmp4 = icmp eq %struct.clk* %14, %16, !dbg !2417
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2418

if.then5:                                         ; preds = %for.body
  br label %remove, !dbg !2419

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2420

for.inc:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !2421, metadata !DIExpression()), !dbg !2423
  %17 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2423
  %node8 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %17, i32 0, i32 0, !dbg !2423
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %node8, i32 0, i32 0, !dbg !2423
  %18 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !2423
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !2423
  store i8* %19, i8** %__mptr7, align 8, !dbg !2423
  br label %do.body10, !dbg !2423

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !2424

do.end11:                                         ; preds = %do.body10
  %20 = load i8*, i8** %__mptr7, align 8, !dbg !2423
  %add.ptr13 = getelementptr i8, i8* %20, i64 0, !dbg !2423
  %21 = bitcast i8* %add.ptr13 to %struct.pm_clock_entry*, !dbg !2423
  store %struct.pm_clock_entry* %21, %struct.pm_clock_entry** %tmp12, align 8, !dbg !2424
  %22 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp12, align 8, !dbg !2423
  store %struct.pm_clock_entry* %22, %struct.pm_clock_entry** %ce, align 8, !dbg !2410
  br label %for.cond, !dbg !2410, !llvm.loop !2426

for.end:                                          ; preds = %for.cond
  %23 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2428
  %lock14 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %23, i32 0, i32 0, !dbg !2429
  store %struct.spinlock* %lock14, %struct.spinlock** %lock.addr.i17, align 8
  call void @arch_local_irq_enable() #10, !dbg !2430
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2431, !srcloc !2183
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i17, align 8, !dbg !2432
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !2432
  %rlock.i18 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !2432
  br label %return, !dbg !2433

remove:                                           ; preds = %if.then5
  call void @llvm.dbg.label(metadata !2434), !dbg !2435
  %26 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2436
  %node15 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %26, i32 0, i32 0, !dbg !2437
  call void @list_del(%struct.list_head* %node15) #9, !dbg !2438
  %27 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2439
  %lock16 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %27, i32 0, i32 0, !dbg !2440
  store %struct.spinlock* %lock16, %struct.spinlock** %lock.addr.i19, align 8
  call void @arch_local_irq_enable() #10, !dbg !2441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2442, !srcloc !2183
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !2443
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !2443
  %rlock.i20 = bitcast %union.anon* %29 to %struct.raw_spinlock*, !dbg !2443
  %30 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2444
  call void @__pm_clk_remove(%struct.pm_clock_entry* %30) #9, !dbg !2445
  br label %return, !dbg !2446

return:                                           ; preds = %remove, %for.end, %if.then
  ret void, !dbg !2446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_clk_remove(%struct.device* %dev, i8* %con_id) #0 !dbg !2447 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !2093, metadata !DIExpression()), !dbg !2450
  %lock.addr.i28 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i28, metadata !2093, metadata !DIExpression()), !dbg !2452
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2454
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pm_clock_entry*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp23 = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2460, metadata !DIExpression()), !dbg !2461
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2462
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2463
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2464, metadata !DIExpression()), !dbg !2465
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2466
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2466
  br i1 %tobool, label %if.end, label %if.then, !dbg !2468

if.then:                                          ; preds = %entry
  br label %return, !dbg !2469

if.end:                                           ; preds = %entry
  %2 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2470
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %2, i32 0, i32 0, !dbg !2471
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !2472
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2473, !srcloc !2168
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2474
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2474
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2474
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2475, metadata !DIExpression()), !dbg !2478
  %5 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2478
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %5, i32 0, i32 2, !dbg !2478
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clock_list, i32 0, i32 0, !dbg !2478
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2478
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2478
  store i8* %7, i8** %__mptr, align 8, !dbg !2478
  br label %do.body, !dbg !2478

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2479

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2478
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2478
  %9 = bitcast i8* %add.ptr to %struct.pm_clock_entry*, !dbg !2478
  store %struct.pm_clock_entry* %9, %struct.pm_clock_entry** %tmp, align 8, !dbg !2479
  %10 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp, align 8, !dbg !2478
  store %struct.pm_clock_entry* %10, %struct.pm_clock_entry** %ce, align 8, !dbg !2481
  br label %for.cond, !dbg !2481

for.cond:                                         ; preds = %do.end22, %do.end
  %11 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2482
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %11, i32 0, i32 0, !dbg !2482
  %12 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2482
  %clock_list1 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %12, i32 0, i32 2, !dbg !2482
  %cmp = icmp eq %struct.list_head* %node, %clock_list1, !dbg !2482
  %lnot = xor i1 %cmp, true, !dbg !2482
  br i1 %lnot, label %for.body, label %for.end, !dbg !2481

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %con_id.addr, align 8, !dbg !2484
  %tobool2 = icmp ne i8* %13, null, !dbg !2484
  br i1 %tobool2, label %if.else, label %land.lhs.true, !dbg !2487

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2488
  %con_id3 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %14, i32 0, i32 1, !dbg !2489
  %15 = load i8*, i8** %con_id3, align 8, !dbg !2489
  %tobool4 = icmp ne i8* %15, null, !dbg !2488
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2490

if.then5:                                         ; preds = %land.lhs.true
  br label %remove, !dbg !2491

if.else:                                          ; preds = %land.lhs.true, %for.body
  %16 = load i8*, i8** %con_id.addr, align 8, !dbg !2492
  %tobool6 = icmp ne i8* %16, null, !dbg !2492
  br i1 %tobool6, label %lor.lhs.false, label %if.then9, !dbg !2494

lor.lhs.false:                                    ; preds = %if.else
  %17 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2495
  %con_id7 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %17, i32 0, i32 1, !dbg !2496
  %18 = load i8*, i8** %con_id7, align 8, !dbg !2496
  %tobool8 = icmp ne i8* %18, null, !dbg !2495
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !2497

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  br label %for.inc, !dbg !2498

if.else10:                                        ; preds = %lor.lhs.false
  %19 = load i8*, i8** %con_id.addr, align 8, !dbg !2499
  %20 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2501
  %con_id11 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %20, i32 0, i32 1, !dbg !2502
  %21 = load i8*, i8** %con_id11, align 8, !dbg !2502
  %call12 = call i32 @strcmp(i8* %19, i8* %21) #9, !dbg !2503
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2503
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2504

if.then14:                                        ; preds = %if.else10
  br label %remove, !dbg !2505

if.end15:                                         ; preds = %if.else10
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %for.inc, !dbg !2506

for.inc:                                          ; preds = %if.end17, %if.then9
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !2507, metadata !DIExpression()), !dbg !2509
  %22 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2509
  %node19 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %22, i32 0, i32 0, !dbg !2509
  %next20 = getelementptr inbounds %struct.list_head, %struct.list_head* %node19, i32 0, i32 0, !dbg !2509
  %23 = load %struct.list_head*, %struct.list_head** %next20, align 8, !dbg !2509
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !2509
  store i8* %24, i8** %__mptr18, align 8, !dbg !2509
  br label %do.body21, !dbg !2509

do.body21:                                        ; preds = %for.inc
  br label %do.end22, !dbg !2510

do.end22:                                         ; preds = %do.body21
  %25 = load i8*, i8** %__mptr18, align 8, !dbg !2509
  %add.ptr24 = getelementptr i8, i8* %25, i64 0, !dbg !2509
  %26 = bitcast i8* %add.ptr24 to %struct.pm_clock_entry*, !dbg !2509
  store %struct.pm_clock_entry* %26, %struct.pm_clock_entry** %tmp23, align 8, !dbg !2510
  %27 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp23, align 8, !dbg !2509
  store %struct.pm_clock_entry* %27, %struct.pm_clock_entry** %ce, align 8, !dbg !2482
  br label %for.cond, !dbg !2482, !llvm.loop !2512

for.end:                                          ; preds = %for.cond
  %28 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2514
  %lock25 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %28, i32 0, i32 0, !dbg !2515
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i28, align 8
  call void @arch_local_irq_enable() #10, !dbg !2516
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2517, !srcloc !2183
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i28, align 8, !dbg !2518
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !2518
  %rlock.i29 = bitcast %union.anon* %30 to %struct.raw_spinlock*, !dbg !2518
  br label %return, !dbg !2519

remove:                                           ; preds = %if.then14, %if.then5
  call void @llvm.dbg.label(metadata !2520), !dbg !2521
  %31 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2522
  %node26 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %31, i32 0, i32 0, !dbg !2523
  call void @list_del(%struct.list_head* %node26) #9, !dbg !2524
  %32 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2525
  %lock27 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %32, i32 0, i32 0, !dbg !2526
  store %struct.spinlock* %lock27, %struct.spinlock** %lock.addr.i30, align 8
  call void @arch_local_irq_enable() #10, !dbg !2527
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2528, !srcloc !2183
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !2529
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !2529
  %rlock.i31 = bitcast %union.anon* %34 to %struct.raw_spinlock*, !dbg !2529
  %35 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2530
  call void @__pm_clk_remove(%struct.pm_clock_entry* %35) #9, !dbg !2531
  br label %return, !dbg !2532

return:                                           ; preds = %remove, %for.end, %if.then
  ret void, !dbg !2532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pm_subsys_data* @dev_to_psd(%struct.device* %dev) #0 !dbg !2533 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2538
  %tobool = icmp ne %struct.device* %0, null, !dbg !2538
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2538

cond.true:                                        ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2539
  %power = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2540
  %subsys_data = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 25, !dbg !2541
  %2 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %subsys_data, align 8, !dbg !2541
  br label %cond.end, !dbg !2538

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2538

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pm_subsys_data* [ %2, %cond.true ], [ null, %cond.false ], !dbg !2538
  ret %struct.pm_subsys_data* %cond, !dbg !2542
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2543 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2549
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !2550
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2551
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2552
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2553
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2554
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2555
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2556
  ret void, !dbg !2557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__pm_clk_remove(%struct.pm_clock_entry* %ce) #0 !dbg !2558 {
entry:
  %ce.addr = alloca %struct.pm_clock_entry*, align 8
  store %struct.pm_clock_entry* %ce, %struct.pm_clock_entry** %ce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  %0 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2563
  %tobool = icmp ne %struct.pm_clock_entry* %0, null, !dbg !2563
  br i1 %tobool, label %if.end, label %if.then, !dbg !2565

if.then:                                          ; preds = %entry
  br label %return, !dbg !2566

if.end:                                           ; preds = %entry
  %1 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2567
  %status = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %1, i32 0, i32 3, !dbg !2569
  %2 = load i32, i32* %status, align 8, !dbg !2569
  %cmp = icmp ult i32 %2, 3, !dbg !2570
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !2571

if.then1:                                         ; preds = %if.end
  %3 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2572
  %status2 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %3, i32 0, i32 3, !dbg !2575
  %4 = load i32, i32* %status2, align 8, !dbg !2575
  %cmp3 = icmp eq i32 %4, 2, !dbg !2576
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2577

if.then4:                                         ; preds = %if.then1
  %5 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2578
  %clk = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %5, i32 0, i32 2, !dbg !2579
  %6 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2579
  call void @clk_disable(%struct.clk* %6) #9, !dbg !2580
  br label %if.end5, !dbg !2580

if.end5:                                          ; preds = %if.then4, %if.then1
  %7 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2581
  %status6 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %7, i32 0, i32 3, !dbg !2583
  %8 = load i32, i32* %status6, align 8, !dbg !2583
  %cmp7 = icmp uge i32 %8, 1, !dbg !2584
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !2585

if.then8:                                         ; preds = %if.end5
  %9 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2586
  %clk9 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %9, i32 0, i32 2, !dbg !2588
  %10 = load %struct.clk*, %struct.clk** %clk9, align 8, !dbg !2588
  call void @clk_unprepare(%struct.clk* %10) #9, !dbg !2589
  %11 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2590
  %clk10 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %11, i32 0, i32 2, !dbg !2591
  %12 = load %struct.clk*, %struct.clk** %clk10, align 8, !dbg !2591
  call void @clk_put(%struct.clk* %12) #9, !dbg !2592
  br label %if.end11, !dbg !2593

if.end11:                                         ; preds = %if.then8, %if.end5
  br label %if.end12, !dbg !2594

if.end12:                                         ; preds = %if.end11, %if.end
  %13 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2595
  %con_id = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %13, i32 0, i32 1, !dbg !2596
  %14 = load i8*, i8** %con_id, align 8, !dbg !2596
  call void @kfree(i8* %14) #9, !dbg !2597
  %15 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2598
  %16 = bitcast %struct.pm_clock_entry* %15 to i8*, !dbg !2598
  call void @kfree(i8* %16) #9, !dbg !2599
  br label %return, !dbg !2600

return:                                           ; preds = %if.end12, %if.then
  ret void, !dbg !2600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_clk_init(%struct.device* %dev) #0 !dbg !2601 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2604, metadata !DIExpression()), !dbg !2605
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2606
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2607
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2605
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2608
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2608
  br i1 %tobool, label %if.then, label %if.end, !dbg !2610

if.then:                                          ; preds = %entry
  %2 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2611
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %2, i32 0, i32 2, !dbg !2612
  call void @INIT_LIST_HEAD(%struct.list_head* %clock_list) #9, !dbg !2613
  br label %if.end, !dbg !2613

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2615 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2616, metadata !DIExpression()), !dbg !2617
  br label %do.body, !dbg !2618

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2619

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2619

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2623
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2623
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2623
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2623
  br label %do.end3, !dbg !2623

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2619

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2625
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2626
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2627
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_create(%struct.device* %dev) #0 !dbg !2630 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2633
  %call = call i32 @dev_pm_get_subsys_data(%struct.device* %0) #9, !dbg !2634
  ret i32 %call, !dbg !2635
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_get_subsys_data(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_clk_destroy(%struct.device* %dev) #0 !dbg !2636 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !2093, metadata !DIExpression()), !dbg !2637
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2101, metadata !DIExpression()), !dbg !2639
  %dev.addr = alloca %struct.device*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  %c = alloca %struct.pm_clock_entry*, align 8
  %list = alloca %struct.list_head, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pm_clock_entry*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.pm_clock_entry*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.pm_clock_entry*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp22 = alloca %struct.pm_clock_entry*, align 8
  %__mptr24 = alloca i8*, align 8
  %tmp29 = alloca %struct.pm_clock_entry*, align 8
  %__mptr38 = alloca i8*, align 8
  %tmp43 = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2643, metadata !DIExpression()), !dbg !2644
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2645
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2646
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2644
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %c, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.list_head* %list, metadata !2651, metadata !DIExpression()), !dbg !2652
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2653
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2653
  br i1 %tobool, label %if.end, label %if.then, !dbg !2655

if.then:                                          ; preds = %entry
  br label %for.end45, !dbg !2656

if.end:                                           ; preds = %entry
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #9, !dbg !2657
  %2 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2658
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %2, i32 0, i32 0, !dbg !2659
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !2660
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2661, !srcloc !2168
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2662
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2662
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2662
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2663, metadata !DIExpression()), !dbg !2666
  %5 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2666
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %5, i32 0, i32 2, !dbg !2666
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %clock_list, i32 0, i32 1, !dbg !2666
  %6 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2666
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2666
  store i8* %7, i8** %__mptr, align 8, !dbg !2666
  br label %do.body, !dbg !2666

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2667

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2666
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2666
  %9 = bitcast i8* %add.ptr to %struct.pm_clock_entry*, !dbg !2666
  store %struct.pm_clock_entry* %9, %struct.pm_clock_entry** %tmp, align 8, !dbg !2667
  %10 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp, align 8, !dbg !2666
  store %struct.pm_clock_entry* %10, %struct.pm_clock_entry** %ce, align 8, !dbg !2669
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2670, metadata !DIExpression()), !dbg !2672
  %11 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2672
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %11, i32 0, i32 0, !dbg !2672
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 1, !dbg !2672
  %12 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !2672
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !2672
  store i8* %13, i8** %__mptr1, align 8, !dbg !2672
  br label %do.body3, !dbg !2672

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2673

do.end4:                                          ; preds = %do.body3
  %14 = load i8*, i8** %__mptr1, align 8, !dbg !2672
  %add.ptr6 = getelementptr i8, i8* %14, i64 0, !dbg !2672
  %15 = bitcast i8* %add.ptr6 to %struct.pm_clock_entry*, !dbg !2672
  store %struct.pm_clock_entry* %15, %struct.pm_clock_entry** %tmp5, align 8, !dbg !2673
  %16 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp5, align 8, !dbg !2672
  store %struct.pm_clock_entry* %16, %struct.pm_clock_entry** %c, align 8, !dbg !2669
  br label %for.cond, !dbg !2669

for.cond:                                         ; preds = %do.end14, %do.end4
  %17 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2675
  %node7 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %17, i32 0, i32 0, !dbg !2675
  %18 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2675
  %clock_list8 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %18, i32 0, i32 2, !dbg !2675
  %cmp = icmp eq %struct.list_head* %node7, %clock_list8, !dbg !2675
  %lnot = xor i1 %cmp, true, !dbg !2675
  br i1 %lnot, label %for.body, label %for.end, !dbg !2669

for.body:                                         ; preds = %for.cond
  %19 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2677
  %node9 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %19, i32 0, i32 0, !dbg !2678
  call void @list_move(%struct.list_head* %node9, %struct.list_head* %list) #9, !dbg !2679
  br label %for.inc, !dbg !2679

for.inc:                                          ; preds = %for.body
  %20 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %c, align 8, !dbg !2675
  store %struct.pm_clock_entry* %20, %struct.pm_clock_entry** %ce, align 8, !dbg !2675
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !2680, metadata !DIExpression()), !dbg !2682
  %21 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %c, align 8, !dbg !2682
  %node11 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %21, i32 0, i32 0, !dbg !2682
  %prev12 = getelementptr inbounds %struct.list_head, %struct.list_head* %node11, i32 0, i32 1, !dbg !2682
  %22 = load %struct.list_head*, %struct.list_head** %prev12, align 8, !dbg !2682
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !2682
  store i8* %23, i8** %__mptr10, align 8, !dbg !2682
  br label %do.body13, !dbg !2682

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !2683

do.end14:                                         ; preds = %do.body13
  %24 = load i8*, i8** %__mptr10, align 8, !dbg !2682
  %add.ptr16 = getelementptr i8, i8* %24, i64 0, !dbg !2682
  %25 = bitcast i8* %add.ptr16 to %struct.pm_clock_entry*, !dbg !2682
  store %struct.pm_clock_entry* %25, %struct.pm_clock_entry** %tmp15, align 8, !dbg !2683
  %26 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp15, align 8, !dbg !2682
  store %struct.pm_clock_entry* %26, %struct.pm_clock_entry** %c, align 8, !dbg !2675
  br label %for.cond, !dbg !2675, !llvm.loop !2685

for.end:                                          ; preds = %for.cond
  %27 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2687
  %lock17 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %27, i32 0, i32 0, !dbg !2688
  store %struct.spinlock* %lock17, %struct.spinlock** %lock.addr.i46, align 8
  call void @arch_local_irq_enable() #10, !dbg !2689
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2690, !srcloc !2183
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !2691
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !2691
  %rlock.i47 = bitcast %union.anon* %29 to %struct.raw_spinlock*, !dbg !2691
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2692
  call void @dev_pm_put_subsys_data(%struct.device* %30) #9, !dbg !2693
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !2694, metadata !DIExpression()), !dbg !2697
  %prev19 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 1, !dbg !2697
  %31 = load %struct.list_head*, %struct.list_head** %prev19, align 8, !dbg !2697
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !2697
  store i8* %32, i8** %__mptr18, align 8, !dbg !2697
  br label %do.body20, !dbg !2697

do.body20:                                        ; preds = %for.end
  br label %do.end21, !dbg !2698

do.end21:                                         ; preds = %do.body20
  %33 = load i8*, i8** %__mptr18, align 8, !dbg !2697
  %add.ptr23 = getelementptr i8, i8* %33, i64 0, !dbg !2697
  %34 = bitcast i8* %add.ptr23 to %struct.pm_clock_entry*, !dbg !2697
  store %struct.pm_clock_entry* %34, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2698
  %35 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2697
  store %struct.pm_clock_entry* %35, %struct.pm_clock_entry** %ce, align 8, !dbg !2700
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !2701, metadata !DIExpression()), !dbg !2703
  %36 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2703
  %node25 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %36, i32 0, i32 0, !dbg !2703
  %prev26 = getelementptr inbounds %struct.list_head, %struct.list_head* %node25, i32 0, i32 1, !dbg !2703
  %37 = load %struct.list_head*, %struct.list_head** %prev26, align 8, !dbg !2703
  %38 = bitcast %struct.list_head* %37 to i8*, !dbg !2703
  store i8* %38, i8** %__mptr24, align 8, !dbg !2703
  br label %do.body27, !dbg !2703

do.body27:                                        ; preds = %do.end21
  br label %do.end28, !dbg !2704

do.end28:                                         ; preds = %do.body27
  %39 = load i8*, i8** %__mptr24, align 8, !dbg !2703
  %add.ptr30 = getelementptr i8, i8* %39, i64 0, !dbg !2703
  %40 = bitcast i8* %add.ptr30 to %struct.pm_clock_entry*, !dbg !2703
  store %struct.pm_clock_entry* %40, %struct.pm_clock_entry** %tmp29, align 8, !dbg !2704
  %41 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp29, align 8, !dbg !2703
  store %struct.pm_clock_entry* %41, %struct.pm_clock_entry** %c, align 8, !dbg !2700
  br label %for.cond31, !dbg !2700

for.cond31:                                       ; preds = %do.end42, %do.end28
  %42 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2706
  %node32 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %42, i32 0, i32 0, !dbg !2706
  %cmp33 = icmp eq %struct.list_head* %node32, %list, !dbg !2706
  %lnot34 = xor i1 %cmp33, true, !dbg !2706
  br i1 %lnot34, label %for.body35, label %for.end45, !dbg !2700

for.body35:                                       ; preds = %for.cond31
  %43 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2708
  %node36 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %43, i32 0, i32 0, !dbg !2710
  call void @list_del(%struct.list_head* %node36) #9, !dbg !2711
  %44 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2712
  call void @__pm_clk_remove(%struct.pm_clock_entry* %44) #9, !dbg !2713
  br label %for.inc37, !dbg !2714

for.inc37:                                        ; preds = %for.body35
  %45 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %c, align 8, !dbg !2706
  store %struct.pm_clock_entry* %45, %struct.pm_clock_entry** %ce, align 8, !dbg !2706
  call void @llvm.dbg.declare(metadata i8** %__mptr38, metadata !2715, metadata !DIExpression()), !dbg !2717
  %46 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %c, align 8, !dbg !2717
  %node39 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %46, i32 0, i32 0, !dbg !2717
  %prev40 = getelementptr inbounds %struct.list_head, %struct.list_head* %node39, i32 0, i32 1, !dbg !2717
  %47 = load %struct.list_head*, %struct.list_head** %prev40, align 8, !dbg !2717
  %48 = bitcast %struct.list_head* %47 to i8*, !dbg !2717
  store i8* %48, i8** %__mptr38, align 8, !dbg !2717
  br label %do.body41, !dbg !2717

do.body41:                                        ; preds = %for.inc37
  br label %do.end42, !dbg !2718

do.end42:                                         ; preds = %do.body41
  %49 = load i8*, i8** %__mptr38, align 8, !dbg !2717
  %add.ptr44 = getelementptr i8, i8* %49, i64 0, !dbg !2717
  %50 = bitcast i8* %add.ptr44 to %struct.pm_clock_entry*, !dbg !2717
  store %struct.pm_clock_entry* %50, %struct.pm_clock_entry** %tmp43, align 8, !dbg !2718
  %51 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp43, align 8, !dbg !2717
  store %struct.pm_clock_entry* %51, %struct.pm_clock_entry** %c, align 8, !dbg !2706
  br label %for.cond31, !dbg !2706, !llvm.loop !2720

for.end45:                                        ; preds = %if.then, %for.cond31
  ret void, !dbg !2722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_move(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !2723 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2730
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !2731
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2732
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2733
  call void @list_add(%struct.list_head* %1, %struct.list_head* %2) #9, !dbg !2734
  ret void, !dbg !2735
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_put_subsys_data(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_suspend(%struct.device* %dev) #0 !dbg !2736 {
entry:
  %lock.addr.i44 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i44, metadata !2737, metadata !DIExpression()), !dbg !2741
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2743, metadata !DIExpression()), !dbg !2744
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2745, metadata !DIExpression()), !dbg !2750
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.pm_clock_entry*, align 8
  %__mptr36 = alloca i8*, align 8
  %tmp41 = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2761
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2762
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2765, metadata !DIExpression()), !dbg !2766
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2767
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2767
  br i1 %tobool, label %if.end, label %if.then, !dbg !2769

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2770
  br label %return, !dbg !2770

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2771

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2772

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2776, metadata !DIExpression()), !dbg !2775
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2775
  %conv = zext i1 %cmp to i32, !dbg !2775
  store i32 1, i32* %tmp, align 4, !dbg !2775
  %2 = load i32, i32* %tmp, align 4, !dbg !2775
  br label %do.body2, !dbg !2777

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2778

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2779

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2785, metadata !DIExpression()), !dbg !2784
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2784
  %conv8 = zext i1 %cmp7 to i32, !dbg !2784
  store i32 1, i32* %tmp9, align 4, !dbg !2784
  %3 = load i32, i32* %tmp9, align 4, !dbg !2784
  %call10 = call i64 @arch_local_irq_save() #9, !dbg !2786
  store i64 %call10, i64* %flags, align 8, !dbg !2786
  br label %do.end, !dbg !2786

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !2779

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2778

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2787, !srcloc !2788
  br label %do.body13, !dbg !2787

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2789
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %4, i32 0, i32 0, !dbg !2789
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2790
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !2791
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !2791
  br label %do.end15, !dbg !2789

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2787

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2778

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2777

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2772

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2792, metadata !DIExpression()), !dbg !2795
  %7 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2795
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %7, i32 0, i32 2, !dbg !2795
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %clock_list, i32 0, i32 1, !dbg !2795
  %8 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2795
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !2795
  store i8* %9, i8** %__mptr, align 8, !dbg !2795
  br label %do.body20, !dbg !2795

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2796

do.end21:                                         ; preds = %do.body20
  %10 = load i8*, i8** %__mptr, align 8, !dbg !2795
  %add.ptr = getelementptr i8, i8* %10, i64 0, !dbg !2795
  %11 = bitcast i8* %add.ptr to %struct.pm_clock_entry*, !dbg !2795
  store %struct.pm_clock_entry* %11, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2796
  %12 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2795
  store %struct.pm_clock_entry* %12, %struct.pm_clock_entry** %ce, align 8, !dbg !2798
  br label %for.cond, !dbg !2798

for.cond:                                         ; preds = %do.end40, %do.end21
  %13 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2799
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %13, i32 0, i32 0, !dbg !2799
  %14 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2799
  %clock_list23 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %14, i32 0, i32 2, !dbg !2799
  %cmp24 = icmp eq %struct.list_head* %node, %clock_list23, !dbg !2799
  %lnot = xor i1 %cmp24, true, !dbg !2799
  br i1 %lnot, label %for.body, label %for.end, !dbg !2798

for.body:                                         ; preds = %for.cond
  %15 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2801
  %status = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %15, i32 0, i32 3, !dbg !2804
  %16 = load i32, i32* %status, align 8, !dbg !2804
  %cmp26 = icmp ult i32 %16, 3, !dbg !2805
  br i1 %cmp26, label %if.then28, label %if.end35, !dbg !2806

if.then28:                                        ; preds = %for.body
  %17 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2807
  %status29 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %17, i32 0, i32 3, !dbg !2810
  %18 = load i32, i32* %status29, align 8, !dbg !2810
  %cmp30 = icmp eq i32 %18, 2, !dbg !2811
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !2812

if.then32:                                        ; preds = %if.then28
  %19 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2813
  %clk = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %19, i32 0, i32 2, !dbg !2814
  %20 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2814
  call void @clk_disable(%struct.clk* %20) #9, !dbg !2815
  br label %if.end33, !dbg !2815

if.end33:                                         ; preds = %if.then32, %if.then28
  %21 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2816
  %status34 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %21, i32 0, i32 3, !dbg !2817
  store i32 1, i32* %status34, align 8, !dbg !2818
  br label %if.end35, !dbg !2819

if.end35:                                         ; preds = %if.end33, %for.body
  br label %for.inc, !dbg !2820

for.inc:                                          ; preds = %if.end35
  call void @llvm.dbg.declare(metadata i8** %__mptr36, metadata !2821, metadata !DIExpression()), !dbg !2823
  %22 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2823
  %node37 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %22, i32 0, i32 0, !dbg !2823
  %prev38 = getelementptr inbounds %struct.list_head, %struct.list_head* %node37, i32 0, i32 1, !dbg !2823
  %23 = load %struct.list_head*, %struct.list_head** %prev38, align 8, !dbg !2823
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !2823
  store i8* %24, i8** %__mptr36, align 8, !dbg !2823
  br label %do.body39, !dbg !2823

do.body39:                                        ; preds = %for.inc
  br label %do.end40, !dbg !2824

do.end40:                                         ; preds = %do.body39
  %25 = load i8*, i8** %__mptr36, align 8, !dbg !2823
  %add.ptr42 = getelementptr i8, i8* %25, i64 0, !dbg !2823
  %26 = bitcast i8* %add.ptr42 to %struct.pm_clock_entry*, !dbg !2823
  store %struct.pm_clock_entry* %26, %struct.pm_clock_entry** %tmp41, align 8, !dbg !2824
  %27 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp41, align 8, !dbg !2823
  store %struct.pm_clock_entry* %27, %struct.pm_clock_entry** %ce, align 8, !dbg !2799
  br label %for.cond, !dbg !2799, !llvm.loop !2826

for.end:                                          ; preds = %for.cond
  %28 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2828
  %lock43 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %28, i32 0, i32 0, !dbg !2829
  %29 = load i64, i64* %flags, align 8, !dbg !2830
  store %struct.spinlock* %lock43, %struct.spinlock** %lock.addr.i44, align 8
  store i64 %29, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !151, metadata !2831, metadata !DIExpression()) #8, !dbg !2834
  call void @llvm.dbg.declare(metadata !151, metadata !2835, metadata !DIExpression()) #8, !dbg !2834
  store i32 1, i32* %tmp.i, align 4, !dbg !2834
  %30 = load i32, i32* %tmp.i, align 4, !dbg !2834
  call void @llvm.dbg.declare(metadata !151, metadata !2836, metadata !DIExpression()) #8, !dbg !2841
  call void @llvm.dbg.declare(metadata !151, metadata !2842, metadata !DIExpression()) #8, !dbg !2841
  store i32 1, i32* %tmp8.i, align 4, !dbg !2841
  %31 = load i32, i32* %tmp8.i, align 4, !dbg !2841
  %32 = load i64, i64* %flags.addr.i, align 8, !dbg !2843
  call void @arch_local_irq_restore(i64 %32) #10, !dbg !2843
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2844, !srcloc !2846
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i44, align 8, !dbg !2847
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !2847
  %rlock.i45 = bitcast %union.anon* %34 to %struct.raw_spinlock*, !dbg !2847
  store i32 0, i32* %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !2850
  ret i32 %35, !dbg !2850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2851 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2855, metadata !DIExpression()), !dbg !2856
  %call = call i64 @arch_local_save_flags() #9, !dbg !2857
  store i64 %call, i64* %f, align 8, !dbg !2858
  call void @arch_local_irq_disable() #9, !dbg !2859
  %0 = load i64, i64* %f, align 8, !dbg !2860
  ret i64 %0, !dbg !2861
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_resume(%struct.device* %dev) #0 !dbg !2862 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !2737, metadata !DIExpression()), !dbg !2863
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2743, metadata !DIExpression()), !dbg !2865
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2745, metadata !DIExpression()), !dbg !2866
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %psd = alloca %struct.pm_subsys_data*, align 8
  %ce = alloca %struct.pm_clock_entry*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.pm_clock_entry*, align 8
  %__mptr26 = alloca i8*, align 8
  %tmp31 = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.declare(metadata %struct.pm_subsys_data** %psd, metadata !2875, metadata !DIExpression()), !dbg !2876
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2877
  %call = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %0) #9, !dbg !2878
  store %struct.pm_subsys_data* %call, %struct.pm_subsys_data** %psd, align 8, !dbg !2876
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2881, metadata !DIExpression()), !dbg !2882
  %1 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2883
  %tobool = icmp ne %struct.pm_subsys_data* %1, null, !dbg !2883
  br i1 %tobool, label %if.end, label %if.then, !dbg !2885

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2886
  br label %return, !dbg !2886

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2887

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2888

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2892, metadata !DIExpression()), !dbg !2891
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2891
  %conv = zext i1 %cmp to i32, !dbg !2891
  store i32 1, i32* %tmp, align 4, !dbg !2891
  %2 = load i32, i32* %tmp, align 4, !dbg !2891
  br label %do.body2, !dbg !2893

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2894

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2895

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2901, metadata !DIExpression()), !dbg !2900
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2900
  %conv8 = zext i1 %cmp7 to i32, !dbg !2900
  store i32 1, i32* %tmp9, align 4, !dbg !2900
  %3 = load i32, i32* %tmp9, align 4, !dbg !2900
  %call10 = call i64 @arch_local_irq_save() #9, !dbg !2902
  store i64 %call10, i64* %flags, align 8, !dbg !2902
  br label %do.end, !dbg !2902

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !2895

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2894

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2903, !srcloc !2904
  br label %do.body13, !dbg !2903

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2905
  %lock = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %4, i32 0, i32 0, !dbg !2905
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2906
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !2907
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !2907
  br label %do.end15, !dbg !2905

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2903

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2894

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2893

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2888

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2908, metadata !DIExpression()), !dbg !2911
  %7 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2911
  %clock_list = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %7, i32 0, i32 2, !dbg !2911
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %clock_list, i32 0, i32 0, !dbg !2911
  %8 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2911
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !2911
  store i8* %9, i8** %__mptr, align 8, !dbg !2911
  br label %do.body20, !dbg !2911

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2912

do.end21:                                         ; preds = %do.body20
  %10 = load i8*, i8** %__mptr, align 8, !dbg !2911
  %add.ptr = getelementptr i8, i8* %10, i64 0, !dbg !2911
  %11 = bitcast i8* %add.ptr to %struct.pm_clock_entry*, !dbg !2911
  store %struct.pm_clock_entry* %11, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2912
  %12 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp22, align 8, !dbg !2911
  store %struct.pm_clock_entry* %12, %struct.pm_clock_entry** %ce, align 8, !dbg !2914
  br label %for.cond, !dbg !2914

for.cond:                                         ; preds = %do.end30, %do.end21
  %13 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2915
  %node = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %13, i32 0, i32 0, !dbg !2915
  %14 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2915
  %clock_list23 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %14, i32 0, i32 2, !dbg !2915
  %cmp24 = icmp eq %struct.list_head* %node, %clock_list23, !dbg !2915
  %lnot = xor i1 %cmp24, true, !dbg !2915
  br i1 %lnot, label %for.body, label %for.end, !dbg !2914

for.body:                                         ; preds = %for.cond
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2917
  %16 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2918
  call void @__pm_clk_enable(%struct.device* %15, %struct.pm_clock_entry* %16) #9, !dbg !2919
  br label %for.inc, !dbg !2919

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !2920, metadata !DIExpression()), !dbg !2922
  %17 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce, align 8, !dbg !2922
  %node27 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %17, i32 0, i32 0, !dbg !2922
  %next28 = getelementptr inbounds %struct.list_head, %struct.list_head* %node27, i32 0, i32 0, !dbg !2922
  %18 = load %struct.list_head*, %struct.list_head** %next28, align 8, !dbg !2922
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !2922
  store i8* %19, i8** %__mptr26, align 8, !dbg !2922
  br label %do.body29, !dbg !2922

do.body29:                                        ; preds = %for.inc
  br label %do.end30, !dbg !2923

do.end30:                                         ; preds = %do.body29
  %20 = load i8*, i8** %__mptr26, align 8, !dbg !2922
  %add.ptr32 = getelementptr i8, i8* %20, i64 0, !dbg !2922
  %21 = bitcast i8* %add.ptr32 to %struct.pm_clock_entry*, !dbg !2922
  store %struct.pm_clock_entry* %21, %struct.pm_clock_entry** %tmp31, align 8, !dbg !2923
  %22 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %tmp31, align 8, !dbg !2922
  store %struct.pm_clock_entry* %22, %struct.pm_clock_entry** %ce, align 8, !dbg !2915
  br label %for.cond, !dbg !2915, !llvm.loop !2925

for.end:                                          ; preds = %for.cond
  %23 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %psd, align 8, !dbg !2927
  %lock33 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %23, i32 0, i32 0, !dbg !2928
  %24 = load i64, i64* %flags, align 8, !dbg !2929
  store %struct.spinlock* %lock33, %struct.spinlock** %lock.addr.i34, align 8
  store i64 %24, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !151, metadata !2831, metadata !DIExpression()) #8, !dbg !2930
  call void @llvm.dbg.declare(metadata !151, metadata !2835, metadata !DIExpression()) #8, !dbg !2930
  store i32 1, i32* %tmp.i, align 4, !dbg !2930
  %25 = load i32, i32* %tmp.i, align 4, !dbg !2930
  call void @llvm.dbg.declare(metadata !151, metadata !2836, metadata !DIExpression()) #8, !dbg !2931
  call void @llvm.dbg.declare(metadata !151, metadata !2842, metadata !DIExpression()) #8, !dbg !2931
  store i32 1, i32* %tmp8.i, align 4, !dbg !2931
  %26 = load i32, i32* %tmp8.i, align 4, !dbg !2931
  %27 = load i64, i64* %flags.addr.i, align 8, !dbg !2932
  call void @arch_local_irq_restore(i64 %27) #10, !dbg !2932
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2933, !srcloc !2846
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !2934
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !2934
  %rlock.i35 = bitcast %union.anon* %29 to %struct.raw_spinlock*, !dbg !2934
  store i32 0, i32* %retval, align 4, !dbg !2935
  br label %return, !dbg !2935

return:                                           ; preds = %for.end, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !2936
  ret i32 %30, !dbg !2936
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__pm_clk_enable(%struct.device* %dev, %struct.pm_clock_entry* %ce) #0 !dbg !2937 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ce.addr = alloca %struct.pm_clock_entry*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2940, metadata !DIExpression()), !dbg !2941
  store %struct.pm_clock_entry* %ce, %struct.pm_clock_entry** %ce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2944, metadata !DIExpression()), !dbg !2945
  %0 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2946
  %status = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %0, i32 0, i32 3, !dbg !2948
  %1 = load i32, i32* %status, align 8, !dbg !2948
  %cmp = icmp ult i32 %1, 3, !dbg !2949
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2950

if.then:                                          ; preds = %entry
  %2 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2951
  %clk = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %2, i32 0, i32 2, !dbg !2953
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2953
  %call = call i32 @clk_enable(%struct.clk* %3) #9, !dbg !2954
  store i32 %call, i32* %ret, align 4, !dbg !2955
  %4 = load i32, i32* %ret, align 4, !dbg !2956
  %tobool = icmp ne i32 %4, 0, !dbg !2956
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2958

if.then1:                                         ; preds = %if.then
  %5 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2959
  %status2 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %5, i32 0, i32 3, !dbg !2960
  store i32 2, i32* %status2, align 8, !dbg !2961
  br label %if.end, !dbg !2959

if.else:                                          ; preds = %if.then
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2962
  %7 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !2962
  %clk3 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %7, i32 0, i32 2, !dbg !2962
  %8 = load %struct.clk*, %struct.clk** %clk3, align 8, !dbg !2962
  %9 = load i32, i32* %ret, align 4, !dbg !2962
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__pm_clk_enable, i64 0, i64 0), %struct.clk* %8, i32 %9) #11, !dbg !2962
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !2963

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !2964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_runtime_suspend(%struct.device* %dev) #0 !dbg !2965 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2968, metadata !DIExpression()), !dbg !2969
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2970
  %call = call i32 @pm_generic_runtime_suspend(%struct.device* %0) #9, !dbg !2971
  store i32 %call, i32* %ret, align 4, !dbg !2972
  %1 = load i32, i32* %ret, align 4, !dbg !2973
  %tobool = icmp ne i32 %1, 0, !dbg !2973
  br i1 %tobool, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2976
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #11, !dbg !2976
  %3 = load i32, i32* %ret, align 4, !dbg !2978
  store i32 %3, i32* %retval, align 4, !dbg !2979
  br label %return, !dbg !2979

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2980
  %call1 = call i32 @pm_clk_suspend(%struct.device* %4) #9, !dbg !2981
  store i32 %call1, i32* %ret, align 4, !dbg !2982
  %5 = load i32, i32* %ret, align 4, !dbg !2983
  %tobool2 = icmp ne i32 %5, 0, !dbg !2983
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2985

if.then3:                                         ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2986
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !2986
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2988
  %call4 = call i32 @pm_generic_runtime_resume(%struct.device* %7) #9, !dbg !2989
  %8 = load i32, i32* %ret, align 4, !dbg !2990
  store i32 %8, i32* %retval, align 4, !dbg !2991
  br label %return, !dbg !2991

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2992
  br label %return, !dbg !2992

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2993
  ret i32 %9, !dbg !2993
}

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_suspend(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pm_generic_runtime_resume(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_clk_runtime_resume(%struct.device* %dev) #0 !dbg !2994 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2997, metadata !DIExpression()), !dbg !2998
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2999
  %call = call i32 @pm_clk_resume(%struct.device* %0) #9, !dbg !3000
  store i32 %call, i32* %ret, align 4, !dbg !3001
  %1 = load i32, i32* %ret, align 4, !dbg !3002
  %tobool = icmp ne i32 %1, 0, !dbg !3002
  br i1 %tobool, label %if.then, label %if.end, !dbg !3004

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3005
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !3005
  %3 = load i32, i32* %ret, align 4, !dbg !3007
  store i32 %3, i32* %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3009
  %call1 = call i32 @pm_generic_runtime_resume(%struct.device* %4) #9, !dbg !3010
  store i32 %call1, i32* %retval, align 4, !dbg !3011
  br label %return, !dbg !3011

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3012
  ret i32 %5, !dbg !3012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_clk_add_notifier(%struct.bus_type* %bus, %struct.pm_clk_notifier_block* %clknb) #0 !dbg !3013 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %clknb.addr = alloca %struct.pm_clk_notifier_block*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !3016, metadata !DIExpression()), !dbg !3017
  store %struct.pm_clk_notifier_block* %clknb, %struct.pm_clk_notifier_block** %clknb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pm_clk_notifier_block** %clknb.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3020
  %tobool = icmp ne %struct.bus_type* %0, null, !dbg !3020
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3022

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb.addr, align 8, !dbg !3023
  %tobool1 = icmp ne %struct.pm_clk_notifier_block* %1, null, !dbg !3023
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3024

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !3025

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb.addr, align 8, !dbg !3026
  %nb = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %2, i32 0, i32 0, !dbg !3027
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb, i32 0, i32 0, !dbg !3028
  store i32 (%struct.notifier_block*, i64, i8*)* @pm_clk_notify, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !3029
  %3 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !3030
  %4 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb.addr, align 8, !dbg !3031
  %nb2 = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %4, i32 0, i32 0, !dbg !3032
  %call = call i32 @bus_register_notifier(%struct.bus_type* %3, %struct.notifier_block* %nb2) #9, !dbg !3033
  br label %return, !dbg !3034

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_clk_notify(%struct.notifier_block* %nb, i64 %action, i8* %data) #0 !dbg !3035 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %clknb = alloca %struct.pm_clk_notifier_block*, align 8
  %dev = alloca %struct.device*, align 8
  %con_id = alloca i8**, align 8
  %error = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pm_clk_notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3036, metadata !DIExpression()), !dbg !3037
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !3038, metadata !DIExpression()), !dbg !3039
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.pm_clk_notifier_block** %clknb, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3044, metadata !DIExpression()), !dbg !3045
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3046
  %1 = bitcast i8* %0 to %struct.device*, !dbg !3046
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !3045
  call void @llvm.dbg.declare(metadata i8*** %con_id, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3052, metadata !DIExpression()), !dbg !3054
  %2 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !3054
  %3 = bitcast %struct.notifier_block* %2 to i8*, !dbg !3054
  store i8* %3, i8** %__mptr, align 8, !dbg !3054
  br label %do.body, !dbg !3054

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3055

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3054
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !3054
  %5 = bitcast i8* %add.ptr to %struct.pm_clk_notifier_block*, !dbg !3054
  store %struct.pm_clk_notifier_block* %5, %struct.pm_clk_notifier_block** %tmp, align 8, !dbg !3055
  %6 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %tmp, align 8, !dbg !3054
  store %struct.pm_clk_notifier_block* %6, %struct.pm_clk_notifier_block** %clknb, align 8, !dbg !3057
  %7 = load i64, i64* %action.addr, align 8, !dbg !3058
  switch i64 %7, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb12
  ], !dbg !3059

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3060
  %pm_domain = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 12, !dbg !3063
  %9 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8, !dbg !3063
  %tobool = icmp ne %struct.dev_pm_domain* %9, null, !dbg !3060
  br i1 %tobool, label %if.then, label %if.end, !dbg !3064

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !3065

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3066
  %call = call i32 @pm_clk_create(%struct.device* %10) #9, !dbg !3067
  store i32 %call, i32* %error, align 4, !dbg !3068
  %11 = load i32, i32* %error, align 4, !dbg !3069
  %tobool1 = icmp ne i32 %11, 0, !dbg !3069
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3071

if.then2:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !3072

if.end3:                                          ; preds = %if.end
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3073
  %13 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb, align 8, !dbg !3074
  %pm_domain4 = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %13, i32 0, i32 1, !dbg !3075
  %14 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain4, align 8, !dbg !3075
  call void @dev_pm_domain_set(%struct.device* %12, %struct.dev_pm_domain* %14) #9, !dbg !3076
  %15 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb, align 8, !dbg !3077
  %con_ids = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %15, i32 0, i32 2, !dbg !3079
  %arrayidx = getelementptr [0 x i8*], [0 x i8*]* %con_ids, i64 0, i64 0, !dbg !3077
  %16 = load i8*, i8** %arrayidx, align 8, !dbg !3077
  %tobool5 = icmp ne i8* %16, null, !dbg !3077
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !3080

if.then6:                                         ; preds = %if.end3
  %17 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb, align 8, !dbg !3081
  %con_ids7 = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %17, i32 0, i32 2, !dbg !3084
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %con_ids7, i64 0, i64 0, !dbg !3081
  store i8** %arraydecay, i8*** %con_id, align 8, !dbg !3085
  br label %for.cond, !dbg !3086

for.cond:                                         ; preds = %for.inc, %if.then6
  %18 = load i8**, i8*** %con_id, align 8, !dbg !3087
  %19 = load i8*, i8** %18, align 8, !dbg !3089
  %tobool8 = icmp ne i8* %19, null, !dbg !3090
  br i1 %tobool8, label %for.body, label %for.end, !dbg !3090

for.body:                                         ; preds = %for.cond
  %20 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3091
  %21 = load i8**, i8*** %con_id, align 8, !dbg !3092
  %22 = load i8*, i8** %21, align 8, !dbg !3093
  %call9 = call i32 @pm_clk_add(%struct.device* %20, i8* %22) #9, !dbg !3094
  br label %for.inc, !dbg !3094

for.inc:                                          ; preds = %for.body
  %23 = load i8**, i8*** %con_id, align 8, !dbg !3095
  %incdec.ptr = getelementptr i8*, i8** %23, i32 1, !dbg !3095
  store i8** %incdec.ptr, i8*** %con_id, align 8, !dbg !3095
  br label %for.cond, !dbg !3096, !llvm.loop !3097

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !3099

if.else:                                          ; preds = %if.end3
  %24 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3100
  %call10 = call i32 @pm_clk_add(%struct.device* %24, i8* null) #9, !dbg !3102
  br label %if.end11

if.end11:                                         ; preds = %if.else, %for.end
  br label %sw.epilog, !dbg !3103

sw.bb12:                                          ; preds = %do.end
  %25 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3104
  %pm_domain13 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 12, !dbg !3106
  %26 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain13, align 8, !dbg !3106
  %27 = load %struct.pm_clk_notifier_block*, %struct.pm_clk_notifier_block** %clknb, align 8, !dbg !3107
  %pm_domain14 = getelementptr inbounds %struct.pm_clk_notifier_block, %struct.pm_clk_notifier_block* %27, i32 0, i32 1, !dbg !3108
  %28 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain14, align 8, !dbg !3108
  %cmp = icmp ne %struct.dev_pm_domain* %26, %28, !dbg !3109
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !3110

if.then15:                                        ; preds = %sw.bb12
  br label %sw.epilog, !dbg !3111

if.end16:                                         ; preds = %sw.bb12
  %29 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3112
  call void @dev_pm_domain_set(%struct.device* %29, %struct.dev_pm_domain* null) #9, !dbg !3113
  %30 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3114
  call void @pm_clk_destroy(%struct.device* %30) #9, !dbg !3115
  br label %sw.epilog, !dbg !3116

sw.epilog:                                        ; preds = %do.end, %if.end16, %if.then15, %if.end11, %if.then2, %if.then
  ret i32 0, !dbg !3117
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register_notifier(%struct.bus_type*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3118 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3121, metadata !DIExpression()), !dbg !3125
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3131, metadata !DIExpression()), !dbg !3132
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3133, metadata !DIExpression()), !dbg !3134
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3135, metadata !DIExpression()), !dbg !3136
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3137, metadata !DIExpression()), !dbg !3141
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3143, metadata !DIExpression()), !dbg !3147
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3149, metadata !DIExpression()), !dbg !3153
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3158, metadata !DIExpression()), !dbg !3159
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3160, metadata !DIExpression()), !dbg !3161
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3162, metadata !DIExpression()), !dbg !3163
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3164, metadata !DIExpression()), !dbg !3165
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3166, metadata !DIExpression()), !dbg !3167
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3168, metadata !DIExpression()), !dbg !3169
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3170, metadata !DIExpression()), !dbg !3171
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3172, metadata !DIExpression()), !dbg !3173
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  %0 = load i64, i64* %size.addr, align 8, !dbg !3178
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3179
  %or = or i32 %1, 256, !dbg !3180
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3181
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !3182
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3183

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3184
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3185
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3186

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3187
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3188
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3189
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3190
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3167
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3191
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3192
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3193
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3194
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3195
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3196
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !3197
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3197
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3197
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3197
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3197
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3198
  br label %kmalloc.exit, !dbg !3198

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3199
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3200
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3200
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3202

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3203
  br label %kmalloc_index.exit.i, !dbg !3203

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3204
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3206
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3207

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3211
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3212

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3213
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3214
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3215

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3216
  br label %kmalloc_index.exit.i, !dbg !3216

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3217
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3219
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3220

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3221
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3222
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3223

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3224
  br label %kmalloc_index.exit.i, !dbg !3224

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3225
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3227
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3228

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3229
  br label %kmalloc_index.exit.i, !dbg !3229

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3230
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3232
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3233

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3234
  br label %kmalloc_index.exit.i, !dbg !3234

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3235
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3237
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3238

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3239
  br label %kmalloc_index.exit.i, !dbg !3239

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3240
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3242
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3243

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3244
  br label %kmalloc_index.exit.i, !dbg !3244

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3245
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3247
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3248

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3249
  br label %kmalloc_index.exit.i, !dbg !3249

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3250
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3252
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3253

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3254
  br label %kmalloc_index.exit.i, !dbg !3254

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3255
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3257
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3258

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3259
  br label %kmalloc_index.exit.i, !dbg !3259

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3260
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3262
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3263

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3264
  br label %kmalloc_index.exit.i, !dbg !3264

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3265
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3267
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3268

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3269
  br label %kmalloc_index.exit.i, !dbg !3269

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3270
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3272
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3273

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3274
  br label %kmalloc_index.exit.i, !dbg !3274

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3275
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3277
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3278

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3279
  br label %kmalloc_index.exit.i, !dbg !3279

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3280
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3282
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3283

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3284
  br label %kmalloc_index.exit.i, !dbg !3284

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3285
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3287
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3288

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3289
  br label %kmalloc_index.exit.i, !dbg !3289

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3290
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3292
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3293

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3294
  br label %kmalloc_index.exit.i, !dbg !3294

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3295
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3297
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3298

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3299
  br label %kmalloc_index.exit.i, !dbg !3299

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3300
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3302
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3303

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3304
  br label %kmalloc_index.exit.i, !dbg !3304

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3305
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3307
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3308

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3309
  br label %kmalloc_index.exit.i, !dbg !3309

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3310
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3312
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3313

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3314
  br label %kmalloc_index.exit.i, !dbg !3314

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3315
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3317
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3318

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3319
  br label %kmalloc_index.exit.i, !dbg !3319

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3320
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3322
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3323

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3324
  br label %kmalloc_index.exit.i, !dbg !3324

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3325
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3327
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3328

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3329
  br label %kmalloc_index.exit.i, !dbg !3329

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3330
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3332
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3333

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3334
  br label %kmalloc_index.exit.i, !dbg !3334

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3335
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3337
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3338

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3339
  br label %kmalloc_index.exit.i, !dbg !3339

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3340
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3342
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3343

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3344
  br label %kmalloc_index.exit.i, !dbg !3344

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3345, !srcloc !3348
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !3349, !srcloc !3352
  unreachable, !dbg !3353

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3354
  store i32 %45, i32* %index.i, align 4, !dbg !3355
  %46 = load i32, i32* %index.i, align 4, !dbg !3356
  %tobool.i = icmp ne i32 %46, 0, !dbg !3356
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3358

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3359
  br label %kmalloc.exit, !dbg !3359

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3360
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3361
  %and.i.i = and i32 %48, 17, !dbg !3361
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3361
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3361
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3361
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3361
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3363

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3364
  br label %kmalloc_type.exit.i, !dbg !3364

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3365
  %and2.i.i = and i32 %49, 1, !dbg !3366
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3365
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3365
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3365
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3367
  br label %kmalloc_type.exit.i, !dbg !3367

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3368
  %idxprom.i = zext i32 %51 to i64, !dbg !3369
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3369
  %52 = load i32, i32* %index.i, align 4, !dbg !3370
  %idxprom6.i = zext i32 %52 to i64, !dbg !3369
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3369
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3369
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3371
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3372
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3373
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3374
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !3375
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3375
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3375
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3375
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3375
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3136
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3376
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3377
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3378
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3379
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !3380
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3381
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3382
  store i8* %62, i8** %retval.i, align 8, !dbg !3383
  br label %kmalloc.exit, !dbg !3383

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3384
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3385
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !3386
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3386
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3386
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3386
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3386
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3387
  br label %kmalloc.exit, !dbg !3387

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3388
  ret i8* %65, !dbg !3389
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_clk_acquire(%struct.device* %dev, %struct.pm_clock_entry* %ce) #0 !dbg !3390 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ce.addr = alloca %struct.pm_clock_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3391, metadata !DIExpression()), !dbg !3392
  store %struct.pm_clock_entry* %ce, %struct.pm_clock_entry** %ce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pm_clock_entry** %ce.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  %0 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3395
  %clk = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %0, i32 0, i32 2, !dbg !3397
  %1 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !3397
  %tobool = icmp ne %struct.clk* %1, null, !dbg !3395
  br i1 %tobool, label %if.end, label %if.then, !dbg !3398

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3399
  %3 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3400
  %con_id = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %3, i32 0, i32 1, !dbg !3401
  %4 = load i8*, i8** %con_id, align 8, !dbg !3401
  %call = call %struct.clk* @clk_get(%struct.device* %2, i8* %4) #9, !dbg !3402
  %5 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3403
  %clk1 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %5, i32 0, i32 2, !dbg !3404
  store %struct.clk* %call, %struct.clk** %clk1, align 8, !dbg !3405
  br label %if.end, !dbg !3403

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3406
  %clk2 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %6, i32 0, i32 2, !dbg !3408
  %7 = load %struct.clk*, %struct.clk** %clk2, align 8, !dbg !3408
  %8 = bitcast %struct.clk* %7 to i8*, !dbg !3406
  %call3 = call zeroext i1 @IS_ERR(i8* %8) #9, !dbg !3409
  br i1 %call3, label %if.then4, label %if.else, !dbg !3410

if.then4:                                         ; preds = %if.end
  %9 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3411
  %status = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %9, i32 0, i32 3, !dbg !3413
  store i32 3, i32* %status, align 8, !dbg !3414
  br label %if.end13, !dbg !3415

if.else:                                          ; preds = %if.end
  %10 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3416
  %clk5 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %10, i32 0, i32 2, !dbg !3419
  %11 = load %struct.clk*, %struct.clk** %clk5, align 8, !dbg !3419
  %call6 = call i32 @clk_prepare(%struct.clk* %11) #9, !dbg !3420
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3420
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !3421

if.then8:                                         ; preds = %if.else
  %12 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3422
  %status9 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %12, i32 0, i32 3, !dbg !3424
  store i32 3, i32* %status9, align 8, !dbg !3425
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3426
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !3426
  br label %if.end12, !dbg !3427

if.else10:                                        ; preds = %if.else
  %14 = load %struct.pm_clock_entry*, %struct.pm_clock_entry** %ce.addr, align 8, !dbg !3428
  %status11 = getelementptr inbounds %struct.pm_clock_entry, %struct.pm_clock_entry* %14, i32 0, i32 3, !dbg !3430
  store i32 1, i32* %status11, align 8, !dbg !3431
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then4
  ret void, !dbg !3432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3433 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3434, metadata !DIExpression()), !dbg !3435
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3438
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3439
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3440
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3440
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3441
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !3442
  ret void, !dbg !3443
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3444 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3448, metadata !DIExpression()), !dbg !3453
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3455, metadata !DIExpression()), !dbg !3456
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  %0 = load i64, i64* %size.addr, align 8, !dbg !3459
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3461
  br i1 %1, label %if.then, label %if.end447, !dbg !3462

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3463
  %tobool = icmp ne i64 %2, 0, !dbg !3463
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3466

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3467
  br label %return, !dbg !3467

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3468
  %cmp = icmp ult i64 %3, 4096, !dbg !3470
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3471

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3472
  br label %return, !dbg !3472

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub = sub i64 %4, 1, !dbg !3473
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3473
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3473

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub4 = sub i64 %6, 1, !dbg !3473
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3473
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3473

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub6 = sub i64 %8, 1, !dbg !3473
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3473
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3473

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3473

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub9 = sub i64 %9, 1, !dbg !3473
  %and = and i64 %sub9, -9223372036854775808, !dbg !3473
  %tobool10 = icmp ne i64 %and, 0, !dbg !3473
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3473

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3473

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub13 = sub i64 %10, 1, !dbg !3473
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3473
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3473
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3473

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3473

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub18 = sub i64 %11, 1, !dbg !3473
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3473
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3473
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3473

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3473

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub23 = sub i64 %12, 1, !dbg !3473
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3473
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3473
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3473

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3473

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub28 = sub i64 %13, 1, !dbg !3473
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3473
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3473
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3473

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3473

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub33 = sub i64 %14, 1, !dbg !3473
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3473
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3473
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3473

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3473

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub38 = sub i64 %15, 1, !dbg !3473
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3473
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3473
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3473

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3473

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub43 = sub i64 %16, 1, !dbg !3473
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3473
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3473
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3473

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3473

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub48 = sub i64 %17, 1, !dbg !3473
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3473
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3473
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3473

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3473

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub53 = sub i64 %18, 1, !dbg !3473
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3473
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3473
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3473

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3473

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub58 = sub i64 %19, 1, !dbg !3473
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3473
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3473
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3473

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3473

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub63 = sub i64 %20, 1, !dbg !3473
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3473
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3473
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3473

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3473

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub68 = sub i64 %21, 1, !dbg !3473
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3473
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3473
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3473

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3473

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub73 = sub i64 %22, 1, !dbg !3473
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3473
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3473
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3473

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3473

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub78 = sub i64 %23, 1, !dbg !3473
  %and79 = and i64 %sub78, 562949953421312, !dbg !3473
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3473
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3473

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3473

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub83 = sub i64 %24, 1, !dbg !3473
  %and84 = and i64 %sub83, 281474976710656, !dbg !3473
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3473
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3473

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3473

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub88 = sub i64 %25, 1, !dbg !3473
  %and89 = and i64 %sub88, 140737488355328, !dbg !3473
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3473
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3473

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3473

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub93 = sub i64 %26, 1, !dbg !3473
  %and94 = and i64 %sub93, 70368744177664, !dbg !3473
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3473
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3473

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3473

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub98 = sub i64 %27, 1, !dbg !3473
  %and99 = and i64 %sub98, 35184372088832, !dbg !3473
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3473
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3473

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3473

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub103 = sub i64 %28, 1, !dbg !3473
  %and104 = and i64 %sub103, 17592186044416, !dbg !3473
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3473
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3473

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3473

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub108 = sub i64 %29, 1, !dbg !3473
  %and109 = and i64 %sub108, 8796093022208, !dbg !3473
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3473
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3473

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3473

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub113 = sub i64 %30, 1, !dbg !3473
  %and114 = and i64 %sub113, 4398046511104, !dbg !3473
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3473
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3473

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3473

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub118 = sub i64 %31, 1, !dbg !3473
  %and119 = and i64 %sub118, 2199023255552, !dbg !3473
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3473
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3473

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3473

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub123 = sub i64 %32, 1, !dbg !3473
  %and124 = and i64 %sub123, 1099511627776, !dbg !3473
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3473
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3473

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3473

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub128 = sub i64 %33, 1, !dbg !3473
  %and129 = and i64 %sub128, 549755813888, !dbg !3473
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3473
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3473

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3473

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub133 = sub i64 %34, 1, !dbg !3473
  %and134 = and i64 %sub133, 274877906944, !dbg !3473
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3473
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3473

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3473

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub138 = sub i64 %35, 1, !dbg !3473
  %and139 = and i64 %sub138, 137438953472, !dbg !3473
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3473
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3473

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3473

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub143 = sub i64 %36, 1, !dbg !3473
  %and144 = and i64 %sub143, 68719476736, !dbg !3473
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3473
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3473

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3473

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub148 = sub i64 %37, 1, !dbg !3473
  %and149 = and i64 %sub148, 34359738368, !dbg !3473
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3473
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3473

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3473

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub153 = sub i64 %38, 1, !dbg !3473
  %and154 = and i64 %sub153, 17179869184, !dbg !3473
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3473
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3473

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3473

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub158 = sub i64 %39, 1, !dbg !3473
  %and159 = and i64 %sub158, 8589934592, !dbg !3473
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3473
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3473

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3473

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub163 = sub i64 %40, 1, !dbg !3473
  %and164 = and i64 %sub163, 4294967296, !dbg !3473
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3473
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3473

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3473

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub168 = sub i64 %41, 1, !dbg !3473
  %and169 = and i64 %sub168, 2147483648, !dbg !3473
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3473
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3473

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3473

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub173 = sub i64 %42, 1, !dbg !3473
  %and174 = and i64 %sub173, 1073741824, !dbg !3473
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3473
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3473

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3473

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub178 = sub i64 %43, 1, !dbg !3473
  %and179 = and i64 %sub178, 536870912, !dbg !3473
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3473
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3473

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3473

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub183 = sub i64 %44, 1, !dbg !3473
  %and184 = and i64 %sub183, 268435456, !dbg !3473
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3473
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3473

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3473

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub188 = sub i64 %45, 1, !dbg !3473
  %and189 = and i64 %sub188, 134217728, !dbg !3473
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3473
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3473

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3473

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub193 = sub i64 %46, 1, !dbg !3473
  %and194 = and i64 %sub193, 67108864, !dbg !3473
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3473
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3473

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3473

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub198 = sub i64 %47, 1, !dbg !3473
  %and199 = and i64 %sub198, 33554432, !dbg !3473
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3473
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3473

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3473

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub203 = sub i64 %48, 1, !dbg !3473
  %and204 = and i64 %sub203, 16777216, !dbg !3473
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3473
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3473

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3473

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub208 = sub i64 %49, 1, !dbg !3473
  %and209 = and i64 %sub208, 8388608, !dbg !3473
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3473
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3473

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3473

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub213 = sub i64 %50, 1, !dbg !3473
  %and214 = and i64 %sub213, 4194304, !dbg !3473
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3473
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3473

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3473

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub218 = sub i64 %51, 1, !dbg !3473
  %and219 = and i64 %sub218, 2097152, !dbg !3473
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3473
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3473

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3473

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub223 = sub i64 %52, 1, !dbg !3473
  %and224 = and i64 %sub223, 1048576, !dbg !3473
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3473
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3473

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3473

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub228 = sub i64 %53, 1, !dbg !3473
  %and229 = and i64 %sub228, 524288, !dbg !3473
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3473
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3473

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3473

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub233 = sub i64 %54, 1, !dbg !3473
  %and234 = and i64 %sub233, 262144, !dbg !3473
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3473
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3473

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3473

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub238 = sub i64 %55, 1, !dbg !3473
  %and239 = and i64 %sub238, 131072, !dbg !3473
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3473
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3473

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3473

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub243 = sub i64 %56, 1, !dbg !3473
  %and244 = and i64 %sub243, 65536, !dbg !3473
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3473
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3473

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3473

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub248 = sub i64 %57, 1, !dbg !3473
  %and249 = and i64 %sub248, 32768, !dbg !3473
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3473
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3473

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3473

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub253 = sub i64 %58, 1, !dbg !3473
  %and254 = and i64 %sub253, 16384, !dbg !3473
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3473
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3473

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3473

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub258 = sub i64 %59, 1, !dbg !3473
  %and259 = and i64 %sub258, 8192, !dbg !3473
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3473
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3473

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3473

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub263 = sub i64 %60, 1, !dbg !3473
  %and264 = and i64 %sub263, 4096, !dbg !3473
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3473
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3473

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3473

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub268 = sub i64 %61, 1, !dbg !3473
  %and269 = and i64 %sub268, 2048, !dbg !3473
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3473
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3473

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3473

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub273 = sub i64 %62, 1, !dbg !3473
  %and274 = and i64 %sub273, 1024, !dbg !3473
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3473
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3473

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3473

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub278 = sub i64 %63, 1, !dbg !3473
  %and279 = and i64 %sub278, 512, !dbg !3473
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3473
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3473

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3473

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub283 = sub i64 %64, 1, !dbg !3473
  %and284 = and i64 %sub283, 256, !dbg !3473
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3473
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3473

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3473

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub288 = sub i64 %65, 1, !dbg !3473
  %and289 = and i64 %sub288, 128, !dbg !3473
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3473
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3473

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3473

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub293 = sub i64 %66, 1, !dbg !3473
  %and294 = and i64 %sub293, 64, !dbg !3473
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3473
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3473

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3473

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub298 = sub i64 %67, 1, !dbg !3473
  %and299 = and i64 %sub298, 32, !dbg !3473
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3473
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3473

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3473

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub303 = sub i64 %68, 1, !dbg !3473
  %and304 = and i64 %sub303, 16, !dbg !3473
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3473
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3473

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3473

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub308 = sub i64 %69, 1, !dbg !3473
  %and309 = and i64 %sub308, 8, !dbg !3473
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3473
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3473

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3473

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub313 = sub i64 %70, 1, !dbg !3473
  %and314 = and i64 %sub313, 4, !dbg !3473
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3473
  %71 = zext i1 %tobool315 to i64, !dbg !3473
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3473
  br label %cond.end, !dbg !3473

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3473
  br label %cond.end317, !dbg !3473

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3473
  br label %cond.end319, !dbg !3473

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3473
  br label %cond.end321, !dbg !3473

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3473
  br label %cond.end323, !dbg !3473

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3473
  br label %cond.end325, !dbg !3473

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3473
  br label %cond.end327, !dbg !3473

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3473
  br label %cond.end329, !dbg !3473

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3473
  br label %cond.end331, !dbg !3473

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3473
  br label %cond.end333, !dbg !3473

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3473
  br label %cond.end335, !dbg !3473

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3473
  br label %cond.end337, !dbg !3473

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3473
  br label %cond.end339, !dbg !3473

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3473
  br label %cond.end341, !dbg !3473

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3473
  br label %cond.end343, !dbg !3473

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3473
  br label %cond.end345, !dbg !3473

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3473
  br label %cond.end347, !dbg !3473

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3473
  br label %cond.end349, !dbg !3473

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3473
  br label %cond.end351, !dbg !3473

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3473
  br label %cond.end353, !dbg !3473

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3473
  br label %cond.end355, !dbg !3473

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3473
  br label %cond.end357, !dbg !3473

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3473
  br label %cond.end359, !dbg !3473

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3473
  br label %cond.end361, !dbg !3473

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3473
  br label %cond.end363, !dbg !3473

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3473
  br label %cond.end365, !dbg !3473

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3473
  br label %cond.end367, !dbg !3473

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3473
  br label %cond.end369, !dbg !3473

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3473
  br label %cond.end371, !dbg !3473

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3473
  br label %cond.end373, !dbg !3473

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3473
  br label %cond.end375, !dbg !3473

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3473
  br label %cond.end377, !dbg !3473

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3473
  br label %cond.end379, !dbg !3473

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3473
  br label %cond.end381, !dbg !3473

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3473
  br label %cond.end383, !dbg !3473

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3473
  br label %cond.end385, !dbg !3473

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3473
  br label %cond.end387, !dbg !3473

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3473
  br label %cond.end389, !dbg !3473

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3473
  br label %cond.end391, !dbg !3473

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3473
  br label %cond.end393, !dbg !3473

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3473
  br label %cond.end395, !dbg !3473

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3473
  br label %cond.end397, !dbg !3473

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3473
  br label %cond.end399, !dbg !3473

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3473
  br label %cond.end401, !dbg !3473

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3473
  br label %cond.end403, !dbg !3473

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3473
  br label %cond.end405, !dbg !3473

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3473
  br label %cond.end407, !dbg !3473

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3473
  br label %cond.end409, !dbg !3473

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3473
  br label %cond.end411, !dbg !3473

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3473
  br label %cond.end413, !dbg !3473

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3473
  br label %cond.end415, !dbg !3473

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3473
  br label %cond.end417, !dbg !3473

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3473
  br label %cond.end419, !dbg !3473

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3473
  br label %cond.end421, !dbg !3473

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3473
  br label %cond.end423, !dbg !3473

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3473
  br label %cond.end425, !dbg !3473

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3473
  br label %cond.end427, !dbg !3473

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3473
  br label %cond.end429, !dbg !3473

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3473
  br label %cond.end431, !dbg !3473

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3473
  br label %cond.end433, !dbg !3473

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3473
  br label %cond.end435, !dbg !3473

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3473
  br label %cond.end437, !dbg !3473

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3473
  br label %cond.end440, !dbg !3473

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3473

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3473
  br label %cond.end444, !dbg !3473

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3473
  %sub443 = sub i64 %72, 1, !dbg !3473
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3473
  br label %cond.end444, !dbg !3473

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3473
  %sub446 = sub i32 %cond445, 12, !dbg !3474
  %add = add i32 %sub446, 1, !dbg !3475
  store i32 %add, i32* %retval, align 4, !dbg !3476
  br label %return, !dbg !3476

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3477
  %dec = add i64 %73, -1, !dbg !3477
  store i64 %dec, i64* %size.addr, align 8, !dbg !3477
  %74 = load i64, i64* %size.addr, align 8, !dbg !3478
  %shr = lshr i64 %74, 12, !dbg !3478
  store i64 %shr, i64* %size.addr, align 8, !dbg !3478
  %75 = load i64, i64* %size.addr, align 8, !dbg !3479
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3456
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3480
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3481
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !3480, !srcloc !3482
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3480
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3483
  %add.i = add i32 %79, 1, !dbg !3484
  store i32 %add.i, i32* %retval, align 4, !dbg !3485
  br label %return, !dbg !3485

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3486
  ret i32 %80, !dbg !3486
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3487 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3448, metadata !DIExpression()), !dbg !3491
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3455, metadata !DIExpression()), !dbg !3493
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3494, metadata !DIExpression()), !dbg !3495
  %0 = load i64, i64* %n.addr, align 8, !dbg !3496
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3493
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3497
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3498
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !3497, !srcloc !3482
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3497
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3499
  %add.i = add i32 %4, 1, !dbg !3500
  %sub = sub i32 %add.i, 1, !dbg !3501
  ret i32 %sub, !dbg !3502
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3503 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3507, metadata !DIExpression()), !dbg !3508
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3513, metadata !DIExpression()), !dbg !3514
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3515
  ret i8* %0, !dbg !3516
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3517 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3522, metadata !DIExpression()), !dbg !3523
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3524, metadata !DIExpression()), !dbg !3525
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3526
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3528
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3529
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !3530
  br i1 %call, label %if.end, label %if.then, !dbg !3531

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3532

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3533
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3534
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3535
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3536
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3537
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3538
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3539
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3540
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3541
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3542
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3543
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3544
  br label %do.body, !dbg !3545

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3546

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3548

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3546

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3550
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3550
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3550
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3550
  br label %do.end7, !dbg !3550

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3546

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3553 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3560, metadata !DIExpression()), !dbg !3561
  ret i1 true, !dbg !3562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3563 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3121, metadata !DIExpression()), !dbg !3564
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3131, metadata !DIExpression()), !dbg !3568
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3133, metadata !DIExpression()), !dbg !3569
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3135, metadata !DIExpression()), !dbg !3570
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3137, metadata !DIExpression()), !dbg !3571
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3143, metadata !DIExpression()), !dbg !3573
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3149, metadata !DIExpression()), !dbg !3575
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3158, metadata !DIExpression()), !dbg !3578
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3160, metadata !DIExpression()), !dbg !3579
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3162, metadata !DIExpression()), !dbg !3580
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3164, metadata !DIExpression()), !dbg !3581
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3166, metadata !DIExpression()), !dbg !3582
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3168, metadata !DIExpression()), !dbg !3583
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3170, metadata !DIExpression()), !dbg !3584
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3172, metadata !DIExpression()), !dbg !3585
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3594, metadata !DIExpression()), !dbg !3597
  %0 = load i64, i64* %n.addr, align 8, !dbg !3597
  store i64 %0, i64* %__a, align 8, !dbg !3597
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3598, metadata !DIExpression()), !dbg !3597
  %1 = load i64, i64* %size.addr, align 8, !dbg !3597
  store i64 %1, i64* %__b, align 8, !dbg !3597
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3599, metadata !DIExpression()), !dbg !3597
  store i64* %bytes, i64** %__d, align 8, !dbg !3597
  %cmp = icmp eq i64* %__a, %__b, !dbg !3597
  %conv = zext i1 %cmp to i32, !dbg !3597
  %2 = load i64*, i64** %__d, align 8, !dbg !3597
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3597
  %conv2 = zext i1 %cmp1 to i32, !dbg !3597
  %3 = load i64, i64* %__a, align 8, !dbg !3597
  %4 = load i64, i64* %__b, align 8, !dbg !3597
  %5 = load i64*, i64** %__d, align 8, !dbg !3597
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3597
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3597
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3597
  store i64 %8, i64* %5, align 8, !dbg !3597
  %frombool = zext i1 %7 to i8, !dbg !3597
  store i8 %frombool, i8* %tmp, align 1, !dbg !3597
  %9 = load i8, i8* %tmp, align 1, !dbg !3597
  %tobool = trunc i8 %9 to i1, !dbg !3597
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !3601
  %lnot = xor i1 %call, true, !dbg !3601
  %lnot3 = xor i1 %lnot, true, !dbg !3601
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3601
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3601
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3601
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3602

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3603
  br label %return, !dbg !3603

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3604
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3605
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3606

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3607
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3608
  br i1 %13, label %if.then6, label %if.end8, !dbg !3609

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3610
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3611
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3612
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !3613
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3614

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3615
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3616
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3617

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3618
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3619
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3620
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !3621
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3582
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3622
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3623
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3624
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3625
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3626
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3627
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !3628
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3628
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3628
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3628
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3628
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3629
  br label %kmalloc.exit, !dbg !3629

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3630
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3631
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3631
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3632

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3633
  br label %kmalloc_index.exit.i, !dbg !3633

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3634
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3635
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3636

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3637
  br label %kmalloc_index.exit.i, !dbg !3637

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3638
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3639
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3640

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3641
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3642
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3643

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3644
  br label %kmalloc_index.exit.i, !dbg !3644

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3645
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3646
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3647

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3648
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3649
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3650

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3651
  br label %kmalloc_index.exit.i, !dbg !3651

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3652
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3653
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3654

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3655
  br label %kmalloc_index.exit.i, !dbg !3655

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3656
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3657
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3658

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3659
  br label %kmalloc_index.exit.i, !dbg !3659

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3660
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3661
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3662

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3663
  br label %kmalloc_index.exit.i, !dbg !3663

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3664
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3665
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3666

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3667
  br label %kmalloc_index.exit.i, !dbg !3667

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3668
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3669
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3670

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3671
  br label %kmalloc_index.exit.i, !dbg !3671

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3672
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3673
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3674

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3675
  br label %kmalloc_index.exit.i, !dbg !3675

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3676
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3677
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3678

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3679
  br label %kmalloc_index.exit.i, !dbg !3679

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3680
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3681
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3682

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3683
  br label %kmalloc_index.exit.i, !dbg !3683

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3684
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3685
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3686

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3687
  br label %kmalloc_index.exit.i, !dbg !3687

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3688
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3689
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3690

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3691
  br label %kmalloc_index.exit.i, !dbg !3691

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3692
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3693
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3694

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3695
  br label %kmalloc_index.exit.i, !dbg !3695

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3696
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3697
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3698

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3699
  br label %kmalloc_index.exit.i, !dbg !3699

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3700
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3701
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3702

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3703
  br label %kmalloc_index.exit.i, !dbg !3703

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3704
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3705
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3706

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3707
  br label %kmalloc_index.exit.i, !dbg !3707

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3708
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3709
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3710

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3711
  br label %kmalloc_index.exit.i, !dbg !3711

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3712
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3713
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3714

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3715
  br label %kmalloc_index.exit.i, !dbg !3715

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3716
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3717
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3718

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3719
  br label %kmalloc_index.exit.i, !dbg !3719

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3720
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3721
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3722

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3723
  br label %kmalloc_index.exit.i, !dbg !3723

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3724
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3725
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3726

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3727
  br label %kmalloc_index.exit.i, !dbg !3727

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3728
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3729
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3730

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3731
  br label %kmalloc_index.exit.i, !dbg !3731

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3732
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3733
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3734

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3735
  br label %kmalloc_index.exit.i, !dbg !3735

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3736
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3737
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3738

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3739
  br label %kmalloc_index.exit.i, !dbg !3739

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3740
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3741
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3742

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3743
  br label %kmalloc_index.exit.i, !dbg !3743

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3744
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3745
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3746

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3747
  br label %kmalloc_index.exit.i, !dbg !3747

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3748, !srcloc !3348
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !3749, !srcloc !3352
  unreachable, !dbg !3750

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3751
  store i32 %59, i32* %index.i, align 4, !dbg !3752
  %60 = load i32, i32* %index.i, align 4, !dbg !3753
  %tobool.i = icmp ne i32 %60, 0, !dbg !3753
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3754

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3755
  br label %kmalloc.exit, !dbg !3755

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3756
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3757
  %and.i.i = and i32 %62, 17, !dbg !3757
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3757
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3757
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3757
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3757
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3758

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3759
  br label %kmalloc_type.exit.i, !dbg !3759

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3760
  %and2.i.i = and i32 %63, 1, !dbg !3761
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3760
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3760
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3760
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3762
  br label %kmalloc_type.exit.i, !dbg !3762

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3763
  %idxprom.i = zext i32 %65 to i64, !dbg !3764
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3764
  %66 = load i32, i32* %index.i, align 4, !dbg !3765
  %idxprom6.i = zext i32 %66 to i64, !dbg !3764
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3764
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3764
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3766
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3767
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3768
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3769
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !3770
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3770
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3770
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3770
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3770
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3570
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3771
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3772
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3773
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3774
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !3775
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3776
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3777
  store i8* %76, i8** %retval.i, align 8, !dbg !3778
  br label %kmalloc.exit, !dbg !3778

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3779
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3780
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !3781
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3781
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3781
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3781
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3781
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3782
  br label %kmalloc.exit, !dbg !3782

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3783
  store i8* %79, i8** %retval, align 8, !dbg !3784
  br label %return, !dbg !3784

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3785
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3786
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #9, !dbg !3787
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3787
  %maskedptr = and i64 %ptrint, 7, !dbg !3787
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3787
  call void @llvm.assume(i1 %maskcond), !dbg !3787
  store i8* %call9, i8** %retval, align 8, !dbg !3788
  br label %return, !dbg !3788

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3789
  ret i8* %82, !dbg !3789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3790 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3796
  %tobool = trunc i8 %0 to i1, !dbg !3796
  %lnot = xor i1 %tobool, true, !dbg !3796
  %lnot1 = xor i1 %lnot, true, !dbg !3796
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3796
  %conv = sext i32 %lnot.ext to i64, !dbg !3796
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3796
  ret i1 %tobool2, !dbg !3797
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3798 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3801, metadata !DIExpression()), !dbg !3803
  %0 = load i64, i64* %__edi, align 8, !dbg !3803
  store i64 %0, i64* %__edi, align 8, !dbg !3803
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3804, metadata !DIExpression()), !dbg !3803
  %1 = load i64, i64* %__esi, align 8, !dbg !3803
  store i64 %1, i64* %__esi, align 8, !dbg !3803
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3805, metadata !DIExpression()), !dbg !3803
  %2 = load i64, i64* %__edx, align 8, !dbg !3803
  store i64 %2, i64* %__edx, align 8, !dbg !3803
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3806, metadata !DIExpression()), !dbg !3803
  %3 = load i64, i64* %__ecx, align 8, !dbg !3803
  store i64 %3, i64* %__ecx, align 8, !dbg !3803
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3807, metadata !DIExpression()), !dbg !3803
  %4 = load i64, i64* %__eax, align 8, !dbg !3803
  store i64 %4, i64* %__eax, align 8, !dbg !3803
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3803
  %6 = call i64 @llvm.read_register.i64(metadata !2073), !dbg !3803
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !3803, !srcloc !3808
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3803
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3803
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3803
  call void @llvm.write_register.i64(metadata !2073, i64 %asmresult1), !dbg !3803
  ret void, !dbg !3809
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !3810 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3811, metadata !DIExpression()), !dbg !3813
  %0 = load i64, i64* %__edi, align 8, !dbg !3813
  store i64 %0, i64* %__edi, align 8, !dbg !3813
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3814, metadata !DIExpression()), !dbg !3813
  %1 = load i64, i64* %__esi, align 8, !dbg !3813
  store i64 %1, i64* %__esi, align 8, !dbg !3813
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3815, metadata !DIExpression()), !dbg !3813
  %2 = load i64, i64* %__edx, align 8, !dbg !3813
  store i64 %2, i64* %__edx, align 8, !dbg !3813
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3816, metadata !DIExpression()), !dbg !3813
  %3 = load i64, i64* %__ecx, align 8, !dbg !3813
  store i64 %3, i64* %__ecx, align 8, !dbg !3813
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3817, metadata !DIExpression()), !dbg !3813
  %4 = load i64, i64* %__eax, align 8, !dbg !3813
  store i64 %4, i64* %__eax, align 8, !dbg !3813
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !3813
  %6 = call i64 @llvm.read_register.i64(metadata !2073), !dbg !3813
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #8, !dbg !3813, !srcloc !3818
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3813
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3813
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3813
  call void @llvm.write_register.i64(metadata !2073, i64 %asmresult1), !dbg !3813
  ret void, !dbg !3819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3820 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3821, metadata !DIExpression()), !dbg !3822
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3823
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !3825
  br i1 %call, label %if.end, label %if.then, !dbg !3826

if.then:                                          ; preds = %entry
  br label %return, !dbg !3827

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3828
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3829
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3829
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3830
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3831
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3831
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !3832
  br label %return, !dbg !3833

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3834 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  ret i1 true, !dbg !3839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3840 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3845
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3846
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3847
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3848
  br label %do.body, !dbg !3849

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3850

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3852

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3850

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3854
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3854
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3854
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3854
  br label %do.end5, !dbg !3854

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3850

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3856
}

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3857 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3860, metadata !DIExpression()), !dbg !3861
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3862
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3863
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3864
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !3865
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3865
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #9, !dbg !3866
  ret void, !dbg !3867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3868 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3869, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3872, metadata !DIExpression()), !dbg !3871
  %0 = load i64, i64* %__edi, align 8, !dbg !3871
  store i64 %0, i64* %__edi, align 8, !dbg !3871
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3873, metadata !DIExpression()), !dbg !3871
  %1 = load i64, i64* %__esi, align 8, !dbg !3871
  store i64 %1, i64* %__esi, align 8, !dbg !3871
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3874, metadata !DIExpression()), !dbg !3871
  %2 = load i64, i64* %__edx, align 8, !dbg !3871
  store i64 %2, i64* %__edx, align 8, !dbg !3871
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3875, metadata !DIExpression()), !dbg !3871
  %3 = load i64, i64* %__ecx, align 8, !dbg !3871
  store i64 %3, i64* %__ecx, align 8, !dbg !3871
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3876, metadata !DIExpression()), !dbg !3871
  %4 = load i64, i64* %__eax, align 8, !dbg !3871
  store i64 %4, i64* %__eax, align 8, !dbg !3871
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3871
  %6 = call i64 @llvm.read_register.i64(metadata !2073), !dbg !3877
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !3877, !srcloc !3880
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3877
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3877
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3877
  call void @llvm.write_register.i64(metadata !2073, i64 %asmresult1), !dbg !3877
  %8 = load i64, i64* %__eax, align 8, !dbg !3877
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3881, metadata !DIExpression()), !dbg !3883
  store i64 -1, i64* %__mask, align 8, !dbg !3883
  %9 = load i64, i64* %__mask, align 8, !dbg !3883
  store i64 %9, i64* %tmp, align 8, !dbg !3883
  %10 = load i64, i64* %tmp, align 8, !dbg !3883
  %and = and i64 %8, %10, !dbg !3877
  store i64 %and, i64* %__ret, align 8, !dbg !3877
  %11 = load i64, i64* %__ret, align 8, !dbg !3871
  store i64 %11, i64* %tmp2, align 8, !dbg !3884
  %12 = load i64, i64* %tmp2, align 8, !dbg !3871
  ret i64 %12, !dbg !3885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3886 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3891, metadata !DIExpression()), !dbg !3893
  %0 = load i64, i64* %__edi, align 8, !dbg !3893
  store i64 %0, i64* %__edi, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3894, metadata !DIExpression()), !dbg !3893
  %1 = load i64, i64* %__esi, align 8, !dbg !3893
  store i64 %1, i64* %__esi, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3895, metadata !DIExpression()), !dbg !3893
  %2 = load i64, i64* %__edx, align 8, !dbg !3893
  store i64 %2, i64* %__edx, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3896, metadata !DIExpression()), !dbg !3893
  %3 = load i64, i64* %__ecx, align 8, !dbg !3893
  store i64 %3, i64* %__ecx, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3897, metadata !DIExpression()), !dbg !3893
  %4 = load i64, i64* %__eax, align 8, !dbg !3893
  store i64 %4, i64* %__eax, align 8, !dbg !3893
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3893
  %6 = call i64 @llvm.read_register.i64(metadata !2073), !dbg !3893
  %7 = load i64, i64* %f.addr, align 8, !dbg !3893
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !3893, !srcloc !3898
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3893
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3893
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3893
  call void @llvm.write_register.i64(metadata !2073, i64 %asmresult1), !dbg !3893
  ret void, !dbg !3899
}

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @dev_pm_domain_set(%struct.device*, %struct.dev_pm_domain*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!2073}
!llvm.module.flags = !{!2074, !2075, !2076, !2077}
!llvm.ident = !{!2078}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/base/power/clock_ops.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !54, !61}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pce_status", file: !1, line: 23, baseType: !5, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "PCE_STATUS_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "PCE_STATUS_ACQUIRED", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "PCE_STATUS_ENABLED", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "PCE_STATUS_ERROR", value: 3, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !55, line: 305, baseType: !5, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 10, baseType: !5, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!66 = !{!67, !69, !70, !87, !89, !90, !91}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !68, line: 148, baseType: !5)
!68 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_clock_entry", file: !1, line: 30, size: 320, elements: !72)
!72 = !{!73, !79, !82, !86}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !71, file: !1, line: 31, baseType: !74, size: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !68, line: 178, size: 128, elements: !75)
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !68, line: 179, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !74, file: !68, line: 179, baseType: !77, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !71, file: !1, line: 32, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !71, file: !1, line: 33, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !85, line: 20, flags: DIFlagFwdDecl)
!85 = !DIFile(filename: "./include/linux/pm_clock.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !71, file: !1, line: 34, baseType: !48, size: 32, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!89 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_clk_notifier_block", file: !85, line: 14, size: 256, elements: !93)
!93 = !{!94, !107, !2071}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !92, file: !85, line: 15, baseType: !95, size: 192)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !96, line: 54, size: 192, elements: !97)
!96 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !105, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !95, file: !96, line: 55, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !96, line: 51, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !104, !89, !69}
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 56, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !95, file: !96, line: 57, baseType: !103, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !92, file: !85, line: 16, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !110)
!110 = !{!111, !2063, !2064, !2068, !2069, !2070}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !109, file: !35, line: 643, baseType: !112, size: 1472)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !113)
!113 = !{!114, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !112, file: !35, line: 279, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!103, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !120)
!120 = !{!121, !1601, !1602, !1605, !1606, !1629, !1726, !1727, !1728, !1729, !1730, !1739, !1848, !1849, !1852, !1853, !1857, !1859, !1860, !1861, !1865, !1871, !1872, !1875, !1990, !1991, !1994, !1995, !1996, !1997, !2029, !2030, !2031, !2034, !2037, !2038, !2039, !2040}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !119, file: !28, line: 462, baseType: !122, size: 512)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !123, line: 64, size: 512, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !128, !129, !131, !190, !1438, !1591, !1596, !1597, !1598, !1599, !1600}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !123, line: 65, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !122, file: !123, line: 66, baseType: !74, size: 128, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !123, line: 67, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !122, file: !123, line: 68, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !123, line: 192, size: 704, elements: !134)
!134 = !{!135, !136, !152, !153}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !133, file: !123, line: 193, baseType: !74, size: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !133, file: !123, line: 194, baseType: !137, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !138, line: 83, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !138, line: 71, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 72, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 72, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !142, file: !138, line: 73, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !138, line: 20, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !145, file: !138, line: 21, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !149, line: 25, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 25, elements: !151)
!151 = !{}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !123, line: 195, baseType: !122, size: 512, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !133, file: !123, line: 196, baseType: !154, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !123, line: 156, size: 192, elements: !157)
!157 = !{!158, !163, !168}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !156, file: !123, line: 157, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!103, !132, !130}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !123, line: 158, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!126, !132, !130}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !156, file: !123, line: 159, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!103, !132, !130, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !123, line: 148, size: 20736, elements: !175)
!175 = !{!176, !180, !184, !185, !189}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !174, file: !123, line: 149, baseType: !177, size: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 3)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !174, file: !123, line: 150, baseType: !181, size: 4096, offset: 192)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 4096, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !174, file: !123, line: 151, baseType: !103, size: 32, offset: 4288)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !174, file: !123, line: 152, baseType: !186, size: 16384, offset: 4320)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16384, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 2048)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !174, file: !123, line: 153, baseType: !103, size: 32, offset: 20704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !122, file: !123, line: 69, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !123, line: 138, size: 448, elements: !193)
!193 = !{!194, !198, !226, !228, !1386, !1417, !1421}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !192, file: !123, line: 139, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !130}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !192, file: !123, line: 140, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !202, line: 230, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !219}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !201, file: !202, line: 231, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !130, !212, !80}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !68, line: 60, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !210, line: 73, baseType: !211)
!210 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !210, line: 15, baseType: !90)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !202, line: 30, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !202, line: 31, baseType: !126, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !213, file: !202, line: 32, baseType: !217, size: 16, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !68, line: 19, baseType: !218)
!218 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !201, file: !202, line: 232, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!208, !130, !212, !126, !223}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 55, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !210, line: 72, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !210, line: 16, baseType: !89)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !192, file: !123, line: 141, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !192, file: !123, line: 142, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !202, line: 84, size: 320, elements: !233)
!233 = !{!234, !235, !239, !1383, !1384}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !202, line: 85, baseType: !126, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !232, file: !202, line: 86, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!217, !130, !212, !103}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !232, file: !202, line: 88, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!217, !130, !243, !103}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !202, line: 168, size: 448, elements: !245)
!245 = !{!246, !247, !248, !249, !259, !260}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !244, file: !202, line: 169, baseType: !213, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !244, file: !202, line: 170, baseType: !223, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !244, file: !202, line: 171, baseType: !69, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !244, file: !202, line: 172, baseType: !250, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!208, !253, !130, !243, !80, !256, !223}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !255, line: 526, flags: DIFlagFwdDecl)
!255 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !68, line: 46, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !210, line: 88, baseType: !258)
!258 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !244, file: !202, line: 174, baseType: !250, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !244, file: !202, line: 176, baseType: !261, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!103, !253, !130, !243, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !266, line: 305, size: 1472, elements: !267)
!266 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !270, !271, !272, !280, !281, !1357, !1363, !1364, !1369, !1370, !1373, !1377, !1378, !1379, !1380, !1381}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !265, file: !266, line: 308, baseType: !89, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !265, file: !266, line: 309, baseType: !89, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !265, file: !266, line: 313, baseType: !264, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !265, file: !266, line: 313, baseType: !264, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !265, file: !266, line: 315, baseType: !273, size: 192, align: 64, offset: 256)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !274, line: 24, size: 192, align: 64, elements: !275)
!274 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !277, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !273, file: !274, line: 25, baseType: !89, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !273, file: !274, line: 26, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !273, file: !274, line: 27, baseType: !278, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !265, file: !266, line: 323, baseType: !89, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !265, file: !266, line: 327, baseType: !282, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !266, line: 388, size: 7296, elements: !284)
!284 = !{!285, !1353}
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !266, line: 389, baseType: !286, size: 7296)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !266, line: 389, size: 7296, elements: !287)
!287 = !{!288, !289, !293, !299, !303, !304, !305, !306, !307, !315, !320, !321, !322, !323, !332, !333, !334, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !369, !377, !380, !412, !413, !1323, !1324, !1327, !1331, !1332, !1335, !1336, !1337, !1340, !1352}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !286, file: !266, line: 390, baseType: !264, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !286, file: !266, line: 391, baseType: !290, size: 64, offset: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !274, line: 31, size: 64, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !290, file: !274, line: 32, baseType: !278, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !286, file: !266, line: 392, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !295, line: 23, baseType: !296)
!295 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !297, line: 31, baseType: !298)
!297 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !286, file: !266, line: 394, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!89, !253, !89, !89, !89, !89}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !286, file: !266, line: 398, baseType: !89, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !286, file: !266, line: 399, baseType: !89, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !286, file: !266, line: 405, baseType: !89, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !286, file: !266, line: 406, baseType: !89, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !286, file: !266, line: 407, baseType: !308, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !255, line: 286, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 286, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !310, file: !255, line: 286, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !314, line: 18, baseType: !89)
!314 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !286, file: !266, line: 416, baseType: !316, size: 32, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !68, line: 168, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 166, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !317, file: !68, line: 167, baseType: !103, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !286, file: !266, line: 428, baseType: !316, size: 32, offset: 608)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !286, file: !266, line: 437, baseType: !316, size: 32, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !286, file: !266, line: 447, baseType: !316, size: 32, offset: 672)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !286, file: !266, line: 450, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !325, line: 13, baseType: !326)
!325 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !68, line: 175, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 173, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !327, file: !68, line: 174, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !295, line: 22, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !297, line: 30, baseType: !258)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !286, file: !266, line: 452, baseType: !103, size: 32, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !286, file: !266, line: 454, baseType: !137, offset: 800)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !286, file: !266, line: 457, baseType: !335, size: 256, offset: 832)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !336, line: 35, size: 256, elements: !337)
!336 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !339, !340, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !335, file: !336, line: 36, baseType: !324, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !335, file: !336, line: 42, baseType: !324, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !335, file: !336, line: 46, baseType: !341, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !138, line: 29, baseType: !145)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !335, file: !336, line: 47, baseType: !74, size: 128, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !286, file: !266, line: 459, baseType: !74, size: 128, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !286, file: !266, line: 466, baseType: !89, size: 64, offset: 1216)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !286, file: !266, line: 467, baseType: !89, size: 64, offset: 1280)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !286, file: !266, line: 469, baseType: !89, size: 64, offset: 1344)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !286, file: !266, line: 470, baseType: !89, size: 64, offset: 1408)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !286, file: !266, line: 471, baseType: !326, size: 64, offset: 1472)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !286, file: !266, line: 472, baseType: !89, size: 64, offset: 1536)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !286, file: !266, line: 473, baseType: !89, size: 64, offset: 1600)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !286, file: !266, line: 474, baseType: !89, size: 64, offset: 1664)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !286, file: !266, line: 475, baseType: !89, size: 64, offset: 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !286, file: !266, line: 477, baseType: !137, offset: 1792)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !286, file: !266, line: 478, baseType: !89, size: 64, offset: 1792)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !286, file: !266, line: 478, baseType: !89, size: 64, offset: 1856)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !286, file: !266, line: 478, baseType: !89, size: 64, offset: 1920)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !286, file: !266, line: 478, baseType: !89, size: 64, offset: 1984)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !286, file: !266, line: 479, baseType: !89, size: 64, offset: 2048)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !286, file: !266, line: 479, baseType: !89, size: 64, offset: 2112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !286, file: !266, line: 479, baseType: !89, size: 64, offset: 2176)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !286, file: !266, line: 480, baseType: !89, size: 64, offset: 2240)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !286, file: !266, line: 480, baseType: !89, size: 64, offset: 2304)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !286, file: !266, line: 480, baseType: !89, size: 64, offset: 2368)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !286, file: !266, line: 480, baseType: !89, size: 64, offset: 2432)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !286, file: !266, line: 482, baseType: !366, size: 2816, offset: 2496)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2816, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 44)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !286, file: !266, line: 488, baseType: !370, size: 256, offset: 5312)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !371, line: 60, size: 256, elements: !372)
!371 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !371, line: 61, baseType: !374, size: 256)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !286, file: !266, line: 490, baseType: !378, size: 64, offset: 5568)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !266, line: 490, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !286, file: !266, line: 493, baseType: !381, size: 896, offset: 5632)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !382, line: 53, baseType: !383)
!382 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 13, size: 896, elements: !384)
!384 = !{!385, !386, !387, !388, !391, !392, !399, !400, !404, !405, !408}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !383, file: !382, line: 18, baseType: !294, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !383, file: !382, line: 28, baseType: !326, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !383, file: !382, line: 31, baseType: !335, size: 256, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !383, file: !382, line: 32, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !382, line: 32, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !383, file: !382, line: 37, baseType: !218, size: 16, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !382, line: 40, baseType: !393, size: 192, offset: 512)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !394, line: 53, size: 192, elements: !395)
!394 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!395 = !{!396, !397, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 54, baseType: !324, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 55, baseType: !137, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 59, baseType: !74, size: 128, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !383, file: !382, line: 41, baseType: !69, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !383, file: !382, line: 42, baseType: !401, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !382, line: 42, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !383, file: !382, line: 44, baseType: !316, size: 32, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !383, file: !382, line: 50, baseType: !406, size: 16, offset: 864)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !295, line: 19, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !297, line: 24, baseType: !218)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !383, file: !382, line: 51, baseType: !409, size: 16, offset: 880)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !295, line: 18, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !297, line: 23, baseType: !411)
!411 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !266, line: 495, baseType: !89, size: 64, offset: 6528)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !286, file: !266, line: 497, baseType: !414, size: 64, offset: 6592)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !266, line: 381, size: 384, elements: !416)
!416 = !{!417, !418, !1322}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !415, file: !266, line: 382, baseType: !316, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !415, file: !266, line: 383, baseType: !419, size: 128, offset: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !266, line: 376, size: 128, elements: !420)
!420 = !{!421, !1320}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !419, file: !266, line: 377, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !424, line: 640, size: 48640, elements: !425)
!424 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426, !434, !436, !437, !443, !444, !445, !446, !447, !448, !449, !450, !454, !472, !483, !578, !579, !580, !591, !592, !594, !595, !596, !597, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !676, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !732, !734, !735, !736, !748, !750, !751, !752, !753, !754, !760, !761, !762, !763, !764, !765, !766, !778, !783, !787, !788, !789, !792, !796, !799, !802, !805, !808, !811, !814, !817, !823, !824, !825, !831, !832, !833, !834, !835, !844, !845, !846, !847, !848, !853, !854, !855, !858, !859, !862, !865, !868, !871, !874, !877, !878, !958, !961, !964, !965, !968, !969, !970, !976, !977, !978, !991, !992, !993, !1005, !1010, !1013, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !423, file: !424, line: 646, baseType: !427, size: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !428, line: 56, size: 128, elements: !429)
!428 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !428, line: 57, baseType: !89, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !427, file: !428, line: 58, baseType: !432, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !295, line: 21, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !297, line: 27, baseType: !5)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !423, file: !424, line: 649, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !423, file: !424, line: 657, baseType: !69, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !423, file: !424, line: 658, baseType: !438, size: 32, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !439, line: 113, baseType: !440)
!439 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !439, line: 111, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !440, file: !439, line: 112, baseType: !316, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !424, line: 660, baseType: !5, size: 32, offset: 288)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !423, file: !424, line: 661, baseType: !5, size: 32, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !423, file: !424, line: 684, baseType: !103, size: 32, offset: 352)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !423, file: !424, line: 686, baseType: !103, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !423, file: !424, line: 687, baseType: !103, size: 32, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !423, file: !424, line: 688, baseType: !103, size: 32, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !423, file: !424, line: 689, baseType: !5, size: 32, offset: 480)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !423, file: !424, line: 691, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !424, line: 691, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !423, file: !424, line: 692, baseType: !455, size: 832, offset: 576)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !424, line: 451, size: 832, elements: !456)
!456 = !{!457, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !455, file: !424, line: 453, baseType: !458, size: 128)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !424, line: 325, size: 128, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !458, file: !424, line: 326, baseType: !89, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !458, file: !424, line: 327, baseType: !432, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !455, file: !424, line: 454, baseType: !273, size: 192, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !455, file: !424, line: 455, baseType: !74, size: 128, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !424, line: 456, baseType: !5, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !455, file: !424, line: 458, baseType: !294, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !455, file: !424, line: 459, baseType: !294, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !455, file: !424, line: 460, baseType: !294, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !455, file: !424, line: 461, baseType: !294, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !455, file: !424, line: 463, baseType: !294, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !455, file: !424, line: 465, baseType: !471, offset: 832)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !424, line: 415, elements: !151)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !423, file: !424, line: 693, baseType: !473, size: 384, offset: 1408)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !424, line: 489, size: 384, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !473, file: !424, line: 490, baseType: !74, size: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !473, file: !424, line: 491, baseType: !89, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !473, file: !424, line: 492, baseType: !89, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !473, file: !424, line: 493, baseType: !5, size: 32, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !473, file: !424, line: 494, baseType: !218, size: 16, offset: 288)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !473, file: !424, line: 495, baseType: !218, size: 16, offset: 304)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !473, file: !424, line: 497, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !423, file: !424, line: 697, baseType: !484, size: 1792, offset: 1792)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !424, line: 507, size: 1792, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !575, !576}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !484, file: !424, line: 508, baseType: !273, size: 192, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !484, file: !424, line: 515, baseType: !294, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !484, file: !424, line: 516, baseType: !294, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !484, file: !424, line: 517, baseType: !294, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !484, file: !424, line: 518, baseType: !294, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !484, file: !424, line: 519, baseType: !294, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !484, file: !424, line: 526, baseType: !330, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !484, file: !424, line: 527, baseType: !294, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !424, line: 528, baseType: !5, size: 32, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !484, file: !424, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !484, file: !424, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !484, file: !424, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !484, file: !424, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !484, file: !424, line: 563, baseType: !500, size: 512, offset: 704)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !501)
!501 = !{!502, !510, !511, !516, !568, !572, !573, !574}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !4, line: 119, baseType: !503, size: 256)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !504, line: 9, size: 256, elements: !505)
!504 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !504, line: 10, baseType: !273, size: 192, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !503, file: !504, line: 11, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !509, line: 29, baseType: !330)
!509 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !500, file: !4, line: 120, baseType: !508, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !500, file: !4, line: 121, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!3, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !500, file: !4, line: 122, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !519)
!519 = !{!520, !540, !541, !544, !554, !555, !563, !567}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !518, file: !4, line: 160, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !4, line: 215, baseType: !341)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !522, file: !4, line: 216, baseType: !5, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !522, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !522, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !522, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !522, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !522, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !522, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !522, file: !4, line: 233, baseType: !508, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !522, file: !4, line: 234, baseType: !515, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !522, file: !4, line: 235, baseType: !508, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !522, file: !4, line: 236, baseType: !515, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !522, file: !4, line: 237, baseType: !537, size: 4096, offset: 512)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 4096, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 8)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !518, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !518, file: !4, line: 162, baseType: !542, size: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !68, line: 27, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !210, line: 96, baseType: !103)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !518, file: !4, line: 163, baseType: !545, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !546, line: 276, baseType: !547)
!546 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !546, line: 276, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !547, file: !546, line: 276, baseType: !550, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !546, line: 70, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !546, line: 65, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !551, file: !546, line: 66, baseType: !5, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !518, file: !4, line: 164, baseType: !515, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !518, file: !4, line: 165, baseType: !556, size: 128, offset: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !504, line: 14, size: 128, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !556, file: !504, line: 15, baseType: !559, size: 128)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !274, line: 125, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !559, file: !274, line: 126, baseType: !290, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !559, file: !274, line: 127, baseType: !278, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !518, file: !4, line: 166, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!508}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !518, file: !4, line: 167, baseType: !508, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !500, file: !4, line: 123, baseType: !569, size: 8, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !295, line: 17, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !297, line: 21, baseType: !571)
!571 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !500, file: !4, line: 124, baseType: !569, size: 8, offset: 456)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !500, file: !4, line: 125, baseType: !569, size: 8, offset: 464)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !500, file: !4, line: 126, baseType: !569, size: 8, offset: 472)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !484, file: !424, line: 572, baseType: !500, size: 512, offset: 1216)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !484, file: !424, line: 580, baseType: !577, size: 64, offset: 1728)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !423, file: !424, line: 721, baseType: !5, size: 32, offset: 3584)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !423, file: !424, line: 722, baseType: !103, size: 32, offset: 3616)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !423, file: !424, line: 723, baseType: !581, size: 64, offset: 3648)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !584, line: 17, baseType: !585)
!584 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !584, line: 17, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !585, file: !584, line: 17, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !423, file: !424, line: 724, baseType: !583, size: 64, offset: 3712)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !423, file: !424, line: 749, baseType: !593, offset: 3776)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !424, line: 290, elements: !151)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !423, file: !424, line: 751, baseType: !74, size: 128, offset: 3776)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !423, file: !424, line: 757, baseType: !282, size: 64, offset: 3904)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !423, file: !424, line: 758, baseType: !282, size: 64, offset: 3968)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !423, file: !424, line: 761, baseType: !598, size: 320, offset: 4032)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !371, line: 34, size: 320, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !598, file: !371, line: 35, baseType: !294, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !598, file: !371, line: 36, baseType: !602, size: 256, offset: 64)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !375)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !423, file: !424, line: 766, baseType: !103, size: 32, offset: 4352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !423, file: !424, line: 767, baseType: !103, size: 32, offset: 4384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !423, file: !424, line: 768, baseType: !103, size: 32, offset: 4416)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !423, file: !424, line: 770, baseType: !103, size: 32, offset: 4448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !423, file: !424, line: 772, baseType: !89, size: 64, offset: 4480)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !423, file: !424, line: 775, baseType: !5, size: 32, offset: 4544)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !423, file: !424, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !423, file: !424, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !423, file: !424, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !423, file: !424, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !423, file: !424, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !423, file: !424, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !423, file: !424, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !423, file: !424, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !423, file: !424, line: 831, baseType: !89, size: 64, offset: 4672)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !423, file: !424, line: 833, baseType: !619, size: 384, offset: 4736)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !620)
!620 = !{!621, !626}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !619, file: !10, line: 26, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!90, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !10, line: 27, baseType: !627, size: 320, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !10, line: 27, size: 320, elements: !628)
!628 = !{!629, !639, !666}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !627, file: !10, line: 36, baseType: !630, size: 320)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !10, line: 29, size: 320, elements: !631)
!631 = !{!632, !634, !635, !636, !637, !638}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !630, file: !10, line: 30, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !630, file: !10, line: 31, baseType: !432, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !10, line: 32, baseType: !432, size: 32, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !630, file: !10, line: 33, baseType: !432, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !630, file: !10, line: 34, baseType: !294, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !630, file: !10, line: 35, baseType: !633, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !627, file: !10, line: 46, baseType: !640, size: 192)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !10, line: 38, size: 192, elements: !641)
!641 = !{!642, !643, !644, !665}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !640, file: !10, line: 39, baseType: !542, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !10, line: 41, baseType: !645, size: 64, offset: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !10, line: 41, size: 64, elements: !646)
!646 = !{!647, !655}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !645, file: !10, line: 42, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !650, line: 7, size: 128, elements: !651)
!650 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !649, file: !650, line: 8, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !210, line: 93, baseType: !258)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !649, file: !650, line: 9, baseType: !258, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !645, file: !10, line: 43, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !658, line: 7, size: 64, elements: !659)
!658 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !664}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !657, file: !658, line: 8, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !658, line: 5, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !295, line: 20, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !297, line: 26, baseType: !103)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !657, file: !658, line: 9, baseType: !662, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !640, file: !10, line: 45, baseType: !294, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !627, file: !10, line: 54, baseType: !667, size: 256)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !10, line: 48, size: 256, elements: !668)
!668 = !{!669, !672, !673, !674, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !667, file: !10, line: 49, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !667, file: !10, line: 50, baseType: !103, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !667, file: !10, line: 51, baseType: !103, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !667, file: !10, line: 52, baseType: !89, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !667, file: !10, line: 53, baseType: !89, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !423, file: !424, line: 835, baseType: !677, size: 32, offset: 5120)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !68, line: 22, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !210, line: 28, baseType: !103)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !423, file: !424, line: 836, baseType: !677, size: 32, offset: 5152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !423, file: !424, line: 840, baseType: !89, size: 64, offset: 5184)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !423, file: !424, line: 849, baseType: !422, size: 64, offset: 5248)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !423, file: !424, line: 852, baseType: !422, size: 64, offset: 5312)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !423, file: !424, line: 857, baseType: !74, size: 128, offset: 5376)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !423, file: !424, line: 858, baseType: !74, size: 128, offset: 5504)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !423, file: !424, line: 859, baseType: !422, size: 64, offset: 5632)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !423, file: !424, line: 867, baseType: !74, size: 128, offset: 5696)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !423, file: !424, line: 868, baseType: !74, size: 128, offset: 5824)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !423, file: !424, line: 871, baseType: !689, size: 64, offset: 5952)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !691, line: 59, size: 768, elements: !692)
!691 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !695, !696, !707, !708, !715, !724}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !691, line: 61, baseType: !438, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !690, file: !691, line: 62, baseType: !5, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !691, line: 63, baseType: !137, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !690, file: !691, line: 65, baseType: !697, size: 256, offset: 64)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 256, elements: !375)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !68, line: 182, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !698, file: !68, line: 183, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !68, line: 186, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !68, line: 187, baseType: !701, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !702, file: !68, line: 187, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !690, file: !691, line: 66, baseType: !698, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !690, file: !691, line: 68, baseType: !709, size: 128, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !710, line: 40, baseType: !711)
!710 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !710, line: 36, size: 128, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !710, line: 37, baseType: !137)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !711, file: !710, line: 38, baseType: !74, size: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !690, file: !691, line: 69, baseType: !716, size: 128, align: 64, offset: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !68, line: 216, size: 128, align: 64, elements: !717)
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !68, line: 217, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !716, file: !68, line: 218, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !719}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !690, file: !691, line: 70, baseType: !725, size: 128, offset: 640)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 128, elements: !589)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !691, line: 54, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !726, file: !691, line: 55, baseType: !103, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !726, file: !691, line: 56, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !691, line: 56, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !423, file: !424, line: 872, baseType: !733, size: 512, offset: 6016)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 512, elements: !375)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !423, file: !424, line: 873, baseType: !74, size: 128, offset: 6528)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !423, file: !424, line: 874, baseType: !74, size: 128, offset: 6656)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !423, file: !424, line: 876, baseType: !737, size: 64, offset: 6784)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !739, line: 26, size: 192, elements: !740)
!739 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !738, file: !739, line: 27, baseType: !5, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !738, file: !739, line: 28, baseType: !743, size: 128, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !744, line: 43, size: 128, elements: !745)
!744 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !743, file: !744, line: 44, baseType: !341)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !743, file: !744, line: 45, baseType: !74, size: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !423, file: !424, line: 879, baseType: !749, size: 64, offset: 6848)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !423, file: !424, line: 882, baseType: !749, size: 64, offset: 6912)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !423, file: !424, line: 884, baseType: !294, size: 64, offset: 6976)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !423, file: !424, line: 885, baseType: !294, size: 64, offset: 7040)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !423, file: !424, line: 890, baseType: !294, size: 64, offset: 7104)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !423, file: !424, line: 891, baseType: !755, size: 128, offset: 7168)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !424, line: 242, size: 128, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !755, file: !424, line: 244, baseType: !294, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !755, file: !424, line: 245, baseType: !294, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !755, file: !424, line: 246, baseType: !341, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !423, file: !424, line: 900, baseType: !89, size: 64, offset: 7296)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !423, file: !424, line: 901, baseType: !89, size: 64, offset: 7360)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !423, file: !424, line: 904, baseType: !294, size: 64, offset: 7424)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !423, file: !424, line: 907, baseType: !294, size: 64, offset: 7488)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !423, file: !424, line: 910, baseType: !89, size: 64, offset: 7552)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !423, file: !424, line: 911, baseType: !89, size: 64, offset: 7616)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !423, file: !424, line: 914, baseType: !767, size: 640, offset: 7680)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !768, line: 123, size: 640, elements: !769)
!768 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !776, !777}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !767, file: !768, line: 124, baseType: !771, size: 576)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 576, elements: !178)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !768, line: 108, size: 192, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !772, file: !768, line: 109, baseType: !294, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !772, file: !768, line: 110, baseType: !556, size: 128, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !767, file: !768, line: 125, baseType: !5, size: 32, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !767, file: !768, line: 126, baseType: !5, size: 32, offset: 608)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !423, file: !424, line: 917, baseType: !779, size: 192, offset: 8320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !768, line: 134, size: 192, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !779, file: !768, line: 135, baseType: !716, size: 128, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !779, file: !768, line: 136, baseType: !5, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !423, file: !424, line: 923, baseType: !784, size: 64, offset: 8512)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !424, line: 923, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !423, file: !424, line: 926, baseType: !784, size: 64, offset: 8576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !423, file: !424, line: 929, baseType: !784, size: 64, offset: 8640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !423, file: !424, line: 933, baseType: !790, size: 64, offset: 8704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !424, line: 933, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !423, file: !424, line: 943, baseType: !793, size: 128, offset: 8768)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 16)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !423, file: !424, line: 945, baseType: !797, size: 64, offset: 8896)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !424, line: 49, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !423, file: !424, line: 956, baseType: !800, size: 64, offset: 8960)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !424, line: 45, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !423, file: !424, line: 959, baseType: !803, size: 64, offset: 9024)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !424, line: 959, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !423, file: !424, line: 962, baseType: !806, size: 64, offset: 9088)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !424, line: 66, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !423, file: !424, line: 966, baseType: !809, size: 64, offset: 9152)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !424, line: 50, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !423, file: !424, line: 969, baseType: !812, size: 64, offset: 9216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !768, line: 223, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !423, file: !424, line: 970, baseType: !815, size: 64, offset: 9280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !424, line: 62, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !423, file: !424, line: 971, baseType: !818, size: 64, offset: 9344)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !819, line: 25, baseType: !820)
!819 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !819, line: 23, size: 64, elements: !821)
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !820, file: !819, line: 24, baseType: !588, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !423, file: !424, line: 972, baseType: !818, size: 64, offset: 9408)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !423, file: !424, line: 974, baseType: !818, size: 64, offset: 9472)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !423, file: !424, line: 975, baseType: !826, size: 192, offset: 9536)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !827, line: 30, size: 192, elements: !828)
!827 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !826, file: !827, line: 31, baseType: !74, size: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !826, file: !827, line: 32, baseType: !818, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !423, file: !424, line: 976, baseType: !89, size: 64, offset: 9728)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !423, file: !424, line: 977, baseType: !223, size: 64, offset: 9792)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !423, file: !424, line: 978, baseType: !5, size: 32, offset: 9856)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !423, file: !424, line: 980, baseType: !719, size: 64, offset: 9920)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !423, file: !424, line: 989, baseType: !836, size: 128, offset: 9984)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !837, line: 35, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !836, file: !837, line: 36, baseType: !103, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !836, file: !837, line: 37, baseType: !316, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !836, file: !837, line: 38, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !837, line: 23, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !423, file: !424, line: 992, baseType: !294, size: 64, offset: 10112)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !423, file: !424, line: 993, baseType: !294, size: 64, offset: 10176)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !423, file: !424, line: 996, baseType: !137, offset: 10240)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !423, file: !424, line: 999, baseType: !341, offset: 10240)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !423, file: !424, line: 1001, baseType: !849, size: 64, offset: 10240)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !424, line: 636, size: 64, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !424, line: 637, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !423, file: !424, line: 1005, baseType: !559, size: 128, offset: 10304)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !423, file: !424, line: 1007, baseType: !422, size: 64, offset: 10432)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !423, file: !424, line: 1009, baseType: !856, size: 64, offset: 10496)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !424, line: 1009, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !423, file: !424, line: 1043, baseType: !69, size: 64, offset: 10560)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !423, file: !424, line: 1046, baseType: !860, size: 64, offset: 10624)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !424, line: 41, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !423, file: !424, line: 1050, baseType: !863, size: 64, offset: 10688)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !424, line: 42, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !423, file: !424, line: 1054, baseType: !866, size: 64, offset: 10752)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !424, line: 55, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !423, file: !424, line: 1056, baseType: !869, size: 64, offset: 10816)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !424, line: 40, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !423, file: !424, line: 1058, baseType: !872, size: 64, offset: 10880)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !424, line: 47, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !423, file: !424, line: 1061, baseType: !875, size: 64, offset: 10944)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !424, line: 43, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !423, file: !424, line: 1064, baseType: !89, size: 64, offset: 11008)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !423, file: !424, line: 1065, baseType: !879, size: 64, offset: 11072)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !827, line: 14, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !827, line: 12, size: 384, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !827, line: 13, baseType: !884, size: 384)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !827, line: 13, size: 384, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !884, file: !827, line: 13, baseType: !103, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !884, file: !827, line: 13, baseType: !103, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !884, file: !827, line: 13, baseType: !103, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !884, file: !827, line: 13, baseType: !890, size: 256, offset: 128)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !891, line: 32, size: 256, elements: !892)
!891 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!892 = !{!893, !899, !912, !918, !927, !947, !952}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !890, file: !891, line: 37, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 34, size: 64, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !894, file: !891, line: 35, baseType: !678, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !894, file: !891, line: 36, baseType: !898, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !210, line: 49, baseType: !5)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !890, file: !891, line: 45, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 40, size: 192, elements: !901)
!901 = !{!902, !904, !905, !911}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !900, file: !891, line: 41, baseType: !903, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !210, line: 95, baseType: !103)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !900, file: !891, line: 42, baseType: !103, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !900, file: !891, line: 43, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !891, line: 11, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !891, line: 8, size: 64, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !907, file: !891, line: 9, baseType: !103, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !907, file: !891, line: 10, baseType: !69, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !900, file: !891, line: 44, baseType: !103, size: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !890, file: !891, line: 52, baseType: !913, size: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 48, size: 128, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !913, file: !891, line: 49, baseType: !678, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !913, file: !891, line: 50, baseType: !898, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !913, file: !891, line: 51, baseType: !906, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !890, file: !891, line: 61, baseType: !919, size: 256)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 55, size: 256, elements: !920)
!920 = !{!921, !922, !923, !924, !926}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !919, file: !891, line: 56, baseType: !678, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !919, file: !891, line: 57, baseType: !898, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !919, file: !891, line: 58, baseType: !103, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !919, file: !891, line: 59, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !210, line: 94, baseType: !211)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !919, file: !891, line: 60, baseType: !925, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !890, file: !891, line: 95, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 64, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !928, file: !891, line: 65, baseType: !69, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !891, line: 77, baseType: !932, size: 192, offset: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !891, line: 77, size: 192, elements: !933)
!933 = !{!934, !935, !942}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !932, file: !891, line: 82, baseType: !411, size: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !932, file: !891, line: 88, baseType: !936, size: 192)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !891, line: 84, size: 192, elements: !937)
!937 = !{!938, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !936, file: !891, line: 85, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !538)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !936, file: !891, line: 86, baseType: !69, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !936, file: !891, line: 87, baseType: !69, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !932, file: !891, line: 93, baseType: !943, size: 96)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !891, line: 90, size: 96, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !943, file: !891, line: 91, baseType: !939, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !943, file: !891, line: 92, baseType: !433, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !890, file: !891, line: 101, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 98, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !948, file: !891, line: 99, baseType: !90, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !948, file: !891, line: 100, baseType: !103, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !890, file: !891, line: 108, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !891, line: 104, size: 128, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !953, file: !891, line: 105, baseType: !69, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !953, file: !891, line: 106, baseType: !103, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !953, file: !891, line: 107, baseType: !5, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !423, file: !424, line: 1067, baseType: !959, offset: 11136)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !960, line: 12, elements: !151)
!960 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!961 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !423, file: !424, line: 1099, baseType: !962, size: 64, offset: 11136)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !424, line: 56, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !423, file: !424, line: 1103, baseType: !74, size: 128, offset: 11200)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !423, file: !424, line: 1104, baseType: !966, size: 64, offset: 11328)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !424, line: 46, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !423, file: !424, line: 1105, baseType: !393, size: 192, offset: 11392)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !423, file: !424, line: 1106, baseType: !5, size: 32, offset: 11584)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !423, file: !424, line: 1109, baseType: !971, size: 128, offset: 11648)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 128, elements: !974)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !424, line: 51, flags: DIFlagFwdDecl)
!974 = !{!975}
!975 = !DISubrange(count: 2)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !423, file: !424, line: 1110, baseType: !393, size: 192, offset: 11776)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !423, file: !424, line: 1111, baseType: !74, size: 128, offset: 11968)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !423, file: !424, line: 1173, baseType: !979, size: 64, offset: 12096)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !981, line: 62, size: 256, align: 256, elements: !982)
!981 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983, !984, !985, !990}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !980, file: !981, line: 75, baseType: !433, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !980, file: !981, line: 90, baseType: !433, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !980, file: !981, line: 124, baseType: !986, size: 64, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 109, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !986, file: !981, line: 110, baseType: !296, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !986, file: !981, line: 112, baseType: !296, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !981, line: 144, baseType: !433, size: 32, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !423, file: !424, line: 1174, baseType: !432, size: 32, offset: 12160)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !423, file: !424, line: 1179, baseType: !89, size: 64, offset: 12224)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !423, file: !424, line: 1182, baseType: !994, size: 128, offset: 12288)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !371, line: 76, size: 128, elements: !995)
!995 = !{!996, !1001, !1004}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !994, file: !371, line: 85, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !998, line: 7, size: 64, elements: !999)
!998 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !997, file: !998, line: 12, baseType: !585, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !994, file: !371, line: 88, baseType: !1002, size: 8, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !68, line: 30, baseType: !1003)
!1003 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !994, file: !371, line: 95, baseType: !1002, size: 8, offset: 72)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !424, line: 1184, baseType: !1006, size: 128, offset: 12416)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !424, line: 1184, size: 128, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1006, file: !424, line: 1185, baseType: !438, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1006, file: !424, line: 1186, baseType: !716, size: 128, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !423, file: !424, line: 1190, baseType: !1011, size: 64, offset: 12544)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !424, line: 53, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !423, file: !424, line: 1192, baseType: !1014, size: 128, offset: 12608)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !371, line: 64, size: 128, elements: !1015)
!1015 = !{!1016, !1109, !1110}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1014, file: !371, line: 65, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !266, line: 68, size: 512, align: 128, elements: !1019)
!1019 = !{!1020, !1021, !1101, !1108}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !266, line: 69, baseType: !89, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !266, line: 77, baseType: !1022, size: 320, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !266, line: 77, size: 320, elements: !1023)
!1023 = !{!1024, !1033, !1038, !1066, !1074, !1080, !1093, !1100}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 78, baseType: !1025, size: 320)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 78, size: 320, elements: !1026)
!1026 = !{!1027, !1028, !1031, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1025, file: !266, line: 84, baseType: !74, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1025, file: !266, line: 86, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !266, line: 26, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1025, file: !266, line: 87, baseType: !89, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1025, file: !266, line: 94, baseType: !89, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 96, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 96, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1034, file: !266, line: 101, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !68, line: 143, baseType: !294)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 103, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 103, size: 320, elements: !1040)
!1040 = !{!1041, !1051, !1054, !1055}
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !266, line: 104, baseType: !1042, size: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !266, line: 104, size: 128, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1042, file: !266, line: 105, baseType: !74, size: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !266, line: 106, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !266, line: 106, size: 128, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !266, line: 107, baseType: !1017, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1046, file: !266, line: 109, baseType: !103, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1046, file: !266, line: 110, baseType: !103, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1039, file: !266, line: 117, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !266, line: 117, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1039, file: !266, line: 119, baseType: !69, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !266, line: 120, baseType: !1056, size: 64, offset: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !266, line: 120, size: 64, elements: !1057)
!1057 = !{!1058, !1059, !1060}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1056, file: !266, line: 121, baseType: !69, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1056, file: !266, line: 122, baseType: !89, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !266, line: 123, baseType: !1061, size: 32)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !266, line: 123, size: 32, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1061, file: !266, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1061, file: !266, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1061, file: !266, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 130, baseType: !1067, size: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 130, size: 192, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1067, file: !266, line: 131, baseType: !89, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1067, file: !266, line: 134, baseType: !571, size: 8, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1067, file: !266, line: 135, baseType: !571, size: 8, offset: 72)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1067, file: !266, line: 136, baseType: !316, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1067, file: !266, line: 137, baseType: !5, size: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 139, baseType: !1075, size: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 139, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1075, file: !266, line: 140, baseType: !89, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1075, file: !266, line: 141, baseType: !316, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1075, file: !266, line: 143, baseType: !74, size: 128, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 145, baseType: !1081, size: 256)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 145, size: 256, elements: !1082)
!1082 = !{!1083, !1084, !1086, !1087, !1092}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1081, file: !266, line: 146, baseType: !89, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1081, file: !266, line: 147, baseType: !1085, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !255, line: 509, baseType: !1017)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1081, file: !266, line: 148, baseType: !89, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !266, line: 149, baseType: !1088, size: 64, offset: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !266, line: 149, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1088, file: !266, line: 150, baseType: !282, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1088, file: !266, line: 151, baseType: !316, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1081, file: !266, line: 156, baseType: !137, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !266, line: 159, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !266, line: 159, size: 128, elements: !1095)
!1095 = !{!1096, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1094, file: !266, line: 161, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !266, line: 161, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1094, file: !266, line: 162, baseType: !69, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1022, file: !266, line: 176, baseType: !716, size: 128, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !266, line: 179, baseType: !1102, size: 32, offset: 384)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !266, line: 179, size: 32, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1102, file: !266, line: 184, baseType: !316, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1102, file: !266, line: 192, baseType: !5, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1102, file: !266, line: 194, baseType: !5, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1102, file: !266, line: 195, baseType: !103, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1018, file: !266, line: 199, baseType: !316, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1014, file: !371, line: 67, baseType: !433, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1014, file: !371, line: 68, baseType: !433, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !423, file: !424, line: 1206, baseType: !103, size: 32, offset: 12736)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !423, file: !424, line: 1207, baseType: !103, size: 32, offset: 12768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !423, file: !424, line: 1209, baseType: !89, size: 64, offset: 12800)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !423, file: !424, line: 1219, baseType: !294, size: 64, offset: 12864)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !423, file: !424, line: 1220, baseType: !294, size: 64, offset: 12928)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !423, file: !424, line: 1317, baseType: !103, size: 32, offset: 12992)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !423, file: !424, line: 1319, baseType: !422, size: 64, offset: 13056)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !423, file: !424, line: 1322, baseType: !1119, size: 64, offset: 13120)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1121, line: 56, size: 512, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1129, !1130, !1132}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1120, file: !1121, line: 57, baseType: !1119, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1120, file: !1121, line: 58, baseType: !69, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1120, file: !1121, line: 59, baseType: !89, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !1121, line: 60, baseType: !89, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1120, file: !1121, line: 61, baseType: !1128, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1120, file: !1121, line: 62, baseType: !5, size: 32, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1120, file: !1121, line: 63, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !68, line: 153, baseType: !294)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1120, file: !1121, line: 64, baseType: !1133, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !423, file: !424, line: 1326, baseType: !438, size: 32, offset: 13184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !423, file: !424, line: 1342, baseType: !69, size: 64, offset: 13248)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !423, file: !424, line: 1343, baseType: !296, size: 64, offset: 13312)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !423, file: !424, line: 1344, baseType: !294, size: 64, offset: 13376)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !423, file: !424, line: 1345, baseType: !296, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !423, file: !424, line: 1346, baseType: !296, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !423, file: !424, line: 1347, baseType: !296, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !423, file: !424, line: 1348, baseType: !716, size: 128, align: 64, offset: 13504)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !423, file: !424, line: 1358, baseType: !1144, size: 34816, offset: 13824)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1145, line: 485, size: 34816, elements: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !{!1147, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1176, !1177, !1178, !1179, !1180, !1181, !1184, !1185, !1186}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1144, file: !1145, line: 487, baseType: !1148, size: 192)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 192, elements: !178)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1150, line: 16, size: 64, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1149, file: !1150, line: 17, baseType: !406, size: 16)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1149, file: !1150, line: 18, baseType: !406, size: 16, offset: 16)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1149, file: !1150, line: 19, baseType: !406, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1149, file: !1150, line: 19, baseType: !406, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1149, file: !1150, line: 19, baseType: !406, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1149, file: !1150, line: 19, baseType: !406, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1149, file: !1150, line: 19, baseType: !406, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1149, file: !1150, line: 20, baseType: !406, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1149, file: !1150, line: 20, baseType: !406, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1149, file: !1150, line: 20, baseType: !406, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1149, file: !1150, line: 20, baseType: !406, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1149, file: !1150, line: 20, baseType: !406, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1149, file: !1150, line: 20, baseType: !406, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1144, file: !1145, line: 491, baseType: !89, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1144, file: !1145, line: 495, baseType: !218, size: 16, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1144, file: !1145, line: 496, baseType: !218, size: 16, offset: 272)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1144, file: !1145, line: 497, baseType: !218, size: 16, offset: 288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1144, file: !1145, line: 498, baseType: !218, size: 16, offset: 304)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1144, file: !1145, line: 502, baseType: !89, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1144, file: !1145, line: 503, baseType: !89, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1144, file: !1145, line: 514, baseType: !1173, size: 256, offset: 448)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 256, elements: !375)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1145, line: 483, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1144, file: !1145, line: 516, baseType: !89, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1144, file: !1145, line: 518, baseType: !89, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1144, file: !1145, line: 520, baseType: !89, size: 64, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1144, file: !1145, line: 521, baseType: !89, size: 64, offset: 896)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1144, file: !1145, line: 522, baseType: !89, size: 64, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1144, file: !1145, line: 528, baseType: !1182, size: 64, offset: 1024)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1145, line: 10, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1144, file: !1145, line: 535, baseType: !89, size: 64, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1144, file: !1145, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1144, file: !1145, line: 540, baseType: !1187, size: 33280, offset: 1536)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1188, line: 317, size: 33280, elements: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1187, file: !1188, line: 330, baseType: !5, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1187, file: !1188, line: 337, baseType: !89, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1187, file: !1188, line: 348, baseType: !1193, size: 32768, offset: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1188, line: 304, size: 32768, elements: !1194)
!1194 = !{!1195, !1210, !1249, !1299, !1316}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1193, file: !1188, line: 305, baseType: !1196, size: 896)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1188, line: 12, size: 896, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1196, file: !1188, line: 13, baseType: !432, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1196, file: !1188, line: 14, baseType: !432, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1196, file: !1188, line: 15, baseType: !432, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1196, file: !1188, line: 16, baseType: !432, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1196, file: !1188, line: 17, baseType: !432, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1196, file: !1188, line: 18, baseType: !432, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1196, file: !1188, line: 19, baseType: !432, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1196, file: !1188, line: 22, baseType: !1206, size: 640, offset: 224)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 640, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 20)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1196, file: !1188, line: 25, baseType: !432, size: 32, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1193, file: !1188, line: 306, baseType: !1211, size: 4096, align: 128)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1188, line: 34, size: 4096, align: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1232, !1233, !1234, !1238, !1240, !1244}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1211, file: !1188, line: 35, baseType: !406, size: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1211, file: !1188, line: 36, baseType: !406, size: 16, offset: 16)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1211, file: !1188, line: 37, baseType: !406, size: 16, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1211, file: !1188, line: 38, baseType: !406, size: 16, offset: 48)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1188, line: 39, baseType: !1218, size: 128, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1188, line: 39, size: 128, elements: !1219)
!1219 = !{!1220, !1225}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1188, line: 40, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !1188, line: 40, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1221, file: !1188, line: 41, baseType: !294, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1221, file: !1188, line: 42, baseType: !294, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1188, line: 44, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !1188, line: 44, size: 128, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1226, file: !1188, line: 45, baseType: !432, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1226, file: !1188, line: 46, baseType: !432, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1226, file: !1188, line: 47, baseType: !432, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1226, file: !1188, line: 48, baseType: !432, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1211, file: !1188, line: 51, baseType: !432, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1211, file: !1188, line: 52, baseType: !432, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1211, file: !1188, line: 55, baseType: !1235, size: 1024, offset: 256)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 1024, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1211, file: !1188, line: 58, baseType: !1239, size: 2048, offset: 1280)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 2048, elements: !182)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1211, file: !1188, line: 60, baseType: !1241, size: 384, offset: 3328)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 384, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 12)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1188, line: 62, baseType: !1245, size: 384, offset: 3712)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1188, line: 62, size: 384, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1245, file: !1188, line: 63, baseType: !1241, size: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1245, file: !1188, line: 64, baseType: !1241, size: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1193, file: !1188, line: 307, baseType: !1250, size: 1088)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1188, line: 79, size: 1088, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1298}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1250, file: !1188, line: 80, baseType: !432, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1250, file: !1188, line: 81, baseType: !432, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1250, file: !1188, line: 82, baseType: !432, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1250, file: !1188, line: 83, baseType: !432, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1250, file: !1188, line: 84, baseType: !432, size: 32, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1250, file: !1188, line: 85, baseType: !432, size: 32, offset: 160)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1250, file: !1188, line: 86, baseType: !432, size: 32, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1250, file: !1188, line: 88, baseType: !1206, size: 640, offset: 224)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1250, file: !1188, line: 89, baseType: !569, size: 8, offset: 864)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1250, file: !1188, line: 90, baseType: !569, size: 8, offset: 872)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1250, file: !1188, line: 91, baseType: !569, size: 8, offset: 880)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1250, file: !1188, line: 92, baseType: !569, size: 8, offset: 888)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1250, file: !1188, line: 93, baseType: !569, size: 8, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1250, file: !1188, line: 94, baseType: !569, size: 8, offset: 904)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1250, file: !1188, line: 95, baseType: !1267, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1269, line: 11, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1268, file: !1269, line: 12, baseType: !90, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1268, file: !1269, line: 13, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1275, line: 56, size: 1344, elements: !1276)
!1275 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1274, file: !1275, line: 61, baseType: !89, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1274, file: !1275, line: 62, baseType: !89, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1274, file: !1275, line: 63, baseType: !89, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1274, file: !1275, line: 64, baseType: !89, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1274, file: !1275, line: 65, baseType: !89, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1274, file: !1275, line: 66, baseType: !89, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1274, file: !1275, line: 68, baseType: !89, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1274, file: !1275, line: 69, baseType: !89, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1274, file: !1275, line: 70, baseType: !89, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1274, file: !1275, line: 71, baseType: !89, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1274, file: !1275, line: 72, baseType: !89, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1274, file: !1275, line: 73, baseType: !89, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1274, file: !1275, line: 74, baseType: !89, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1274, file: !1275, line: 75, baseType: !89, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1274, file: !1275, line: 76, baseType: !89, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1274, file: !1275, line: 81, baseType: !89, size: 64, offset: 960)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1274, file: !1275, line: 83, baseType: !89, size: 64, offset: 1024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1274, file: !1275, line: 84, baseType: !89, size: 64, offset: 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !1275, line: 85, baseType: !89, size: 64, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1274, file: !1275, line: 86, baseType: !89, size: 64, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1274, file: !1275, line: 87, baseType: !89, size: 64, offset: 1280)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1250, file: !1188, line: 96, baseType: !432, size: 32, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1193, file: !1188, line: 308, baseType: !1300, size: 4608, align: 512)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1188, line: 289, size: 4608, align: 512, elements: !1301)
!1301 = !{!1302, !1303, !1312}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1300, file: !1188, line: 290, baseType: !1211, size: 4096, align: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1300, file: !1188, line: 291, baseType: !1304, size: 512, offset: 4096)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1188, line: 268, size: 512, elements: !1305)
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1304, file: !1188, line: 269, baseType: !294, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1304, file: !1188, line: 270, baseType: !294, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1304, file: !1188, line: 271, baseType: !1309, size: 384, offset: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 384, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 6)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1300, file: !1188, line: 292, baseType: !1313, offset: 4608)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 0)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1193, file: !1188, line: 309, baseType: !1317, size: 32768)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 32768, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 4096)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !266, line: 378, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !415, file: !266, line: 384, baseType: !738, size: 192, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !286, file: !266, line: 500, baseType: !137, offset: 6656)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !286, file: !266, line: 501, baseType: !1325, size: 64, offset: 6656)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !266, line: 387, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !286, file: !266, line: 516, baseType: !1328, size: 64, offset: 6720)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1330, line: 18, flags: DIFlagFwdDecl)
!1330 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !286, file: !266, line: 519, baseType: !253, size: 64, offset: 6784)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !286, file: !266, line: 521, baseType: !1333, size: 64, offset: 6848)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !266, line: 521, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !286, file: !266, line: 545, baseType: !316, size: 32, offset: 6912)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !286, file: !266, line: 548, baseType: !1002, size: 8, offset: 6944)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !286, file: !266, line: 550, baseType: !1338, offset: 6952)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1339, line: 142, elements: !151)
!1339 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !286, file: !266, line: 554, baseType: !1341, size: 256, offset: 6976)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1342, line: 102, size: 256, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1341, file: !1342, line: 103, baseType: !324, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1341, file: !1342, line: 104, baseType: !74, size: 128, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1341, file: !1342, line: 105, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1342, line: 21, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !286, file: !266, line: 557, baseType: !432, size: 32, offset: 7232)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !283, file: !266, line: 565, baseType: !1354, offset: 7296)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: -1)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !265, file: !266, line: 333, baseType: !1358, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !255, line: 284, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !255, line: 284, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1359, file: !255, line: 284, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !314, line: 19, baseType: !89)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !265, file: !266, line: 334, baseType: !89, size: 64, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !265, file: !266, line: 343, baseType: !1365, size: 256, offset: 704)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !266, line: 340, size: 256, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1365, file: !266, line: 341, baseType: !273, size: 192, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1365, file: !266, line: 342, baseType: !89, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !265, file: !266, line: 351, baseType: !74, size: 128, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !265, file: !266, line: 353, baseType: !1371, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !266, line: 353, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !265, file: !266, line: 356, baseType: !1374, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !266, line: 356, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !265, file: !266, line: 359, baseType: !89, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !265, file: !266, line: 361, baseType: !253, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !265, file: !266, line: 362, baseType: !69, size: 64, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !265, file: !266, line: 365, baseType: !324, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !265, file: !266, line: 373, baseType: !1382, offset: 1472)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !266, line: 296, elements: !151)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !232, file: !202, line: 90, baseType: !227, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !232, file: !202, line: 91, baseType: !1385, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !192, file: !123, line: 143, baseType: !1387, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !130}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1393)
!1393 = !{!1394, !1395, !1399, !1403, !1409, !1413}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1392, file: !16, line: 40, baseType: !15, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1392, file: !16, line: 41, baseType: !1396, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1002}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1392, file: !16, line: 42, baseType: !1400, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!69}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1392, file: !16, line: 43, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1133, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1392, file: !16, line: 44, baseType: !1410, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1133}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1392, file: !16, line: 45, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !69}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !192, file: !123, line: 144, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1133, !130}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !192, file: !123, line: 145, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !130, !1425, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1330, line: 23, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 21, size: 32, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1427, file: !1330, line: 22, baseType: !1430, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !68, line: 32, baseType: !898)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1330, line: 28, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 26, size: 32, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1433, file: !1330, line: 27, baseType: !1436, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !68, line: 33, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !210, line: 50, baseType: !5)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !122, file: !123, line: 70, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1441, line: 123, size: 1024, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1584, !1585, !1586, !1587, !1588}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1440, file: !1441, line: 124, baseType: !316, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1440, file: !1441, line: 125, baseType: !316, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1440, file: !1441, line: 135, baseType: !1439, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1440, file: !1441, line: 136, baseType: !126, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1440, file: !1441, line: 138, baseType: !273, size: 192, align: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1440, file: !1441, line: 140, baseType: !1133, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1440, file: !1441, line: 141, baseType: !5, size: 32, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 142, baseType: !1451, size: 256, offset: 512)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 142, size: 256, elements: !1452)
!1452 = !{!1453, !1507, !1511}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1451, file: !1441, line: 143, baseType: !1454, size: 192)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1441, line: 91, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1454, file: !1441, line: 92, baseType: !89, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1454, file: !1441, line: 94, baseType: !290, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1454, file: !1441, line: 100, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1441, line: 180, size: 704, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1477, !1478, !1479, !1505, !1506}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1460, file: !1441, line: 182, baseType: !1439, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1441, line: 183, baseType: !5, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1460, file: !1441, line: 186, baseType: !1465, size: 192, offset: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1466, line: 19, size: 192, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1475, !1476}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1465, file: !1466, line: 20, baseType: !1469, size: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1470, line: 292, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1469, file: !1470, line: 293, baseType: !137)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1469, file: !1470, line: 295, baseType: !67, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1469, file: !1470, line: 296, baseType: !69, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1465, file: !1466, line: 21, baseType: !5, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1465, file: !1466, line: 22, baseType: !5, size: 32, offset: 160)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1460, file: !1441, line: 187, baseType: !432, size: 32, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1460, file: !1441, line: 188, baseType: !432, size: 32, offset: 352)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1460, file: !1441, line: 189, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1441, line: 168, size: 320, elements: !1482)
!1482 = !{!1483, !1489, !1493, !1497, !1501}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1481, file: !1441, line: 169, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!103, !1487, !1459}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !255, line: 539, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1481, file: !1441, line: 171, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!103, !1439, !126, !217}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1481, file: !1441, line: 173, baseType: !1494, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!103, !1439}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1481, file: !1441, line: 174, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!103, !1439, !1439, !126}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1481, file: !1441, line: 176, baseType: !1502, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!103, !1487, !1439, !1459}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1460, file: !1441, line: 192, baseType: !74, size: 128, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1460, file: !1441, line: 194, baseType: !709, size: 128, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1451, file: !1441, line: 144, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1441, line: 103, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1508, file: !1441, line: 104, baseType: !1439, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1451, file: !1441, line: 145, baseType: !1512, size: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1441, line: 107, size: 256, elements: !1513)
!1513 = !{!1514, !1579, !1582, !1583}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1512, file: !1441, line: 108, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1441, line: 217, size: 768, elements: !1518)
!1518 = !{!1519, !1539, !1543, !1547, !1552, !1556, !1560, !1564, !1565, !1566, !1567, !1575}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1517, file: !1441, line: 222, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!103, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1441, line: 197, size: 1088, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1524, file: !1441, line: 199, baseType: !1439, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1524, file: !1441, line: 200, baseType: !253, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1524, file: !1441, line: 201, baseType: !1487, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1524, file: !1441, line: 202, baseType: !69, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1524, file: !1441, line: 205, baseType: !393, size: 192, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1524, file: !1441, line: 206, baseType: !393, size: 192, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1524, file: !1441, line: 207, baseType: !103, size: 32, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1524, file: !1441, line: 208, baseType: !74, size: 128, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1524, file: !1441, line: 209, baseType: !80, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1524, file: !1441, line: 211, baseType: !223, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1524, file: !1441, line: 212, baseType: !1002, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1524, file: !1441, line: 213, baseType: !1002, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1524, file: !1441, line: 214, baseType: !1374, size: 64, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1517, file: !1441, line: 223, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1523}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1517, file: !1441, line: 236, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!103, !1487, !69}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1517, file: !1441, line: 238, baseType: !1548, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!69, !1487, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1517, file: !1441, line: 239, baseType: !1553, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!69, !1487, !69, !1551}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1517, file: !1441, line: 240, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1487, !69}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1517, file: !1441, line: 242, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!208, !1523, !80, !223, !256}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1517, file: !1441, line: 252, baseType: !223, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1517, file: !1441, line: 259, baseType: !1002, size: 8, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1517, file: !1441, line: 260, baseType: !1561, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1517, file: !1441, line: 263, baseType: !1568, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1571, !1523, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1572, line: 52, baseType: !5)
!1572 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1441, line: 27, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1517, file: !1441, line: 266, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!103, !1523, !264}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1512, file: !1441, line: 109, baseType: !1580, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1441, line: 31, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1512, file: !1441, line: 110, baseType: !256, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1512, file: !1441, line: 111, baseType: !1439, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1440, file: !1441, line: 148, baseType: !69, size: 64, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1440, file: !1441, line: 154, baseType: !294, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1441, line: 156, baseType: !218, size: 16, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1440, file: !1441, line: 157, baseType: !217, size: 16, offset: 912)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1440, file: !1441, line: 158, baseType: !1589, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1441, line: 32, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !122, file: !123, line: 71, baseType: !1592, size: 32, offset: 448)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1593, line: 19, size: 32, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1592, file: !1593, line: 20, baseType: !438, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !122, file: !123, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !122, file: !123, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !122, file: !123, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !122, file: !123, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !122, file: !123, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !28, line: 463, baseType: !118, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !119, file: !28, line: 465, baseType: !1603, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !119, file: !28, line: 467, baseType: !126, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !28, line: 468, baseType: !1607, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1617, !1622, !1626}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1609, file: !28, line: 88, baseType: !126, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1609, file: !28, line: 89, baseType: !229, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1609, file: !28, line: 90, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!103, !118, !173}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1609, file: !28, line: 91, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!80, !118, !1621, !1425, !1431}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1609, file: !28, line: 93, baseType: !1623, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !118}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1609, file: !28, line: 95, baseType: !1627, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !119, file: !28, line: 470, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1632, line: 82, size: 1408, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1719, !1722, !1725}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1631, file: !1632, line: 83, baseType: !126, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1631, file: !1632, line: 84, baseType: !126, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1631, file: !1632, line: 85, baseType: !118, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1631, file: !1632, line: 86, baseType: !229, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1631, file: !1632, line: 87, baseType: !229, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1631, file: !1632, line: 88, baseType: !229, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1631, file: !1632, line: 90, baseType: !1641, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!103, !118, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1653, !1654, !1655, !1656, !1670, !1683, !1684, !1685, !1686, !1687, !1695, !1696, !1697, !1698, !1699, !1700}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !22, line: 96, baseType: !126, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1645, file: !22, line: 97, baseType: !1630, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1645, file: !22, line: 99, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1652, line: 76, flags: DIFlagFwdDecl)
!1652 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1645, file: !22, line: 100, baseType: !126, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1645, file: !22, line: 102, baseType: !1002, size: 8, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1645, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1645, file: !22, line: 105, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1660, line: 262, size: 1600, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1664, !1665, !1669}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1660, line: 263, baseType: !1663, size: 256)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !1236)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !1660, line: 264, baseType: !1663, size: 256, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1659, file: !1660, line: 265, baseType: !1666, size: 1024, offset: 512)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !1660, line: 266, baseType: !1133, size: 64, offset: 1536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1645, file: !22, line: 106, baseType: !1671, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1660, line: 210, size: 256, elements: !1674)
!1674 = !{!1675, !1679, !1681, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1673, file: !1660, line: 211, baseType: !1676, size: 72)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 72, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 9)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1673, file: !1660, line: 212, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1660, line: 14, baseType: !89)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1673, file: !1660, line: 213, baseType: !433, size: 32, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1673, file: !1660, line: 214, baseType: !433, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1645, file: !22, line: 108, baseType: !115, size: 64, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1645, file: !22, line: 109, baseType: !1623, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1645, file: !22, line: 110, baseType: !115, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1645, file: !22, line: 111, baseType: !1623, size: 64, offset: 640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1645, file: !22, line: 112, baseType: !1688, size: 64, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!103, !118, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1692, file: !35, line: 51, baseType: !103, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1645, file: !22, line: 113, baseType: !115, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1645, file: !22, line: 114, baseType: !229, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1645, file: !22, line: 115, baseType: !229, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1645, file: !22, line: 117, baseType: !1627, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1645, file: !22, line: 118, baseType: !1623, size: 64, offset: 1024)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1645, file: !22, line: 120, baseType: !1701, size: 64, offset: 1088)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1631, file: !1632, line: 91, baseType: !1614, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1631, file: !1632, line: 92, baseType: !115, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1631, file: !1632, line: 93, baseType: !1623, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1631, file: !1632, line: 94, baseType: !115, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1631, file: !1632, line: 95, baseType: !1623, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1631, file: !1632, line: 97, baseType: !115, size: 64, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1631, file: !1632, line: 98, baseType: !115, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1631, file: !1632, line: 100, baseType: !1688, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1631, file: !1632, line: 101, baseType: !115, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1631, file: !1632, line: 103, baseType: !115, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1631, file: !1632, line: 105, baseType: !115, size: 64, offset: 1088)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1631, file: !1632, line: 107, baseType: !1627, size: 64, offset: 1152)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1631, file: !1632, line: 109, baseType: !1716, size: 64, offset: 1216)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1632, line: 109, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1631, file: !1632, line: 111, baseType: !1720, size: 64, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1632, line: 111, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1631, file: !1632, line: 112, baseType: !1723, offset: 1344)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1724, line: 187, elements: !151)
!1724 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1631, file: !1632, line: 114, baseType: !1002, size: 8, offset: 1344)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !119, file: !28, line: 471, baseType: !1644, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !119, file: !28, line: 473, baseType: !69, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !119, file: !28, line: 475, baseType: !69, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !28, line: 480, baseType: !393, size: 192, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !119, file: !28, line: 484, baseType: !1731, size: 576, offset: 1216)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1731, file: !28, line: 362, baseType: !74, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1731, file: !28, line: 363, baseType: !74, size: 128, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1731, file: !28, line: 364, baseType: !74, size: 128, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1731, file: !28, line: 365, baseType: !74, size: 128, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1731, file: !28, line: 366, baseType: !1002, size: 8, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1731, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !119, file: !28, line: 485, baseType: !1740, size: 2304, offset: 1792)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1841, !1845}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1740, file: !35, line: 566, baseType: !1691, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1740, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1740, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1740, file: !35, line: 569, baseType: !1002, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1740, file: !35, line: 570, baseType: !1002, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1740, file: !35, line: 571, baseType: !1002, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1740, file: !35, line: 572, baseType: !1002, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1740, file: !35, line: 573, baseType: !1002, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1740, file: !35, line: 574, baseType: !1002, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1740, file: !35, line: 575, baseType: !1002, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1740, file: !35, line: 576, baseType: !1002, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1740, file: !35, line: 577, baseType: !432, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !35, line: 578, baseType: !137, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1740, file: !35, line: 580, baseType: !74, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1740, file: !35, line: 581, baseType: !738, size: 192, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1740, file: !35, line: 582, baseType: !1758, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1760, line: 43, size: 1472, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1769, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1760, line: 44, baseType: !126, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1759, file: !1760, line: 45, baseType: !103, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1759, file: !1760, line: 46, baseType: !74, size: 128, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1760, line: 47, baseType: !137, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1759, file: !1760, line: 48, baseType: !1767, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1759, file: !1760, line: 49, baseType: !1770, size: 320, offset: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1771, line: 11, size: 320, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1770, file: !1771, line: 16, baseType: !702, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1770, file: !1771, line: 17, baseType: !89, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1770, file: !1771, line: 18, baseType: !1776, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1770, file: !1771, line: 19, baseType: !432, size: 32, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1759, file: !1760, line: 50, baseType: !89, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1759, file: !1760, line: 51, baseType: !508, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1759, file: !1760, line: 52, baseType: !508, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1759, file: !1760, line: 53, baseType: !508, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1759, file: !1760, line: 54, baseType: !508, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1759, file: !1760, line: 55, baseType: !508, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1759, file: !1760, line: 56, baseType: !89, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1759, file: !1760, line: 57, baseType: !89, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1759, file: !1760, line: 58, baseType: !89, size: 64, offset: 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1759, file: !1760, line: 59, baseType: !89, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1759, file: !1760, line: 60, baseType: !89, size: 64, offset: 1280)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1759, file: !1760, line: 61, baseType: !118, size: 64, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1759, file: !1760, line: 62, baseType: !1002, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1759, file: !1760, line: 63, baseType: !1002, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1740, file: !35, line: 583, baseType: !1002, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1740, file: !35, line: 584, baseType: !1002, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1740, file: !35, line: 585, baseType: !1002, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1740, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1740, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1740, file: !35, line: 592, baseType: !500, size: 512, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1740, file: !35, line: 593, baseType: !294, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1740, file: !35, line: 594, baseType: !1341, size: 256, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1740, file: !35, line: 595, baseType: !709, size: 128, offset: 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1740, file: !35, line: 596, baseType: !1767, size: 64, offset: 1536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1740, file: !35, line: 597, baseType: !316, size: 32, offset: 1600)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1740, file: !35, line: 598, baseType: !316, size: 32, offset: 1632)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1740, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1740, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1740, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1740, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1740, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1740, file: !35, line: 604, baseType: !1002, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1740, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1740, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1740, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1740, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1740, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1740, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1740, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1740, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1740, file: !35, line: 613, baseType: !103, size: 32, offset: 1792)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1740, file: !35, line: 614, baseType: !103, size: 32, offset: 1824)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1740, file: !35, line: 615, baseType: !294, size: 64, offset: 1856)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1740, file: !35, line: 616, baseType: !294, size: 64, offset: 1920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1740, file: !35, line: 617, baseType: !294, size: 64, offset: 1984)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1740, file: !35, line: 618, baseType: !294, size: 64, offset: 2048)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1740, file: !35, line: 620, baseType: !1828, size: 64, offset: 2112)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !35, line: 537, baseType: !137)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1829, file: !35, line: 538, baseType: !5, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1829, file: !35, line: 540, baseType: !74, size: 128, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1829, file: !35, line: 543, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1837, line: 182, size: 192, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1836, file: !1837, line: 183, baseType: !74, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1836, file: !1837, line: 184, baseType: !118, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1740, file: !35, line: 621, baseType: !1842, size: 64, offset: 2176)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !118, !662}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1740, file: !35, line: 622, baseType: !1846, size: 64, offset: 2240)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !119, file: !28, line: 486, baseType: !108, size: 64, offset: 4096)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !119, file: !28, line: 493, baseType: !1850, size: 64, offset: 4160)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !119, file: !28, line: 499, baseType: !74, size: 128, offset: 4224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !119, file: !28, line: 502, baseType: !1854, size: 64, offset: 4352)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !119, file: !28, line: 504, baseType: !1858, size: 64, offset: 4416)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !119, file: !28, line: 505, baseType: !294, size: 64, offset: 4480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !119, file: !28, line: 510, baseType: !294, size: 64, offset: 4544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !119, file: !28, line: 511, baseType: !1862, size: 64, offset: 4608)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !119, file: !28, line: 513, baseType: !1866, size: 64, offset: 4672)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1867, file: !28, line: 293, baseType: !5, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1867, file: !28, line: 294, baseType: !89, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !119, file: !28, line: 515, baseType: !74, size: 128, offset: 4736)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !119, file: !28, line: 526, baseType: !1873, offset: 4864)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1874, line: 5, elements: !151)
!1874 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !119, file: !28, line: 528, baseType: !1876, size: 64, offset: 4864)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1878, line: 51, size: 1344, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !{!1880, !1881, !1883, !1884, !1974, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1877, file: !1878, line: 52, baseType: !126, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1877, file: !1878, line: 53, baseType: !1882, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1878, line: 28, baseType: !432)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1877, file: !1878, line: 54, baseType: !126, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1877, file: !1878, line: 55, baseType: !1885, size: 192, offset: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1886, line: 17, size: 192, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1890, !1973}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1885, file: !1886, line: 18, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1885, file: !1886, line: 19, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1886, line: 110, size: 1152, elements: !1894)
!1894 = !{!1895, !1899, !1903, !1909, !1915, !1919, !1923, !1928, !1932, !1933, !1937, !1941, !1945, !1956, !1957, !1958, !1959, !1969}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1893, file: !1886, line: 111, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1889, !1889}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1893, file: !1886, line: 112, baseType: !1900, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1889}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1893, file: !1886, line: 113, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1002, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1893, file: !1886, line: 114, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!1133, !1907, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1893, file: !1886, line: 116, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1002, !1907, !126}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1893, file: !1886, line: 118, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!103, !1907, !126, !5, !69, !223}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1893, file: !1886, line: 123, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!103, !1907, !126, !1927, !223}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1893, file: !1886, line: 126, baseType: !1929, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!126, !1907}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1893, file: !1886, line: 127, baseType: !1929, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1893, file: !1886, line: 128, baseType: !1934, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1889, !1907}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1893, file: !1886, line: 130, baseType: !1938, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1889, !1907, !1889}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1893, file: !1886, line: 133, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1889, !1907, !126}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1893, file: !1886, line: 135, baseType: !1946, size: 64, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!103, !1907, !126, !126, !5, !5, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1886, line: 43, size: 640, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1950, file: !1886, line: 44, baseType: !1889, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1950, file: !1886, line: 45, baseType: !5, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1950, file: !1886, line: 46, baseType: !1955, size: 512, offset: 128)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 512, elements: !538)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1893, file: !1886, line: 140, baseType: !1938, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1893, file: !1886, line: 143, baseType: !1934, size: 64, offset: 896)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1893, file: !1886, line: 145, baseType: !1896, size: 64, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1893, file: !1886, line: 146, baseType: !1960, size: 64, offset: 1024)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!103, !1907, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1886, line: 29, size: 128, elements: !1965)
!1965 = !{!1966, !1967, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1964, file: !1886, line: 30, baseType: !5, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1964, file: !1886, line: 31, baseType: !5, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1964, file: !1886, line: 32, baseType: !1907, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1893, file: !1886, line: 148, baseType: !1970, size: 64, offset: 1088)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!103, !1907, !118}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1885, file: !1886, line: 20, baseType: !118, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1877, file: !1878, line: 57, baseType: !1975, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1878, line: 31, size: 704, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1976, file: !1878, line: 32, baseType: !80, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1976, file: !1878, line: 33, baseType: !103, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1976, file: !1878, line: 34, baseType: !69, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1976, file: !1878, line: 35, baseType: !1975, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1976, file: !1878, line: 43, baseType: !244, size: 448, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1877, file: !1878, line: 58, baseType: !1975, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1877, file: !1878, line: 59, baseType: !1876, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1877, file: !1878, line: 60, baseType: !1876, size: 64, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1877, file: !1878, line: 61, baseType: !1876, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1877, file: !1878, line: 63, baseType: !122, size: 512, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1877, file: !1878, line: 65, baseType: !89, size: 64, offset: 1216)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1877, file: !1878, line: 66, baseType: !69, size: 64, offset: 1280)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !119, file: !28, line: 529, baseType: !1889, size: 64, offset: 4928)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !119, file: !28, line: 534, baseType: !1992, size: 32, offset: 4992)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !68, line: 16, baseType: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !68, line: 13, baseType: !432)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !119, file: !28, line: 535, baseType: !432, size: 32, offset: 5024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !119, file: !28, line: 537, baseType: !137, offset: 5056)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !119, file: !28, line: 538, baseType: !74, size: 128, offset: 5056)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !119, file: !28, line: 540, baseType: !1998, size: 64, offset: 5184)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2000, line: 54, size: 960, elements: !2001)
!2000 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2012, !2016, !2017, !2018, !2019, !2023, !2027, !2028}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1999, file: !2000, line: 55, baseType: !126, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1999, file: !2000, line: 56, baseType: !1650, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1999, file: !2000, line: 58, baseType: !229, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1999, file: !2000, line: 59, baseType: !229, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1999, file: !2000, line: 60, baseType: !130, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1999, file: !2000, line: 62, baseType: !1614, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1999, file: !2000, line: 63, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!80, !118, !1621}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1999, file: !2000, line: 65, baseType: !2013, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !1998}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1999, file: !2000, line: 66, baseType: !1623, size: 64, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1999, file: !2000, line: 68, baseType: !115, size: 64, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1999, file: !2000, line: 70, baseType: !1390, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1999, file: !2000, line: 71, baseType: !2020, size: 64, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!1133, !118}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1999, file: !2000, line: 73, baseType: !2024, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !118, !1425, !1431}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1999, file: !2000, line: 75, baseType: !1627, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1999, file: !2000, line: 77, baseType: !1720, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !119, file: !28, line: 541, baseType: !229, size: 64, offset: 5248)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !119, file: !28, line: 543, baseType: !1623, size: 64, offset: 5312)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !119, file: !28, line: 544, baseType: !2032, size: 64, offset: 5376)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !119, file: !28, line: 545, baseType: !2035, size: 64, offset: 5440)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !119, file: !28, line: 547, baseType: !1002, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !119, file: !28, line: 548, baseType: !1002, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !119, file: !28, line: 549, baseType: !1002, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !119, file: !28, line: 550, baseType: !1002, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !112, file: !35, line: 280, baseType: !1623, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !112, file: !35, line: 281, baseType: !115, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !112, file: !35, line: 282, baseType: !115, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !112, file: !35, line: 283, baseType: !115, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !112, file: !35, line: 284, baseType: !115, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !112, file: !35, line: 285, baseType: !115, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !112, file: !35, line: 286, baseType: !115, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !112, file: !35, line: 287, baseType: !115, size: 64, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !112, file: !35, line: 288, baseType: !115, size: 64, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !112, file: !35, line: 289, baseType: !115, size: 64, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !112, file: !35, line: 290, baseType: !115, size: 64, offset: 704)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !112, file: !35, line: 291, baseType: !115, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !112, file: !35, line: 292, baseType: !115, size: 64, offset: 832)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !112, file: !35, line: 293, baseType: !115, size: 64, offset: 896)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !112, file: !35, line: 294, baseType: !115, size: 64, offset: 960)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !112, file: !35, line: 295, baseType: !115, size: 64, offset: 1024)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !112, file: !35, line: 296, baseType: !115, size: 64, offset: 1088)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !112, file: !35, line: 297, baseType: !115, size: 64, offset: 1152)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !112, file: !35, line: 298, baseType: !115, size: 64, offset: 1216)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !112, file: !35, line: 299, baseType: !115, size: 64, offset: 1280)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !112, file: !35, line: 300, baseType: !115, size: 64, offset: 1344)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !112, file: !35, line: 301, baseType: !115, size: 64, offset: 1408)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !109, file: !35, line: 644, baseType: !115, size: 64, offset: 1472)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !109, file: !35, line: 645, baseType: !2065, size: 64, offset: 1536)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !118, !1002}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !109, file: !35, line: 646, baseType: !115, size: 64, offset: 1600)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !109, file: !35, line: 647, baseType: !1623, size: 64, offset: 1664)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !109, file: !35, line: 648, baseType: !1623, size: 64, offset: 1728)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "con_ids", scope: !92, file: !85, line: 17, baseType: !2072, offset: 256)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, elements: !1355)
!2073 = !{!"rsp"}
!2074 = !{i32 7, !"Dwarf Version", i32 4}
!2075 = !{i32 2, !"Debug Info Version", i32 3}
!2076 = !{i32 1, !"wchar_size", i32 2}
!2077 = !{i32 1, !"Code Model", i32 2}
!2078 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2079 = distinct !DISubprogram(name: "pm_clk_add", scope: !1, file: !1, line: 123, type: !2080, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!103, !118, !126}
!2082 = !DILocalVariable(name: "dev", arg: 1, scope: !2079, file: !1, line: 123, type: !118)
!2083 = !DILocation(line: 123, column: 31, scope: !2079)
!2084 = !DILocalVariable(name: "con_id", arg: 2, scope: !2079, file: !1, line: 123, type: !126)
!2085 = !DILocation(line: 123, column: 48, scope: !2079)
!2086 = !DILocation(line: 125, column: 22, scope: !2079)
!2087 = !DILocation(line: 125, column: 27, scope: !2079)
!2088 = !DILocation(line: 125, column: 9, scope: !2079)
!2089 = !DILocation(line: 125, column: 2, scope: !2079)
!2090 = distinct !DISubprogram(name: "__pm_clk_add", scope: !1, file: !1, line: 80, type: !2091, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!103, !118, !126, !83}
!2093 = !DILocalVariable(name: "lock", arg: 1, scope: !2094, file: !2095, line: 402, type: !2098)
!2094 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2095, file: !2095, line: 402, type: !2096, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2095 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2099 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 111, column: 2, scope: !2090)
!2101 = !DILocalVariable(name: "lock", arg: 1, scope: !2102, file: !2095, line: 377, type: !2098)
!2102 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2095, file: !2095, line: 377, type: !2096, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2103 = !DILocation(line: 377, column: 55, scope: !2102, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 109, column: 2, scope: !2090)
!2105 = !DILocalVariable(name: "dev", arg: 1, scope: !2090, file: !1, line: 80, type: !118)
!2106 = !DILocation(line: 80, column: 40, scope: !2090)
!2107 = !DILocalVariable(name: "con_id", arg: 2, scope: !2090, file: !1, line: 80, type: !126)
!2108 = !DILocation(line: 80, column: 57, scope: !2090)
!2109 = !DILocalVariable(name: "clk", arg: 3, scope: !2090, file: !1, line: 81, type: !83)
!2110 = !DILocation(line: 81, column: 16, scope: !2090)
!2111 = !DILocalVariable(name: "psd", scope: !2090, file: !1, line: 83, type: !1828)
!2112 = !DILocation(line: 83, column: 25, scope: !2090)
!2113 = !DILocation(line: 83, column: 42, scope: !2090)
!2114 = !DILocation(line: 83, column: 31, scope: !2090)
!2115 = !DILocalVariable(name: "ce", scope: !2090, file: !1, line: 84, type: !70)
!2116 = !DILocation(line: 84, column: 25, scope: !2090)
!2117 = !DILocation(line: 86, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 86, column: 6)
!2119 = !DILocation(line: 86, column: 6, scope: !2090)
!2120 = !DILocation(line: 87, column: 3, scope: !2118)
!2121 = !DILocation(line: 89, column: 7, scope: !2090)
!2122 = !DILocation(line: 89, column: 5, scope: !2090)
!2123 = !DILocation(line: 90, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 90, column: 6)
!2125 = !DILocation(line: 90, column: 6, scope: !2090)
!2126 = !DILocation(line: 91, column: 3, scope: !2124)
!2127 = !DILocation(line: 93, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 93, column: 6)
!2129 = !DILocation(line: 93, column: 6, scope: !2090)
!2130 = !DILocation(line: 94, column: 24, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2128, file: !1, line: 93, column: 14)
!2132 = !DILocation(line: 94, column: 16, scope: !2131)
!2133 = !DILocation(line: 94, column: 3, scope: !2131)
!2134 = !DILocation(line: 94, column: 7, scope: !2131)
!2135 = !DILocation(line: 94, column: 14, scope: !2131)
!2136 = !DILocation(line: 95, column: 8, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 95, column: 7)
!2138 = !DILocation(line: 95, column: 12, scope: !2137)
!2139 = !DILocation(line: 95, column: 7, scope: !2131)
!2140 = !DILocation(line: 96, column: 10, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 95, column: 20)
!2142 = !DILocation(line: 96, column: 4, scope: !2141)
!2143 = !DILocation(line: 97, column: 4, scope: !2141)
!2144 = !DILocation(line: 99, column: 2, scope: !2131)
!2145 = !DILocation(line: 100, column: 14, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 100, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2128, file: !1, line: 99, column: 9)
!2148 = !DILocation(line: 100, column: 7, scope: !2146)
!2149 = !DILocation(line: 100, column: 7, scope: !2147)
!2150 = !DILocation(line: 101, column: 10, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 100, column: 20)
!2152 = !DILocation(line: 101, column: 4, scope: !2151)
!2153 = !DILocation(line: 102, column: 4, scope: !2151)
!2154 = !DILocation(line: 104, column: 13, scope: !2147)
!2155 = !DILocation(line: 104, column: 3, scope: !2147)
!2156 = !DILocation(line: 104, column: 7, scope: !2147)
!2157 = !DILocation(line: 104, column: 11, scope: !2147)
!2158 = !DILocation(line: 107, column: 17, scope: !2090)
!2159 = !DILocation(line: 107, column: 22, scope: !2090)
!2160 = !DILocation(line: 107, column: 2, scope: !2090)
!2161 = !DILocation(line: 109, column: 17, scope: !2090)
!2162 = !DILocation(line: 109, column: 22, scope: !2090)
!2163 = !DILocation(line: 379, column: 2, scope: !2164, inlinedAt: !2104)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2095, line: 379, column: 2)
!2165 = distinct !DILexicalBlock(scope: !2102, file: !2095, line: 379, column: 2)
!2166 = !DILocation(line: 379, column: 2, scope: !2167, inlinedAt: !2104)
!2167 = distinct !DILexicalBlock(scope: !2165, file: !2095, line: 379, column: 2)
!2168 = !{i32 -2145285932}
!2169 = !DILocation(line: 379, column: 2, scope: !2170, inlinedAt: !2104)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !2095, line: 379, column: 2)
!2171 = !DILocation(line: 110, column: 17, scope: !2090)
!2172 = !DILocation(line: 110, column: 21, scope: !2090)
!2173 = !DILocation(line: 110, column: 28, scope: !2090)
!2174 = !DILocation(line: 110, column: 33, scope: !2090)
!2175 = !DILocation(line: 110, column: 2, scope: !2090)
!2176 = !DILocation(line: 111, column: 19, scope: !2090)
!2177 = !DILocation(line: 111, column: 24, scope: !2090)
!2178 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2100)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !2095, line: 404, column: 2)
!2180 = distinct !DILexicalBlock(scope: !2094, file: !2095, line: 404, column: 2)
!2181 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2100)
!2182 = distinct !DILexicalBlock(scope: !2180, file: !2095, line: 404, column: 2)
!2183 = !{i32 -2145284184}
!2184 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2100)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !2095, line: 404, column: 2)
!2186 = !DILocation(line: 112, column: 2, scope: !2090)
!2187 = !DILocation(line: 113, column: 1, scope: !2090)
!2188 = distinct !DISubprogram(name: "pm_clk_add_clk", scope: !1, file: !1, line: 139, type: !2189, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!103, !118, !83}
!2191 = !DILocalVariable(name: "dev", arg: 1, scope: !2188, file: !1, line: 139, type: !118)
!2192 = !DILocation(line: 139, column: 35, scope: !2188)
!2193 = !DILocalVariable(name: "clk", arg: 2, scope: !2188, file: !1, line: 139, type: !83)
!2194 = !DILocation(line: 139, column: 52, scope: !2188)
!2195 = !DILocation(line: 141, column: 22, scope: !2188)
!2196 = !DILocation(line: 141, column: 33, scope: !2188)
!2197 = !DILocation(line: 141, column: 9, scope: !2188)
!2198 = !DILocation(line: 141, column: 2, scope: !2188)
!2199 = distinct !DISubprogram(name: "of_pm_clk_add_clk", scope: !1, file: !1, line: 156, type: !2080, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2200 = !DILocalVariable(name: "dev", arg: 1, scope: !2199, file: !1, line: 156, type: !118)
!2201 = !DILocation(line: 156, column: 38, scope: !2199)
!2202 = !DILocalVariable(name: "name", arg: 2, scope: !2199, file: !1, line: 156, type: !126)
!2203 = !DILocation(line: 156, column: 55, scope: !2199)
!2204 = !DILocalVariable(name: "clk", scope: !2199, file: !1, line: 158, type: !83)
!2205 = !DILocation(line: 158, column: 14, scope: !2199)
!2206 = !DILocalVariable(name: "ret", scope: !2199, file: !1, line: 159, type: !103)
!2207 = !DILocation(line: 159, column: 6, scope: !2199)
!2208 = !DILocation(line: 161, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 161, column: 6)
!2210 = !DILocation(line: 161, column: 11, scope: !2209)
!2211 = !DILocation(line: 161, column: 15, scope: !2209)
!2212 = !DILocation(line: 161, column: 20, scope: !2209)
!2213 = !DILocation(line: 161, column: 28, scope: !2209)
!2214 = !DILocation(line: 161, column: 32, scope: !2209)
!2215 = !DILocation(line: 161, column: 6, scope: !2199)
!2216 = !DILocation(line: 162, column: 3, scope: !2209)
!2217 = !DILocation(line: 164, column: 27, scope: !2199)
!2218 = !DILocation(line: 164, column: 32, scope: !2199)
!2219 = !DILocation(line: 164, column: 41, scope: !2199)
!2220 = !DILocation(line: 164, column: 8, scope: !2199)
!2221 = !DILocation(line: 164, column: 6, scope: !2199)
!2222 = !DILocation(line: 165, column: 13, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 165, column: 6)
!2224 = !DILocation(line: 165, column: 6, scope: !2223)
!2225 = !DILocation(line: 165, column: 6, scope: !2199)
!2226 = !DILocation(line: 166, column: 18, scope: !2223)
!2227 = !DILocation(line: 166, column: 10, scope: !2223)
!2228 = !DILocation(line: 166, column: 3, scope: !2223)
!2229 = !DILocation(line: 168, column: 23, scope: !2199)
!2230 = !DILocation(line: 168, column: 28, scope: !2199)
!2231 = !DILocation(line: 168, column: 8, scope: !2199)
!2232 = !DILocation(line: 168, column: 6, scope: !2199)
!2233 = !DILocation(line: 169, column: 6, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 169, column: 6)
!2235 = !DILocation(line: 169, column: 6, scope: !2199)
!2236 = !DILocation(line: 170, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 169, column: 11)
!2238 = !DILocation(line: 170, column: 3, scope: !2237)
!2239 = !DILocation(line: 171, column: 10, scope: !2237)
!2240 = !DILocation(line: 171, column: 3, scope: !2237)
!2241 = !DILocation(line: 174, column: 2, scope: !2199)
!2242 = !DILocation(line: 175, column: 1, scope: !2199)
!2243 = distinct !DISubprogram(name: "IS_ERR", scope: !2244, file: !2244, line: 34, type: !2245, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2244 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1002, !1133}
!2247 = !DILocalVariable(name: "ptr", arg: 1, scope: !2243, file: !2244, line: 34, type: !1133)
!2248 = !DILocation(line: 34, column: 60, scope: !2243)
!2249 = !DILocation(line: 36, column: 9, scope: !2243)
!2250 = !DILocation(line: 36, column: 2, scope: !2243)
!2251 = distinct !DISubprogram(name: "PTR_ERR", scope: !2244, file: !2244, line: 29, type: !2252, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!90, !1133}
!2254 = !DILocalVariable(name: "ptr", arg: 1, scope: !2251, file: !2244, line: 29, type: !1133)
!2255 = !DILocation(line: 29, column: 61, scope: !2251)
!2256 = !DILocation(line: 31, column: 16, scope: !2251)
!2257 = !DILocation(line: 31, column: 9, scope: !2251)
!2258 = !DILocation(line: 31, column: 2, scope: !2251)
!2259 = distinct !DISubprogram(name: "of_pm_clk_add_clks", scope: !1, file: !1, line: 188, type: !116, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2260 = !DILocalVariable(name: "dev", arg: 1, scope: !2259, file: !1, line: 188, type: !118)
!2261 = !DILocation(line: 188, column: 39, scope: !2259)
!2262 = !DILocalVariable(name: "clks", scope: !2259, file: !1, line: 190, type: !2263)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2264 = !DILocation(line: 190, column: 15, scope: !2259)
!2265 = !DILocalVariable(name: "i", scope: !2259, file: !1, line: 191, type: !103)
!2266 = !DILocation(line: 191, column: 6, scope: !2259)
!2267 = !DILocalVariable(name: "count", scope: !2259, file: !1, line: 191, type: !103)
!2268 = !DILocation(line: 191, column: 9, scope: !2259)
!2269 = !DILocalVariable(name: "ret", scope: !2259, file: !1, line: 192, type: !103)
!2270 = !DILocation(line: 192, column: 6, scope: !2259)
!2271 = !DILocation(line: 194, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 194, column: 6)
!2273 = !DILocation(line: 194, column: 11, scope: !2272)
!2274 = !DILocation(line: 194, column: 15, scope: !2272)
!2275 = !DILocation(line: 194, column: 20, scope: !2272)
!2276 = !DILocation(line: 194, column: 6, scope: !2259)
!2277 = !DILocation(line: 195, column: 3, scope: !2272)
!2278 = !DILocation(line: 197, column: 34, scope: !2259)
!2279 = !DILocation(line: 197, column: 39, scope: !2259)
!2280 = !DILocation(line: 197, column: 10, scope: !2259)
!2281 = !DILocation(line: 197, column: 8, scope: !2259)
!2282 = !DILocation(line: 198, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 198, column: 6)
!2284 = !DILocation(line: 198, column: 12, scope: !2283)
!2285 = !DILocation(line: 198, column: 6, scope: !2259)
!2286 = !DILocation(line: 199, column: 3, scope: !2283)
!2287 = !DILocation(line: 201, column: 17, scope: !2259)
!2288 = !DILocation(line: 201, column: 9, scope: !2259)
!2289 = !DILocation(line: 201, column: 7, scope: !2259)
!2290 = !DILocation(line: 202, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 202, column: 6)
!2292 = !DILocation(line: 202, column: 6, scope: !2259)
!2293 = !DILocation(line: 203, column: 3, scope: !2291)
!2294 = !DILocation(line: 205, column: 9, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 205, column: 2)
!2296 = !DILocation(line: 205, column: 7, scope: !2295)
!2297 = !DILocation(line: 205, column: 14, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 205, column: 2)
!2299 = !DILocation(line: 205, column: 18, scope: !2298)
!2300 = !DILocation(line: 205, column: 16, scope: !2298)
!2301 = !DILocation(line: 205, column: 2, scope: !2295)
!2302 = !DILocation(line: 206, column: 24, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 205, column: 30)
!2304 = !DILocation(line: 206, column: 29, scope: !2303)
!2305 = !DILocation(line: 206, column: 38, scope: !2303)
!2306 = !DILocation(line: 206, column: 13, scope: !2303)
!2307 = !DILocation(line: 206, column: 3, scope: !2303)
!2308 = !DILocation(line: 206, column: 8, scope: !2303)
!2309 = !DILocation(line: 206, column: 11, scope: !2303)
!2310 = !DILocation(line: 207, column: 14, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 207, column: 7)
!2312 = !DILocation(line: 207, column: 19, scope: !2311)
!2313 = !DILocation(line: 207, column: 7, scope: !2311)
!2314 = !DILocation(line: 207, column: 7, scope: !2303)
!2315 = !DILocation(line: 208, column: 18, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 207, column: 24)
!2317 = !DILocation(line: 208, column: 23, scope: !2316)
!2318 = !DILocation(line: 208, column: 10, scope: !2316)
!2319 = !DILocation(line: 208, column: 8, scope: !2316)
!2320 = !DILocation(line: 209, column: 4, scope: !2316)
!2321 = !DILocation(line: 212, column: 24, scope: !2303)
!2322 = !DILocation(line: 212, column: 29, scope: !2303)
!2323 = !DILocation(line: 212, column: 34, scope: !2303)
!2324 = !DILocation(line: 212, column: 9, scope: !2303)
!2325 = !DILocation(line: 212, column: 7, scope: !2303)
!2326 = !DILocation(line: 213, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 213, column: 7)
!2328 = !DILocation(line: 213, column: 7, scope: !2303)
!2329 = !DILocation(line: 214, column: 12, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !1, line: 213, column: 12)
!2331 = !DILocation(line: 214, column: 17, scope: !2330)
!2332 = !DILocation(line: 214, column: 4, scope: !2330)
!2333 = !DILocation(line: 215, column: 4, scope: !2330)
!2334 = !DILocation(line: 217, column: 2, scope: !2303)
!2335 = !DILocation(line: 205, column: 26, scope: !2298)
!2336 = !DILocation(line: 205, column: 2, scope: !2298)
!2337 = distinct !{!2337, !2301, !2338}
!2338 = !DILocation(line: 217, column: 2, scope: !2295)
!2339 = !DILocation(line: 219, column: 8, scope: !2259)
!2340 = !DILocation(line: 219, column: 2, scope: !2259)
!2341 = !DILocation(line: 221, column: 9, scope: !2259)
!2342 = !DILocation(line: 221, column: 2, scope: !2259)
!2343 = !DILabel(scope: !2259, name: "error", file: !1, line: 223)
!2344 = !DILocation(line: 223, column: 1, scope: !2259)
!2345 = !DILocation(line: 224, column: 2, scope: !2259)
!2346 = !DILocation(line: 224, column: 10, scope: !2259)
!2347 = !DILocation(line: 225, column: 21, scope: !2259)
!2348 = !DILocation(line: 225, column: 26, scope: !2259)
!2349 = !DILocation(line: 225, column: 31, scope: !2259)
!2350 = !DILocation(line: 225, column: 3, scope: !2259)
!2351 = distinct !{!2351, !2345, !2352}
!2352 = !DILocation(line: 225, column: 33, scope: !2259)
!2353 = !DILocation(line: 227, column: 8, scope: !2259)
!2354 = !DILocation(line: 227, column: 2, scope: !2259)
!2355 = !DILocation(line: 229, column: 9, scope: !2259)
!2356 = !DILocation(line: 229, column: 2, scope: !2259)
!2357 = !DILocation(line: 230, column: 1, scope: !2259)
!2358 = distinct !DISubprogram(name: "kcalloc", scope: !55, file: !55, line: 601, type: !2359, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!69, !223, !223, !67}
!2361 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !55, line: 601, type: !223)
!2362 = !DILocation(line: 601, column: 36, scope: !2358)
!2363 = !DILocalVariable(name: "size", arg: 2, scope: !2358, file: !55, line: 601, type: !223)
!2364 = !DILocation(line: 601, column: 46, scope: !2358)
!2365 = !DILocalVariable(name: "flags", arg: 3, scope: !2358, file: !55, line: 601, type: !67)
!2366 = !DILocation(line: 601, column: 58, scope: !2358)
!2367 = !DILocation(line: 603, column: 23, scope: !2358)
!2368 = !DILocation(line: 603, column: 26, scope: !2358)
!2369 = !DILocation(line: 603, column: 32, scope: !2358)
!2370 = !DILocation(line: 603, column: 38, scope: !2358)
!2371 = !DILocation(line: 603, column: 9, scope: !2358)
!2372 = !DILocation(line: 603, column: 2, scope: !2358)
!2373 = distinct !DISubprogram(name: "pm_clk_remove_clk", scope: !1, file: !1, line: 302, type: !2374, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !118, !83}
!2376 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 322, column: 2, scope: !2373)
!2378 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 317, column: 2, scope: !2373)
!2380 = !DILocation(line: 377, column: 55, scope: !2102, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 310, column: 2, scope: !2373)
!2382 = !DILocalVariable(name: "dev", arg: 1, scope: !2373, file: !1, line: 302, type: !118)
!2383 = !DILocation(line: 302, column: 39, scope: !2373)
!2384 = !DILocalVariable(name: "clk", arg: 2, scope: !2373, file: !1, line: 302, type: !83)
!2385 = !DILocation(line: 302, column: 56, scope: !2373)
!2386 = !DILocalVariable(name: "psd", scope: !2373, file: !1, line: 304, type: !1828)
!2387 = !DILocation(line: 304, column: 25, scope: !2373)
!2388 = !DILocation(line: 304, column: 42, scope: !2373)
!2389 = !DILocation(line: 304, column: 31, scope: !2373)
!2390 = !DILocalVariable(name: "ce", scope: !2373, file: !1, line: 305, type: !70)
!2391 = !DILocation(line: 305, column: 25, scope: !2373)
!2392 = !DILocation(line: 307, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2373, file: !1, line: 307, column: 6)
!2394 = !DILocation(line: 307, column: 11, scope: !2393)
!2395 = !DILocation(line: 307, column: 15, scope: !2393)
!2396 = !DILocation(line: 307, column: 6, scope: !2373)
!2397 = !DILocation(line: 308, column: 3, scope: !2393)
!2398 = !DILocation(line: 310, column: 17, scope: !2373)
!2399 = !DILocation(line: 310, column: 22, scope: !2373)
!2400 = !DILocation(line: 379, column: 2, scope: !2164, inlinedAt: !2381)
!2401 = !DILocation(line: 379, column: 2, scope: !2167, inlinedAt: !2381)
!2402 = !DILocation(line: 379, column: 2, scope: !2170, inlinedAt: !2381)
!2403 = !DILocalVariable(name: "__mptr", scope: !2404, file: !1, line: 312, type: !69)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !1, line: 312, column: 2)
!2405 = distinct !DILexicalBlock(scope: !2373, file: !1, line: 312, column: 2)
!2406 = !DILocation(line: 312, column: 2, scope: !2404)
!2407 = !DILocation(line: 312, column: 2, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 312, column: 2)
!2409 = !DILocation(line: 312, column: 2, scope: !2405)
!2410 = !DILocation(line: 312, column: 2, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !1, line: 312, column: 2)
!2412 = !DILocation(line: 313, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 313, column: 7)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 312, column: 50)
!2415 = !DILocation(line: 313, column: 14, scope: !2413)
!2416 = !DILocation(line: 313, column: 18, scope: !2413)
!2417 = !DILocation(line: 313, column: 11, scope: !2413)
!2418 = !DILocation(line: 313, column: 7, scope: !2414)
!2419 = !DILocation(line: 314, column: 4, scope: !2413)
!2420 = !DILocation(line: 315, column: 2, scope: !2414)
!2421 = !DILocalVariable(name: "__mptr", scope: !2422, file: !1, line: 312, type: !69)
!2422 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 312, column: 2)
!2423 = !DILocation(line: 312, column: 2, scope: !2422)
!2424 = !DILocation(line: 312, column: 2, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !1, line: 312, column: 2)
!2426 = distinct !{!2426, !2409, !2427}
!2427 = !DILocation(line: 315, column: 2, scope: !2405)
!2428 = !DILocation(line: 317, column: 19, scope: !2373)
!2429 = !DILocation(line: 317, column: 24, scope: !2373)
!2430 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2379)
!2431 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2379)
!2432 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2379)
!2433 = !DILocation(line: 318, column: 2, scope: !2373)
!2434 = !DILabel(scope: !2373, name: "remove", file: !1, line: 320)
!2435 = !DILocation(line: 320, column: 2, scope: !2373)
!2436 = !DILocation(line: 321, column: 12, scope: !2373)
!2437 = !DILocation(line: 321, column: 16, scope: !2373)
!2438 = !DILocation(line: 321, column: 2, scope: !2373)
!2439 = !DILocation(line: 322, column: 19, scope: !2373)
!2440 = !DILocation(line: 322, column: 24, scope: !2373)
!2441 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2377)
!2442 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2377)
!2443 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2377)
!2444 = !DILocation(line: 324, column: 18, scope: !2373)
!2445 = !DILocation(line: 324, column: 2, scope: !2373)
!2446 = !DILocation(line: 325, column: 1, scope: !2373)
!2447 = distinct !DISubprogram(name: "pm_clk_remove", scope: !1, file: !1, line: 264, type: !2448, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !118, !126}
!2450 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 288, column: 2, scope: !2447)
!2452 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 283, column: 2, scope: !2447)
!2454 = !DILocation(line: 377, column: 55, scope: !2102, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 272, column: 2, scope: !2447)
!2456 = !DILocalVariable(name: "dev", arg: 1, scope: !2447, file: !1, line: 264, type: !118)
!2457 = !DILocation(line: 264, column: 35, scope: !2447)
!2458 = !DILocalVariable(name: "con_id", arg: 2, scope: !2447, file: !1, line: 264, type: !126)
!2459 = !DILocation(line: 264, column: 52, scope: !2447)
!2460 = !DILocalVariable(name: "psd", scope: !2447, file: !1, line: 266, type: !1828)
!2461 = !DILocation(line: 266, column: 25, scope: !2447)
!2462 = !DILocation(line: 266, column: 42, scope: !2447)
!2463 = !DILocation(line: 266, column: 31, scope: !2447)
!2464 = !DILocalVariable(name: "ce", scope: !2447, file: !1, line: 267, type: !70)
!2465 = !DILocation(line: 267, column: 25, scope: !2447)
!2466 = !DILocation(line: 269, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2447, file: !1, line: 269, column: 6)
!2468 = !DILocation(line: 269, column: 6, scope: !2447)
!2469 = !DILocation(line: 270, column: 3, scope: !2467)
!2470 = !DILocation(line: 272, column: 17, scope: !2447)
!2471 = !DILocation(line: 272, column: 22, scope: !2447)
!2472 = !DILocation(line: 379, column: 2, scope: !2164, inlinedAt: !2455)
!2473 = !DILocation(line: 379, column: 2, scope: !2167, inlinedAt: !2455)
!2474 = !DILocation(line: 379, column: 2, scope: !2170, inlinedAt: !2455)
!2475 = !DILocalVariable(name: "__mptr", scope: !2476, file: !1, line: 274, type: !69)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 274, column: 2)
!2477 = distinct !DILexicalBlock(scope: !2447, file: !1, line: 274, column: 2)
!2478 = !DILocation(line: 274, column: 2, scope: !2476)
!2479 = !DILocation(line: 274, column: 2, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !1, line: 274, column: 2)
!2481 = !DILocation(line: 274, column: 2, scope: !2477)
!2482 = !DILocation(line: 274, column: 2, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 274, column: 2)
!2484 = !DILocation(line: 275, column: 8, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !1, line: 275, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 274, column: 50)
!2487 = !DILocation(line: 275, column: 15, scope: !2485)
!2488 = !DILocation(line: 275, column: 19, scope: !2485)
!2489 = !DILocation(line: 275, column: 23, scope: !2485)
!2490 = !DILocation(line: 275, column: 7, scope: !2486)
!2491 = !DILocation(line: 276, column: 4, scope: !2485)
!2492 = !DILocation(line: 277, column: 13, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2485, file: !1, line: 277, column: 12)
!2494 = !DILocation(line: 277, column: 20, scope: !2493)
!2495 = !DILocation(line: 277, column: 24, scope: !2493)
!2496 = !DILocation(line: 277, column: 28, scope: !2493)
!2497 = !DILocation(line: 277, column: 12, scope: !2485)
!2498 = !DILocation(line: 278, column: 4, scope: !2493)
!2499 = !DILocation(line: 279, column: 20, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 279, column: 12)
!2501 = !DILocation(line: 279, column: 28, scope: !2500)
!2502 = !DILocation(line: 279, column: 32, scope: !2500)
!2503 = !DILocation(line: 279, column: 13, scope: !2500)
!2504 = !DILocation(line: 279, column: 12, scope: !2493)
!2505 = !DILocation(line: 280, column: 4, scope: !2500)
!2506 = !DILocation(line: 281, column: 2, scope: !2486)
!2507 = !DILocalVariable(name: "__mptr", scope: !2508, file: !1, line: 274, type: !69)
!2508 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 274, column: 2)
!2509 = !DILocation(line: 274, column: 2, scope: !2508)
!2510 = !DILocation(line: 274, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 274, column: 2)
!2512 = distinct !{!2512, !2481, !2513}
!2513 = !DILocation(line: 281, column: 2, scope: !2477)
!2514 = !DILocation(line: 283, column: 19, scope: !2447)
!2515 = !DILocation(line: 283, column: 24, scope: !2447)
!2516 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2453)
!2517 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2453)
!2518 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2453)
!2519 = !DILocation(line: 284, column: 2, scope: !2447)
!2520 = !DILabel(scope: !2447, name: "remove", file: !1, line: 286)
!2521 = !DILocation(line: 286, column: 2, scope: !2447)
!2522 = !DILocation(line: 287, column: 12, scope: !2447)
!2523 = !DILocation(line: 287, column: 16, scope: !2447)
!2524 = !DILocation(line: 287, column: 2, scope: !2447)
!2525 = !DILocation(line: 288, column: 19, scope: !2447)
!2526 = !DILocation(line: 288, column: 24, scope: !2447)
!2527 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2451)
!2528 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2451)
!2529 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2451)
!2530 = !DILocation(line: 290, column: 18, scope: !2447)
!2531 = !DILocation(line: 290, column: 2, scope: !2447)
!2532 = !DILocation(line: 291, column: 1, scope: !2447)
!2533 = distinct !DISubprogram(name: "dev_to_psd", scope: !28, file: !28, line: 665, type: !2534, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!1828, !118}
!2536 = !DILocalVariable(name: "dev", arg: 1, scope: !2533, file: !28, line: 665, type: !118)
!2537 = !DILocation(line: 665, column: 64, scope: !2533)
!2538 = !DILocation(line: 667, column: 9, scope: !2533)
!2539 = !DILocation(line: 667, column: 15, scope: !2533)
!2540 = !DILocation(line: 667, column: 20, scope: !2533)
!2541 = !DILocation(line: 667, column: 26, scope: !2533)
!2542 = !DILocation(line: 667, column: 2, scope: !2533)
!2543 = distinct !DISubprogram(name: "list_del", scope: !2544, file: !2544, line: 144, type: !2545, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2544 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !77}
!2547 = !DILocalVariable(name: "entry", arg: 1, scope: !2543, file: !2544, line: 144, type: !77)
!2548 = !DILocation(line: 144, column: 47, scope: !2543)
!2549 = !DILocation(line: 146, column: 19, scope: !2543)
!2550 = !DILocation(line: 146, column: 2, scope: !2543)
!2551 = !DILocation(line: 147, column: 2, scope: !2543)
!2552 = !DILocation(line: 147, column: 9, scope: !2543)
!2553 = !DILocation(line: 147, column: 14, scope: !2543)
!2554 = !DILocation(line: 148, column: 2, scope: !2543)
!2555 = !DILocation(line: 148, column: 9, scope: !2543)
!2556 = !DILocation(line: 148, column: 14, scope: !2543)
!2557 = !DILocation(line: 149, column: 1, scope: !2543)
!2558 = distinct !DISubprogram(name: "__pm_clk_remove", scope: !1, file: !1, line: 237, type: !2559, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !70}
!2561 = !DILocalVariable(name: "ce", arg: 1, scope: !2558, file: !1, line: 237, type: !70)
!2562 = !DILocation(line: 237, column: 52, scope: !2558)
!2563 = !DILocation(line: 239, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2558, file: !1, line: 239, column: 6)
!2565 = !DILocation(line: 239, column: 6, scope: !2558)
!2566 = !DILocation(line: 240, column: 3, scope: !2564)
!2567 = !DILocation(line: 242, column: 6, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !1, line: 242, column: 6)
!2569 = !DILocation(line: 242, column: 10, scope: !2568)
!2570 = !DILocation(line: 242, column: 17, scope: !2568)
!2571 = !DILocation(line: 242, column: 6, scope: !2558)
!2572 = !DILocation(line: 243, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !1, line: 243, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !1, line: 242, column: 37)
!2575 = !DILocation(line: 243, column: 11, scope: !2573)
!2576 = !DILocation(line: 243, column: 18, scope: !2573)
!2577 = !DILocation(line: 243, column: 7, scope: !2574)
!2578 = !DILocation(line: 244, column: 16, scope: !2573)
!2579 = !DILocation(line: 244, column: 20, scope: !2573)
!2580 = !DILocation(line: 244, column: 4, scope: !2573)
!2581 = !DILocation(line: 246, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2574, file: !1, line: 246, column: 7)
!2583 = !DILocation(line: 246, column: 11, scope: !2582)
!2584 = !DILocation(line: 246, column: 18, scope: !2582)
!2585 = !DILocation(line: 246, column: 7, scope: !2574)
!2586 = !DILocation(line: 247, column: 18, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 246, column: 42)
!2588 = !DILocation(line: 247, column: 22, scope: !2587)
!2589 = !DILocation(line: 247, column: 4, scope: !2587)
!2590 = !DILocation(line: 248, column: 12, scope: !2587)
!2591 = !DILocation(line: 248, column: 16, scope: !2587)
!2592 = !DILocation(line: 248, column: 4, scope: !2587)
!2593 = !DILocation(line: 249, column: 3, scope: !2587)
!2594 = !DILocation(line: 250, column: 2, scope: !2574)
!2595 = !DILocation(line: 252, column: 8, scope: !2558)
!2596 = !DILocation(line: 252, column: 12, scope: !2558)
!2597 = !DILocation(line: 252, column: 2, scope: !2558)
!2598 = !DILocation(line: 253, column: 8, scope: !2558)
!2599 = !DILocation(line: 253, column: 2, scope: !2558)
!2600 = !DILocation(line: 254, column: 1, scope: !2558)
!2601 = distinct !DISubprogram(name: "pm_clk_init", scope: !1, file: !1, line: 335, type: !1624, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2602 = !DILocalVariable(name: "dev", arg: 1, scope: !2601, file: !1, line: 335, type: !118)
!2603 = !DILocation(line: 335, column: 33, scope: !2601)
!2604 = !DILocalVariable(name: "psd", scope: !2601, file: !1, line: 337, type: !1828)
!2605 = !DILocation(line: 337, column: 25, scope: !2601)
!2606 = !DILocation(line: 337, column: 42, scope: !2601)
!2607 = !DILocation(line: 337, column: 31, scope: !2601)
!2608 = !DILocation(line: 338, column: 6, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 338, column: 6)
!2610 = !DILocation(line: 338, column: 6, scope: !2601)
!2611 = !DILocation(line: 339, column: 19, scope: !2609)
!2612 = !DILocation(line: 339, column: 24, scope: !2609)
!2613 = !DILocation(line: 339, column: 3, scope: !2609)
!2614 = !DILocation(line: 340, column: 1, scope: !2601)
!2615 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2544, file: !2544, line: 33, type: !2545, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2616 = !DILocalVariable(name: "list", arg: 1, scope: !2615, file: !2544, line: 33, type: !77)
!2617 = !DILocation(line: 33, column: 53, scope: !2615)
!2618 = !DILocation(line: 35, column: 2, scope: !2615)
!2619 = !DILocation(line: 35, column: 2, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2615, file: !2544, line: 35, column: 2)
!2621 = !DILocation(line: 35, column: 2, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !2544, line: 35, column: 2)
!2623 = !DILocation(line: 35, column: 2, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !2544, line: 35, column: 2)
!2625 = !DILocation(line: 36, column: 15, scope: !2615)
!2626 = !DILocation(line: 36, column: 2, scope: !2615)
!2627 = !DILocation(line: 36, column: 8, scope: !2615)
!2628 = !DILocation(line: 36, column: 13, scope: !2615)
!2629 = !DILocation(line: 37, column: 1, scope: !2615)
!2630 = distinct !DISubprogram(name: "pm_clk_create", scope: !1, file: !1, line: 350, type: !116, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2631 = !DILocalVariable(name: "dev", arg: 1, scope: !2630, file: !1, line: 350, type: !118)
!2632 = !DILocation(line: 350, column: 34, scope: !2630)
!2633 = !DILocation(line: 352, column: 32, scope: !2630)
!2634 = !DILocation(line: 352, column: 9, scope: !2630)
!2635 = !DILocation(line: 352, column: 2, scope: !2630)
!2636 = distinct !DISubprogram(name: "pm_clk_destroy", scope: !1, file: !1, line: 364, type: !1624, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2637 = !DILocation(line: 402, column: 57, scope: !2094, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 380, column: 2, scope: !2636)
!2639 = !DILocation(line: 377, column: 55, scope: !2102, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 375, column: 2, scope: !2636)
!2641 = !DILocalVariable(name: "dev", arg: 1, scope: !2636, file: !1, line: 364, type: !118)
!2642 = !DILocation(line: 364, column: 36, scope: !2636)
!2643 = !DILocalVariable(name: "psd", scope: !2636, file: !1, line: 366, type: !1828)
!2644 = !DILocation(line: 366, column: 25, scope: !2636)
!2645 = !DILocation(line: 366, column: 42, scope: !2636)
!2646 = !DILocation(line: 366, column: 31, scope: !2636)
!2647 = !DILocalVariable(name: "ce", scope: !2636, file: !1, line: 367, type: !70)
!2648 = !DILocation(line: 367, column: 25, scope: !2636)
!2649 = !DILocalVariable(name: "c", scope: !2636, file: !1, line: 367, type: !70)
!2650 = !DILocation(line: 367, column: 30, scope: !2636)
!2651 = !DILocalVariable(name: "list", scope: !2636, file: !1, line: 368, type: !74)
!2652 = !DILocation(line: 368, column: 19, scope: !2636)
!2653 = !DILocation(line: 370, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 370, column: 6)
!2655 = !DILocation(line: 370, column: 6, scope: !2636)
!2656 = !DILocation(line: 371, column: 3, scope: !2654)
!2657 = !DILocation(line: 373, column: 2, scope: !2636)
!2658 = !DILocation(line: 375, column: 17, scope: !2636)
!2659 = !DILocation(line: 375, column: 22, scope: !2636)
!2660 = !DILocation(line: 379, column: 2, scope: !2164, inlinedAt: !2640)
!2661 = !DILocation(line: 379, column: 2, scope: !2167, inlinedAt: !2640)
!2662 = !DILocation(line: 379, column: 2, scope: !2170, inlinedAt: !2640)
!2663 = !DILocalVariable(name: "__mptr", scope: !2664, file: !1, line: 377, type: !69)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 377, column: 2)
!2665 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 377, column: 2)
!2666 = !DILocation(line: 377, column: 2, scope: !2664)
!2667 = !DILocation(line: 377, column: 2, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 377, column: 2)
!2669 = !DILocation(line: 377, column: 2, scope: !2665)
!2670 = !DILocalVariable(name: "__mptr", scope: !2671, file: !1, line: 377, type: !69)
!2671 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 377, column: 2)
!2672 = !DILocation(line: 377, column: 2, scope: !2671)
!2673 = !DILocation(line: 377, column: 2, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 377, column: 2)
!2675 = !DILocation(line: 377, column: 2, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 377, column: 2)
!2677 = !DILocation(line: 378, column: 14, scope: !2676)
!2678 = !DILocation(line: 378, column: 18, scope: !2676)
!2679 = !DILocation(line: 378, column: 3, scope: !2676)
!2680 = !DILocalVariable(name: "__mptr", scope: !2681, file: !1, line: 377, type: !69)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !1, line: 377, column: 2)
!2682 = !DILocation(line: 377, column: 2, scope: !2681)
!2683 = !DILocation(line: 377, column: 2, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !1, line: 377, column: 2)
!2685 = distinct !{!2685, !2669, !2686}
!2686 = !DILocation(line: 378, column: 29, scope: !2665)
!2687 = !DILocation(line: 380, column: 19, scope: !2636)
!2688 = !DILocation(line: 380, column: 24, scope: !2636)
!2689 = !DILocation(line: 404, column: 2, scope: !2179, inlinedAt: !2638)
!2690 = !DILocation(line: 404, column: 2, scope: !2182, inlinedAt: !2638)
!2691 = !DILocation(line: 404, column: 2, scope: !2185, inlinedAt: !2638)
!2692 = !DILocation(line: 382, column: 25, scope: !2636)
!2693 = !DILocation(line: 382, column: 2, scope: !2636)
!2694 = !DILocalVariable(name: "__mptr", scope: !2695, file: !1, line: 384, type: !69)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 384, column: 2)
!2696 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 384, column: 2)
!2697 = !DILocation(line: 384, column: 2, scope: !2695)
!2698 = !DILocation(line: 384, column: 2, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !1, line: 384, column: 2)
!2700 = !DILocation(line: 384, column: 2, scope: !2696)
!2701 = !DILocalVariable(name: "__mptr", scope: !2702, file: !1, line: 384, type: !69)
!2702 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 384, column: 2)
!2703 = !DILocation(line: 384, column: 2, scope: !2702)
!2704 = !DILocation(line: 384, column: 2, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 384, column: 2)
!2706 = !DILocation(line: 384, column: 2, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 384, column: 2)
!2708 = !DILocation(line: 385, column: 13, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !1, line: 384, column: 55)
!2710 = !DILocation(line: 385, column: 17, scope: !2709)
!2711 = !DILocation(line: 385, column: 3, scope: !2709)
!2712 = !DILocation(line: 386, column: 19, scope: !2709)
!2713 = !DILocation(line: 386, column: 3, scope: !2709)
!2714 = !DILocation(line: 387, column: 2, scope: !2709)
!2715 = !DILocalVariable(name: "__mptr", scope: !2716, file: !1, line: 384, type: !69)
!2716 = distinct !DILexicalBlock(scope: !2707, file: !1, line: 384, column: 2)
!2717 = !DILocation(line: 384, column: 2, scope: !2716)
!2718 = !DILocation(line: 384, column: 2, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 384, column: 2)
!2720 = distinct !{!2720, !2700, !2721}
!2721 = !DILocation(line: 387, column: 2, scope: !2696)
!2722 = !DILocation(line: 388, column: 1, scope: !2636)
!2723 = distinct !DISubprogram(name: "list_move", scope: !2544, file: !2544, line: 213, type: !2724, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !77, !77}
!2726 = !DILocalVariable(name: "list", arg: 1, scope: !2723, file: !2544, line: 213, type: !77)
!2727 = !DILocation(line: 213, column: 48, scope: !2723)
!2728 = !DILocalVariable(name: "head", arg: 2, scope: !2723, file: !2544, line: 213, type: !77)
!2729 = !DILocation(line: 213, column: 72, scope: !2723)
!2730 = !DILocation(line: 215, column: 19, scope: !2723)
!2731 = !DILocation(line: 215, column: 2, scope: !2723)
!2732 = !DILocation(line: 216, column: 11, scope: !2723)
!2733 = !DILocation(line: 216, column: 17, scope: !2723)
!2734 = !DILocation(line: 216, column: 2, scope: !2723)
!2735 = !DILocation(line: 217, column: 1, scope: !2723)
!2736 = distinct !DISubprogram(name: "pm_clk_suspend", scope: !1, file: !1, line: 395, type: !116, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2737 = !DILocalVariable(name: "lock", arg: 1, scope: !2738, file: !2095, line: 407, type: !2098)
!2738 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2095, file: !2095, line: 407, type: !2739, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2098, !89}
!2741 = !DILocation(line: 407, column: 64, scope: !2738, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 416, column: 2, scope: !2736)
!2743 = !DILocalVariable(name: "flags", arg: 2, scope: !2738, file: !2095, line: 407, type: !89)
!2744 = !DILocation(line: 407, column: 84, scope: !2738, inlinedAt: !2742)
!2745 = !DILocalVariable(name: "lock", arg: 1, scope: !2746, file: !2095, line: 327, type: !2098)
!2746 = distinct !DISubprogram(name: "spinlock_check", scope: !2095, file: !2095, line: 327, type: !2747, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!2749, !2098}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2750 = !DILocation(line: 327, column: 67, scope: !2746, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 406, column: 2, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 406, column: 2)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !1, line: 406, column: 2)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !1, line: 406, column: 2)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 406, column: 2)
!2756 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 406, column: 2)
!2757 = !DILocalVariable(name: "dev", arg: 1, scope: !2736, file: !1, line: 395, type: !118)
!2758 = !DILocation(line: 395, column: 35, scope: !2736)
!2759 = !DILocalVariable(name: "psd", scope: !2736, file: !1, line: 397, type: !1828)
!2760 = !DILocation(line: 397, column: 25, scope: !2736)
!2761 = !DILocation(line: 397, column: 42, scope: !2736)
!2762 = !DILocation(line: 397, column: 31, scope: !2736)
!2763 = !DILocalVariable(name: "ce", scope: !2736, file: !1, line: 398, type: !70)
!2764 = !DILocation(line: 398, column: 25, scope: !2736)
!2765 = !DILocalVariable(name: "flags", scope: !2736, file: !1, line: 399, type: !89)
!2766 = !DILocation(line: 399, column: 16, scope: !2736)
!2767 = !DILocation(line: 403, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 403, column: 6)
!2769 = !DILocation(line: 403, column: 6, scope: !2736)
!2770 = !DILocation(line: 404, column: 3, scope: !2768)
!2771 = !DILocation(line: 406, column: 2, scope: !2736)
!2772 = !DILocation(line: 406, column: 2, scope: !2756)
!2773 = !DILocalVariable(name: "__dummy", scope: !2774, file: !1, line: 406, type: !89)
!2774 = distinct !DILexicalBlock(scope: !2755, file: !1, line: 406, column: 2)
!2775 = !DILocation(line: 406, column: 2, scope: !2774)
!2776 = !DILocalVariable(name: "__dummy2", scope: !2774, file: !1, line: 406, type: !89)
!2777 = !DILocation(line: 406, column: 2, scope: !2755)
!2778 = !DILocation(line: 406, column: 2, scope: !2754)
!2779 = !DILocation(line: 406, column: 2, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2754, file: !1, line: 406, column: 2)
!2781 = !DILocalVariable(name: "__dummy", scope: !2782, file: !1, line: 406, type: !89)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !1, line: 406, column: 2)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 406, column: 2)
!2784 = !DILocation(line: 406, column: 2, scope: !2782)
!2785 = !DILocalVariable(name: "__dummy2", scope: !2782, file: !1, line: 406, type: !89)
!2786 = !DILocation(line: 406, column: 2, scope: !2783)
!2787 = !DILocation(line: 406, column: 2, scope: !2753)
!2788 = !{i32 -2143429152}
!2789 = !DILocation(line: 406, column: 2, scope: !2752)
!2790 = !DILocation(line: 329, column: 10, scope: !2746, inlinedAt: !2751)
!2791 = !DILocation(line: 329, column: 16, scope: !2746, inlinedAt: !2751)
!2792 = !DILocalVariable(name: "__mptr", scope: !2793, file: !1, line: 408, type: !69)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !1, line: 408, column: 2)
!2794 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 408, column: 2)
!2795 = !DILocation(line: 408, column: 2, scope: !2793)
!2796 = !DILocation(line: 408, column: 2, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 408, column: 2)
!2798 = !DILocation(line: 408, column: 2, scope: !2794)
!2799 = !DILocation(line: 408, column: 2, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2794, file: !1, line: 408, column: 2)
!2801 = !DILocation(line: 409, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 409, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 408, column: 58)
!2804 = !DILocation(line: 409, column: 11, scope: !2802)
!2805 = !DILocation(line: 409, column: 18, scope: !2802)
!2806 = !DILocation(line: 409, column: 7, scope: !2803)
!2807 = !DILocation(line: 410, column: 8, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !1, line: 410, column: 8)
!2809 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 409, column: 38)
!2810 = !DILocation(line: 410, column: 12, scope: !2808)
!2811 = !DILocation(line: 410, column: 19, scope: !2808)
!2812 = !DILocation(line: 410, column: 8, scope: !2809)
!2813 = !DILocation(line: 411, column: 17, scope: !2808)
!2814 = !DILocation(line: 411, column: 21, scope: !2808)
!2815 = !DILocation(line: 411, column: 5, scope: !2808)
!2816 = !DILocation(line: 412, column: 4, scope: !2809)
!2817 = !DILocation(line: 412, column: 8, scope: !2809)
!2818 = !DILocation(line: 412, column: 15, scope: !2809)
!2819 = !DILocation(line: 413, column: 3, scope: !2809)
!2820 = !DILocation(line: 414, column: 2, scope: !2803)
!2821 = !DILocalVariable(name: "__mptr", scope: !2822, file: !1, line: 408, type: !69)
!2822 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 408, column: 2)
!2823 = !DILocation(line: 408, column: 2, scope: !2822)
!2824 = !DILocation(line: 408, column: 2, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 408, column: 2)
!2826 = distinct !{!2826, !2798, !2827}
!2827 = !DILocation(line: 414, column: 2, scope: !2794)
!2828 = !DILocation(line: 416, column: 26, scope: !2736)
!2829 = !DILocation(line: 416, column: 31, scope: !2736)
!2830 = !DILocation(line: 416, column: 37, scope: !2736)
!2831 = !DILocalVariable(name: "__dummy", scope: !2832, file: !2095, line: 409, type: !89)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !2095, line: 409, column: 2)
!2833 = distinct !DILexicalBlock(scope: !2738, file: !2095, line: 409, column: 2)
!2834 = !DILocation(line: 409, column: 2, scope: !2832, inlinedAt: !2742)
!2835 = !DILocalVariable(name: "__dummy2", scope: !2832, file: !2095, line: 409, type: !89)
!2836 = !DILocalVariable(name: "__dummy", scope: !2837, file: !2095, line: 409, type: !89)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !2095, line: 409, column: 2)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !2095, line: 409, column: 2)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !2095, line: 409, column: 2)
!2840 = distinct !DILexicalBlock(scope: !2833, file: !2095, line: 409, column: 2)
!2841 = !DILocation(line: 409, column: 2, scope: !2837, inlinedAt: !2742)
!2842 = !DILocalVariable(name: "__dummy2", scope: !2837, file: !2095, line: 409, type: !89)
!2843 = !DILocation(line: 409, column: 2, scope: !2838, inlinedAt: !2742)
!2844 = !DILocation(line: 409, column: 2, scope: !2845, inlinedAt: !2742)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !2095, line: 409, column: 2)
!2846 = !{i32 -2145283140}
!2847 = !DILocation(line: 409, column: 2, scope: !2848, inlinedAt: !2742)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !2095, line: 409, column: 2)
!2849 = !DILocation(line: 418, column: 2, scope: !2736)
!2850 = !DILocation(line: 419, column: 1, scope: !2736)
!2851 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2852, file: !2852, line: 666, type: !2853, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2852 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!89}
!2855 = !DILocalVariable(name: "f", scope: !2851, file: !2852, line: 668, type: !89)
!2856 = !DILocation(line: 668, column: 16, scope: !2851)
!2857 = !DILocation(line: 670, column: 6, scope: !2851)
!2858 = !DILocation(line: 670, column: 4, scope: !2851)
!2859 = !DILocation(line: 671, column: 2, scope: !2851)
!2860 = !DILocation(line: 672, column: 9, scope: !2851)
!2861 = !DILocation(line: 672, column: 2, scope: !2851)
!2862 = distinct !DISubprogram(name: "pm_clk_resume", scope: !1, file: !1, line: 426, type: !116, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2863 = !DILocation(line: 407, column: 64, scope: !2738, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 442, column: 2, scope: !2862)
!2865 = !DILocation(line: 407, column: 84, scope: !2738, inlinedAt: !2864)
!2866 = !DILocation(line: 327, column: 67, scope: !2746, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 437, column: 2, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !1, line: 437, column: 2)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 437, column: 2)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 437, column: 2)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !1, line: 437, column: 2)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 437, column: 2)
!2873 = !DILocalVariable(name: "dev", arg: 1, scope: !2862, file: !1, line: 426, type: !118)
!2874 = !DILocation(line: 426, column: 34, scope: !2862)
!2875 = !DILocalVariable(name: "psd", scope: !2862, file: !1, line: 428, type: !1828)
!2876 = !DILocation(line: 428, column: 25, scope: !2862)
!2877 = !DILocation(line: 428, column: 42, scope: !2862)
!2878 = !DILocation(line: 428, column: 31, scope: !2862)
!2879 = !DILocalVariable(name: "ce", scope: !2862, file: !1, line: 429, type: !70)
!2880 = !DILocation(line: 429, column: 25, scope: !2862)
!2881 = !DILocalVariable(name: "flags", scope: !2862, file: !1, line: 430, type: !89)
!2882 = !DILocation(line: 430, column: 16, scope: !2862)
!2883 = !DILocation(line: 434, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 434, column: 6)
!2885 = !DILocation(line: 434, column: 6, scope: !2862)
!2886 = !DILocation(line: 435, column: 3, scope: !2884)
!2887 = !DILocation(line: 437, column: 2, scope: !2862)
!2888 = !DILocation(line: 437, column: 2, scope: !2872)
!2889 = !DILocalVariable(name: "__dummy", scope: !2890, file: !1, line: 437, type: !89)
!2890 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 437, column: 2)
!2891 = !DILocation(line: 437, column: 2, scope: !2890)
!2892 = !DILocalVariable(name: "__dummy2", scope: !2890, file: !1, line: 437, type: !89)
!2893 = !DILocation(line: 437, column: 2, scope: !2871)
!2894 = !DILocation(line: 437, column: 2, scope: !2870)
!2895 = !DILocation(line: 437, column: 2, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 437, column: 2)
!2897 = !DILocalVariable(name: "__dummy", scope: !2898, file: !1, line: 437, type: !89)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !1, line: 437, column: 2)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !1, line: 437, column: 2)
!2900 = !DILocation(line: 437, column: 2, scope: !2898)
!2901 = !DILocalVariable(name: "__dummy2", scope: !2898, file: !1, line: 437, type: !89)
!2902 = !DILocation(line: 437, column: 2, scope: !2899)
!2903 = !DILocation(line: 437, column: 2, scope: !2869)
!2904 = !{i32 -2143424080}
!2905 = !DILocation(line: 437, column: 2, scope: !2868)
!2906 = !DILocation(line: 329, column: 10, scope: !2746, inlinedAt: !2867)
!2907 = !DILocation(line: 329, column: 16, scope: !2746, inlinedAt: !2867)
!2908 = !DILocalVariable(name: "__mptr", scope: !2909, file: !1, line: 439, type: !69)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 439, column: 2)
!2910 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 439, column: 2)
!2911 = !DILocation(line: 439, column: 2, scope: !2909)
!2912 = !DILocation(line: 439, column: 2, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !1, line: 439, column: 2)
!2914 = !DILocation(line: 439, column: 2, scope: !2910)
!2915 = !DILocation(line: 439, column: 2, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 439, column: 2)
!2917 = !DILocation(line: 440, column: 19, scope: !2916)
!2918 = !DILocation(line: 440, column: 24, scope: !2916)
!2919 = !DILocation(line: 440, column: 3, scope: !2916)
!2920 = !DILocalVariable(name: "__mptr", scope: !2921, file: !1, line: 439, type: !69)
!2921 = distinct !DILexicalBlock(scope: !2916, file: !1, line: 439, column: 2)
!2922 = !DILocation(line: 439, column: 2, scope: !2921)
!2923 = !DILocation(line: 439, column: 2, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 439, column: 2)
!2925 = distinct !{!2925, !2914, !2926}
!2926 = !DILocation(line: 440, column: 26, scope: !2910)
!2927 = !DILocation(line: 442, column: 26, scope: !2862)
!2928 = !DILocation(line: 442, column: 31, scope: !2862)
!2929 = !DILocation(line: 442, column: 37, scope: !2862)
!2930 = !DILocation(line: 409, column: 2, scope: !2832, inlinedAt: !2864)
!2931 = !DILocation(line: 409, column: 2, scope: !2837, inlinedAt: !2864)
!2932 = !DILocation(line: 409, column: 2, scope: !2838, inlinedAt: !2864)
!2933 = !DILocation(line: 409, column: 2, scope: !2845, inlinedAt: !2864)
!2934 = !DILocation(line: 409, column: 2, scope: !2848, inlinedAt: !2864)
!2935 = !DILocation(line: 444, column: 2, scope: !2862)
!2936 = !DILocation(line: 445, column: 1, scope: !2862)
!2937 = distinct !DISubprogram(name: "__pm_clk_enable", scope: !1, file: !1, line: 42, type: !2938, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !118, !70}
!2940 = !DILocalVariable(name: "dev", arg: 1, scope: !2937, file: !1, line: 42, type: !118)
!2941 = !DILocation(line: 42, column: 51, scope: !2937)
!2942 = !DILocalVariable(name: "ce", arg: 2, scope: !2937, file: !1, line: 42, type: !70)
!2943 = !DILocation(line: 42, column: 79, scope: !2937)
!2944 = !DILocalVariable(name: "ret", scope: !2937, file: !1, line: 44, type: !103)
!2945 = !DILocation(line: 44, column: 6, scope: !2937)
!2946 = !DILocation(line: 46, column: 6, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 46, column: 6)
!2948 = !DILocation(line: 46, column: 10, scope: !2947)
!2949 = !DILocation(line: 46, column: 17, scope: !2947)
!2950 = !DILocation(line: 46, column: 6, scope: !2937)
!2951 = !DILocation(line: 47, column: 20, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2947, file: !1, line: 46, column: 37)
!2953 = !DILocation(line: 47, column: 24, scope: !2952)
!2954 = !DILocation(line: 47, column: 9, scope: !2952)
!2955 = !DILocation(line: 47, column: 7, scope: !2952)
!2956 = !DILocation(line: 48, column: 8, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !1, line: 48, column: 7)
!2958 = !DILocation(line: 48, column: 7, scope: !2952)
!2959 = !DILocation(line: 49, column: 4, scope: !2957)
!2960 = !DILocation(line: 49, column: 8, scope: !2957)
!2961 = !DILocation(line: 49, column: 15, scope: !2957)
!2962 = !DILocation(line: 51, column: 4, scope: !2957)
!2963 = !DILocation(line: 53, column: 2, scope: !2952)
!2964 = !DILocation(line: 54, column: 1, scope: !2937)
!2965 = distinct !DISubprogram(name: "pm_clk_runtime_suspend", scope: !1, file: !1, line: 506, type: !116, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2966 = !DILocalVariable(name: "dev", arg: 1, scope: !2965, file: !1, line: 506, type: !118)
!2967 = !DILocation(line: 506, column: 43, scope: !2965)
!2968 = !DILocalVariable(name: "ret", scope: !2965, file: !1, line: 508, type: !103)
!2969 = !DILocation(line: 508, column: 6, scope: !2965)
!2970 = !DILocation(line: 512, column: 35, scope: !2965)
!2971 = !DILocation(line: 512, column: 8, scope: !2965)
!2972 = !DILocation(line: 512, column: 6, scope: !2965)
!2973 = !DILocation(line: 513, column: 6, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 513, column: 6)
!2975 = !DILocation(line: 513, column: 6, scope: !2965)
!2976 = !DILocation(line: 514, column: 3, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 513, column: 11)
!2978 = !DILocation(line: 515, column: 10, scope: !2977)
!2979 = !DILocation(line: 515, column: 3, scope: !2977)
!2980 = !DILocation(line: 518, column: 23, scope: !2965)
!2981 = !DILocation(line: 518, column: 8, scope: !2965)
!2982 = !DILocation(line: 518, column: 6, scope: !2965)
!2983 = !DILocation(line: 519, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 519, column: 6)
!2985 = !DILocation(line: 519, column: 6, scope: !2965)
!2986 = !DILocation(line: 520, column: 3, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !1, line: 519, column: 11)
!2988 = !DILocation(line: 521, column: 29, scope: !2987)
!2989 = !DILocation(line: 521, column: 3, scope: !2987)
!2990 = !DILocation(line: 522, column: 10, scope: !2987)
!2991 = !DILocation(line: 522, column: 3, scope: !2987)
!2992 = !DILocation(line: 525, column: 2, scope: !2965)
!2993 = !DILocation(line: 526, column: 1, scope: !2965)
!2994 = distinct !DISubprogram(name: "pm_clk_runtime_resume", scope: !1, file: !1, line: 529, type: !116, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!2995 = !DILocalVariable(name: "dev", arg: 1, scope: !2994, file: !1, line: 529, type: !118)
!2996 = !DILocation(line: 529, column: 42, scope: !2994)
!2997 = !DILocalVariable(name: "ret", scope: !2994, file: !1, line: 531, type: !103)
!2998 = !DILocation(line: 531, column: 6, scope: !2994)
!2999 = !DILocation(line: 535, column: 22, scope: !2994)
!3000 = !DILocation(line: 535, column: 8, scope: !2994)
!3001 = !DILocation(line: 535, column: 6, scope: !2994)
!3002 = !DILocation(line: 536, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2994, file: !1, line: 536, column: 6)
!3004 = !DILocation(line: 536, column: 6, scope: !2994)
!3005 = !DILocation(line: 537, column: 3, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 536, column: 11)
!3007 = !DILocation(line: 538, column: 10, scope: !3006)
!3008 = !DILocation(line: 538, column: 3, scope: !3006)
!3009 = !DILocation(line: 541, column: 35, scope: !2994)
!3010 = !DILocation(line: 541, column: 9, scope: !2994)
!3011 = !DILocation(line: 541, column: 2, scope: !2994)
!3012 = !DILocation(line: 542, column: 1, scope: !2994)
!3013 = distinct !DISubprogram(name: "pm_clk_add_notifier", scope: !1, file: !1, line: 638, type: !3014, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !1630, !91}
!3016 = !DILocalVariable(name: "bus", arg: 1, scope: !3013, file: !1, line: 638, type: !1630)
!3017 = !DILocation(line: 638, column: 43, scope: !3013)
!3018 = !DILocalVariable(name: "clknb", arg: 2, scope: !3013, file: !1, line: 639, type: !91)
!3019 = !DILocation(line: 639, column: 36, scope: !3013)
!3020 = !DILocation(line: 641, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3013, file: !1, line: 641, column: 6)
!3022 = !DILocation(line: 641, column: 11, scope: !3021)
!3023 = !DILocation(line: 641, column: 15, scope: !3021)
!3024 = !DILocation(line: 641, column: 6, scope: !3013)
!3025 = !DILocation(line: 642, column: 3, scope: !3021)
!3026 = !DILocation(line: 644, column: 2, scope: !3013)
!3027 = !DILocation(line: 644, column: 9, scope: !3013)
!3028 = !DILocation(line: 644, column: 12, scope: !3013)
!3029 = !DILocation(line: 644, column: 26, scope: !3013)
!3030 = !DILocation(line: 645, column: 24, scope: !3013)
!3031 = !DILocation(line: 645, column: 30, scope: !3013)
!3032 = !DILocation(line: 645, column: 37, scope: !3013)
!3033 = !DILocation(line: 645, column: 2, scope: !3013)
!3034 = !DILocation(line: 646, column: 1, scope: !3013)
!3035 = distinct !DISubprogram(name: "pm_clk_notify", scope: !1, file: !1, line: 464, type: !101, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3036 = !DILocalVariable(name: "nb", arg: 1, scope: !3035, file: !1, line: 464, type: !104)
!3037 = !DILocation(line: 464, column: 49, scope: !3035)
!3038 = !DILocalVariable(name: "action", arg: 2, scope: !3035, file: !1, line: 465, type: !89)
!3039 = !DILocation(line: 465, column: 20, scope: !3035)
!3040 = !DILocalVariable(name: "data", arg: 3, scope: !3035, file: !1, line: 465, type: !69)
!3041 = !DILocation(line: 465, column: 34, scope: !3035)
!3042 = !DILocalVariable(name: "clknb", scope: !3035, file: !1, line: 467, type: !91)
!3043 = !DILocation(line: 467, column: 32, scope: !3035)
!3044 = !DILocalVariable(name: "dev", scope: !3035, file: !1, line: 468, type: !118)
!3045 = !DILocation(line: 468, column: 17, scope: !3035)
!3046 = !DILocation(line: 468, column: 23, scope: !3035)
!3047 = !DILocalVariable(name: "con_id", scope: !3035, file: !1, line: 469, type: !3048)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!3049 = !DILocation(line: 469, column: 9, scope: !3035)
!3050 = !DILocalVariable(name: "error", scope: !3035, file: !1, line: 470, type: !103)
!3051 = !DILocation(line: 470, column: 6, scope: !3035)
!3052 = !DILocalVariable(name: "__mptr", scope: !3053, file: !1, line: 474, type: !69)
!3053 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 474, column: 10)
!3054 = !DILocation(line: 474, column: 10, scope: !3053)
!3055 = !DILocation(line: 474, column: 10, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 474, column: 10)
!3057 = !DILocation(line: 474, column: 8, scope: !3035)
!3058 = !DILocation(line: 476, column: 10, scope: !3035)
!3059 = !DILocation(line: 476, column: 2, scope: !3035)
!3060 = !DILocation(line: 478, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !1, line: 478, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 476, column: 18)
!3063 = !DILocation(line: 478, column: 12, scope: !3061)
!3064 = !DILocation(line: 478, column: 7, scope: !3062)
!3065 = !DILocation(line: 479, column: 4, scope: !3061)
!3066 = !DILocation(line: 481, column: 25, scope: !3062)
!3067 = !DILocation(line: 481, column: 11, scope: !3062)
!3068 = !DILocation(line: 481, column: 9, scope: !3062)
!3069 = !DILocation(line: 482, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !1, line: 482, column: 7)
!3071 = !DILocation(line: 482, column: 7, scope: !3062)
!3072 = !DILocation(line: 483, column: 4, scope: !3070)
!3073 = !DILocation(line: 485, column: 21, scope: !3062)
!3074 = !DILocation(line: 485, column: 26, scope: !3062)
!3075 = !DILocation(line: 485, column: 33, scope: !3062)
!3076 = !DILocation(line: 485, column: 3, scope: !3062)
!3077 = !DILocation(line: 486, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3062, file: !1, line: 486, column: 7)
!3079 = !DILocation(line: 486, column: 14, scope: !3078)
!3080 = !DILocation(line: 486, column: 7, scope: !3062)
!3081 = !DILocation(line: 487, column: 18, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !1, line: 487, column: 4)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !1, line: 486, column: 26)
!3084 = !DILocation(line: 487, column: 25, scope: !3082)
!3085 = !DILocation(line: 487, column: 16, scope: !3082)
!3086 = !DILocation(line: 487, column: 9, scope: !3082)
!3087 = !DILocation(line: 487, column: 35, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !1, line: 487, column: 4)
!3089 = !DILocation(line: 487, column: 34, scope: !3088)
!3090 = !DILocation(line: 487, column: 4, scope: !3082)
!3091 = !DILocation(line: 488, column: 16, scope: !3088)
!3092 = !DILocation(line: 488, column: 22, scope: !3088)
!3093 = !DILocation(line: 488, column: 21, scope: !3088)
!3094 = !DILocation(line: 488, column: 5, scope: !3088)
!3095 = !DILocation(line: 487, column: 49, scope: !3088)
!3096 = !DILocation(line: 487, column: 4, scope: !3088)
!3097 = distinct !{!3097, !3090, !3098}
!3098 = !DILocation(line: 488, column: 28, scope: !3082)
!3099 = !DILocation(line: 489, column: 3, scope: !3083)
!3100 = !DILocation(line: 490, column: 15, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3078, file: !1, line: 489, column: 10)
!3102 = !DILocation(line: 490, column: 4, scope: !3101)
!3103 = !DILocation(line: 493, column: 3, scope: !3062)
!3104 = !DILocation(line: 495, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3062, file: !1, line: 495, column: 7)
!3106 = !DILocation(line: 495, column: 12, scope: !3105)
!3107 = !DILocation(line: 495, column: 25, scope: !3105)
!3108 = !DILocation(line: 495, column: 32, scope: !3105)
!3109 = !DILocation(line: 495, column: 22, scope: !3105)
!3110 = !DILocation(line: 495, column: 7, scope: !3062)
!3111 = !DILocation(line: 496, column: 4, scope: !3105)
!3112 = !DILocation(line: 498, column: 21, scope: !3062)
!3113 = !DILocation(line: 498, column: 3, scope: !3062)
!3114 = !DILocation(line: 499, column: 18, scope: !3062)
!3115 = !DILocation(line: 499, column: 3, scope: !3062)
!3116 = !DILocation(line: 500, column: 3, scope: !3062)
!3117 = !DILocation(line: 503, column: 2, scope: !3035)
!3118 = distinct !DISubprogram(name: "kzalloc", scope: !55, file: !55, line: 662, type: !3119, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!69, !223, !67}
!3121 = !DILocalVariable(name: "s", arg: 1, scope: !3122, file: !55, line: 445, type: !1052)
!3122 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !55, file: !55, line: 445, type: !3123, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!69, !1052, !67, !223}
!3125 = !DILocation(line: 445, column: 72, scope: !3122, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 552, column: 10, scope: !3127, inlinedAt: !3130)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !55, line: 540, column: 34)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !55, line: 540, column: 6)
!3129 = distinct !DISubprogram(name: "kmalloc", scope: !55, file: !55, line: 538, type: !3119, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3130 = distinct !DILocation(line: 664, column: 9, scope: !3118)
!3131 = !DILocalVariable(name: "flags", arg: 2, scope: !3122, file: !55, line: 446, type: !67)
!3132 = !DILocation(line: 446, column: 9, scope: !3122, inlinedAt: !3126)
!3133 = !DILocalVariable(name: "size", arg: 3, scope: !3122, file: !55, line: 446, type: !223)
!3134 = !DILocation(line: 446, column: 23, scope: !3122, inlinedAt: !3126)
!3135 = !DILocalVariable(name: "ret", scope: !3122, file: !55, line: 448, type: !69)
!3136 = !DILocation(line: 448, column: 8, scope: !3122, inlinedAt: !3126)
!3137 = !DILocalVariable(name: "flags", arg: 1, scope: !3138, file: !55, line: 318, type: !67)
!3138 = distinct !DISubprogram(name: "kmalloc_type", scope: !55, file: !55, line: 318, type: !3139, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!54, !67}
!3141 = !DILocation(line: 318, column: 67, scope: !3138, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 553, column: 20, scope: !3127, inlinedAt: !3130)
!3143 = !DILocalVariable(name: "size", arg: 1, scope: !3144, file: !55, line: 346, type: !223)
!3144 = distinct !DISubprogram(name: "kmalloc_index", scope: !55, file: !55, line: 346, type: !3145, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!5, !223}
!3147 = !DILocation(line: 346, column: 58, scope: !3144, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 547, column: 11, scope: !3127, inlinedAt: !3130)
!3149 = !DILocalVariable(name: "size", arg: 1, scope: !3150, file: !55, line: 472, type: !223)
!3150 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !55, file: !55, line: 472, type: !3151, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!69, !223, !67, !5}
!3153 = !DILocation(line: 472, column: 28, scope: !3150, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 481, column: 9, scope: !3155, inlinedAt: !3156)
!3155 = distinct !DISubprogram(name: "kmalloc_large", scope: !55, file: !55, line: 478, type: !3119, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3156 = distinct !DILocation(line: 545, column: 11, scope: !3157, inlinedAt: !3130)
!3157 = distinct !DILexicalBlock(scope: !3127, file: !55, line: 544, column: 7)
!3158 = !DILocalVariable(name: "flags", arg: 2, scope: !3150, file: !55, line: 472, type: !67)
!3159 = !DILocation(line: 472, column: 40, scope: !3150, inlinedAt: !3154)
!3160 = !DILocalVariable(name: "order", arg: 3, scope: !3150, file: !55, line: 472, type: !5)
!3161 = !DILocation(line: 472, column: 60, scope: !3150, inlinedAt: !3154)
!3162 = !DILocalVariable(name: "size", arg: 1, scope: !3155, file: !55, line: 478, type: !223)
!3163 = !DILocation(line: 478, column: 51, scope: !3155, inlinedAt: !3156)
!3164 = !DILocalVariable(name: "flags", arg: 2, scope: !3155, file: !55, line: 478, type: !67)
!3165 = !DILocation(line: 478, column: 63, scope: !3155, inlinedAt: !3156)
!3166 = !DILocalVariable(name: "order", scope: !3155, file: !55, line: 480, type: !5)
!3167 = !DILocation(line: 480, column: 15, scope: !3155, inlinedAt: !3156)
!3168 = !DILocalVariable(name: "size", arg: 1, scope: !3129, file: !55, line: 538, type: !223)
!3169 = !DILocation(line: 538, column: 45, scope: !3129, inlinedAt: !3130)
!3170 = !DILocalVariable(name: "flags", arg: 2, scope: !3129, file: !55, line: 538, type: !67)
!3171 = !DILocation(line: 538, column: 57, scope: !3129, inlinedAt: !3130)
!3172 = !DILocalVariable(name: "index", scope: !3127, file: !55, line: 542, type: !5)
!3173 = !DILocation(line: 542, column: 16, scope: !3127, inlinedAt: !3130)
!3174 = !DILocalVariable(name: "size", arg: 1, scope: !3118, file: !55, line: 662, type: !223)
!3175 = !DILocation(line: 662, column: 36, scope: !3118)
!3176 = !DILocalVariable(name: "flags", arg: 2, scope: !3118, file: !55, line: 662, type: !67)
!3177 = !DILocation(line: 662, column: 48, scope: !3118)
!3178 = !DILocation(line: 664, column: 17, scope: !3118)
!3179 = !DILocation(line: 664, column: 23, scope: !3118)
!3180 = !DILocation(line: 664, column: 29, scope: !3118)
!3181 = !DILocation(line: 540, column: 27, scope: !3128, inlinedAt: !3130)
!3182 = !DILocation(line: 540, column: 6, scope: !3128, inlinedAt: !3130)
!3183 = !DILocation(line: 540, column: 6, scope: !3129, inlinedAt: !3130)
!3184 = !DILocation(line: 544, column: 7, scope: !3157, inlinedAt: !3130)
!3185 = !DILocation(line: 544, column: 12, scope: !3157, inlinedAt: !3130)
!3186 = !DILocation(line: 544, column: 7, scope: !3127, inlinedAt: !3130)
!3187 = !DILocation(line: 545, column: 25, scope: !3157, inlinedAt: !3130)
!3188 = !DILocation(line: 545, column: 31, scope: !3157, inlinedAt: !3130)
!3189 = !DILocation(line: 480, column: 33, scope: !3155, inlinedAt: !3156)
!3190 = !DILocation(line: 480, column: 23, scope: !3155, inlinedAt: !3156)
!3191 = !DILocation(line: 481, column: 29, scope: !3155, inlinedAt: !3156)
!3192 = !DILocation(line: 481, column: 35, scope: !3155, inlinedAt: !3156)
!3193 = !DILocation(line: 481, column: 42, scope: !3155, inlinedAt: !3156)
!3194 = !DILocation(line: 474, column: 23, scope: !3150, inlinedAt: !3154)
!3195 = !DILocation(line: 474, column: 29, scope: !3150, inlinedAt: !3154)
!3196 = !DILocation(line: 474, column: 36, scope: !3150, inlinedAt: !3154)
!3197 = !DILocation(line: 474, column: 9, scope: !3150, inlinedAt: !3154)
!3198 = !DILocation(line: 545, column: 4, scope: !3157, inlinedAt: !3130)
!3199 = !DILocation(line: 547, column: 25, scope: !3127, inlinedAt: !3130)
!3200 = !DILocation(line: 348, column: 7, scope: !3201, inlinedAt: !3148)
!3201 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 348, column: 6)
!3202 = !DILocation(line: 348, column: 6, scope: !3144, inlinedAt: !3148)
!3203 = !DILocation(line: 349, column: 3, scope: !3201, inlinedAt: !3148)
!3204 = !DILocation(line: 351, column: 6, scope: !3205, inlinedAt: !3148)
!3205 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 351, column: 6)
!3206 = !DILocation(line: 351, column: 11, scope: !3205, inlinedAt: !3148)
!3207 = !DILocation(line: 351, column: 6, scope: !3144, inlinedAt: !3148)
!3208 = !DILocation(line: 352, column: 3, scope: !3205, inlinedAt: !3148)
!3209 = !DILocation(line: 354, column: 32, scope: !3210, inlinedAt: !3148)
!3210 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 354, column: 6)
!3211 = !DILocation(line: 354, column: 37, scope: !3210, inlinedAt: !3148)
!3212 = !DILocation(line: 354, column: 42, scope: !3210, inlinedAt: !3148)
!3213 = !DILocation(line: 354, column: 45, scope: !3210, inlinedAt: !3148)
!3214 = !DILocation(line: 354, column: 50, scope: !3210, inlinedAt: !3148)
!3215 = !DILocation(line: 354, column: 6, scope: !3144, inlinedAt: !3148)
!3216 = !DILocation(line: 355, column: 3, scope: !3210, inlinedAt: !3148)
!3217 = !DILocation(line: 356, column: 32, scope: !3218, inlinedAt: !3148)
!3218 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 356, column: 6)
!3219 = !DILocation(line: 356, column: 37, scope: !3218, inlinedAt: !3148)
!3220 = !DILocation(line: 356, column: 43, scope: !3218, inlinedAt: !3148)
!3221 = !DILocation(line: 356, column: 46, scope: !3218, inlinedAt: !3148)
!3222 = !DILocation(line: 356, column: 51, scope: !3218, inlinedAt: !3148)
!3223 = !DILocation(line: 356, column: 6, scope: !3144, inlinedAt: !3148)
!3224 = !DILocation(line: 357, column: 3, scope: !3218, inlinedAt: !3148)
!3225 = !DILocation(line: 358, column: 6, scope: !3226, inlinedAt: !3148)
!3226 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 358, column: 6)
!3227 = !DILocation(line: 358, column: 11, scope: !3226, inlinedAt: !3148)
!3228 = !DILocation(line: 358, column: 6, scope: !3144, inlinedAt: !3148)
!3229 = !DILocation(line: 358, column: 26, scope: !3226, inlinedAt: !3148)
!3230 = !DILocation(line: 359, column: 6, scope: !3231, inlinedAt: !3148)
!3231 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 359, column: 6)
!3232 = !DILocation(line: 359, column: 11, scope: !3231, inlinedAt: !3148)
!3233 = !DILocation(line: 359, column: 6, scope: !3144, inlinedAt: !3148)
!3234 = !DILocation(line: 359, column: 26, scope: !3231, inlinedAt: !3148)
!3235 = !DILocation(line: 360, column: 6, scope: !3236, inlinedAt: !3148)
!3236 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 360, column: 6)
!3237 = !DILocation(line: 360, column: 11, scope: !3236, inlinedAt: !3148)
!3238 = !DILocation(line: 360, column: 6, scope: !3144, inlinedAt: !3148)
!3239 = !DILocation(line: 360, column: 26, scope: !3236, inlinedAt: !3148)
!3240 = !DILocation(line: 361, column: 6, scope: !3241, inlinedAt: !3148)
!3241 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 361, column: 6)
!3242 = !DILocation(line: 361, column: 11, scope: !3241, inlinedAt: !3148)
!3243 = !DILocation(line: 361, column: 6, scope: !3144, inlinedAt: !3148)
!3244 = !DILocation(line: 361, column: 26, scope: !3241, inlinedAt: !3148)
!3245 = !DILocation(line: 362, column: 6, scope: !3246, inlinedAt: !3148)
!3246 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 362, column: 6)
!3247 = !DILocation(line: 362, column: 11, scope: !3246, inlinedAt: !3148)
!3248 = !DILocation(line: 362, column: 6, scope: !3144, inlinedAt: !3148)
!3249 = !DILocation(line: 362, column: 26, scope: !3246, inlinedAt: !3148)
!3250 = !DILocation(line: 363, column: 6, scope: !3251, inlinedAt: !3148)
!3251 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 363, column: 6)
!3252 = !DILocation(line: 363, column: 11, scope: !3251, inlinedAt: !3148)
!3253 = !DILocation(line: 363, column: 6, scope: !3144, inlinedAt: !3148)
!3254 = !DILocation(line: 363, column: 26, scope: !3251, inlinedAt: !3148)
!3255 = !DILocation(line: 364, column: 6, scope: !3256, inlinedAt: !3148)
!3256 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 364, column: 6)
!3257 = !DILocation(line: 364, column: 11, scope: !3256, inlinedAt: !3148)
!3258 = !DILocation(line: 364, column: 6, scope: !3144, inlinedAt: !3148)
!3259 = !DILocation(line: 364, column: 26, scope: !3256, inlinedAt: !3148)
!3260 = !DILocation(line: 365, column: 6, scope: !3261, inlinedAt: !3148)
!3261 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 365, column: 6)
!3262 = !DILocation(line: 365, column: 11, scope: !3261, inlinedAt: !3148)
!3263 = !DILocation(line: 365, column: 6, scope: !3144, inlinedAt: !3148)
!3264 = !DILocation(line: 365, column: 26, scope: !3261, inlinedAt: !3148)
!3265 = !DILocation(line: 366, column: 6, scope: !3266, inlinedAt: !3148)
!3266 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 366, column: 6)
!3267 = !DILocation(line: 366, column: 11, scope: !3266, inlinedAt: !3148)
!3268 = !DILocation(line: 366, column: 6, scope: !3144, inlinedAt: !3148)
!3269 = !DILocation(line: 366, column: 26, scope: !3266, inlinedAt: !3148)
!3270 = !DILocation(line: 367, column: 6, scope: !3271, inlinedAt: !3148)
!3271 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 367, column: 6)
!3272 = !DILocation(line: 367, column: 11, scope: !3271, inlinedAt: !3148)
!3273 = !DILocation(line: 367, column: 6, scope: !3144, inlinedAt: !3148)
!3274 = !DILocation(line: 367, column: 26, scope: !3271, inlinedAt: !3148)
!3275 = !DILocation(line: 368, column: 6, scope: !3276, inlinedAt: !3148)
!3276 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 368, column: 6)
!3277 = !DILocation(line: 368, column: 11, scope: !3276, inlinedAt: !3148)
!3278 = !DILocation(line: 368, column: 6, scope: !3144, inlinedAt: !3148)
!3279 = !DILocation(line: 368, column: 26, scope: !3276, inlinedAt: !3148)
!3280 = !DILocation(line: 369, column: 6, scope: !3281, inlinedAt: !3148)
!3281 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 369, column: 6)
!3282 = !DILocation(line: 369, column: 11, scope: !3281, inlinedAt: !3148)
!3283 = !DILocation(line: 369, column: 6, scope: !3144, inlinedAt: !3148)
!3284 = !DILocation(line: 369, column: 26, scope: !3281, inlinedAt: !3148)
!3285 = !DILocation(line: 370, column: 6, scope: !3286, inlinedAt: !3148)
!3286 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 370, column: 6)
!3287 = !DILocation(line: 370, column: 11, scope: !3286, inlinedAt: !3148)
!3288 = !DILocation(line: 370, column: 6, scope: !3144, inlinedAt: !3148)
!3289 = !DILocation(line: 370, column: 26, scope: !3286, inlinedAt: !3148)
!3290 = !DILocation(line: 371, column: 6, scope: !3291, inlinedAt: !3148)
!3291 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 371, column: 6)
!3292 = !DILocation(line: 371, column: 11, scope: !3291, inlinedAt: !3148)
!3293 = !DILocation(line: 371, column: 6, scope: !3144, inlinedAt: !3148)
!3294 = !DILocation(line: 371, column: 26, scope: !3291, inlinedAt: !3148)
!3295 = !DILocation(line: 372, column: 6, scope: !3296, inlinedAt: !3148)
!3296 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 372, column: 6)
!3297 = !DILocation(line: 372, column: 11, scope: !3296, inlinedAt: !3148)
!3298 = !DILocation(line: 372, column: 6, scope: !3144, inlinedAt: !3148)
!3299 = !DILocation(line: 372, column: 26, scope: !3296, inlinedAt: !3148)
!3300 = !DILocation(line: 373, column: 6, scope: !3301, inlinedAt: !3148)
!3301 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 373, column: 6)
!3302 = !DILocation(line: 373, column: 11, scope: !3301, inlinedAt: !3148)
!3303 = !DILocation(line: 373, column: 6, scope: !3144, inlinedAt: !3148)
!3304 = !DILocation(line: 373, column: 26, scope: !3301, inlinedAt: !3148)
!3305 = !DILocation(line: 374, column: 6, scope: !3306, inlinedAt: !3148)
!3306 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 374, column: 6)
!3307 = !DILocation(line: 374, column: 11, scope: !3306, inlinedAt: !3148)
!3308 = !DILocation(line: 374, column: 6, scope: !3144, inlinedAt: !3148)
!3309 = !DILocation(line: 374, column: 26, scope: !3306, inlinedAt: !3148)
!3310 = !DILocation(line: 375, column: 6, scope: !3311, inlinedAt: !3148)
!3311 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 375, column: 6)
!3312 = !DILocation(line: 375, column: 11, scope: !3311, inlinedAt: !3148)
!3313 = !DILocation(line: 375, column: 6, scope: !3144, inlinedAt: !3148)
!3314 = !DILocation(line: 375, column: 27, scope: !3311, inlinedAt: !3148)
!3315 = !DILocation(line: 376, column: 6, scope: !3316, inlinedAt: !3148)
!3316 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 376, column: 6)
!3317 = !DILocation(line: 376, column: 11, scope: !3316, inlinedAt: !3148)
!3318 = !DILocation(line: 376, column: 6, scope: !3144, inlinedAt: !3148)
!3319 = !DILocation(line: 376, column: 32, scope: !3316, inlinedAt: !3148)
!3320 = !DILocation(line: 377, column: 6, scope: !3321, inlinedAt: !3148)
!3321 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 377, column: 6)
!3322 = !DILocation(line: 377, column: 11, scope: !3321, inlinedAt: !3148)
!3323 = !DILocation(line: 377, column: 6, scope: !3144, inlinedAt: !3148)
!3324 = !DILocation(line: 377, column: 32, scope: !3321, inlinedAt: !3148)
!3325 = !DILocation(line: 378, column: 6, scope: !3326, inlinedAt: !3148)
!3326 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 378, column: 6)
!3327 = !DILocation(line: 378, column: 11, scope: !3326, inlinedAt: !3148)
!3328 = !DILocation(line: 378, column: 6, scope: !3144, inlinedAt: !3148)
!3329 = !DILocation(line: 378, column: 32, scope: !3326, inlinedAt: !3148)
!3330 = !DILocation(line: 379, column: 6, scope: !3331, inlinedAt: !3148)
!3331 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 379, column: 6)
!3332 = !DILocation(line: 379, column: 11, scope: !3331, inlinedAt: !3148)
!3333 = !DILocation(line: 379, column: 6, scope: !3144, inlinedAt: !3148)
!3334 = !DILocation(line: 379, column: 33, scope: !3331, inlinedAt: !3148)
!3335 = !DILocation(line: 380, column: 6, scope: !3336, inlinedAt: !3148)
!3336 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 380, column: 6)
!3337 = !DILocation(line: 380, column: 11, scope: !3336, inlinedAt: !3148)
!3338 = !DILocation(line: 380, column: 6, scope: !3144, inlinedAt: !3148)
!3339 = !DILocation(line: 380, column: 33, scope: !3336, inlinedAt: !3148)
!3340 = !DILocation(line: 381, column: 6, scope: !3341, inlinedAt: !3148)
!3341 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 381, column: 6)
!3342 = !DILocation(line: 381, column: 11, scope: !3341, inlinedAt: !3148)
!3343 = !DILocation(line: 381, column: 6, scope: !3144, inlinedAt: !3148)
!3344 = !DILocation(line: 381, column: 33, scope: !3341, inlinedAt: !3148)
!3345 = !DILocation(line: 382, column: 2, scope: !3346, inlinedAt: !3148)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !55, line: 382, column: 2)
!3347 = distinct !DILexicalBlock(scope: !3144, file: !55, line: 382, column: 2)
!3348 = !{i32 -2143601522, i32 -2143601493, i32 -2143601447, i32 -2143601389, i32 -2143601335, i32 -2143601281, i32 -2143601226, i32 -2143601195}
!3349 = !DILocation(line: 382, column: 2, scope: !3350, inlinedAt: !3148)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !55, line: 382, column: 2)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !55, line: 382, column: 2)
!3352 = !{i32 -2143600752, i32 -2143600745, i32 -2143600691, i32 -2143600660, i32 -2143600630}
!3353 = !DILocation(line: 382, column: 2, scope: !3351, inlinedAt: !3148)
!3354 = !DILocation(line: 386, column: 1, scope: !3144, inlinedAt: !3148)
!3355 = !DILocation(line: 547, column: 9, scope: !3127, inlinedAt: !3130)
!3356 = !DILocation(line: 549, column: 8, scope: !3357, inlinedAt: !3130)
!3357 = distinct !DILexicalBlock(scope: !3127, file: !55, line: 549, column: 7)
!3358 = !DILocation(line: 549, column: 7, scope: !3127, inlinedAt: !3130)
!3359 = !DILocation(line: 550, column: 4, scope: !3357, inlinedAt: !3130)
!3360 = !DILocation(line: 553, column: 33, scope: !3127, inlinedAt: !3130)
!3361 = !DILocation(line: 325, column: 6, scope: !3362, inlinedAt: !3142)
!3362 = distinct !DILexicalBlock(scope: !3138, file: !55, line: 325, column: 6)
!3363 = !DILocation(line: 325, column: 6, scope: !3138, inlinedAt: !3142)
!3364 = !DILocation(line: 326, column: 3, scope: !3362, inlinedAt: !3142)
!3365 = !DILocation(line: 332, column: 9, scope: !3138, inlinedAt: !3142)
!3366 = !DILocation(line: 332, column: 15, scope: !3138, inlinedAt: !3142)
!3367 = !DILocation(line: 332, column: 2, scope: !3138, inlinedAt: !3142)
!3368 = !DILocation(line: 336, column: 1, scope: !3138, inlinedAt: !3142)
!3369 = !DILocation(line: 553, column: 5, scope: !3127, inlinedAt: !3130)
!3370 = !DILocation(line: 553, column: 41, scope: !3127, inlinedAt: !3130)
!3371 = !DILocation(line: 554, column: 5, scope: !3127, inlinedAt: !3130)
!3372 = !DILocation(line: 554, column: 12, scope: !3127, inlinedAt: !3130)
!3373 = !DILocation(line: 448, column: 31, scope: !3122, inlinedAt: !3126)
!3374 = !DILocation(line: 448, column: 34, scope: !3122, inlinedAt: !3126)
!3375 = !DILocation(line: 448, column: 14, scope: !3122, inlinedAt: !3126)
!3376 = !DILocation(line: 450, column: 22, scope: !3122, inlinedAt: !3126)
!3377 = !DILocation(line: 450, column: 25, scope: !3122, inlinedAt: !3126)
!3378 = !DILocation(line: 450, column: 30, scope: !3122, inlinedAt: !3126)
!3379 = !DILocation(line: 450, column: 36, scope: !3122, inlinedAt: !3126)
!3380 = !DILocation(line: 450, column: 8, scope: !3122, inlinedAt: !3126)
!3381 = !DILocation(line: 450, column: 6, scope: !3122, inlinedAt: !3126)
!3382 = !DILocation(line: 451, column: 9, scope: !3122, inlinedAt: !3126)
!3383 = !DILocation(line: 552, column: 3, scope: !3127, inlinedAt: !3130)
!3384 = !DILocation(line: 557, column: 19, scope: !3129, inlinedAt: !3130)
!3385 = !DILocation(line: 557, column: 25, scope: !3129, inlinedAt: !3130)
!3386 = !DILocation(line: 557, column: 9, scope: !3129, inlinedAt: !3130)
!3387 = !DILocation(line: 557, column: 2, scope: !3129, inlinedAt: !3130)
!3388 = !DILocation(line: 558, column: 1, scope: !3129, inlinedAt: !3130)
!3389 = !DILocation(line: 664, column: 2, scope: !3118)
!3390 = distinct !DISubprogram(name: "pm_clk_acquire", scope: !1, file: !1, line: 61, type: !2938, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3391 = !DILocalVariable(name: "dev", arg: 1, scope: !3390, file: !1, line: 61, type: !118)
!3392 = !DILocation(line: 61, column: 43, scope: !3390)
!3393 = !DILocalVariable(name: "ce", arg: 2, scope: !3390, file: !1, line: 61, type: !70)
!3394 = !DILocation(line: 61, column: 71, scope: !3390)
!3395 = !DILocation(line: 63, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3390, file: !1, line: 63, column: 6)
!3397 = !DILocation(line: 63, column: 11, scope: !3396)
!3398 = !DILocation(line: 63, column: 6, scope: !3390)
!3399 = !DILocation(line: 64, column: 21, scope: !3396)
!3400 = !DILocation(line: 64, column: 26, scope: !3396)
!3401 = !DILocation(line: 64, column: 30, scope: !3396)
!3402 = !DILocation(line: 64, column: 13, scope: !3396)
!3403 = !DILocation(line: 64, column: 3, scope: !3396)
!3404 = !DILocation(line: 64, column: 7, scope: !3396)
!3405 = !DILocation(line: 64, column: 11, scope: !3396)
!3406 = !DILocation(line: 65, column: 13, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3390, file: !1, line: 65, column: 6)
!3408 = !DILocation(line: 65, column: 17, scope: !3407)
!3409 = !DILocation(line: 65, column: 6, scope: !3407)
!3410 = !DILocation(line: 65, column: 6, scope: !3390)
!3411 = !DILocation(line: 66, column: 3, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !1, line: 65, column: 23)
!3413 = !DILocation(line: 66, column: 7, scope: !3412)
!3414 = !DILocation(line: 66, column: 14, scope: !3412)
!3415 = !DILocation(line: 67, column: 2, scope: !3412)
!3416 = !DILocation(line: 68, column: 19, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !1, line: 68, column: 7)
!3418 = distinct !DILexicalBlock(scope: !3407, file: !1, line: 67, column: 9)
!3419 = !DILocation(line: 68, column: 23, scope: !3417)
!3420 = !DILocation(line: 68, column: 7, scope: !3417)
!3421 = !DILocation(line: 68, column: 7, scope: !3418)
!3422 = !DILocation(line: 69, column: 4, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !1, line: 68, column: 29)
!3424 = !DILocation(line: 69, column: 8, scope: !3423)
!3425 = !DILocation(line: 69, column: 15, scope: !3423)
!3426 = !DILocation(line: 70, column: 4, scope: !3423)
!3427 = !DILocation(line: 71, column: 3, scope: !3423)
!3428 = !DILocation(line: 72, column: 4, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3417, file: !1, line: 71, column: 10)
!3430 = !DILocation(line: 72, column: 8, scope: !3429)
!3431 = !DILocation(line: 72, column: 15, scope: !3429)
!3432 = !DILocation(line: 78, column: 1, scope: !3390)
!3433 = distinct !DISubprogram(name: "list_add_tail", scope: !2544, file: !2544, line: 98, type: !2724, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3434 = !DILocalVariable(name: "new", arg: 1, scope: !3433, file: !2544, line: 98, type: !77)
!3435 = !DILocation(line: 98, column: 52, scope: !3433)
!3436 = !DILocalVariable(name: "head", arg: 2, scope: !3433, file: !2544, line: 98, type: !77)
!3437 = !DILocation(line: 98, column: 75, scope: !3433)
!3438 = !DILocation(line: 100, column: 13, scope: !3433)
!3439 = !DILocation(line: 100, column: 18, scope: !3433)
!3440 = !DILocation(line: 100, column: 24, scope: !3433)
!3441 = !DILocation(line: 100, column: 30, scope: !3433)
!3442 = !DILocation(line: 100, column: 2, scope: !3433)
!3443 = !DILocation(line: 101, column: 1, scope: !3433)
!3444 = distinct !DISubprogram(name: "get_order", scope: !3445, file: !3445, line: 29, type: !3446, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3445 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!103, !89}
!3448 = !DILocalVariable(name: "x", arg: 1, scope: !3449, file: !3450, line: 366, type: !296)
!3449 = distinct !DISubprogram(name: "fls64", scope: !3450, file: !3450, line: 366, type: !3451, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3450 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!103, !296}
!3453 = !DILocation(line: 366, column: 40, scope: !3449, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 46, column: 9, scope: !3444)
!3455 = !DILocalVariable(name: "bitpos", scope: !3449, file: !3450, line: 368, type: !103)
!3456 = !DILocation(line: 368, column: 6, scope: !3449, inlinedAt: !3454)
!3457 = !DILocalVariable(name: "size", arg: 1, scope: !3444, file: !3445, line: 29, type: !89)
!3458 = !DILocation(line: 29, column: 63, scope: !3444)
!3459 = !DILocation(line: 31, column: 27, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3444, file: !3445, line: 31, column: 6)
!3461 = !DILocation(line: 31, column: 6, scope: !3460)
!3462 = !DILocation(line: 31, column: 6, scope: !3444)
!3463 = !DILocation(line: 32, column: 8, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3445, line: 32, column: 7)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !3445, line: 31, column: 34)
!3466 = !DILocation(line: 32, column: 7, scope: !3465)
!3467 = !DILocation(line: 33, column: 4, scope: !3464)
!3468 = !DILocation(line: 35, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3465, file: !3445, line: 35, column: 7)
!3470 = !DILocation(line: 35, column: 12, scope: !3469)
!3471 = !DILocation(line: 35, column: 7, scope: !3465)
!3472 = !DILocation(line: 36, column: 4, scope: !3469)
!3473 = !DILocation(line: 38, column: 10, scope: !3465)
!3474 = !DILocation(line: 38, column: 28, scope: !3465)
!3475 = !DILocation(line: 38, column: 41, scope: !3465)
!3476 = !DILocation(line: 38, column: 3, scope: !3465)
!3477 = !DILocation(line: 41, column: 6, scope: !3444)
!3478 = !DILocation(line: 42, column: 7, scope: !3444)
!3479 = !DILocation(line: 46, column: 15, scope: !3444)
!3480 = !DILocation(line: 374, column: 2, scope: !3449, inlinedAt: !3454)
!3481 = !DILocation(line: 376, column: 14, scope: !3449, inlinedAt: !3454)
!3482 = !{i32 254223}
!3483 = !DILocation(line: 377, column: 9, scope: !3449, inlinedAt: !3454)
!3484 = !DILocation(line: 377, column: 16, scope: !3449, inlinedAt: !3454)
!3485 = !DILocation(line: 46, column: 2, scope: !3444)
!3486 = !DILocation(line: 48, column: 1, scope: !3444)
!3487 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3488, file: !3488, line: 30, type: !3489, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3488 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!103, !294}
!3491 = !DILocation(line: 366, column: 40, scope: !3449, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 32, column: 9, scope: !3487)
!3493 = !DILocation(line: 368, column: 6, scope: !3449, inlinedAt: !3492)
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !3488, line: 30, type: !294)
!3495 = !DILocation(line: 30, column: 21, scope: !3487)
!3496 = !DILocation(line: 32, column: 15, scope: !3487)
!3497 = !DILocation(line: 374, column: 2, scope: !3449, inlinedAt: !3492)
!3498 = !DILocation(line: 376, column: 14, scope: !3449, inlinedAt: !3492)
!3499 = !DILocation(line: 377, column: 9, scope: !3449, inlinedAt: !3492)
!3500 = !DILocation(line: 377, column: 16, scope: !3449, inlinedAt: !3492)
!3501 = !DILocation(line: 32, column: 18, scope: !3487)
!3502 = !DILocation(line: 32, column: 2, scope: !3487)
!3503 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3504, file: !3504, line: 137, type: !3505, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3504 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!69, !1052, !1133, !223, !67}
!3507 = !DILocalVariable(name: "s", arg: 1, scope: !3503, file: !3504, line: 137, type: !1052)
!3508 = !DILocation(line: 137, column: 54, scope: !3503)
!3509 = !DILocalVariable(name: "object", arg: 2, scope: !3503, file: !3504, line: 137, type: !1133)
!3510 = !DILocation(line: 137, column: 69, scope: !3503)
!3511 = !DILocalVariable(name: "size", arg: 3, scope: !3503, file: !3504, line: 138, type: !223)
!3512 = !DILocation(line: 138, column: 12, scope: !3503)
!3513 = !DILocalVariable(name: "flags", arg: 4, scope: !3503, file: !3504, line: 138, type: !67)
!3514 = !DILocation(line: 138, column: 24, scope: !3503)
!3515 = !DILocation(line: 140, column: 17, scope: !3503)
!3516 = !DILocation(line: 140, column: 2, scope: !3503)
!3517 = distinct !DISubprogram(name: "__list_add", scope: !2544, file: !2544, line: 63, type: !3518, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !77, !77, !77}
!3520 = !DILocalVariable(name: "new", arg: 1, scope: !3517, file: !2544, line: 63, type: !77)
!3521 = !DILocation(line: 63, column: 49, scope: !3517)
!3522 = !DILocalVariable(name: "prev", arg: 2, scope: !3517, file: !2544, line: 64, type: !77)
!3523 = !DILocation(line: 64, column: 28, scope: !3517)
!3524 = !DILocalVariable(name: "next", arg: 3, scope: !3517, file: !2544, line: 65, type: !77)
!3525 = !DILocation(line: 65, column: 28, scope: !3517)
!3526 = !DILocation(line: 67, column: 24, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !2544, line: 67, column: 6)
!3528 = !DILocation(line: 67, column: 29, scope: !3527)
!3529 = !DILocation(line: 67, column: 35, scope: !3527)
!3530 = !DILocation(line: 67, column: 7, scope: !3527)
!3531 = !DILocation(line: 67, column: 6, scope: !3517)
!3532 = !DILocation(line: 68, column: 3, scope: !3527)
!3533 = !DILocation(line: 70, column: 15, scope: !3517)
!3534 = !DILocation(line: 70, column: 2, scope: !3517)
!3535 = !DILocation(line: 70, column: 8, scope: !3517)
!3536 = !DILocation(line: 70, column: 13, scope: !3517)
!3537 = !DILocation(line: 71, column: 14, scope: !3517)
!3538 = !DILocation(line: 71, column: 2, scope: !3517)
!3539 = !DILocation(line: 71, column: 7, scope: !3517)
!3540 = !DILocation(line: 71, column: 12, scope: !3517)
!3541 = !DILocation(line: 72, column: 14, scope: !3517)
!3542 = !DILocation(line: 72, column: 2, scope: !3517)
!3543 = !DILocation(line: 72, column: 7, scope: !3517)
!3544 = !DILocation(line: 72, column: 12, scope: !3517)
!3545 = !DILocation(line: 73, column: 2, scope: !3517)
!3546 = !DILocation(line: 73, column: 2, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3517, file: !2544, line: 73, column: 2)
!3548 = !DILocation(line: 73, column: 2, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3547, file: !2544, line: 73, column: 2)
!3550 = !DILocation(line: 73, column: 2, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3547, file: !2544, line: 73, column: 2)
!3552 = !DILocation(line: 74, column: 1, scope: !3517)
!3553 = distinct !DISubprogram(name: "__list_add_valid", scope: !2544, file: !2544, line: 45, type: !3554, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!1002, !77, !77, !77}
!3556 = !DILocalVariable(name: "new", arg: 1, scope: !3553, file: !2544, line: 45, type: !77)
!3557 = !DILocation(line: 45, column: 55, scope: !3553)
!3558 = !DILocalVariable(name: "prev", arg: 2, scope: !3553, file: !2544, line: 46, type: !77)
!3559 = !DILocation(line: 46, column: 23, scope: !3553)
!3560 = !DILocalVariable(name: "next", arg: 3, scope: !3553, file: !2544, line: 47, type: !77)
!3561 = !DILocation(line: 47, column: 23, scope: !3553)
!3562 = !DILocation(line: 49, column: 2, scope: !3553)
!3563 = distinct !DISubprogram(name: "kmalloc_array", scope: !55, file: !55, line: 584, type: !2359, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3564 = !DILocation(line: 445, column: 72, scope: !3122, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 552, column: 10, scope: !3127, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 591, column: 10, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !55, line: 590, column: 6)
!3568 = !DILocation(line: 446, column: 9, scope: !3122, inlinedAt: !3565)
!3569 = !DILocation(line: 446, column: 23, scope: !3122, inlinedAt: !3565)
!3570 = !DILocation(line: 448, column: 8, scope: !3122, inlinedAt: !3565)
!3571 = !DILocation(line: 318, column: 67, scope: !3138, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 553, column: 20, scope: !3127, inlinedAt: !3566)
!3573 = !DILocation(line: 346, column: 58, scope: !3144, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 547, column: 11, scope: !3127, inlinedAt: !3566)
!3575 = !DILocation(line: 472, column: 28, scope: !3150, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 481, column: 9, scope: !3155, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 545, column: 11, scope: !3157, inlinedAt: !3566)
!3578 = !DILocation(line: 472, column: 40, scope: !3150, inlinedAt: !3576)
!3579 = !DILocation(line: 472, column: 60, scope: !3150, inlinedAt: !3576)
!3580 = !DILocation(line: 478, column: 51, scope: !3155, inlinedAt: !3577)
!3581 = !DILocation(line: 478, column: 63, scope: !3155, inlinedAt: !3577)
!3582 = !DILocation(line: 480, column: 15, scope: !3155, inlinedAt: !3577)
!3583 = !DILocation(line: 538, column: 45, scope: !3129, inlinedAt: !3566)
!3584 = !DILocation(line: 538, column: 57, scope: !3129, inlinedAt: !3566)
!3585 = !DILocation(line: 542, column: 16, scope: !3127, inlinedAt: !3566)
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !55, line: 584, type: !223)
!3587 = !DILocation(line: 584, column: 42, scope: !3563)
!3588 = !DILocalVariable(name: "size", arg: 2, scope: !3563, file: !55, line: 584, type: !223)
!3589 = !DILocation(line: 584, column: 52, scope: !3563)
!3590 = !DILocalVariable(name: "flags", arg: 3, scope: !3563, file: !55, line: 584, type: !67)
!3591 = !DILocation(line: 584, column: 64, scope: !3563)
!3592 = !DILocalVariable(name: "bytes", scope: !3563, file: !55, line: 586, type: !223)
!3593 = !DILocation(line: 586, column: 9, scope: !3563)
!3594 = !DILocalVariable(name: "__a", scope: !3595, file: !55, line: 588, type: !223)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !55, line: 588, column: 6)
!3596 = distinct !DILexicalBlock(scope: !3563, file: !55, line: 588, column: 6)
!3597 = !DILocation(line: 588, column: 6, scope: !3595)
!3598 = !DILocalVariable(name: "__b", scope: !3595, file: !55, line: 588, type: !223)
!3599 = !DILocalVariable(name: "__d", scope: !3595, file: !55, line: 588, type: !3600)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3601 = !DILocation(line: 588, column: 6, scope: !3596)
!3602 = !DILocation(line: 588, column: 6, scope: !3563)
!3603 = !DILocation(line: 589, column: 3, scope: !3596)
!3604 = !DILocation(line: 590, column: 27, scope: !3567)
!3605 = !DILocation(line: 590, column: 6, scope: !3567)
!3606 = !DILocation(line: 590, column: 30, scope: !3567)
!3607 = !DILocation(line: 590, column: 54, scope: !3567)
!3608 = !DILocation(line: 590, column: 33, scope: !3567)
!3609 = !DILocation(line: 590, column: 6, scope: !3563)
!3610 = !DILocation(line: 591, column: 18, scope: !3567)
!3611 = !DILocation(line: 591, column: 25, scope: !3567)
!3612 = !DILocation(line: 540, column: 27, scope: !3128, inlinedAt: !3566)
!3613 = !DILocation(line: 540, column: 6, scope: !3128, inlinedAt: !3566)
!3614 = !DILocation(line: 540, column: 6, scope: !3129, inlinedAt: !3566)
!3615 = !DILocation(line: 544, column: 7, scope: !3157, inlinedAt: !3566)
!3616 = !DILocation(line: 544, column: 12, scope: !3157, inlinedAt: !3566)
!3617 = !DILocation(line: 544, column: 7, scope: !3127, inlinedAt: !3566)
!3618 = !DILocation(line: 545, column: 25, scope: !3157, inlinedAt: !3566)
!3619 = !DILocation(line: 545, column: 31, scope: !3157, inlinedAt: !3566)
!3620 = !DILocation(line: 480, column: 33, scope: !3155, inlinedAt: !3577)
!3621 = !DILocation(line: 480, column: 23, scope: !3155, inlinedAt: !3577)
!3622 = !DILocation(line: 481, column: 29, scope: !3155, inlinedAt: !3577)
!3623 = !DILocation(line: 481, column: 35, scope: !3155, inlinedAt: !3577)
!3624 = !DILocation(line: 481, column: 42, scope: !3155, inlinedAt: !3577)
!3625 = !DILocation(line: 474, column: 23, scope: !3150, inlinedAt: !3576)
!3626 = !DILocation(line: 474, column: 29, scope: !3150, inlinedAt: !3576)
!3627 = !DILocation(line: 474, column: 36, scope: !3150, inlinedAt: !3576)
!3628 = !DILocation(line: 474, column: 9, scope: !3150, inlinedAt: !3576)
!3629 = !DILocation(line: 545, column: 4, scope: !3157, inlinedAt: !3566)
!3630 = !DILocation(line: 547, column: 25, scope: !3127, inlinedAt: !3566)
!3631 = !DILocation(line: 348, column: 7, scope: !3201, inlinedAt: !3574)
!3632 = !DILocation(line: 348, column: 6, scope: !3144, inlinedAt: !3574)
!3633 = !DILocation(line: 349, column: 3, scope: !3201, inlinedAt: !3574)
!3634 = !DILocation(line: 351, column: 6, scope: !3205, inlinedAt: !3574)
!3635 = !DILocation(line: 351, column: 11, scope: !3205, inlinedAt: !3574)
!3636 = !DILocation(line: 351, column: 6, scope: !3144, inlinedAt: !3574)
!3637 = !DILocation(line: 352, column: 3, scope: !3205, inlinedAt: !3574)
!3638 = !DILocation(line: 354, column: 32, scope: !3210, inlinedAt: !3574)
!3639 = !DILocation(line: 354, column: 37, scope: !3210, inlinedAt: !3574)
!3640 = !DILocation(line: 354, column: 42, scope: !3210, inlinedAt: !3574)
!3641 = !DILocation(line: 354, column: 45, scope: !3210, inlinedAt: !3574)
!3642 = !DILocation(line: 354, column: 50, scope: !3210, inlinedAt: !3574)
!3643 = !DILocation(line: 354, column: 6, scope: !3144, inlinedAt: !3574)
!3644 = !DILocation(line: 355, column: 3, scope: !3210, inlinedAt: !3574)
!3645 = !DILocation(line: 356, column: 32, scope: !3218, inlinedAt: !3574)
!3646 = !DILocation(line: 356, column: 37, scope: !3218, inlinedAt: !3574)
!3647 = !DILocation(line: 356, column: 43, scope: !3218, inlinedAt: !3574)
!3648 = !DILocation(line: 356, column: 46, scope: !3218, inlinedAt: !3574)
!3649 = !DILocation(line: 356, column: 51, scope: !3218, inlinedAt: !3574)
!3650 = !DILocation(line: 356, column: 6, scope: !3144, inlinedAt: !3574)
!3651 = !DILocation(line: 357, column: 3, scope: !3218, inlinedAt: !3574)
!3652 = !DILocation(line: 358, column: 6, scope: !3226, inlinedAt: !3574)
!3653 = !DILocation(line: 358, column: 11, scope: !3226, inlinedAt: !3574)
!3654 = !DILocation(line: 358, column: 6, scope: !3144, inlinedAt: !3574)
!3655 = !DILocation(line: 358, column: 26, scope: !3226, inlinedAt: !3574)
!3656 = !DILocation(line: 359, column: 6, scope: !3231, inlinedAt: !3574)
!3657 = !DILocation(line: 359, column: 11, scope: !3231, inlinedAt: !3574)
!3658 = !DILocation(line: 359, column: 6, scope: !3144, inlinedAt: !3574)
!3659 = !DILocation(line: 359, column: 26, scope: !3231, inlinedAt: !3574)
!3660 = !DILocation(line: 360, column: 6, scope: !3236, inlinedAt: !3574)
!3661 = !DILocation(line: 360, column: 11, scope: !3236, inlinedAt: !3574)
!3662 = !DILocation(line: 360, column: 6, scope: !3144, inlinedAt: !3574)
!3663 = !DILocation(line: 360, column: 26, scope: !3236, inlinedAt: !3574)
!3664 = !DILocation(line: 361, column: 6, scope: !3241, inlinedAt: !3574)
!3665 = !DILocation(line: 361, column: 11, scope: !3241, inlinedAt: !3574)
!3666 = !DILocation(line: 361, column: 6, scope: !3144, inlinedAt: !3574)
!3667 = !DILocation(line: 361, column: 26, scope: !3241, inlinedAt: !3574)
!3668 = !DILocation(line: 362, column: 6, scope: !3246, inlinedAt: !3574)
!3669 = !DILocation(line: 362, column: 11, scope: !3246, inlinedAt: !3574)
!3670 = !DILocation(line: 362, column: 6, scope: !3144, inlinedAt: !3574)
!3671 = !DILocation(line: 362, column: 26, scope: !3246, inlinedAt: !3574)
!3672 = !DILocation(line: 363, column: 6, scope: !3251, inlinedAt: !3574)
!3673 = !DILocation(line: 363, column: 11, scope: !3251, inlinedAt: !3574)
!3674 = !DILocation(line: 363, column: 6, scope: !3144, inlinedAt: !3574)
!3675 = !DILocation(line: 363, column: 26, scope: !3251, inlinedAt: !3574)
!3676 = !DILocation(line: 364, column: 6, scope: !3256, inlinedAt: !3574)
!3677 = !DILocation(line: 364, column: 11, scope: !3256, inlinedAt: !3574)
!3678 = !DILocation(line: 364, column: 6, scope: !3144, inlinedAt: !3574)
!3679 = !DILocation(line: 364, column: 26, scope: !3256, inlinedAt: !3574)
!3680 = !DILocation(line: 365, column: 6, scope: !3261, inlinedAt: !3574)
!3681 = !DILocation(line: 365, column: 11, scope: !3261, inlinedAt: !3574)
!3682 = !DILocation(line: 365, column: 6, scope: !3144, inlinedAt: !3574)
!3683 = !DILocation(line: 365, column: 26, scope: !3261, inlinedAt: !3574)
!3684 = !DILocation(line: 366, column: 6, scope: !3266, inlinedAt: !3574)
!3685 = !DILocation(line: 366, column: 11, scope: !3266, inlinedAt: !3574)
!3686 = !DILocation(line: 366, column: 6, scope: !3144, inlinedAt: !3574)
!3687 = !DILocation(line: 366, column: 26, scope: !3266, inlinedAt: !3574)
!3688 = !DILocation(line: 367, column: 6, scope: !3271, inlinedAt: !3574)
!3689 = !DILocation(line: 367, column: 11, scope: !3271, inlinedAt: !3574)
!3690 = !DILocation(line: 367, column: 6, scope: !3144, inlinedAt: !3574)
!3691 = !DILocation(line: 367, column: 26, scope: !3271, inlinedAt: !3574)
!3692 = !DILocation(line: 368, column: 6, scope: !3276, inlinedAt: !3574)
!3693 = !DILocation(line: 368, column: 11, scope: !3276, inlinedAt: !3574)
!3694 = !DILocation(line: 368, column: 6, scope: !3144, inlinedAt: !3574)
!3695 = !DILocation(line: 368, column: 26, scope: !3276, inlinedAt: !3574)
!3696 = !DILocation(line: 369, column: 6, scope: !3281, inlinedAt: !3574)
!3697 = !DILocation(line: 369, column: 11, scope: !3281, inlinedAt: !3574)
!3698 = !DILocation(line: 369, column: 6, scope: !3144, inlinedAt: !3574)
!3699 = !DILocation(line: 369, column: 26, scope: !3281, inlinedAt: !3574)
!3700 = !DILocation(line: 370, column: 6, scope: !3286, inlinedAt: !3574)
!3701 = !DILocation(line: 370, column: 11, scope: !3286, inlinedAt: !3574)
!3702 = !DILocation(line: 370, column: 6, scope: !3144, inlinedAt: !3574)
!3703 = !DILocation(line: 370, column: 26, scope: !3286, inlinedAt: !3574)
!3704 = !DILocation(line: 371, column: 6, scope: !3291, inlinedAt: !3574)
!3705 = !DILocation(line: 371, column: 11, scope: !3291, inlinedAt: !3574)
!3706 = !DILocation(line: 371, column: 6, scope: !3144, inlinedAt: !3574)
!3707 = !DILocation(line: 371, column: 26, scope: !3291, inlinedAt: !3574)
!3708 = !DILocation(line: 372, column: 6, scope: !3296, inlinedAt: !3574)
!3709 = !DILocation(line: 372, column: 11, scope: !3296, inlinedAt: !3574)
!3710 = !DILocation(line: 372, column: 6, scope: !3144, inlinedAt: !3574)
!3711 = !DILocation(line: 372, column: 26, scope: !3296, inlinedAt: !3574)
!3712 = !DILocation(line: 373, column: 6, scope: !3301, inlinedAt: !3574)
!3713 = !DILocation(line: 373, column: 11, scope: !3301, inlinedAt: !3574)
!3714 = !DILocation(line: 373, column: 6, scope: !3144, inlinedAt: !3574)
!3715 = !DILocation(line: 373, column: 26, scope: !3301, inlinedAt: !3574)
!3716 = !DILocation(line: 374, column: 6, scope: !3306, inlinedAt: !3574)
!3717 = !DILocation(line: 374, column: 11, scope: !3306, inlinedAt: !3574)
!3718 = !DILocation(line: 374, column: 6, scope: !3144, inlinedAt: !3574)
!3719 = !DILocation(line: 374, column: 26, scope: !3306, inlinedAt: !3574)
!3720 = !DILocation(line: 375, column: 6, scope: !3311, inlinedAt: !3574)
!3721 = !DILocation(line: 375, column: 11, scope: !3311, inlinedAt: !3574)
!3722 = !DILocation(line: 375, column: 6, scope: !3144, inlinedAt: !3574)
!3723 = !DILocation(line: 375, column: 27, scope: !3311, inlinedAt: !3574)
!3724 = !DILocation(line: 376, column: 6, scope: !3316, inlinedAt: !3574)
!3725 = !DILocation(line: 376, column: 11, scope: !3316, inlinedAt: !3574)
!3726 = !DILocation(line: 376, column: 6, scope: !3144, inlinedAt: !3574)
!3727 = !DILocation(line: 376, column: 32, scope: !3316, inlinedAt: !3574)
!3728 = !DILocation(line: 377, column: 6, scope: !3321, inlinedAt: !3574)
!3729 = !DILocation(line: 377, column: 11, scope: !3321, inlinedAt: !3574)
!3730 = !DILocation(line: 377, column: 6, scope: !3144, inlinedAt: !3574)
!3731 = !DILocation(line: 377, column: 32, scope: !3321, inlinedAt: !3574)
!3732 = !DILocation(line: 378, column: 6, scope: !3326, inlinedAt: !3574)
!3733 = !DILocation(line: 378, column: 11, scope: !3326, inlinedAt: !3574)
!3734 = !DILocation(line: 378, column: 6, scope: !3144, inlinedAt: !3574)
!3735 = !DILocation(line: 378, column: 32, scope: !3326, inlinedAt: !3574)
!3736 = !DILocation(line: 379, column: 6, scope: !3331, inlinedAt: !3574)
!3737 = !DILocation(line: 379, column: 11, scope: !3331, inlinedAt: !3574)
!3738 = !DILocation(line: 379, column: 6, scope: !3144, inlinedAt: !3574)
!3739 = !DILocation(line: 379, column: 33, scope: !3331, inlinedAt: !3574)
!3740 = !DILocation(line: 380, column: 6, scope: !3336, inlinedAt: !3574)
!3741 = !DILocation(line: 380, column: 11, scope: !3336, inlinedAt: !3574)
!3742 = !DILocation(line: 380, column: 6, scope: !3144, inlinedAt: !3574)
!3743 = !DILocation(line: 380, column: 33, scope: !3336, inlinedAt: !3574)
!3744 = !DILocation(line: 381, column: 6, scope: !3341, inlinedAt: !3574)
!3745 = !DILocation(line: 381, column: 11, scope: !3341, inlinedAt: !3574)
!3746 = !DILocation(line: 381, column: 6, scope: !3144, inlinedAt: !3574)
!3747 = !DILocation(line: 381, column: 33, scope: !3341, inlinedAt: !3574)
!3748 = !DILocation(line: 382, column: 2, scope: !3346, inlinedAt: !3574)
!3749 = !DILocation(line: 382, column: 2, scope: !3350, inlinedAt: !3574)
!3750 = !DILocation(line: 382, column: 2, scope: !3351, inlinedAt: !3574)
!3751 = !DILocation(line: 386, column: 1, scope: !3144, inlinedAt: !3574)
!3752 = !DILocation(line: 547, column: 9, scope: !3127, inlinedAt: !3566)
!3753 = !DILocation(line: 549, column: 8, scope: !3357, inlinedAt: !3566)
!3754 = !DILocation(line: 549, column: 7, scope: !3127, inlinedAt: !3566)
!3755 = !DILocation(line: 550, column: 4, scope: !3357, inlinedAt: !3566)
!3756 = !DILocation(line: 553, column: 33, scope: !3127, inlinedAt: !3566)
!3757 = !DILocation(line: 325, column: 6, scope: !3362, inlinedAt: !3572)
!3758 = !DILocation(line: 325, column: 6, scope: !3138, inlinedAt: !3572)
!3759 = !DILocation(line: 326, column: 3, scope: !3362, inlinedAt: !3572)
!3760 = !DILocation(line: 332, column: 9, scope: !3138, inlinedAt: !3572)
!3761 = !DILocation(line: 332, column: 15, scope: !3138, inlinedAt: !3572)
!3762 = !DILocation(line: 332, column: 2, scope: !3138, inlinedAt: !3572)
!3763 = !DILocation(line: 336, column: 1, scope: !3138, inlinedAt: !3572)
!3764 = !DILocation(line: 553, column: 5, scope: !3127, inlinedAt: !3566)
!3765 = !DILocation(line: 553, column: 41, scope: !3127, inlinedAt: !3566)
!3766 = !DILocation(line: 554, column: 5, scope: !3127, inlinedAt: !3566)
!3767 = !DILocation(line: 554, column: 12, scope: !3127, inlinedAt: !3566)
!3768 = !DILocation(line: 448, column: 31, scope: !3122, inlinedAt: !3565)
!3769 = !DILocation(line: 448, column: 34, scope: !3122, inlinedAt: !3565)
!3770 = !DILocation(line: 448, column: 14, scope: !3122, inlinedAt: !3565)
!3771 = !DILocation(line: 450, column: 22, scope: !3122, inlinedAt: !3565)
!3772 = !DILocation(line: 450, column: 25, scope: !3122, inlinedAt: !3565)
!3773 = !DILocation(line: 450, column: 30, scope: !3122, inlinedAt: !3565)
!3774 = !DILocation(line: 450, column: 36, scope: !3122, inlinedAt: !3565)
!3775 = !DILocation(line: 450, column: 8, scope: !3122, inlinedAt: !3565)
!3776 = !DILocation(line: 450, column: 6, scope: !3122, inlinedAt: !3565)
!3777 = !DILocation(line: 451, column: 9, scope: !3122, inlinedAt: !3565)
!3778 = !DILocation(line: 552, column: 3, scope: !3127, inlinedAt: !3566)
!3779 = !DILocation(line: 557, column: 19, scope: !3129, inlinedAt: !3566)
!3780 = !DILocation(line: 557, column: 25, scope: !3129, inlinedAt: !3566)
!3781 = !DILocation(line: 557, column: 9, scope: !3129, inlinedAt: !3566)
!3782 = !DILocation(line: 557, column: 2, scope: !3129, inlinedAt: !3566)
!3783 = !DILocation(line: 558, column: 1, scope: !3129, inlinedAt: !3566)
!3784 = !DILocation(line: 591, column: 3, scope: !3567)
!3785 = !DILocation(line: 592, column: 19, scope: !3563)
!3786 = !DILocation(line: 592, column: 26, scope: !3563)
!3787 = !DILocation(line: 592, column: 9, scope: !3563)
!3788 = !DILocation(line: 592, column: 2, scope: !3563)
!3789 = !DILocation(line: 593, column: 1, scope: !3563)
!3790 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3791, file: !3791, line: 52, type: !3792, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3791 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!1002, !1002}
!3794 = !DILocalVariable(name: "overflow", arg: 1, scope: !3790, file: !3791, line: 52, type: !1002)
!3795 = !DILocation(line: 52, column: 60, scope: !3790)
!3796 = !DILocation(line: 54, column: 9, scope: !3790)
!3797 = !DILocation(line: 54, column: 2, scope: !3790)
!3798 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2852, file: !2852, line: 656, type: !3799, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null}
!3801 = !DILocalVariable(name: "__edi", scope: !3802, file: !2852, line: 658, type: !89)
!3802 = distinct !DILexicalBlock(scope: !3798, file: !2852, line: 658, column: 2)
!3803 = !DILocation(line: 658, column: 2, scope: !3802)
!3804 = !DILocalVariable(name: "__esi", scope: !3802, file: !2852, line: 658, type: !89)
!3805 = !DILocalVariable(name: "__edx", scope: !3802, file: !2852, line: 658, type: !89)
!3806 = !DILocalVariable(name: "__ecx", scope: !3802, file: !2852, line: 658, type: !89)
!3807 = !DILocalVariable(name: "__eax", scope: !3802, file: !2852, line: 658, type: !89)
!3808 = !{i32 -2145752889, i32 -2145752157, i32 -2145751923, i32 -2145751872, i32 -2145751844, i32 -2145751819, i32 -2145752135, i32 -2145752122, i32 -2145751684, i32 -2145751565, i32 -2145752030, i32 -2145752003, i32 -2145751975, i32 -2145751945}
!3809 = !DILocation(line: 659, column: 1, scope: !3798)
!3810 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !2852, file: !2852, line: 661, type: !3799, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3811 = !DILocalVariable(name: "__edi", scope: !3812, file: !2852, line: 663, type: !89)
!3812 = distinct !DILexicalBlock(scope: !3810, file: !2852, line: 663, column: 2)
!3813 = !DILocation(line: 663, column: 2, scope: !3812)
!3814 = !DILocalVariable(name: "__esi", scope: !3812, file: !2852, line: 663, type: !89)
!3815 = !DILocalVariable(name: "__edx", scope: !3812, file: !2852, line: 663, type: !89)
!3816 = !DILocalVariable(name: "__ecx", scope: !3812, file: !2852, line: 663, type: !89)
!3817 = !DILocalVariable(name: "__eax", scope: !3812, file: !2852, line: 663, type: !89)
!3818 = !{i32 -2145750305, i32 -2145749575, i32 -2145749341, i32 -2145749290, i32 -2145749262, i32 -2145749237, i32 -2145749553, i32 -2145749540, i32 -2145749102, i32 -2145748983, i32 -2145749448, i32 -2145749421, i32 -2145749393, i32 -2145749363}
!3819 = !DILocation(line: 664, column: 1, scope: !3810)
!3820 = distinct !DISubprogram(name: "__list_del_entry", scope: !2544, file: !2544, line: 130, type: !2545, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3821 = !DILocalVariable(name: "entry", arg: 1, scope: !3820, file: !2544, line: 130, type: !77)
!3822 = !DILocation(line: 130, column: 55, scope: !3820)
!3823 = !DILocation(line: 132, column: 30, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !2544, line: 132, column: 6)
!3825 = !DILocation(line: 132, column: 7, scope: !3824)
!3826 = !DILocation(line: 132, column: 6, scope: !3820)
!3827 = !DILocation(line: 133, column: 3, scope: !3824)
!3828 = !DILocation(line: 135, column: 13, scope: !3820)
!3829 = !DILocation(line: 135, column: 20, scope: !3820)
!3830 = !DILocation(line: 135, column: 26, scope: !3820)
!3831 = !DILocation(line: 135, column: 33, scope: !3820)
!3832 = !DILocation(line: 135, column: 2, scope: !3820)
!3833 = !DILocation(line: 136, column: 1, scope: !3820)
!3834 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2544, file: !2544, line: 51, type: !3835, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!1002, !77}
!3837 = !DILocalVariable(name: "entry", arg: 1, scope: !3834, file: !2544, line: 51, type: !77)
!3838 = !DILocation(line: 51, column: 61, scope: !3834)
!3839 = !DILocation(line: 53, column: 2, scope: !3834)
!3840 = distinct !DISubprogram(name: "__list_del", scope: !2544, file: !2544, line: 110, type: !2724, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3841 = !DILocalVariable(name: "prev", arg: 1, scope: !3840, file: !2544, line: 110, type: !77)
!3842 = !DILocation(line: 110, column: 50, scope: !3840)
!3843 = !DILocalVariable(name: "next", arg: 2, scope: !3840, file: !2544, line: 110, type: !77)
!3844 = !DILocation(line: 110, column: 75, scope: !3840)
!3845 = !DILocation(line: 112, column: 15, scope: !3840)
!3846 = !DILocation(line: 112, column: 2, scope: !3840)
!3847 = !DILocation(line: 112, column: 8, scope: !3840)
!3848 = !DILocation(line: 112, column: 13, scope: !3840)
!3849 = !DILocation(line: 113, column: 2, scope: !3840)
!3850 = !DILocation(line: 113, column: 2, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3840, file: !2544, line: 113, column: 2)
!3852 = !DILocation(line: 113, column: 2, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3851, file: !2544, line: 113, column: 2)
!3854 = !DILocation(line: 113, column: 2, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !2544, line: 113, column: 2)
!3856 = !DILocation(line: 114, column: 1, scope: !3840)
!3857 = distinct !DISubprogram(name: "list_add", scope: !2544, file: !2544, line: 84, type: !2724, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3858 = !DILocalVariable(name: "new", arg: 1, scope: !3857, file: !2544, line: 84, type: !77)
!3859 = !DILocation(line: 84, column: 47, scope: !3857)
!3860 = !DILocalVariable(name: "head", arg: 2, scope: !3857, file: !2544, line: 84, type: !77)
!3861 = !DILocation(line: 84, column: 70, scope: !3857)
!3862 = !DILocation(line: 86, column: 13, scope: !3857)
!3863 = !DILocation(line: 86, column: 18, scope: !3857)
!3864 = !DILocation(line: 86, column: 24, scope: !3857)
!3865 = !DILocation(line: 86, column: 30, scope: !3857)
!3866 = !DILocation(line: 86, column: 2, scope: !3857)
!3867 = !DILocation(line: 87, column: 1, scope: !3857)
!3868 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2852, file: !2852, line: 646, type: !2853, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3869 = !DILocalVariable(name: "__ret", scope: !3870, file: !2852, line: 648, type: !89)
!3870 = distinct !DILexicalBlock(scope: !3868, file: !2852, line: 648, column: 9)
!3871 = !DILocation(line: 648, column: 9, scope: !3870)
!3872 = !DILocalVariable(name: "__edi", scope: !3870, file: !2852, line: 648, type: !89)
!3873 = !DILocalVariable(name: "__esi", scope: !3870, file: !2852, line: 648, type: !89)
!3874 = !DILocalVariable(name: "__edx", scope: !3870, file: !2852, line: 648, type: !89)
!3875 = !DILocalVariable(name: "__ecx", scope: !3870, file: !2852, line: 648, type: !89)
!3876 = !DILocalVariable(name: "__eax", scope: !3870, file: !2852, line: 648, type: !89)
!3877 = !DILocation(line: 648, column: 9, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !2852, line: 648, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !2852, line: 648, column: 9)
!3880 = !{i32 -2145759983, i32 -2145757668, i32 -2145757434, i32 -2145757383, i32 -2145757355, i32 -2145757330, i32 -2145757646, i32 -2145757633, i32 -2145757195, i32 -2145757076, i32 -2145757541, i32 -2145757514, i32 -2145757486, i32 -2145757456}
!3881 = !DILocalVariable(name: "__mask", scope: !3882, file: !2852, line: 648, type: !89)
!3882 = distinct !DILexicalBlock(scope: !3878, file: !2852, line: 648, column: 9)
!3883 = !DILocation(line: 648, column: 9, scope: !3882)
!3884 = !DILocation(line: 648, column: 9, scope: !3879)
!3885 = !DILocation(line: 648, column: 2, scope: !3868)
!3886 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2852, file: !2852, line: 651, type: !3887, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !151)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !89}
!3889 = !DILocalVariable(name: "f", arg: 1, scope: !3886, file: !2852, line: 651, type: !89)
!3890 = !DILocation(line: 651, column: 65, scope: !3886)
!3891 = !DILocalVariable(name: "__edi", scope: !3892, file: !2852, line: 653, type: !89)
!3892 = distinct !DILexicalBlock(scope: !3886, file: !2852, line: 653, column: 2)
!3893 = !DILocation(line: 653, column: 2, scope: !3892)
!3894 = !DILocalVariable(name: "__esi", scope: !3892, file: !2852, line: 653, type: !89)
!3895 = !DILocalVariable(name: "__edx", scope: !3892, file: !2852, line: 653, type: !89)
!3896 = !DILocalVariable(name: "__ecx", scope: !3892, file: !2852, line: 653, type: !89)
!3897 = !DILocalVariable(name: "__eax", scope: !3892, file: !2852, line: 653, type: !89)
!3898 = !{i32 -2145755516, i32 -2145754766, i32 -2145754532, i32 -2145754481, i32 -2145754453, i32 -2145754428, i32 -2145754744, i32 -2145754731, i32 -2145754293, i32 -2145754174, i32 -2145754639, i32 -2145754612, i32 -2145754584, i32 -2145754554}
!3899 = !DILocation(line: 654, column: 1, scope: !3886)
