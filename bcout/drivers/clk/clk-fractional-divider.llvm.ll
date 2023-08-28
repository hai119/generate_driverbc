; ModuleID = '../bcout/drivers/clk/clk-fractional-divider.llvm.bc'
source_filename = "drivers/clk/clk-fractional-divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, {}*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, {}*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
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
%struct.kmem_cache = type opaque
%struct.clk_fractional_divider = type { %struct.clk_hw, i8*, i8, i8, i32, i8, i8, i32, i8, void (%struct.clk_hw*, i64, i64*, i64*, i64*)*, %struct.spinlock* }
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

@clk_fractional_divider_ops = dso_local constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_fd_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_fd_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_fd_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_fd_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !237 {
entry:
  %lock.addr.i52 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i52, metadata !238, metadata !DIExpression()), !dbg !243
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !246, metadata !DIExpression()), !dbg !247
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !248, metadata !DIExpression()), !dbg !254
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fractional_divider*, align 8
  %flags = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %val = alloca i32, align 4
  %ret = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !262, metadata !DIExpression()), !dbg !263
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !268, metadata !DIExpression()), !dbg !270
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !270
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !270
  store i8* %1, i8** %__mptr, align 8, !dbg !270
  br label %do.body, !dbg !270

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !271

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !270
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !270
  %3 = bitcast i8* %add.ptr to %struct.clk_fractional_divider*, !dbg !270
  store %struct.clk_fractional_divider* %3, %struct.clk_fractional_divider** %tmp, align 8, !dbg !271
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %tmp, align 8, !dbg !270
  store %struct.clk_fractional_divider* %4, %struct.clk_fractional_divider** %fd, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !273, metadata !DIExpression()), !dbg !274
  store i64 0, i64* %flags, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i64* %m, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i64* %n, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %val, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !281, metadata !DIExpression()), !dbg !282
  %5 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !283
  %lock = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %5, i32 0, i32 10, !dbg !284
  %6 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !284
  %tobool = icmp ne %struct.spinlock* %6, null, !dbg !283
  br i1 %tobool, label %if.then, label %if.else, !dbg !285

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !286

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !287

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !291, metadata !DIExpression()), !dbg !290
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !290
  %conv = zext i1 %cmp to i32, !dbg !290
  store i32 1, i32* %tmp3, align 4, !dbg !290
  %7 = load i32, i32* %tmp3, align 4, !dbg !290
  br label %do.body4, !dbg !292

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !293

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !294

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !296, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !300, metadata !DIExpression()), !dbg !299
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !299
  %conv10 = zext i1 %cmp9 to i32, !dbg !299
  store i32 1, i32* %tmp11, align 4, !dbg !299
  %8 = load i32, i32* %tmp11, align 4, !dbg !299
  %call = call i64 @arch_local_irq_save() #8, !dbg !301
  store i64 %call, i64* %flags, align 8, !dbg !301
  br label %do.end12, !dbg !301

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !294

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !293

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !302, !srcloc !303
  br label %do.body15, !dbg !302

do.body15:                                        ; preds = %do.body14
  %9 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !304
  %lock16 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %9, i32 0, i32 10, !dbg !304
  %10 = load %struct.spinlock*, %struct.spinlock** %lock16, align 8, !dbg !304
  store %struct.spinlock* %10, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !305
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !306
  %rlock.i = bitcast %union.anon* %12 to %struct.raw_spinlock*, !dbg !306
  br label %do.end18, !dbg !304

do.end18:                                         ; preds = %do.body15
  br label %do.end19, !dbg !302

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !293

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !292

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !287

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !287

if.else:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end22
  %13 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !307
  %call23 = call i32 @clk_fd_readl(%struct.clk_fractional_divider* %13) #8, !dbg !308
  store i32 %call23, i32* %val, align 4, !dbg !309
  %14 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !310
  %lock24 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %14, i32 0, i32 10, !dbg !311
  %15 = load %struct.spinlock*, %struct.spinlock** %lock24, align 8, !dbg !311
  %tobool25 = icmp ne %struct.spinlock* %15, null, !dbg !310
  br i1 %tobool25, label %if.then26, label %if.else28, !dbg !312

if.then26:                                        ; preds = %if.end
  %16 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !313
  %lock27 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %16, i32 0, i32 10, !dbg !314
  %17 = load %struct.spinlock*, %struct.spinlock** %lock27, align 8, !dbg !314
  %18 = load i64, i64* %flags, align 8, !dbg !315
  store %struct.spinlock* %17, %struct.spinlock** %lock.addr.i52, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !223, metadata !316, metadata !DIExpression()) #4, !dbg !319
  call void @llvm.dbg.declare(metadata !223, metadata !320, metadata !DIExpression()) #4, !dbg !319
  store i32 1, i32* %tmp.i, align 4, !dbg !319
  %19 = load i32, i32* %tmp.i, align 4, !dbg !319
  call void @llvm.dbg.declare(metadata !223, metadata !321, metadata !DIExpression()) #4, !dbg !326
  call void @llvm.dbg.declare(metadata !223, metadata !327, metadata !DIExpression()) #4, !dbg !326
  store i32 1, i32* %tmp8.i, align 4, !dbg !326
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !326
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !328
  call void @arch_local_irq_restore(i64 %21) #9, !dbg !328
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !329, !srcloc !331
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i52, align 8, !dbg !332
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !332
  %rlock.i53 = bitcast %union.anon* %23 to %struct.raw_spinlock*, !dbg !332
  br label %if.end29, !dbg !334

if.else28:                                        ; preds = %if.end
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then26
  %24 = load i32, i32* %val, align 4, !dbg !335
  %25 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !336
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %25, i32 0, i32 4, !dbg !337
  %26 = load i32, i32* %mmask, align 4, !dbg !337
  %and = and i32 %24, %26, !dbg !338
  %27 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !339
  %mshift = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %27, i32 0, i32 2, !dbg !340
  %28 = load i8, i8* %mshift, align 8, !dbg !340
  %conv30 = zext i8 %28 to i32, !dbg !339
  %shr = lshr i32 %and, %conv30, !dbg !341
  %conv31 = zext i32 %shr to i64, !dbg !342
  store i64 %conv31, i64* %m, align 8, !dbg !343
  %29 = load i32, i32* %val, align 4, !dbg !344
  %30 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !345
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %30, i32 0, i32 7, !dbg !346
  %31 = load i32, i32* %nmask, align 4, !dbg !346
  %and32 = and i32 %29, %31, !dbg !347
  %32 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !348
  %nshift = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %32, i32 0, i32 5, !dbg !349
  %33 = load i8, i8* %nshift, align 8, !dbg !349
  %conv33 = zext i8 %33 to i32, !dbg !348
  %shr34 = lshr i32 %and32, %conv33, !dbg !350
  %conv35 = zext i32 %shr34 to i64, !dbg !351
  store i64 %conv35, i64* %n, align 8, !dbg !352
  %34 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !353
  %flags36 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %34, i32 0, i32 8, !dbg !355
  %35 = load i8, i8* %flags36, align 8, !dbg !355
  %conv37 = zext i8 %35 to i64, !dbg !353
  %and38 = and i64 %conv37, 1, !dbg !356
  %tobool39 = icmp ne i64 %and38, 0, !dbg !356
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !357

if.then40:                                        ; preds = %if.end29
  %36 = load i64, i64* %m, align 8, !dbg !358
  %inc = add i64 %36, 1, !dbg !358
  store i64 %inc, i64* %m, align 8, !dbg !358
  %37 = load i64, i64* %n, align 8, !dbg !360
  %inc41 = add i64 %37, 1, !dbg !360
  store i64 %inc41, i64* %n, align 8, !dbg !360
  br label %if.end42, !dbg !361

if.end42:                                         ; preds = %if.then40, %if.end29
  %38 = load i64, i64* %n, align 8, !dbg !362
  %tobool43 = icmp ne i64 %38, 0, !dbg !362
  br i1 %tobool43, label %lor.lhs.false, label %if.then45, !dbg !364

lor.lhs.false:                                    ; preds = %if.end42
  %39 = load i64, i64* %m, align 8, !dbg !365
  %tobool44 = icmp ne i64 %39, 0, !dbg !365
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !366

if.then45:                                        ; preds = %lor.lhs.false, %if.end42
  %40 = load i64, i64* %parent_rate.addr, align 8, !dbg !367
  store i64 %40, i64* %retval, align 8, !dbg !368
  br label %return, !dbg !368

if.end46:                                         ; preds = %lor.lhs.false
  %41 = load i64, i64* %parent_rate.addr, align 8, !dbg !369
  %42 = load i64, i64* %m, align 8, !dbg !370
  %mul = mul i64 %41, %42, !dbg !371
  store i64 %mul, i64* %ret, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !373, metadata !DIExpression()), !dbg !376
  %43 = load i64, i64* %n, align 8, !dbg !376
  %conv47 = trunc i64 %43 to i32, !dbg !376
  store i32 %conv47, i32* %__base, align 4, !dbg !376
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !377, metadata !DIExpression()), !dbg !376
  %44 = load i64, i64* %ret, align 8, !dbg !376
  %45 = load i32, i32* %__base, align 4, !dbg !376
  %conv48 = zext i32 %45 to i64, !dbg !376
  %rem = urem i64 %44, %conv48, !dbg !376
  %conv49 = trunc i64 %rem to i32, !dbg !376
  store i32 %conv49, i32* %__rem, align 4, !dbg !376
  %46 = load i64, i64* %ret, align 8, !dbg !376
  %47 = load i32, i32* %__base, align 4, !dbg !376
  %conv50 = zext i32 %47 to i64, !dbg !376
  %div = udiv i64 %46, %conv50, !dbg !376
  store i64 %div, i64* %ret, align 8, !dbg !376
  %48 = load i32, i32* %__rem, align 4, !dbg !376
  store i32 %48, i32* %tmp51, align 4, !dbg !376
  %49 = load i32, i32* %tmp51, align 4, !dbg !376
  %50 = load i64, i64* %ret, align 8, !dbg !378
  store i64 %50, i64* %retval, align 8, !dbg !379
  br label %return, !dbg !379

return:                                           ; preds = %if.end46, %if.then45
  %51 = load i64, i64* %retval, align 8, !dbg !380
  ret i64 %51, !dbg !380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_fd_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %parent_rate) #0 !dbg !381 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64*, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fractional_divider*, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %ret = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i64* %parent_rate, i64** %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %parent_rate.addr, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !390, metadata !DIExpression()), !dbg !392
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !392
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !392
  store i8* %1, i8** %__mptr, align 8, !dbg !392
  br label %do.body, !dbg !392

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !393

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !392
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !392
  %3 = bitcast i8* %add.ptr to %struct.clk_fractional_divider*, !dbg !392
  store %struct.clk_fractional_divider* %3, %struct.clk_fractional_divider** %tmp, align 8, !dbg !393
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %tmp, align 8, !dbg !392
  store %struct.clk_fractional_divider* %4, %struct.clk_fractional_divider** %fd, align 8, !dbg !389
  call void @llvm.dbg.declare(metadata i64* %m, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i64* %n, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !399, metadata !DIExpression()), !dbg !400
  %5 = load i64, i64* %rate.addr, align 8, !dbg !401
  %tobool = icmp ne i64 %5, 0, !dbg !401
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !403

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !404
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* %6) #8, !dbg !404
  %and = and i64 %call, 4, !dbg !404
  %tobool1 = icmp ne i64 %and, 0, !dbg !404
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !405

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i64, i64* %rate.addr, align 8, !dbg !406
  %8 = load i64*, i64** %parent_rate.addr, align 8, !dbg !407
  %9 = load i64, i64* %8, align 8, !dbg !408
  %cmp = icmp uge i64 %7, %9, !dbg !409
  br i1 %cmp, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %land.lhs.true, %do.end
  %10 = load i64*, i64** %parent_rate.addr, align 8, !dbg !411
  %11 = load i64, i64* %10, align 8, !dbg !412
  store i64 %11, i64* %retval, align 8, !dbg !413
  br label %return, !dbg !413

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !414
  %approximation = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %12, i32 0, i32 9, !dbg !416
  %13 = load void (%struct.clk_hw*, i64, i64*, i64*, i64*)*, void (%struct.clk_hw*, i64, i64*, i64*, i64*)** %approximation, align 8, !dbg !416
  %tobool2 = icmp ne void (%struct.clk_hw*, i64, i64*, i64*, i64*)* %13, null, !dbg !414
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !417

if.then3:                                         ; preds = %if.end
  %14 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !418
  %approximation4 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %14, i32 0, i32 9, !dbg !419
  %15 = load void (%struct.clk_hw*, i64, i64*, i64*, i64*)*, void (%struct.clk_hw*, i64, i64*, i64*, i64*)** %approximation4, align 8, !dbg !419
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !420
  %17 = load i64, i64* %rate.addr, align 8, !dbg !421
  %18 = load i64*, i64** %parent_rate.addr, align 8, !dbg !422
  call void %15(%struct.clk_hw* %16, i64 %17, i64* %18, i64* %m, i64* %n) #8, !dbg !418
  br label %if.end5, !dbg !418

if.else:                                          ; preds = %if.end
  %19 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !423
  %20 = load i64, i64* %rate.addr, align 8, !dbg !424
  %21 = load i64*, i64** %parent_rate.addr, align 8, !dbg !425
  call void @clk_fd_general_approximation(%struct.clk_hw* %19, i64 %20, i64* %21, i64* %m, i64* %n) #8, !dbg !426
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %22 = load i64*, i64** %parent_rate.addr, align 8, !dbg !427
  %23 = load i64, i64* %22, align 8, !dbg !428
  %24 = load i64, i64* %m, align 8, !dbg !429
  %mul = mul i64 %23, %24, !dbg !430
  store i64 %mul, i64* %ret, align 8, !dbg !431
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !432, metadata !DIExpression()), !dbg !434
  %25 = load i64, i64* %n, align 8, !dbg !434
  %conv = trunc i64 %25 to i32, !dbg !434
  store i32 %conv, i32* %__base, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !435, metadata !DIExpression()), !dbg !434
  %26 = load i64, i64* %ret, align 8, !dbg !434
  %27 = load i32, i32* %__base, align 4, !dbg !434
  %conv6 = zext i32 %27 to i64, !dbg !434
  %rem = urem i64 %26, %conv6, !dbg !434
  %conv7 = trunc i64 %rem to i32, !dbg !434
  store i32 %conv7, i32* %__rem, align 4, !dbg !434
  %28 = load i64, i64* %ret, align 8, !dbg !434
  %29 = load i32, i32* %__base, align 4, !dbg !434
  %conv8 = zext i32 %29 to i64, !dbg !434
  %div = udiv i64 %28, %conv8, !dbg !434
  store i64 %div, i64* %ret, align 8, !dbg !434
  %30 = load i32, i32* %__rem, align 4, !dbg !434
  store i32 %30, i32* %tmp9, align 4, !dbg !434
  %31 = load i32, i32* %tmp9, align 4, !dbg !434
  %32 = load i64, i64* %ret, align 8, !dbg !436
  store i64 %32, i64* %retval, align 8, !dbg !437
  br label %return, !dbg !437

return:                                           ; preds = %if.end5, %if.then
  %33 = load i64, i64* %retval, align 8, !dbg !438
  ret i64 %33, !dbg !438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_fd_set_rate(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate) #0 !dbg !439 {
entry:
  %lock.addr.i56 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i56, metadata !238, metadata !DIExpression()), !dbg !440
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !246, metadata !DIExpression()), !dbg !443
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !248, metadata !DIExpression()), !dbg !444
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fractional_divider*, align 8
  %flags = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %val = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %__dummy22 = alloca i64, align 8
  %__dummy223 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !460, metadata !DIExpression()), !dbg !462
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !462
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !462
  store i8* %1, i8** %__mptr, align 8, !dbg !462
  br label %do.body, !dbg !462

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !463

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !462
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !462
  %3 = bitcast i8* %add.ptr to %struct.clk_fractional_divider*, !dbg !462
  store %struct.clk_fractional_divider* %3, %struct.clk_fractional_divider** %tmp, align 8, !dbg !463
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %tmp, align 8, !dbg !462
  store %struct.clk_fractional_divider* %4, %struct.clk_fractional_divider** %fd, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 0, i64* %flags, align 8, !dbg !466
  call void @llvm.dbg.declare(metadata i64* %m, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i64* %n, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %val, metadata !471, metadata !DIExpression()), !dbg !472
  %5 = load i64, i64* %rate.addr, align 8, !dbg !473
  %6 = load i64, i64* %parent_rate.addr, align 8, !dbg !474
  %7 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !475
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %7, i32 0, i32 3, !dbg !475
  %8 = load i8, i8* %mwidth, align 1, !dbg !475
  %conv = zext i8 %8 to i32, !dbg !475
  %sub = sub i32 %conv, 1, !dbg !475
  %sub1 = sub i32 63, %sub, !dbg !475
  %sh_prom = zext i32 %sub1 to i64, !dbg !475
  %shr = lshr i64 -1, %sh_prom, !dbg !475
  %and = and i64 -1, %shr, !dbg !475
  %add = add i64 0, %and, !dbg !475
  %9 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !476
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %9, i32 0, i32 6, !dbg !476
  %10 = load i8, i8* %nwidth, align 1, !dbg !476
  %conv2 = zext i8 %10 to i32, !dbg !476
  %sub3 = sub i32 %conv2, 1, !dbg !476
  %sub4 = sub i32 63, %sub3, !dbg !476
  %sh_prom5 = zext i32 %sub4 to i64, !dbg !476
  %shr6 = lshr i64 -1, %sh_prom5, !dbg !476
  %and7 = and i64 -1, %shr6, !dbg !476
  %add8 = add i64 0, %and7, !dbg !476
  call void @rational_best_approximation(i64 %5, i64 %6, i64 %add, i64 %add8, i64* %m, i64* %n) #8, !dbg !477
  %11 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !478
  %flags9 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %11, i32 0, i32 8, !dbg !480
  %12 = load i8, i8* %flags9, align 8, !dbg !480
  %conv10 = zext i8 %12 to i64, !dbg !478
  %and11 = and i64 %conv10, 1, !dbg !481
  %tobool = icmp ne i64 %and11, 0, !dbg !481
  br i1 %tobool, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %do.end
  %13 = load i64, i64* %m, align 8, !dbg !483
  %dec = add i64 %13, -1, !dbg !483
  store i64 %dec, i64* %m, align 8, !dbg !483
  %14 = load i64, i64* %n, align 8, !dbg !485
  %dec12 = add i64 %14, -1, !dbg !485
  store i64 %dec12, i64* %n, align 8, !dbg !485
  br label %if.end, !dbg !486

if.end:                                           ; preds = %if.then, %do.end
  %15 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !487
  %lock = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %15, i32 0, i32 10, !dbg !488
  %16 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !488
  %tobool13 = icmp ne %struct.spinlock* %16, null, !dbg !487
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !489

if.then14:                                        ; preds = %if.end
  br label %do.body15, !dbg !490

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !491

do.body16:                                        ; preds = %do.body15
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !495, metadata !DIExpression()), !dbg !494
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !494
  %conv17 = zext i1 %cmp to i32, !dbg !494
  store i32 1, i32* %tmp18, align 4, !dbg !494
  %17 = load i32, i32* %tmp18, align 4, !dbg !494
  br label %do.body19, !dbg !496

do.body19:                                        ; preds = %do.body16
  br label %do.body20, !dbg !497

do.body20:                                        ; preds = %do.body19
  br label %do.body21, !dbg !498

do.body21:                                        ; preds = %do.body20
  call void @llvm.dbg.declare(metadata i64* %__dummy22, metadata !500, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata i64* %__dummy223, metadata !504, metadata !DIExpression()), !dbg !503
  %cmp24 = icmp eq i64* %__dummy22, %__dummy223, !dbg !503
  %conv25 = zext i1 %cmp24 to i32, !dbg !503
  store i32 1, i32* %tmp26, align 4, !dbg !503
  %18 = load i32, i32* %tmp26, align 4, !dbg !503
  %call = call i64 @arch_local_irq_save() #8, !dbg !505
  store i64 %call, i64* %flags, align 8, !dbg !505
  br label %do.end27, !dbg !505

do.end27:                                         ; preds = %do.body21
  br label %do.end28, !dbg !498

do.end28:                                         ; preds = %do.end27
  br label %do.body29, !dbg !497

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !506, !srcloc !507
  br label %do.body30, !dbg !506

do.body30:                                        ; preds = %do.body29
  %19 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !508
  %lock31 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %19, i32 0, i32 10, !dbg !508
  %20 = load %struct.spinlock*, %struct.spinlock** %lock31, align 8, !dbg !508
  store %struct.spinlock* %20, %struct.spinlock** %lock.addr.i, align 8
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !509
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !510
  %rlock.i = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !510
  br label %do.end33, !dbg !508

do.end33:                                         ; preds = %do.body30
  br label %do.end34, !dbg !506

do.end34:                                         ; preds = %do.end33
  br label %do.end35, !dbg !497

do.end35:                                         ; preds = %do.end34
  br label %do.end36, !dbg !496

do.end36:                                         ; preds = %do.end35
  br label %do.end37, !dbg !491

do.end37:                                         ; preds = %do.end36
  br label %if.end38, !dbg !491

if.else:                                          ; preds = %if.end
  br label %if.end38

if.end38:                                         ; preds = %if.else, %do.end37
  %23 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !511
  %call39 = call i32 @clk_fd_readl(%struct.clk_fractional_divider* %23) #8, !dbg !512
  store i32 %call39, i32* %val, align 4, !dbg !513
  %24 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !514
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %24, i32 0, i32 4, !dbg !515
  %25 = load i32, i32* %mmask, align 4, !dbg !515
  %26 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !516
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %26, i32 0, i32 7, !dbg !517
  %27 = load i32, i32* %nmask, align 4, !dbg !517
  %or = or i32 %25, %27, !dbg !518
  %neg = xor i32 %or, -1, !dbg !519
  %28 = load i32, i32* %val, align 4, !dbg !520
  %and40 = and i32 %28, %neg, !dbg !520
  store i32 %and40, i32* %val, align 4, !dbg !520
  %29 = load i64, i64* %m, align 8, !dbg !521
  %30 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !522
  %mshift = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %30, i32 0, i32 2, !dbg !523
  %31 = load i8, i8* %mshift, align 8, !dbg !523
  %conv41 = zext i8 %31 to i32, !dbg !522
  %sh_prom42 = zext i32 %conv41 to i64, !dbg !524
  %shl = shl i64 %29, %sh_prom42, !dbg !524
  %32 = load i64, i64* %n, align 8, !dbg !525
  %33 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !526
  %nshift = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %33, i32 0, i32 5, !dbg !527
  %34 = load i8, i8* %nshift, align 8, !dbg !527
  %conv43 = zext i8 %34 to i32, !dbg !526
  %sh_prom44 = zext i32 %conv43 to i64, !dbg !528
  %shl45 = shl i64 %32, %sh_prom44, !dbg !528
  %or46 = or i64 %shl, %shl45, !dbg !529
  %35 = load i32, i32* %val, align 4, !dbg !530
  %conv47 = zext i32 %35 to i64, !dbg !530
  %or48 = or i64 %conv47, %or46, !dbg !530
  %conv49 = trunc i64 %or48 to i32, !dbg !530
  store i32 %conv49, i32* %val, align 4, !dbg !530
  %36 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !531
  %37 = load i32, i32* %val, align 4, !dbg !532
  call void @clk_fd_writel(%struct.clk_fractional_divider* %36, i32 %37) #8, !dbg !533
  %38 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !534
  %lock50 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %38, i32 0, i32 10, !dbg !535
  %39 = load %struct.spinlock*, %struct.spinlock** %lock50, align 8, !dbg !535
  %tobool51 = icmp ne %struct.spinlock* %39, null, !dbg !534
  br i1 %tobool51, label %if.then52, label %if.else54, !dbg !536

if.then52:                                        ; preds = %if.end38
  %40 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !537
  %lock53 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %40, i32 0, i32 10, !dbg !538
  %41 = load %struct.spinlock*, %struct.spinlock** %lock53, align 8, !dbg !538
  %42 = load i64, i64* %flags, align 8, !dbg !539
  store %struct.spinlock* %41, %struct.spinlock** %lock.addr.i56, align 8
  store i64 %42, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !223, metadata !316, metadata !DIExpression()) #4, !dbg !540
  call void @llvm.dbg.declare(metadata !223, metadata !320, metadata !DIExpression()) #4, !dbg !540
  store i32 1, i32* %tmp.i, align 4, !dbg !540
  %43 = load i32, i32* %tmp.i, align 4, !dbg !540
  call void @llvm.dbg.declare(metadata !223, metadata !321, metadata !DIExpression()) #4, !dbg !541
  call void @llvm.dbg.declare(metadata !223, metadata !327, metadata !DIExpression()) #4, !dbg !541
  store i32 1, i32* %tmp8.i, align 4, !dbg !541
  %44 = load i32, i32* %tmp8.i, align 4, !dbg !541
  %45 = load i64, i64* %flags.addr.i, align 8, !dbg !542
  call void @arch_local_irq_restore(i64 %45) #9, !dbg !542
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !543, !srcloc !331
  %46 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i56, align 8, !dbg !544
  %47 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %46, i32 0, i32 0, !dbg !544
  %rlock.i57 = bitcast %union.anon* %47 to %struct.raw_spinlock*, !dbg !544
  br label %if.end55, !dbg !545

if.else54:                                        ; preds = %if.end38
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then52
  ret i32 0, !dbg !546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @clk_hw_register_fractional_divider(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i8* %reg, i8 zeroext %mshift, i8 zeroext %mwidth, i8 zeroext %nshift, i8 zeroext %nwidth, i8 zeroext %clk_divider_flags, %struct.spinlock* %lock) #0 !dbg !547 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %mshift.addr = alloca i8, align 1
  %mwidth.addr = alloca i8, align 1
  %nshift.addr = alloca i8, align 1
  %nwidth.addr = alloca i8, align 1
  %clk_divider_flags.addr = alloca i8, align 1
  %lock.addr = alloca %struct.spinlock*, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i8 %mshift, i8* %mshift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mshift.addr, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i8 %mwidth, i8* %mwidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mwidth.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  store i8 %nshift, i8* %nshift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %nshift.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i8 %nwidth, i8* %nwidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %nwidth.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  store i8 %clk_divider_flags, i8* %clk_divider_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_divider_flags.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2530, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2532, metadata !DIExpression()), !dbg !2533
  %call = call i8* @kzalloc(i64 72, i32 3264) #8, !dbg !2534
  %0 = bitcast i8* %call to %struct.clk_fractional_divider*, !dbg !2534
  store %struct.clk_fractional_divider* %0, %struct.clk_fractional_divider** %fd, align 8, !dbg !2535
  %1 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2536
  %tobool = icmp ne %struct.clk_fractional_divider* %1, null, !dbg !2536
  br i1 %tobool, label %if.end, label %if.then, !dbg !2538

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2539
  %2 = bitcast i8* %call1 to %struct.clk_hw*, !dbg !2539
  store %struct.clk_hw* %2, %struct.clk_hw** %retval, align 8, !dbg !2540
  br label %return, !dbg !2540

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8, !dbg !2541
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2542
  store i8* %3, i8** %name2, align 8, !dbg !2543
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !2544
  store %struct.clk_ops* bitcast ({ i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }* @clk_fractional_divider_ops to %struct.clk_ops*), %struct.clk_ops** %ops, align 8, !dbg !2545
  %4 = load i64, i64* %flags.addr, align 8, !dbg !2546
  %flags3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2547
  store i64 %4, i64* %flags3, align 8, !dbg !2548
  %5 = load i8*, i8** %parent_name.addr, align 8, !dbg !2549
  %tobool4 = icmp ne i8* %5, null, !dbg !2549
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !2549

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2549

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %parent_name.addr, %cond.true ], [ null, %cond.false ], !dbg !2549
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !2550
  store i8** %cond, i8*** %parent_names, align 8, !dbg !2551
  %6 = load i8*, i8** %parent_name.addr, align 8, !dbg !2552
  %tobool5 = icmp ne i8* %6, null, !dbg !2552
  %7 = zext i1 %tobool5 to i64, !dbg !2552
  %cond6 = select i1 %tobool5, i32 1, i32 0, !dbg !2552
  %conv = trunc i32 %cond6 to i8, !dbg !2552
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2553
  store i8 %conv, i8* %num_parents, align 8, !dbg !2554
  %8 = load i8*, i8** %reg.addr, align 8, !dbg !2555
  %9 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2556
  %reg7 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %9, i32 0, i32 1, !dbg !2557
  store i8* %8, i8** %reg7, align 8, !dbg !2558
  %10 = load i8, i8* %mshift.addr, align 1, !dbg !2559
  %11 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2560
  %mshift8 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %11, i32 0, i32 2, !dbg !2561
  store i8 %10, i8* %mshift8, align 8, !dbg !2562
  %12 = load i8, i8* %mwidth.addr, align 1, !dbg !2563
  %13 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2564
  %mwidth9 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %13, i32 0, i32 3, !dbg !2565
  store i8 %12, i8* %mwidth9, align 1, !dbg !2566
  %14 = load i8, i8* %mwidth.addr, align 1, !dbg !2567
  %conv10 = zext i8 %14 to i32, !dbg !2567
  %sub = sub i32 %conv10, 1, !dbg !2567
  %sub11 = sub i32 63, %sub, !dbg !2567
  %sh_prom = zext i32 %sub11 to i64, !dbg !2567
  %shr = lshr i64 -1, %sh_prom, !dbg !2567
  %and = and i64 -1, %shr, !dbg !2567
  %add = add i64 0, %and, !dbg !2567
  %15 = load i8, i8* %mshift.addr, align 1, !dbg !2568
  %conv12 = zext i8 %15 to i32, !dbg !2568
  %sh_prom13 = zext i32 %conv12 to i64, !dbg !2569
  %shl = shl i64 %add, %sh_prom13, !dbg !2569
  %conv14 = trunc i64 %shl to i32, !dbg !2567
  %16 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2570
  %mmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %16, i32 0, i32 4, !dbg !2571
  store i32 %conv14, i32* %mmask, align 4, !dbg !2572
  %17 = load i8, i8* %nshift.addr, align 1, !dbg !2573
  %18 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2574
  %nshift15 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %18, i32 0, i32 5, !dbg !2575
  store i8 %17, i8* %nshift15, align 8, !dbg !2576
  %19 = load i8, i8* %nwidth.addr, align 1, !dbg !2577
  %20 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2578
  %nwidth16 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %20, i32 0, i32 6, !dbg !2579
  store i8 %19, i8* %nwidth16, align 1, !dbg !2580
  %21 = load i8, i8* %nwidth.addr, align 1, !dbg !2581
  %conv17 = zext i8 %21 to i32, !dbg !2581
  %sub18 = sub i32 %conv17, 1, !dbg !2581
  %sub19 = sub i32 63, %sub18, !dbg !2581
  %sh_prom20 = zext i32 %sub19 to i64, !dbg !2581
  %shr21 = lshr i64 -1, %sh_prom20, !dbg !2581
  %and22 = and i64 -1, %shr21, !dbg !2581
  %add23 = add i64 0, %and22, !dbg !2581
  %22 = load i8, i8* %nshift.addr, align 1, !dbg !2582
  %conv24 = zext i8 %22 to i32, !dbg !2582
  %sh_prom25 = zext i32 %conv24 to i64, !dbg !2583
  %shl26 = shl i64 %add23, %sh_prom25, !dbg !2583
  %conv27 = trunc i64 %shl26 to i32, !dbg !2581
  %23 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2584
  %nmask = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %23, i32 0, i32 7, !dbg !2585
  store i32 %conv27, i32* %nmask, align 4, !dbg !2586
  %24 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !2587
  %25 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2588
  %flags28 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %25, i32 0, i32 8, !dbg !2589
  store i8 %24, i8* %flags28, align 8, !dbg !2590
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !2591
  %27 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2592
  %lock29 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %27, i32 0, i32 10, !dbg !2593
  store %struct.spinlock* %26, %struct.spinlock** %lock29, align 8, !dbg !2594
  %28 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2595
  %hw30 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %28, i32 0, i32 0, !dbg !2596
  %init31 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw30, i32 0, i32 2, !dbg !2597
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init31, align 8, !dbg !2598
  %29 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2599
  %hw32 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %29, i32 0, i32 0, !dbg !2600
  store %struct.clk_hw* %hw32, %struct.clk_hw** %hw, align 8, !dbg !2601
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2602
  %31 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2603
  %call33 = call i32 @clk_hw_register(%struct.device* %30, %struct.clk_hw* %31) #8, !dbg !2604
  store i32 %call33, i32* %ret, align 4, !dbg !2605
  %32 = load i32, i32* %ret, align 4, !dbg !2606
  %tobool34 = icmp ne i32 %32, 0, !dbg !2606
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !2608

if.then35:                                        ; preds = %cond.end
  %33 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2609
  %34 = bitcast %struct.clk_fractional_divider* %33 to i8*, !dbg !2609
  call void @kfree(i8* %34) #8, !dbg !2611
  %35 = load i32, i32* %ret, align 4, !dbg !2612
  %conv36 = sext i32 %35 to i64, !dbg !2612
  %call37 = call i8* @ERR_PTR(i64 %conv36) #8, !dbg !2613
  %36 = bitcast i8* %call37 to %struct.clk_hw*, !dbg !2613
  store %struct.clk_hw* %36, %struct.clk_hw** %hw, align 8, !dbg !2614
  br label %if.end38, !dbg !2615

if.end38:                                         ; preds = %if.then35, %cond.end
  %37 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2616
  store %struct.clk_hw* %37, %struct.clk_hw** %retval, align 8, !dbg !2617
  br label %return, !dbg !2617

return:                                           ; preds = %if.end38, %if.then
  %38 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2618
  ret %struct.clk_hw* %38, !dbg !2618
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2619 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2622, metadata !DIExpression()), !dbg !2626
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2632, metadata !DIExpression()), !dbg !2633
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2634, metadata !DIExpression()), !dbg !2635
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2636, metadata !DIExpression()), !dbg !2637
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2638, metadata !DIExpression()), !dbg !2642
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2644, metadata !DIExpression()), !dbg !2648
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2650, metadata !DIExpression()), !dbg !2654
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2659, metadata !DIExpression()), !dbg !2660
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2661, metadata !DIExpression()), !dbg !2662
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2663, metadata !DIExpression()), !dbg !2664
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2665, metadata !DIExpression()), !dbg !2666
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2667, metadata !DIExpression()), !dbg !2668
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2669, metadata !DIExpression()), !dbg !2670
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2671, metadata !DIExpression()), !dbg !2672
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2673, metadata !DIExpression()), !dbg !2674
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2677, metadata !DIExpression()), !dbg !2678
  %0 = load i64, i64* %size.addr, align 8, !dbg !2679
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2680
  %or = or i32 %1, 256, !dbg !2681
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2682
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #4, !dbg !2683
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2684

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2685
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2686
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2687

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2688
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2689
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2690
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2691
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2668
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2692
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2693
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2694
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2695
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2696
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2697
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !2698
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2698
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2698
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2698
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !2698
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2699
  br label %kmalloc.exit, !dbg !2699

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2700
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2701
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2701
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2703

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2704
  br label %kmalloc_index.exit.i, !dbg !2704

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2705
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2707
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2708

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2709
  br label %kmalloc_index.exit.i, !dbg !2709

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2710
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2712
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2713

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2714
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2715
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2716

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2717
  br label %kmalloc_index.exit.i, !dbg !2717

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2718
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2720
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2721

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2722
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2723
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2724

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2725
  br label %kmalloc_index.exit.i, !dbg !2725

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2726
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2728
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2729

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2730
  br label %kmalloc_index.exit.i, !dbg !2730

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2731
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2733
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2734

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2735
  br label %kmalloc_index.exit.i, !dbg !2735

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2736
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2738
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2739

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2740
  br label %kmalloc_index.exit.i, !dbg !2740

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2741
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2743
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2744

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2745
  br label %kmalloc_index.exit.i, !dbg !2745

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2746
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2748
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2749

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2750
  br label %kmalloc_index.exit.i, !dbg !2750

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2751
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2753
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2754

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2755
  br label %kmalloc_index.exit.i, !dbg !2755

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2756
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2758
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2759

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2760
  br label %kmalloc_index.exit.i, !dbg !2760

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2761
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2763
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2764

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2765
  br label %kmalloc_index.exit.i, !dbg !2765

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2766
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2768
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2769

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2770
  br label %kmalloc_index.exit.i, !dbg !2770

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2771
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2773
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2774

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2775
  br label %kmalloc_index.exit.i, !dbg !2775

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2776
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2778
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2779

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2780
  br label %kmalloc_index.exit.i, !dbg !2780

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2781
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2783
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2784

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2785
  br label %kmalloc_index.exit.i, !dbg !2785

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2786
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2788
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2789

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2790
  br label %kmalloc_index.exit.i, !dbg !2790

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2791
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2793
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2794

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2795
  br label %kmalloc_index.exit.i, !dbg !2795

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2796
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2798
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2799

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2800
  br label %kmalloc_index.exit.i, !dbg !2800

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2801
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2803
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2804

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2805
  br label %kmalloc_index.exit.i, !dbg !2805

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2806
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2808
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2809

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2810
  br label %kmalloc_index.exit.i, !dbg !2810

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2813
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2814

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2815
  br label %kmalloc_index.exit.i, !dbg !2815

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2816
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2818
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2819

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2820
  br label %kmalloc_index.exit.i, !dbg !2820

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2821
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2823
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2824

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2825
  br label %kmalloc_index.exit.i, !dbg !2825

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2826
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2828
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2829

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2830
  br label %kmalloc_index.exit.i, !dbg !2830

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2831
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2833
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2834

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2835
  br label %kmalloc_index.exit.i, !dbg !2835

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2836
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2838
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2839

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2840
  br label %kmalloc_index.exit.i, !dbg !2840

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2841
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2843
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2844

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2845
  br label %kmalloc_index.exit.i, !dbg !2845

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !2846, !srcloc !2849
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #4, !dbg !2850, !srcloc !2853
  unreachable, !dbg !2854

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2855
  store i32 %45, i32* %index.i, align 4, !dbg !2856
  %46 = load i32, i32* %index.i, align 4, !dbg !2857
  %tobool.i = icmp ne i32 %46, 0, !dbg !2857
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2859

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2860
  br label %kmalloc.exit, !dbg !2860

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2861
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2862
  %and.i.i = and i32 %48, 17, !dbg !2862
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2862
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2862
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2862
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2862
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2864

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2865
  br label %kmalloc_type.exit.i, !dbg !2865

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2866
  %and2.i.i = and i32 %49, 1, !dbg !2867
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2866
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2866
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2866
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2868
  br label %kmalloc_type.exit.i, !dbg !2868

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2869
  %idxprom.i = zext i32 %51 to i64, !dbg !2870
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2870
  %52 = load i32, i32* %index.i, align 4, !dbg !2871
  %idxprom6.i = zext i32 %52 to i64, !dbg !2870
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2870
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2870
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2872
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2873
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2874
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2875
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !2876
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2876
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2876
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2876
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !2876
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2637
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2877
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2878
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2879
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2880
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !2881
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2882
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2883
  store i8* %62, i8** %retval.i, align 8, !dbg !2884
  br label %kmalloc.exit, !dbg !2884

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2885
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2886
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !2887
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2887
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2887
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2887
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !2887
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2888
  br label %kmalloc.exit, !dbg !2888

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2889
  ret i8* %65, !dbg !2890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2891 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2895, metadata !DIExpression()), !dbg !2896
  %0 = load i64, i64* %error.addr, align 8, !dbg !2897
  %1 = inttoptr i64 %0 to i8*, !dbg !2898
  ret i8* %1, !dbg !2899
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_fractional_divider(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i8* %reg, i8 zeroext %mshift, i8 zeroext %mwidth, i8 zeroext %nshift, i8 zeroext %nwidth, i8 zeroext %clk_divider_flags, %struct.spinlock* %lock) #0 !dbg !2900 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %mshift.addr = alloca i8, align 1
  %mwidth.addr = alloca i8, align 1
  %nshift.addr = alloca i8, align 1
  %nwidth.addr = alloca i8, align 1
  %clk_divider_flags.addr = alloca i8, align 1
  %lock.addr = alloca %struct.spinlock*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2907, metadata !DIExpression()), !dbg !2908
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  store i8 %mshift, i8* %mshift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mshift.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i8 %mwidth, i8* %mwidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mwidth.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i8 %nshift, i8* %nshift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %nshift.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i8 %nwidth, i8* %nwidth.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %nwidth.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  store i8 %clk_divider_flags, i8* %clk_divider_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_divider_flags.addr, metadata !2921, metadata !DIExpression()), !dbg !2922
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2925, metadata !DIExpression()), !dbg !2926
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2927
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2928
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !2929
  %3 = load i64, i64* %flags.addr, align 8, !dbg !2930
  %4 = load i8*, i8** %reg.addr, align 8, !dbg !2931
  %5 = load i8, i8* %mshift.addr, align 1, !dbg !2932
  %6 = load i8, i8* %mwidth.addr, align 1, !dbg !2933
  %7 = load i8, i8* %nshift.addr, align 1, !dbg !2934
  %8 = load i8, i8* %nwidth.addr, align 1, !dbg !2935
  %9 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !2936
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !2937
  %call = call %struct.clk_hw* @clk_hw_register_fractional_divider(%struct.device* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i8 zeroext %8, i8 zeroext %9, %struct.spinlock* %10) #8, !dbg !2938
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2939
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2940
  %12 = bitcast %struct.clk_hw* %11 to i8*, !dbg !2940
  %call1 = call zeroext i1 @IS_ERR(i8* %12) #8, !dbg !2942
  br i1 %call1, label %if.then, label %if.end, !dbg !2943

if.then:                                          ; preds = %entry
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2944
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !2944
  %call2 = call i8* @ERR_CAST(i8* %14) #8, !dbg !2945
  %15 = bitcast i8* %call2 to %struct.clk*, !dbg !2945
  store %struct.clk* %15, %struct.clk** %retval, align 8, !dbg !2946
  br label %return, !dbg !2946

if.end:                                           ; preds = %entry
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2947
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 1, !dbg !2948
  %17 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2948
  store %struct.clk* %17, %struct.clk** %retval, align 8, !dbg !2949
  br label %return, !dbg !2949

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2950
  ret %struct.clk* %18, !dbg !2950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2951 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2956
  %1 = ptrtoint i8* %0 to i64, !dbg !2956
  %2 = inttoptr i64 %1 to i8*, !dbg !2956
  %3 = ptrtoint i8* %2 to i64, !dbg !2956
  %cmp = icmp uge i64 %3, -4095, !dbg !2956
  %lnot = xor i1 %cmp, true, !dbg !2956
  %lnot1 = xor i1 %lnot, true, !dbg !2956
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2956
  %conv = sext i32 %lnot.ext to i64, !dbg !2956
  %tobool = icmp ne i64 %conv, 0, !dbg !2956
  ret i1 %tobool, !dbg !2957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2958 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2963
  ret i8* %0, !dbg !2964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_fractional_divider(%struct.clk_hw* %hw) #0 !dbg !2965 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fractional_divider*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2970, metadata !DIExpression()), !dbg !2972
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2972
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2972
  store i8* %1, i8** %__mptr, align 8, !dbg !2972
  br label %do.body, !dbg !2972

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2973

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2972
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2972
  %3 = bitcast i8* %add.ptr to %struct.clk_fractional_divider*, !dbg !2972
  store %struct.clk_fractional_divider* %3, %struct.clk_fractional_divider** %tmp, align 8, !dbg !2973
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %tmp, align 8, !dbg !2972
  store %struct.clk_fractional_divider* %4, %struct.clk_fractional_divider** %fd, align 8, !dbg !2975
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2976
  call void @clk_hw_unregister(%struct.clk_hw* %5) #8, !dbg !2977
  %6 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !2978
  %7 = bitcast %struct.clk_fractional_divider* %6 to i8*, !dbg !2978
  call void @kfree(i8* %7) #8, !dbg !2979
  ret void, !dbg !2980
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2981 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2985, metadata !DIExpression()), !dbg !2986
  %call = call i64 @arch_local_save_flags() #8, !dbg !2987
  store i64 %call, i64* %f, align 8, !dbg !2988
  call void @arch_local_irq_disable() #8, !dbg !2989
  %0 = load i64, i64* %f, align 8, !dbg !2990
  ret i64 %0, !dbg !2991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_fd_readl(%struct.clk_fractional_divider* %fd) #0 !dbg !2992 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct.clk_fractional_divider*, align 8
  store %struct.clk_fractional_divider* %fd, %struct.clk_fractional_divider** %fd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  %0 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !2997
  %flags = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i32 0, i32 8, !dbg !2999
  %1 = load i8, i8* %flags, align 8, !dbg !2999
  %conv = zext i8 %1 to i64, !dbg !2997
  %and = and i64 %conv, 2, !dbg !3000
  %tobool = icmp ne i64 %and, 0, !dbg !3000
  br i1 %tobool, label %if.then, label %if.end, !dbg !3001

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !3002
  %reg = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %2, i32 0, i32 1, !dbg !3003
  %3 = load i8*, i8** %reg, align 8, !dbg !3003
  %call = call i32 @ioread32be(i8* %3) #8, !dbg !3004
  store i32 %call, i32* %retval, align 4, !dbg !3005
  br label %return, !dbg !3005

if.end:                                           ; preds = %entry
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !3006
  %reg1 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %4, i32 0, i32 1, !dbg !3007
  %5 = load i8*, i8** %reg1, align 8, !dbg !3007
  %call2 = call i32 @readl(i8* %5) #8, !dbg !3008
  store i32 %call2, i32* %retval, align 4, !dbg !3009
  br label %return, !dbg !3009

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3010
  ret i32 %6, !dbg !3010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3011 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3015, metadata !DIExpression()), !dbg !3014
  %0 = load i64, i64* %__edi, align 8, !dbg !3014
  store i64 %0, i64* %__edi, align 8, !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3016, metadata !DIExpression()), !dbg !3014
  %1 = load i64, i64* %__esi, align 8, !dbg !3014
  store i64 %1, i64* %__esi, align 8, !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3017, metadata !DIExpression()), !dbg !3014
  %2 = load i64, i64* %__edx, align 8, !dbg !3014
  store i64 %2, i64* %__edx, align 8, !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3018, metadata !DIExpression()), !dbg !3014
  %3 = load i64, i64* %__ecx, align 8, !dbg !3014
  store i64 %3, i64* %__ecx, align 8, !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3019, metadata !DIExpression()), !dbg !3014
  %4 = load i64, i64* %__eax, align 8, !dbg !3014
  store i64 %4, i64* %__eax, align 8, !dbg !3014
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3014
  %6 = call i64 @llvm.read_register.i64(metadata !231), !dbg !3020
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !3020, !srcloc !3023
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3020
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3020
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3020
  call void @llvm.write_register.i64(metadata !231, i64 %asmresult1), !dbg !3020
  %8 = load i64, i64* %__eax, align 8, !dbg !3020
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3024, metadata !DIExpression()), !dbg !3026
  store i64 -1, i64* %__mask, align 8, !dbg !3026
  %9 = load i64, i64* %__mask, align 8, !dbg !3026
  store i64 %9, i64* %tmp, align 8, !dbg !3026
  %10 = load i64, i64* %tmp, align 8, !dbg !3026
  %and = and i64 %8, %10, !dbg !3020
  store i64 %and, i64* %__ret, align 8, !dbg !3020
  %11 = load i64, i64* %__ret, align 8, !dbg !3014
  store i64 %11, i64* %tmp2, align 8, !dbg !3027
  %12 = load i64, i64* %tmp2, align 8, !dbg !3014
  ret i64 %12, !dbg !3028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3029 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3032, metadata !DIExpression()), !dbg !3034
  %0 = load i64, i64* %__edi, align 8, !dbg !3034
  store i64 %0, i64* %__edi, align 8, !dbg !3034
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3035, metadata !DIExpression()), !dbg !3034
  %1 = load i64, i64* %__esi, align 8, !dbg !3034
  store i64 %1, i64* %__esi, align 8, !dbg !3034
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3036, metadata !DIExpression()), !dbg !3034
  %2 = load i64, i64* %__edx, align 8, !dbg !3034
  store i64 %2, i64* %__edx, align 8, !dbg !3034
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3037, metadata !DIExpression()), !dbg !3034
  %3 = load i64, i64* %__ecx, align 8, !dbg !3034
  store i64 %3, i64* %__ecx, align 8, !dbg !3034
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3038, metadata !DIExpression()), !dbg !3034
  %4 = load i64, i64* %__eax, align 8, !dbg !3034
  store i64 %4, i64* %__eax, align 8, !dbg !3034
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3034
  %6 = call i64 @llvm.read_register.i64(metadata !231), !dbg !3034
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !3034, !srcloc !3039
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3034
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3034
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3034
  call void @llvm.write_register.i64(metadata !231, i64 %asmresult1), !dbg !3034
  ret void, !dbg !3040
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !3041 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3048, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3050, metadata !DIExpression()), !dbg !3049
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3049
  %1 = bitcast i8* %0 to i32*, !dbg !3049
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #4, !dbg !3049, !srcloc !3051
  store i32 %2, i32* %ret, align 4, !dbg !3049
  %3 = load i32, i32* %ret, align 4, !dbg !3049
  ret i32 %3, !dbg !3049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3052 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3057, metadata !DIExpression()), !dbg !3059
  %0 = load i64, i64* %__edi, align 8, !dbg !3059
  store i64 %0, i64* %__edi, align 8, !dbg !3059
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3060, metadata !DIExpression()), !dbg !3059
  %1 = load i64, i64* %__esi, align 8, !dbg !3059
  store i64 %1, i64* %__esi, align 8, !dbg !3059
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3061, metadata !DIExpression()), !dbg !3059
  %2 = load i64, i64* %__edx, align 8, !dbg !3059
  store i64 %2, i64* %__edx, align 8, !dbg !3059
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3062, metadata !DIExpression()), !dbg !3059
  %3 = load i64, i64* %__ecx, align 8, !dbg !3059
  store i64 %3, i64* %__ecx, align 8, !dbg !3059
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3063, metadata !DIExpression()), !dbg !3059
  %4 = load i64, i64* %__eax, align 8, !dbg !3059
  store i64 %4, i64* %__eax, align 8, !dbg !3059
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3059
  %6 = call i64 @llvm.read_register.i64(metadata !231), !dbg !3059
  %7 = load i64, i64* %f.addr, align 8, !dbg !3059
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !3059, !srcloc !3064
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3059
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3059
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3059
  call void @llvm.write_register.i64(metadata !231, i64 %asmresult1), !dbg !3059
  ret void, !dbg !3065
}

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_fd_general_approximation(%struct.clk_hw* %hw, i64 %rate, i64* %parent_rate, i64* %m, i64* %n) #0 !dbg !3066 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64*, align 8
  %m.addr = alloca i64*, align 8
  %n.addr = alloca i64*, align 8
  %fd = alloca %struct.clk_fractional_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fractional_divider*, align 8
  %scale = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i64* %parent_rate, i64** %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %parent_rate.addr, metadata !3071, metadata !DIExpression()), !dbg !3072
  store i64* %m, i64** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %m.addr, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i64* %n, i64** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %n.addr, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3079, metadata !DIExpression()), !dbg !3081
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3081
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3081
  store i8* %1, i8** %__mptr, align 8, !dbg !3081
  br label %do.body, !dbg !3081

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3082

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3081
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3081
  %3 = bitcast i8* %add.ptr to %struct.clk_fractional_divider*, !dbg !3081
  store %struct.clk_fractional_divider* %3, %struct.clk_fractional_divider** %tmp, align 8, !dbg !3082
  %4 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %tmp, align 8, !dbg !3081
  store %struct.clk_fractional_divider* %4, %struct.clk_fractional_divider** %fd, align 8, !dbg !3078
  call void @llvm.dbg.declare(metadata i64* %scale, metadata !3084, metadata !DIExpression()), !dbg !3085
  %5 = load i64*, i64** %parent_rate.addr, align 8, !dbg !3086
  %6 = load i64, i64* %5, align 8, !dbg !3087
  %7 = load i64, i64* %rate.addr, align 8, !dbg !3088
  %div = udiv i64 %6, %7, !dbg !3089
  %sub = sub i64 %div, 1, !dbg !3090
  %call = call i32 @fls_long(i64 %sub) #8, !dbg !3091
  %conv = zext i32 %call to i64, !dbg !3091
  store i64 %conv, i64* %scale, align 8, !dbg !3092
  %8 = load i64, i64* %scale, align 8, !dbg !3093
  %9 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !3095
  %nwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %9, i32 0, i32 6, !dbg !3096
  %10 = load i8, i8* %nwidth, align 1, !dbg !3096
  %conv1 = zext i8 %10 to i64, !dbg !3095
  %cmp = icmp ugt i64 %8, %conv1, !dbg !3097
  br i1 %cmp, label %if.then, label %if.end, !dbg !3098

if.then:                                          ; preds = %do.end
  %11 = load i64, i64* %scale, align 8, !dbg !3099
  %12 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !3100
  %nwidth3 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %12, i32 0, i32 6, !dbg !3101
  %13 = load i8, i8* %nwidth3, align 1, !dbg !3101
  %conv4 = zext i8 %13 to i64, !dbg !3100
  %sub5 = sub i64 %11, %conv4, !dbg !3102
  %14 = load i64, i64* %rate.addr, align 8, !dbg !3103
  %shl = shl i64 %14, %sub5, !dbg !3103
  store i64 %shl, i64* %rate.addr, align 8, !dbg !3103
  br label %if.end, !dbg !3104

if.end:                                           ; preds = %if.then, %do.end
  %15 = load i64, i64* %rate.addr, align 8, !dbg !3105
  %16 = load i64*, i64** %parent_rate.addr, align 8, !dbg !3106
  %17 = load i64, i64* %16, align 8, !dbg !3107
  %18 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !3108
  %mwidth = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %18, i32 0, i32 3, !dbg !3108
  %19 = load i8, i8* %mwidth, align 1, !dbg !3108
  %conv6 = zext i8 %19 to i32, !dbg !3108
  %sub7 = sub i32 %conv6, 1, !dbg !3108
  %sub8 = sub i32 63, %sub7, !dbg !3108
  %sh_prom = zext i32 %sub8 to i64, !dbg !3108
  %shr = lshr i64 -1, %sh_prom, !dbg !3108
  %and = and i64 -1, %shr, !dbg !3108
  %add = add i64 0, %and, !dbg !3108
  %20 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd, align 8, !dbg !3109
  %nwidth9 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %20, i32 0, i32 6, !dbg !3109
  %21 = load i8, i8* %nwidth9, align 1, !dbg !3109
  %conv10 = zext i8 %21 to i32, !dbg !3109
  %sub11 = sub i32 %conv10, 1, !dbg !3109
  %sub12 = sub i32 63, %sub11, !dbg !3109
  %sh_prom13 = zext i32 %sub12 to i64, !dbg !3109
  %shr14 = lshr i64 -1, %sh_prom13, !dbg !3109
  %and15 = and i64 -1, %shr14, !dbg !3109
  %add16 = add i64 0, %and15, !dbg !3109
  %22 = load i64*, i64** %m.addr, align 8, !dbg !3110
  %23 = load i64*, i64** %n.addr, align 8, !dbg !3111
  call void @rational_best_approximation(i64 %15, i64 %17, i64 %add, i64 %add16, i64* %22, i64* %23) #8, !dbg !3112
  ret void, !dbg !3113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fls_long(i64 %l) #0 !dbg !3114 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3118, metadata !DIExpression()), !dbg !3123
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3125, metadata !DIExpression()), !dbg !3126
  %l.addr = alloca i64, align 8
  store i64 %l, i64* %l.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = load i64, i64* %l.addr, align 8, !dbg !3129
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3126
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3130
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3131
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #3, !dbg !3130, !srcloc !3132
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3130
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3133
  %add.i = add i32 %4, 1, !dbg !3134
  ret i32 %add.i, !dbg !3135
}

; Function Attrs: noredzone
declare dso_local void @rational_best_approximation(i64, i64, i64, i64, i64*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_fd_writel(%struct.clk_fractional_divider* %fd, i32 %val) #0 !dbg !3136 {
entry:
  %fd.addr = alloca %struct.clk_fractional_divider*, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_fractional_divider* %fd, %struct.clk_fractional_divider** %fd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_fractional_divider** %fd.addr, metadata !3139, metadata !DIExpression()), !dbg !3140
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3141, metadata !DIExpression()), !dbg !3142
  %0 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !3143
  %flags = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %0, i32 0, i32 8, !dbg !3145
  %1 = load i8, i8* %flags, align 8, !dbg !3145
  %conv = zext i8 %1 to i64, !dbg !3143
  %and = and i64 %conv, 2, !dbg !3146
  %tobool = icmp ne i64 %and, 0, !dbg !3146
  br i1 %tobool, label %if.then, label %if.else, !dbg !3147

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !3148
  %3 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !3149
  %reg = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %3, i32 0, i32 1, !dbg !3150
  %4 = load i8*, i8** %reg, align 8, !dbg !3150
  call void @iowrite32be(i32 %2, i8* %4) #8, !dbg !3151
  br label %if.end, !dbg !3151

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4, !dbg !3152
  %6 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %fd.addr, align 8, !dbg !3153
  %reg1 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %6, i32 0, i32 1, !dbg !3154
  %7 = load i8*, i8** %reg1, align 8, !dbg !3154
  call void @writel(i32 %5, i8* %7) #8, !dbg !3155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3156
}

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !3157 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3163, metadata !DIExpression()), !dbg !3162
  %0 = load i32, i32* %val.addr, align 4, !dbg !3162
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3162
  %2 = bitcast i8* %1 to i32*, !dbg !3162
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #4, !dbg !3162, !srcloc !3164
  ret void, !dbg !3162
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3165 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3118, metadata !DIExpression()), !dbg !3169
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3125, metadata !DIExpression()), !dbg !3171
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3172, metadata !DIExpression()), !dbg !3173
  %0 = load i64, i64* %size.addr, align 8, !dbg !3174
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3176
  br i1 %1, label %if.then, label %if.end447, !dbg !3177

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3178
  %tobool = icmp ne i64 %2, 0, !dbg !3178
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3181

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3182
  br label %return, !dbg !3182

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3183
  %cmp = icmp ult i64 %3, 4096, !dbg !3185
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3186

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3187
  br label %return, !dbg !3187

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub = sub i64 %4, 1, !dbg !3188
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3188
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3188

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub4 = sub i64 %6, 1, !dbg !3188
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3188
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3188

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub6 = sub i64 %8, 1, !dbg !3188
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3188
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3188

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3188

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub9 = sub i64 %9, 1, !dbg !3188
  %and = and i64 %sub9, -9223372036854775808, !dbg !3188
  %tobool10 = icmp ne i64 %and, 0, !dbg !3188
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3188

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3188

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub13 = sub i64 %10, 1, !dbg !3188
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3188
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3188
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3188

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3188

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub18 = sub i64 %11, 1, !dbg !3188
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3188
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3188
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3188

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3188

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub23 = sub i64 %12, 1, !dbg !3188
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3188
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3188
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3188

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3188

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub28 = sub i64 %13, 1, !dbg !3188
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3188
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3188
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3188

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3188

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub33 = sub i64 %14, 1, !dbg !3188
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3188
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3188
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3188

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3188

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub38 = sub i64 %15, 1, !dbg !3188
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3188
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3188
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3188

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3188

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub43 = sub i64 %16, 1, !dbg !3188
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3188
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3188
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3188

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3188

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub48 = sub i64 %17, 1, !dbg !3188
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3188
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3188
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3188

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3188

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub53 = sub i64 %18, 1, !dbg !3188
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3188
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3188
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3188

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3188

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub58 = sub i64 %19, 1, !dbg !3188
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3188
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3188
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3188

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3188

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub63 = sub i64 %20, 1, !dbg !3188
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3188
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3188
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3188

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3188

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub68 = sub i64 %21, 1, !dbg !3188
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3188
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3188
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3188

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3188

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub73 = sub i64 %22, 1, !dbg !3188
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3188
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3188
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3188

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3188

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub78 = sub i64 %23, 1, !dbg !3188
  %and79 = and i64 %sub78, 562949953421312, !dbg !3188
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3188
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3188

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3188

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub83 = sub i64 %24, 1, !dbg !3188
  %and84 = and i64 %sub83, 281474976710656, !dbg !3188
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3188
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3188

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3188

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub88 = sub i64 %25, 1, !dbg !3188
  %and89 = and i64 %sub88, 140737488355328, !dbg !3188
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3188
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3188

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3188

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub93 = sub i64 %26, 1, !dbg !3188
  %and94 = and i64 %sub93, 70368744177664, !dbg !3188
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3188
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3188

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3188

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub98 = sub i64 %27, 1, !dbg !3188
  %and99 = and i64 %sub98, 35184372088832, !dbg !3188
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3188
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3188

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3188

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub103 = sub i64 %28, 1, !dbg !3188
  %and104 = and i64 %sub103, 17592186044416, !dbg !3188
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3188
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3188

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3188

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub108 = sub i64 %29, 1, !dbg !3188
  %and109 = and i64 %sub108, 8796093022208, !dbg !3188
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3188
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3188

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3188

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub113 = sub i64 %30, 1, !dbg !3188
  %and114 = and i64 %sub113, 4398046511104, !dbg !3188
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3188
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3188

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3188

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub118 = sub i64 %31, 1, !dbg !3188
  %and119 = and i64 %sub118, 2199023255552, !dbg !3188
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3188
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3188

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3188

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub123 = sub i64 %32, 1, !dbg !3188
  %and124 = and i64 %sub123, 1099511627776, !dbg !3188
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3188
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3188

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3188

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub128 = sub i64 %33, 1, !dbg !3188
  %and129 = and i64 %sub128, 549755813888, !dbg !3188
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3188
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3188

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3188

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub133 = sub i64 %34, 1, !dbg !3188
  %and134 = and i64 %sub133, 274877906944, !dbg !3188
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3188
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3188

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3188

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub138 = sub i64 %35, 1, !dbg !3188
  %and139 = and i64 %sub138, 137438953472, !dbg !3188
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3188
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3188

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3188

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub143 = sub i64 %36, 1, !dbg !3188
  %and144 = and i64 %sub143, 68719476736, !dbg !3188
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3188
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3188

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3188

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub148 = sub i64 %37, 1, !dbg !3188
  %and149 = and i64 %sub148, 34359738368, !dbg !3188
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3188
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3188

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3188

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub153 = sub i64 %38, 1, !dbg !3188
  %and154 = and i64 %sub153, 17179869184, !dbg !3188
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3188
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3188

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3188

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub158 = sub i64 %39, 1, !dbg !3188
  %and159 = and i64 %sub158, 8589934592, !dbg !3188
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3188
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3188

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3188

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub163 = sub i64 %40, 1, !dbg !3188
  %and164 = and i64 %sub163, 4294967296, !dbg !3188
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3188
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3188

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3188

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub168 = sub i64 %41, 1, !dbg !3188
  %and169 = and i64 %sub168, 2147483648, !dbg !3188
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3188
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3188

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3188

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub173 = sub i64 %42, 1, !dbg !3188
  %and174 = and i64 %sub173, 1073741824, !dbg !3188
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3188
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3188

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3188

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub178 = sub i64 %43, 1, !dbg !3188
  %and179 = and i64 %sub178, 536870912, !dbg !3188
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3188
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3188

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3188

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub183 = sub i64 %44, 1, !dbg !3188
  %and184 = and i64 %sub183, 268435456, !dbg !3188
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3188
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3188

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3188

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub188 = sub i64 %45, 1, !dbg !3188
  %and189 = and i64 %sub188, 134217728, !dbg !3188
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3188
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3188

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3188

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub193 = sub i64 %46, 1, !dbg !3188
  %and194 = and i64 %sub193, 67108864, !dbg !3188
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3188
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3188

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3188

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub198 = sub i64 %47, 1, !dbg !3188
  %and199 = and i64 %sub198, 33554432, !dbg !3188
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3188
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3188

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3188

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub203 = sub i64 %48, 1, !dbg !3188
  %and204 = and i64 %sub203, 16777216, !dbg !3188
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3188
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3188

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3188

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub208 = sub i64 %49, 1, !dbg !3188
  %and209 = and i64 %sub208, 8388608, !dbg !3188
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3188
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3188

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3188

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub213 = sub i64 %50, 1, !dbg !3188
  %and214 = and i64 %sub213, 4194304, !dbg !3188
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3188
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3188

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3188

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub218 = sub i64 %51, 1, !dbg !3188
  %and219 = and i64 %sub218, 2097152, !dbg !3188
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3188
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3188

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3188

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub223 = sub i64 %52, 1, !dbg !3188
  %and224 = and i64 %sub223, 1048576, !dbg !3188
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3188
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3188

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3188

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub228 = sub i64 %53, 1, !dbg !3188
  %and229 = and i64 %sub228, 524288, !dbg !3188
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3188
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3188

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3188

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub233 = sub i64 %54, 1, !dbg !3188
  %and234 = and i64 %sub233, 262144, !dbg !3188
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3188
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3188

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3188

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub238 = sub i64 %55, 1, !dbg !3188
  %and239 = and i64 %sub238, 131072, !dbg !3188
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3188
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3188

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3188

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub243 = sub i64 %56, 1, !dbg !3188
  %and244 = and i64 %sub243, 65536, !dbg !3188
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3188
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3188

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3188

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub248 = sub i64 %57, 1, !dbg !3188
  %and249 = and i64 %sub248, 32768, !dbg !3188
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3188
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3188

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3188

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub253 = sub i64 %58, 1, !dbg !3188
  %and254 = and i64 %sub253, 16384, !dbg !3188
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3188
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3188

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3188

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub258 = sub i64 %59, 1, !dbg !3188
  %and259 = and i64 %sub258, 8192, !dbg !3188
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3188
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3188

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3188

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub263 = sub i64 %60, 1, !dbg !3188
  %and264 = and i64 %sub263, 4096, !dbg !3188
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3188
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3188

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3188

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub268 = sub i64 %61, 1, !dbg !3188
  %and269 = and i64 %sub268, 2048, !dbg !3188
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3188
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3188

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3188

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub273 = sub i64 %62, 1, !dbg !3188
  %and274 = and i64 %sub273, 1024, !dbg !3188
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3188
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3188

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3188

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub278 = sub i64 %63, 1, !dbg !3188
  %and279 = and i64 %sub278, 512, !dbg !3188
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3188
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3188

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3188

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub283 = sub i64 %64, 1, !dbg !3188
  %and284 = and i64 %sub283, 256, !dbg !3188
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3188
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3188

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3188

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub288 = sub i64 %65, 1, !dbg !3188
  %and289 = and i64 %sub288, 128, !dbg !3188
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3188
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3188

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3188

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub293 = sub i64 %66, 1, !dbg !3188
  %and294 = and i64 %sub293, 64, !dbg !3188
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3188
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3188

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3188

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub298 = sub i64 %67, 1, !dbg !3188
  %and299 = and i64 %sub298, 32, !dbg !3188
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3188
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3188

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3188

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub303 = sub i64 %68, 1, !dbg !3188
  %and304 = and i64 %sub303, 16, !dbg !3188
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3188
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3188

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3188

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub308 = sub i64 %69, 1, !dbg !3188
  %and309 = and i64 %sub308, 8, !dbg !3188
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3188
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3188

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3188

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub313 = sub i64 %70, 1, !dbg !3188
  %and314 = and i64 %sub313, 4, !dbg !3188
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3188
  %71 = zext i1 %tobool315 to i64, !dbg !3188
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3188
  br label %cond.end, !dbg !3188

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3188
  br label %cond.end317, !dbg !3188

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3188
  br label %cond.end319, !dbg !3188

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3188
  br label %cond.end321, !dbg !3188

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3188
  br label %cond.end323, !dbg !3188

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3188
  br label %cond.end325, !dbg !3188

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3188
  br label %cond.end327, !dbg !3188

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3188
  br label %cond.end329, !dbg !3188

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3188
  br label %cond.end331, !dbg !3188

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3188
  br label %cond.end333, !dbg !3188

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3188
  br label %cond.end335, !dbg !3188

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3188
  br label %cond.end337, !dbg !3188

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3188
  br label %cond.end339, !dbg !3188

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3188
  br label %cond.end341, !dbg !3188

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3188
  br label %cond.end343, !dbg !3188

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3188
  br label %cond.end345, !dbg !3188

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3188
  br label %cond.end347, !dbg !3188

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3188
  br label %cond.end349, !dbg !3188

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3188
  br label %cond.end351, !dbg !3188

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3188
  br label %cond.end353, !dbg !3188

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3188
  br label %cond.end355, !dbg !3188

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3188
  br label %cond.end357, !dbg !3188

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3188
  br label %cond.end359, !dbg !3188

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3188
  br label %cond.end361, !dbg !3188

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3188
  br label %cond.end363, !dbg !3188

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3188
  br label %cond.end365, !dbg !3188

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3188
  br label %cond.end367, !dbg !3188

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3188
  br label %cond.end369, !dbg !3188

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3188
  br label %cond.end371, !dbg !3188

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3188
  br label %cond.end373, !dbg !3188

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3188
  br label %cond.end375, !dbg !3188

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3188
  br label %cond.end377, !dbg !3188

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3188
  br label %cond.end379, !dbg !3188

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3188
  br label %cond.end381, !dbg !3188

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3188
  br label %cond.end383, !dbg !3188

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3188
  br label %cond.end385, !dbg !3188

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3188
  br label %cond.end387, !dbg !3188

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3188
  br label %cond.end389, !dbg !3188

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3188
  br label %cond.end391, !dbg !3188

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3188
  br label %cond.end393, !dbg !3188

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3188
  br label %cond.end395, !dbg !3188

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3188
  br label %cond.end397, !dbg !3188

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3188
  br label %cond.end399, !dbg !3188

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3188
  br label %cond.end401, !dbg !3188

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3188
  br label %cond.end403, !dbg !3188

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3188
  br label %cond.end405, !dbg !3188

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3188
  br label %cond.end407, !dbg !3188

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3188
  br label %cond.end409, !dbg !3188

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3188
  br label %cond.end411, !dbg !3188

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3188
  br label %cond.end413, !dbg !3188

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3188
  br label %cond.end415, !dbg !3188

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3188
  br label %cond.end417, !dbg !3188

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3188
  br label %cond.end419, !dbg !3188

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3188
  br label %cond.end421, !dbg !3188

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3188
  br label %cond.end423, !dbg !3188

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3188
  br label %cond.end425, !dbg !3188

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3188
  br label %cond.end427, !dbg !3188

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3188
  br label %cond.end429, !dbg !3188

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3188
  br label %cond.end431, !dbg !3188

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3188
  br label %cond.end433, !dbg !3188

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3188
  br label %cond.end435, !dbg !3188

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3188
  br label %cond.end437, !dbg !3188

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3188
  br label %cond.end440, !dbg !3188

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3188

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3188
  br label %cond.end444, !dbg !3188

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3188
  %sub443 = sub i64 %72, 1, !dbg !3188
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3188
  br label %cond.end444, !dbg !3188

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3188
  %sub446 = sub i32 %cond445, 12, !dbg !3189
  %add = add i32 %sub446, 1, !dbg !3190
  store i32 %add, i32* %retval, align 4, !dbg !3191
  br label %return, !dbg !3191

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3192
  %dec = add i64 %73, -1, !dbg !3192
  store i64 %dec, i64* %size.addr, align 8, !dbg !3192
  %74 = load i64, i64* %size.addr, align 8, !dbg !3193
  %shr = lshr i64 %74, 12, !dbg !3193
  store i64 %shr, i64* %size.addr, align 8, !dbg !3193
  %75 = load i64, i64* %size.addr, align 8, !dbg !3194
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3171
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3195
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3196
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #3, !dbg !3195, !srcloc !3132
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3195
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3197
  %add.i = add i32 %79, 1, !dbg !3198
  store i32 %add.i, i32* %retval, align 4, !dbg !3199
  br label %return, !dbg !3199

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3200
  ret i32 %80, !dbg !3200
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3201 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3118, metadata !DIExpression()), !dbg !3205
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3125, metadata !DIExpression()), !dbg !3207
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load i64, i64* %n.addr, align 8, !dbg !3210
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3207
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3211
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3212
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #3, !dbg !3211, !srcloc !3132
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3211
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3213
  %add.i = add i32 %4, 1, !dbg !3214
  %sub = sub i32 %add.i, 1, !dbg !3215
  ret i32 %sub, !dbg !3216
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3217 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3223, metadata !DIExpression()), !dbg !3224
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3229
  ret i8* %0, !dbg !3230
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!231}
!llvm.module.flags = !{!232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_fractional_divider_ops", scope: !2, file: !3, line: 148, type: !86, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !230, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-fractional-divider.c", directory: "/home/lizy2001/genbc/linux")
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
!57 = !{!58, !60, !61, !62, !224, !227, !110, !228}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 148, baseType: !7)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_fractional_divider", file: !64, line: 940, size: 576, elements: !65)
!64 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !193, !194, !195, !196, !199, !200, !201, !202, !203, !207}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !63, file: !64, line: 941, baseType: !67, size: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !64, line: 312, size: 192, elements: !68)
!68 = !{!69, !72, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !67, file: !64, line: 313, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !64, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !67, file: !64, line: 314, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !64, line: 36, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !67, file: !64, line: 315, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !64, line: 285, size: 448, elements: !79)
!79 = !{!80, !84, !175, !178, !189, !191, !192}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !64, line: 286, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !78, file: !64, line: 287, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !64, line: 220, size: 1600, elements: !88)
!88 = !{!89, !94, !98, !99, !100, !101, !102, !103, !104, !105, !106, !111, !117, !129, !138, !142, !146, !150, !151, !152, !156, !165, !166, !167, !168}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !87, file: !64, line: 221, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!60, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !87, file: !64, line: 222, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !93}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !87, file: !64, line: 223, baseType: !90, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !87, file: !64, line: 224, baseType: !95, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !87, file: !64, line: 225, baseType: !90, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !87, file: !64, line: 226, baseType: !95, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !87, file: !64, line: 227, baseType: !90, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !87, file: !64, line: 228, baseType: !95, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !87, file: !64, line: 229, baseType: !90, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !87, file: !64, line: 230, baseType: !95, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !87, file: !64, line: 231, baseType: !107, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !93, !110}
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !87, file: !64, line: 233, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !93, !110, !116}
!115 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !87, file: !64, line: 235, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!60, !93, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !64, line: 55, size: 320, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !122, file: !64, line: 56, baseType: !110, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !122, file: !64, line: 57, baseType: !110, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !122, file: !64, line: 58, baseType: !110, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !122, file: !64, line: 59, baseType: !110, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !122, file: !64, line: 60, baseType: !93, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !87, file: !64, line: 237, baseType: !130, size: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!60, !93, !133}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !87, file: !64, line: 238, baseType: !139, size: 64, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!133, !93}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !87, file: !64, line: 239, baseType: !143, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!60, !93, !110, !110}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !87, file: !64, line: 241, baseType: !147, size: 64, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!60, !93, !110, !110, !133}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !87, file: !64, line: 244, baseType: !107, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !87, file: !64, line: 246, baseType: !90, size: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !87, file: !64, line: 247, baseType: !153, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!60, !93, !60}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !87, file: !64, line: 248, baseType: !157, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!60, !93, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !64, line: 69, size: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !161, file: !64, line: 70, baseType: !7, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !161, file: !64, line: 71, baseType: !7, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !87, file: !64, line: 250, baseType: !157, size: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !87, file: !64, line: 252, baseType: !90, size: 64, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !87, file: !64, line: 253, baseType: !95, size: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !87, file: !64, line: 254, baseType: !169, size: 64, offset: 1536)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !93, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !174, line: 21, flags: DIFlagFwdDecl)
!174 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !78, file: !64, line: 289, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !78, file: !64, line: 290, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !64, line: 264, size: 256, elements: !182)
!182 = !{!183, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !181, file: !64, line: 265, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !181, file: !64, line: 266, baseType: !81, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !64, line: 267, baseType: !81, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !181, file: !64, line: 268, baseType: !60, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !78, file: !64, line: 291, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !78, file: !64, line: 292, baseType: !133, size: 8, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !64, line: 293, baseType: !110, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !63, file: !64, line: 942, baseType: !61, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mshift", scope: !63, file: !64, line: 943, baseType: !133, size: 8, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mwidth", scope: !63, file: !64, line: 944, baseType: !133, size: 8, offset: 264)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mmask", scope: !63, file: !64, line: 945, baseType: !197, size: 32, offset: 288)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nshift", scope: !63, file: !64, line: 946, baseType: !133, size: 8, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nwidth", scope: !63, file: !64, line: 947, baseType: !133, size: 8, offset: 328)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nmask", scope: !63, file: !64, line: 948, baseType: !197, size: 32, offset: 352)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !64, line: 949, baseType: !133, size: 8, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "approximation", scope: !63, file: !64, line: 950, baseType: !204, size: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !93, !110, !116, !116, !116}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !64, line: 953, baseType: !208, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !210, line: 83, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !210, line: 71, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !210, line: 72, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !210, line: 72, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !214, file: !210, line: 73, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !210, line: 20, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !217, file: !210, line: 21, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !221, line: 25, baseType: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 25, elements: !223)
!223 = !{}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !226)
!226 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !59, line: 107, baseType: !224)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!230 = !{!0}
!231 = !{!"rsp"}
!232 = !{i32 7, !"Dwarf Version", i32 4}
!233 = !{i32 2, !"Debug Info Version", i32 3}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"Code Model", i32 2}
!236 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!237 = distinct !DISubprogram(name: "clk_fd_recalc_rate", scope: !3, file: !3, line: 33, type: !108, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!238 = !DILocalVariable(name: "lock", arg: 1, scope: !239, file: !240, line: 407, type: !208)
!239 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !240, file: !240, line: 407, type: !241, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!240 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!241 = !DISubroutineType(types: !242)
!242 = !{null, !208, !110}
!243 = !DILocation(line: 407, column: 64, scope: !239, inlinedAt: !244)
!244 = distinct !DILocation(line: 50, column: 3, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !3, line: 49, column: 6)
!246 = !DILocalVariable(name: "flags", arg: 2, scope: !239, file: !240, line: 407, type: !110)
!247 = !DILocation(line: 407, column: 84, scope: !239, inlinedAt: !244)
!248 = !DILocalVariable(name: "lock", arg: 1, scope: !249, file: !240, line: 327, type: !208)
!249 = distinct !DISubprogram(name: "spinlock_check", scope: !240, file: !240, line: 327, type: !250, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !208}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 29, baseType: !217)
!254 = !DILocation(line: 327, column: 67, scope: !249, inlinedAt: !255)
!255 = distinct !DILocation(line: 43, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 43, column: 3)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 43, column: 3)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 43, column: 3)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 43, column: 3)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 43, column: 3)
!261 = distinct !DILexicalBlock(scope: !237, file: !3, line: 42, column: 6)
!262 = !DILocalVariable(name: "hw", arg: 1, scope: !237, file: !3, line: 33, type: !93)
!263 = !DILocation(line: 33, column: 56, scope: !237)
!264 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !237, file: !3, line: 34, type: !110)
!265 = !DILocation(line: 34, column: 20, scope: !237)
!266 = !DILocalVariable(name: "fd", scope: !237, file: !3, line: 36, type: !62)
!267 = !DILocation(line: 36, column: 33, scope: !237)
!268 = !DILocalVariable(name: "__mptr", scope: !269, file: !3, line: 36, type: !61)
!269 = distinct !DILexicalBlock(scope: !237, file: !3, line: 36, column: 38)
!270 = !DILocation(line: 36, column: 38, scope: !269)
!271 = !DILocation(line: 36, column: 38, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 36, column: 38)
!273 = !DILocalVariable(name: "flags", scope: !237, file: !3, line: 37, type: !110)
!274 = !DILocation(line: 37, column: 16, scope: !237)
!275 = !DILocalVariable(name: "m", scope: !237, file: !3, line: 38, type: !110)
!276 = !DILocation(line: 38, column: 16, scope: !237)
!277 = !DILocalVariable(name: "n", scope: !237, file: !3, line: 38, type: !110)
!278 = !DILocation(line: 38, column: 19, scope: !237)
!279 = !DILocalVariable(name: "val", scope: !237, file: !3, line: 39, type: !197)
!280 = !DILocation(line: 39, column: 6, scope: !237)
!281 = !DILocalVariable(name: "ret", scope: !237, file: !3, line: 40, type: !224)
!282 = !DILocation(line: 40, column: 6, scope: !237)
!283 = !DILocation(line: 42, column: 6, scope: !261)
!284 = !DILocation(line: 42, column: 10, scope: !261)
!285 = !DILocation(line: 42, column: 6, scope: !237)
!286 = !DILocation(line: 43, column: 3, scope: !261)
!287 = !DILocation(line: 43, column: 3, scope: !260)
!288 = !DILocalVariable(name: "__dummy", scope: !289, file: !3, line: 43, type: !110)
!289 = distinct !DILexicalBlock(scope: !259, file: !3, line: 43, column: 3)
!290 = !DILocation(line: 43, column: 3, scope: !289)
!291 = !DILocalVariable(name: "__dummy2", scope: !289, file: !3, line: 43, type: !110)
!292 = !DILocation(line: 43, column: 3, scope: !259)
!293 = !DILocation(line: 43, column: 3, scope: !258)
!294 = !DILocation(line: 43, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !258, file: !3, line: 43, column: 3)
!296 = !DILocalVariable(name: "__dummy", scope: !297, file: !3, line: 43, type: !110)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 43, column: 3)
!298 = distinct !DILexicalBlock(scope: !295, file: !3, line: 43, column: 3)
!299 = !DILocation(line: 43, column: 3, scope: !297)
!300 = !DILocalVariable(name: "__dummy2", scope: !297, file: !3, line: 43, type: !110)
!301 = !DILocation(line: 43, column: 3, scope: !298)
!302 = !DILocation(line: 43, column: 3, scope: !257)
!303 = !{i32 -2143311945}
!304 = !DILocation(line: 43, column: 3, scope: !256)
!305 = !DILocation(line: 329, column: 10, scope: !249, inlinedAt: !255)
!306 = !DILocation(line: 329, column: 16, scope: !249, inlinedAt: !255)
!307 = !DILocation(line: 47, column: 21, scope: !237)
!308 = !DILocation(line: 47, column: 8, scope: !237)
!309 = !DILocation(line: 47, column: 6, scope: !237)
!310 = !DILocation(line: 49, column: 6, scope: !245)
!311 = !DILocation(line: 49, column: 10, scope: !245)
!312 = !DILocation(line: 49, column: 6, scope: !237)
!313 = !DILocation(line: 50, column: 26, scope: !245)
!314 = !DILocation(line: 50, column: 30, scope: !245)
!315 = !DILocation(line: 50, column: 36, scope: !245)
!316 = !DILocalVariable(name: "__dummy", scope: !317, file: !240, line: 409, type: !110)
!317 = distinct !DILexicalBlock(scope: !318, file: !240, line: 409, column: 2)
!318 = distinct !DILexicalBlock(scope: !239, file: !240, line: 409, column: 2)
!319 = !DILocation(line: 409, column: 2, scope: !317, inlinedAt: !244)
!320 = !DILocalVariable(name: "__dummy2", scope: !317, file: !240, line: 409, type: !110)
!321 = !DILocalVariable(name: "__dummy", scope: !322, file: !240, line: 409, type: !110)
!322 = distinct !DILexicalBlock(scope: !323, file: !240, line: 409, column: 2)
!323 = distinct !DILexicalBlock(scope: !324, file: !240, line: 409, column: 2)
!324 = distinct !DILexicalBlock(scope: !325, file: !240, line: 409, column: 2)
!325 = distinct !DILexicalBlock(scope: !318, file: !240, line: 409, column: 2)
!326 = !DILocation(line: 409, column: 2, scope: !322, inlinedAt: !244)
!327 = !DILocalVariable(name: "__dummy2", scope: !322, file: !240, line: 409, type: !110)
!328 = !DILocation(line: 409, column: 2, scope: !323, inlinedAt: !244)
!329 = !DILocation(line: 409, column: 2, scope: !330, inlinedAt: !244)
!330 = distinct !DILexicalBlock(scope: !325, file: !240, line: 409, column: 2)
!331 = !{i32 -2145381387}
!332 = !DILocation(line: 409, column: 2, scope: !333, inlinedAt: !244)
!333 = distinct !DILexicalBlock(scope: !330, file: !240, line: 409, column: 2)
!334 = !DILocation(line: 50, column: 3, scope: !245)
!335 = !DILocation(line: 54, column: 7, scope: !237)
!336 = !DILocation(line: 54, column: 13, scope: !237)
!337 = !DILocation(line: 54, column: 17, scope: !237)
!338 = !DILocation(line: 54, column: 11, scope: !237)
!339 = !DILocation(line: 54, column: 27, scope: !237)
!340 = !DILocation(line: 54, column: 31, scope: !237)
!341 = !DILocation(line: 54, column: 24, scope: !237)
!342 = !DILocation(line: 54, column: 6, scope: !237)
!343 = !DILocation(line: 54, column: 4, scope: !237)
!344 = !DILocation(line: 55, column: 7, scope: !237)
!345 = !DILocation(line: 55, column: 13, scope: !237)
!346 = !DILocation(line: 55, column: 17, scope: !237)
!347 = !DILocation(line: 55, column: 11, scope: !237)
!348 = !DILocation(line: 55, column: 27, scope: !237)
!349 = !DILocation(line: 55, column: 31, scope: !237)
!350 = !DILocation(line: 55, column: 24, scope: !237)
!351 = !DILocation(line: 55, column: 6, scope: !237)
!352 = !DILocation(line: 55, column: 4, scope: !237)
!353 = !DILocation(line: 57, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !237, file: !3, line: 57, column: 6)
!355 = !DILocation(line: 57, column: 10, scope: !354)
!356 = !DILocation(line: 57, column: 16, scope: !354)
!357 = !DILocation(line: 57, column: 6, scope: !237)
!358 = !DILocation(line: 58, column: 4, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 57, column: 47)
!360 = !DILocation(line: 59, column: 4, scope: !359)
!361 = !DILocation(line: 60, column: 2, scope: !359)
!362 = !DILocation(line: 62, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !237, file: !3, line: 62, column: 6)
!364 = !DILocation(line: 62, column: 9, scope: !363)
!365 = !DILocation(line: 62, column: 13, scope: !363)
!366 = !DILocation(line: 62, column: 6, scope: !237)
!367 = !DILocation(line: 63, column: 10, scope: !363)
!368 = !DILocation(line: 63, column: 3, scope: !363)
!369 = !DILocation(line: 65, column: 13, scope: !237)
!370 = !DILocation(line: 65, column: 27, scope: !237)
!371 = !DILocation(line: 65, column: 25, scope: !237)
!372 = !DILocation(line: 65, column: 6, scope: !237)
!373 = !DILocalVariable(name: "__base", scope: !374, file: !3, line: 66, type: !375)
!374 = distinct !DILexicalBlock(scope: !237, file: !3, line: 66, column: 2)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 104, baseType: !197)
!376 = !DILocation(line: 66, column: 2, scope: !374)
!377 = !DILocalVariable(name: "__rem", scope: !374, file: !3, line: 66, type: !375)
!378 = !DILocation(line: 68, column: 9, scope: !237)
!379 = !DILocation(line: 68, column: 2, scope: !237)
!380 = !DILocation(line: 69, column: 1, scope: !237)
!381 = distinct !DISubprogram(name: "clk_fd_round_rate", scope: !3, file: !3, line: 92, type: !113, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!382 = !DILocalVariable(name: "hw", arg: 1, scope: !381, file: !3, line: 92, type: !93)
!383 = !DILocation(line: 92, column: 46, scope: !381)
!384 = !DILocalVariable(name: "rate", arg: 2, scope: !381, file: !3, line: 92, type: !110)
!385 = !DILocation(line: 92, column: 64, scope: !381)
!386 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !381, file: !3, line: 93, type: !116)
!387 = !DILocation(line: 93, column: 25, scope: !381)
!388 = !DILocalVariable(name: "fd", scope: !381, file: !3, line: 95, type: !62)
!389 = !DILocation(line: 95, column: 33, scope: !381)
!390 = !DILocalVariable(name: "__mptr", scope: !391, file: !3, line: 95, type: !61)
!391 = distinct !DILexicalBlock(scope: !381, file: !3, line: 95, column: 38)
!392 = !DILocation(line: 95, column: 38, scope: !391)
!393 = !DILocation(line: 95, column: 38, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 95, column: 38)
!395 = !DILocalVariable(name: "m", scope: !381, file: !3, line: 96, type: !110)
!396 = !DILocation(line: 96, column: 16, scope: !381)
!397 = !DILocalVariable(name: "n", scope: !381, file: !3, line: 96, type: !110)
!398 = !DILocation(line: 96, column: 19, scope: !381)
!399 = !DILocalVariable(name: "ret", scope: !381, file: !3, line: 97, type: !224)
!400 = !DILocation(line: 97, column: 6, scope: !381)
!401 = !DILocation(line: 99, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !381, file: !3, line: 99, column: 6)
!403 = !DILocation(line: 99, column: 12, scope: !402)
!404 = !DILocation(line: 99, column: 17, scope: !402)
!405 = !DILocation(line: 99, column: 48, scope: !402)
!406 = !DILocation(line: 99, column: 51, scope: !402)
!407 = !DILocation(line: 99, column: 60, scope: !402)
!408 = !DILocation(line: 99, column: 59, scope: !402)
!409 = !DILocation(line: 99, column: 56, scope: !402)
!410 = !DILocation(line: 99, column: 6, scope: !381)
!411 = !DILocation(line: 100, column: 11, scope: !402)
!412 = !DILocation(line: 100, column: 10, scope: !402)
!413 = !DILocation(line: 100, column: 3, scope: !402)
!414 = !DILocation(line: 102, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !381, file: !3, line: 102, column: 6)
!416 = !DILocation(line: 102, column: 10, scope: !415)
!417 = !DILocation(line: 102, column: 6, scope: !381)
!418 = !DILocation(line: 103, column: 3, scope: !415)
!419 = !DILocation(line: 103, column: 7, scope: !415)
!420 = !DILocation(line: 103, column: 21, scope: !415)
!421 = !DILocation(line: 103, column: 25, scope: !415)
!422 = !DILocation(line: 103, column: 31, scope: !415)
!423 = !DILocation(line: 105, column: 32, scope: !415)
!424 = !DILocation(line: 105, column: 36, scope: !415)
!425 = !DILocation(line: 105, column: 42, scope: !415)
!426 = !DILocation(line: 105, column: 3, scope: !415)
!427 = !DILocation(line: 107, column: 14, scope: !381)
!428 = !DILocation(line: 107, column: 13, scope: !381)
!429 = !DILocation(line: 107, column: 28, scope: !381)
!430 = !DILocation(line: 107, column: 26, scope: !381)
!431 = !DILocation(line: 107, column: 6, scope: !381)
!432 = !DILocalVariable(name: "__base", scope: !433, file: !3, line: 108, type: !375)
!433 = distinct !DILexicalBlock(scope: !381, file: !3, line: 108, column: 2)
!434 = !DILocation(line: 108, column: 2, scope: !433)
!435 = !DILocalVariable(name: "__rem", scope: !433, file: !3, line: 108, type: !375)
!436 = !DILocation(line: 110, column: 9, scope: !381)
!437 = !DILocation(line: 110, column: 2, scope: !381)
!438 = !DILocation(line: 111, column: 1, scope: !381)
!439 = distinct !DISubprogram(name: "clk_fd_set_rate", scope: !3, file: !3, line: 113, type: !144, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!440 = !DILocation(line: 407, column: 64, scope: !239, inlinedAt: !441)
!441 = distinct !DILocation(line: 141, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 140, column: 6)
!443 = !DILocation(line: 407, column: 84, scope: !239, inlinedAt: !441)
!444 = !DILocation(line: 327, column: 67, scope: !249, inlinedAt: !445)
!445 = distinct !DILocation(line: 131, column: 3, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 131, column: 3)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 131, column: 3)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 131, column: 3)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 131, column: 3)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 131, column: 3)
!451 = distinct !DILexicalBlock(scope: !439, file: !3, line: 130, column: 6)
!452 = !DILocalVariable(name: "hw", arg: 1, scope: !439, file: !3, line: 113, type: !93)
!453 = !DILocation(line: 113, column: 43, scope: !439)
!454 = !DILocalVariable(name: "rate", arg: 2, scope: !439, file: !3, line: 113, type: !110)
!455 = !DILocation(line: 113, column: 61, scope: !439)
!456 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !439, file: !3, line: 114, type: !110)
!457 = !DILocation(line: 114, column: 21, scope: !439)
!458 = !DILocalVariable(name: "fd", scope: !439, file: !3, line: 116, type: !62)
!459 = !DILocation(line: 116, column: 33, scope: !439)
!460 = !DILocalVariable(name: "__mptr", scope: !461, file: !3, line: 116, type: !61)
!461 = distinct !DILexicalBlock(scope: !439, file: !3, line: 116, column: 38)
!462 = !DILocation(line: 116, column: 38, scope: !461)
!463 = !DILocation(line: 116, column: 38, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 116, column: 38)
!465 = !DILocalVariable(name: "flags", scope: !439, file: !3, line: 117, type: !110)
!466 = !DILocation(line: 117, column: 16, scope: !439)
!467 = !DILocalVariable(name: "m", scope: !439, file: !3, line: 118, type: !110)
!468 = !DILocation(line: 118, column: 16, scope: !439)
!469 = !DILocalVariable(name: "n", scope: !439, file: !3, line: 118, type: !110)
!470 = !DILocation(line: 118, column: 19, scope: !439)
!471 = !DILocalVariable(name: "val", scope: !439, file: !3, line: 119, type: !197)
!472 = !DILocation(line: 119, column: 6, scope: !439)
!473 = !DILocation(line: 121, column: 30, scope: !439)
!474 = !DILocation(line: 121, column: 36, scope: !439)
!475 = !DILocation(line: 122, column: 4, scope: !439)
!476 = !DILocation(line: 122, column: 32, scope: !439)
!477 = !DILocation(line: 121, column: 2, scope: !439)
!478 = !DILocation(line: 125, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !439, file: !3, line: 125, column: 6)
!480 = !DILocation(line: 125, column: 10, scope: !479)
!481 = !DILocation(line: 125, column: 16, scope: !479)
!482 = !DILocation(line: 125, column: 6, scope: !439)
!483 = !DILocation(line: 126, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 125, column: 47)
!485 = !DILocation(line: 127, column: 4, scope: !484)
!486 = !DILocation(line: 128, column: 2, scope: !484)
!487 = !DILocation(line: 130, column: 6, scope: !451)
!488 = !DILocation(line: 130, column: 10, scope: !451)
!489 = !DILocation(line: 130, column: 6, scope: !439)
!490 = !DILocation(line: 131, column: 3, scope: !451)
!491 = !DILocation(line: 131, column: 3, scope: !450)
!492 = !DILocalVariable(name: "__dummy", scope: !493, file: !3, line: 131, type: !110)
!493 = distinct !DILexicalBlock(scope: !449, file: !3, line: 131, column: 3)
!494 = !DILocation(line: 131, column: 3, scope: !493)
!495 = !DILocalVariable(name: "__dummy2", scope: !493, file: !3, line: 131, type: !110)
!496 = !DILocation(line: 131, column: 3, scope: !449)
!497 = !DILocation(line: 131, column: 3, scope: !448)
!498 = !DILocation(line: 131, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !448, file: !3, line: 131, column: 3)
!500 = !DILocalVariable(name: "__dummy", scope: !501, file: !3, line: 131, type: !110)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 131, column: 3)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 131, column: 3)
!503 = !DILocation(line: 131, column: 3, scope: !501)
!504 = !DILocalVariable(name: "__dummy2", scope: !501, file: !3, line: 131, type: !110)
!505 = !DILocation(line: 131, column: 3, scope: !502)
!506 = !DILocation(line: 131, column: 3, scope: !447)
!507 = !{i32 -2143303046}
!508 = !DILocation(line: 131, column: 3, scope: !446)
!509 = !DILocation(line: 329, column: 10, scope: !249, inlinedAt: !445)
!510 = !DILocation(line: 329, column: 16, scope: !249, inlinedAt: !445)
!511 = !DILocation(line: 135, column: 21, scope: !439)
!512 = !DILocation(line: 135, column: 8, scope: !439)
!513 = !DILocation(line: 135, column: 6, scope: !439)
!514 = !DILocation(line: 136, column: 11, scope: !439)
!515 = !DILocation(line: 136, column: 15, scope: !439)
!516 = !DILocation(line: 136, column: 23, scope: !439)
!517 = !DILocation(line: 136, column: 27, scope: !439)
!518 = !DILocation(line: 136, column: 21, scope: !439)
!519 = !DILocation(line: 136, column: 9, scope: !439)
!520 = !DILocation(line: 136, column: 6, scope: !439)
!521 = !DILocation(line: 137, column: 10, scope: !439)
!522 = !DILocation(line: 137, column: 15, scope: !439)
!523 = !DILocation(line: 137, column: 19, scope: !439)
!524 = !DILocation(line: 137, column: 12, scope: !439)
!525 = !DILocation(line: 137, column: 30, scope: !439)
!526 = !DILocation(line: 137, column: 35, scope: !439)
!527 = !DILocation(line: 137, column: 39, scope: !439)
!528 = !DILocation(line: 137, column: 32, scope: !439)
!529 = !DILocation(line: 137, column: 27, scope: !439)
!530 = !DILocation(line: 137, column: 6, scope: !439)
!531 = !DILocation(line: 138, column: 16, scope: !439)
!532 = !DILocation(line: 138, column: 20, scope: !439)
!533 = !DILocation(line: 138, column: 2, scope: !439)
!534 = !DILocation(line: 140, column: 6, scope: !442)
!535 = !DILocation(line: 140, column: 10, scope: !442)
!536 = !DILocation(line: 140, column: 6, scope: !439)
!537 = !DILocation(line: 141, column: 26, scope: !442)
!538 = !DILocation(line: 141, column: 30, scope: !442)
!539 = !DILocation(line: 141, column: 36, scope: !442)
!540 = !DILocation(line: 409, column: 2, scope: !317, inlinedAt: !441)
!541 = !DILocation(line: 409, column: 2, scope: !322, inlinedAt: !441)
!542 = !DILocation(line: 409, column: 2, scope: !323, inlinedAt: !441)
!543 = !DILocation(line: 409, column: 2, scope: !330, inlinedAt: !441)
!544 = !DILocation(line: 409, column: 2, scope: !333, inlinedAt: !441)
!545 = !DILocation(line: 141, column: 3, scope: !442)
!546 = !DILocation(line: 145, column: 2, scope: !439)
!547 = distinct !DISubprogram(name: "clk_hw_register_fractional_divider", scope: !3, file: !3, line: 155, type: !548, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!548 = !DISubroutineType(types: !549)
!549 = !{!93, !550, !81, !81, !110, !61, !133, !133, !133, !133, !133, !208}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !552)
!552 = !{!553, !2028, !2029, !2032, !2033, !2084, !2181, !2182, !2183, !2184, !2185, !2194, !2299, !2312, !2315, !2316, !2320, !2322, !2323, !2324, !2328, !2334, !2335, !2338, !2453, !2454, !2457, !2458, !2459, !2460, !2492, !2493, !2494, !2497, !2500, !2501, !2502, !2503}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !551, file: !30, line: 462, baseType: !554, size: 512)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !555, line: 64, size: 512, elements: !556)
!555 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558, !564, !566, !611, !1866, !2018, !2023, !2024, !2025, !2026, !2027}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !555, line: 65, baseType: !81, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !554, file: !555, line: 66, baseType: !559, size: 128, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 178, size: 128, elements: !560)
!560 = !{!561, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !59, line: 179, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !559, file: !59, line: 179, baseType: !562, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !554, file: !555, line: 67, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !554, file: !555, line: 68, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !555, line: 192, size: 704, elements: !569)
!569 = !{!570, !571, !572, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !568, file: !555, line: 193, baseType: !559, size: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !568, file: !555, line: 194, baseType: !209, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !568, file: !555, line: 195, baseType: !554, size: 512, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !568, file: !555, line: 196, baseType: !574, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !555, line: 156, size: 192, elements: !577)
!577 = !{!578, !583, !588}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !576, file: !555, line: 157, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!60, !567, !565}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !555, line: 158, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!81, !567, !565}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !576, file: !555, line: 159, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!60, !567, !565, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !555, line: 148, size: 20736, elements: !595)
!595 = !{!596, !601, !605, !606, !610}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !594, file: !555, line: 149, baseType: !597, size: 192)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 192, elements: !599)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!599 = !{!600}
!600 = !DISubrange(count: 3)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !594, file: !555, line: 150, baseType: !602, size: 4096, offset: 192)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 4096, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !594, file: !555, line: 151, baseType: !60, size: 32, offset: 4288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !594, file: !555, line: 152, baseType: !607, size: 16384, offset: 4320)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 16384, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 2048)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !594, file: !555, line: 153, baseType: !60, size: 32, offset: 20704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !554, file: !555, line: 69, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !555, line: 138, size: 448, elements: !614)
!614 = !{!615, !619, !647, !649, !1813, !1844, !1848}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !613, file: !555, line: 139, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !565}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !613, file: !555, line: 140, baseType: !620, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !623, line: 230, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !640}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !622, file: !623, line: 231, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !565, !633, !598}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !59, line: 60, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !631, line: 73, baseType: !632)
!631 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !631, line: 15, baseType: !115)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !623, line: 30, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !623, line: 31, baseType: !81, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !634, file: !623, line: 32, baseType: !638, size: 16, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !59, line: 19, baseType: !639)
!639 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !622, file: !623, line: 232, baseType: !641, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!629, !565, !633, !81, !644}
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 55, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !631, line: 72, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !631, line: 16, baseType: !110)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !613, file: !555, line: 141, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !613, file: !555, line: 142, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !623, line: 84, size: 320, elements: !654)
!654 = !{!655, !656, !660, !1810, !1811}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !623, line: 85, baseType: !81, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !653, file: !623, line: 86, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!638, !565, !633, !60}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !653, file: !623, line: 88, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!638, !565, !664, !60}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !623, line: 168, size: 448, elements: !666)
!666 = !{!667, !668, !669, !670, !680, !681}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !665, file: !623, line: 169, baseType: !634, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !665, file: !623, line: 170, baseType: !644, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !665, file: !623, line: 171, baseType: !61, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !665, file: !623, line: 172, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!629, !674, !565, !664, !598, !677, !644}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !676, line: 526, flags: DIFlagFwdDecl)
!676 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !59, line: 46, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !631, line: 88, baseType: !679)
!679 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !665, file: !623, line: 174, baseType: !671, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !665, file: !623, line: 176, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!60, !674, !565, !664, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !687, line: 305, size: 1472, elements: !688)
!687 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !691, !692, !693, !701, !702, !1784, !1790, !1791, !1796, !1797, !1800, !1804, !1805, !1806, !1807, !1808}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !686, file: !687, line: 308, baseType: !110, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !686, file: !687, line: 309, baseType: !110, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !686, file: !687, line: 313, baseType: !685, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !686, file: !687, line: 313, baseType: !685, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !686, file: !687, line: 315, baseType: !694, size: 192, align: 64, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !695, line: 24, size: 192, align: 64, elements: !696)
!695 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !698, !700}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !694, file: !695, line: 25, baseType: !110, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !694, file: !695, line: 26, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !694, file: !695, line: 27, baseType: !699, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !686, file: !687, line: 323, baseType: !110, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !686, file: !687, line: 327, baseType: !703, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !687, line: 388, size: 7296, elements: !705)
!705 = !{!706, !1780}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !687, line: 389, baseType: !707, size: 7296)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !687, line: 389, size: 7296, elements: !708)
!708 = !{!709, !710, !714, !715, !719, !720, !721, !722, !723, !731, !736, !737, !738, !739, !748, !749, !750, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !784, !792, !795, !843, !844, !1751, !1752, !1755, !1758, !1759, !1762, !1763, !1764, !1767, !1779}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !707, file: !687, line: 390, baseType: !685, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !707, file: !687, line: 391, baseType: !711, size: 64, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !695, line: 31, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !711, file: !695, line: 32, baseType: !699, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !707, file: !687, line: 392, baseType: !224, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !707, file: !687, line: 394, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!110, !674, !110, !110, !110, !110}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !707, file: !687, line: 398, baseType: !110, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !707, file: !687, line: 399, baseType: !110, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !707, file: !687, line: 405, baseType: !110, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !707, file: !687, line: 406, baseType: !110, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !707, file: !687, line: 407, baseType: !724, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !676, line: 286, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 286, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !726, file: !676, line: 286, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !730, line: 18, baseType: !110)
!730 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!731 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !707, file: !687, line: 416, baseType: !732, size: 32, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 168, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 166, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !733, file: !59, line: 167, baseType: !60, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !707, file: !687, line: 428, baseType: !732, size: 32, offset: 608)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !707, file: !687, line: 437, baseType: !732, size: 32, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !707, file: !687, line: 447, baseType: !732, size: 32, offset: 672)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !707, file: !687, line: 450, baseType: !740, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 175, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 173, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !59, line: 174, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !679)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !707, file: !687, line: 452, baseType: !60, size: 32, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !707, file: !687, line: 454, baseType: !209, offset: 800)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !707, file: !687, line: 457, baseType: !751, size: 256, offset: 832)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !752, line: 35, size: 256, elements: !753)
!752 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755, !756, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !751, file: !752, line: 36, baseType: !740, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !751, file: !752, line: 42, baseType: !740, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !751, file: !752, line: 46, baseType: !253, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !751, file: !752, line: 47, baseType: !559, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !707, file: !687, line: 459, baseType: !559, size: 128, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !707, file: !687, line: 466, baseType: !110, size: 64, offset: 1216)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !707, file: !687, line: 467, baseType: !110, size: 64, offset: 1280)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !707, file: !687, line: 469, baseType: !110, size: 64, offset: 1344)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !707, file: !687, line: 470, baseType: !110, size: 64, offset: 1408)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !707, file: !687, line: 471, baseType: !742, size: 64, offset: 1472)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !707, file: !687, line: 472, baseType: !110, size: 64, offset: 1536)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !707, file: !687, line: 473, baseType: !110, size: 64, offset: 1600)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !707, file: !687, line: 474, baseType: !110, size: 64, offset: 1664)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !707, file: !687, line: 475, baseType: !110, size: 64, offset: 1728)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !707, file: !687, line: 477, baseType: !209, offset: 1792)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !707, file: !687, line: 478, baseType: !110, size: 64, offset: 1792)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !707, file: !687, line: 478, baseType: !110, size: 64, offset: 1856)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !707, file: !687, line: 478, baseType: !110, size: 64, offset: 1920)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !707, file: !687, line: 478, baseType: !110, size: 64, offset: 1984)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !707, file: !687, line: 479, baseType: !110, size: 64, offset: 2048)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !707, file: !687, line: 479, baseType: !110, size: 64, offset: 2112)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !707, file: !687, line: 479, baseType: !110, size: 64, offset: 2176)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !707, file: !687, line: 480, baseType: !110, size: 64, offset: 2240)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !707, file: !687, line: 480, baseType: !110, size: 64, offset: 2304)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !707, file: !687, line: 480, baseType: !110, size: 64, offset: 2368)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !707, file: !687, line: 480, baseType: !110, size: 64, offset: 2432)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !707, file: !687, line: 482, baseType: !781, size: 2816, offset: 2496)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2816, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 44)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !707, file: !687, line: 488, baseType: !785, size: 256, offset: 5312)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !786, line: 60, size: 256, elements: !787)
!786 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !785, file: !786, line: 61, baseType: !789, size: 256)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 4)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !707, file: !687, line: 490, baseType: !793, size: 64, offset: 5568)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !687, line: 490, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !687, line: 493, baseType: !796, size: 896, offset: 5632)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !797, line: 53, baseType: !798)
!797 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 13, size: 896, elements: !799)
!799 = !{!800, !801, !802, !803, !806, !807, !814, !815, !835, !836, !839}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !798, file: !797, line: 18, baseType: !224, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !798, file: !797, line: 28, baseType: !742, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !798, file: !797, line: 31, baseType: !751, size: 256, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !798, file: !797, line: 32, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !797, line: 32, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !798, file: !797, line: 37, baseType: !639, size: 16, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !797, line: 40, baseType: !808, size: 192, offset: 512)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !809, line: 53, size: 192, elements: !810)
!809 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !808, file: !809, line: 54, baseType: !740, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !808, file: !809, line: 55, baseType: !209, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !808, file: !809, line: 59, baseType: !559, size: 128, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !798, file: !797, line: 41, baseType: !61, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !798, file: !797, line: 42, baseType: !816, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !819, line: 13, size: 896, elements: !820)
!819 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !818, file: !819, line: 14, baseType: !61, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !818, file: !819, line: 15, baseType: !110, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !818, file: !819, line: 17, baseType: !110, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !818, file: !819, line: 17, baseType: !110, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !818, file: !819, line: 19, baseType: !115, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !818, file: !819, line: 21, baseType: !115, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !818, file: !819, line: 22, baseType: !115, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !818, file: !819, line: 23, baseType: !115, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !818, file: !819, line: 24, baseType: !115, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !818, file: !819, line: 25, baseType: !115, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !818, file: !819, line: 26, baseType: !115, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !818, file: !819, line: 27, baseType: !115, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !818, file: !819, line: 28, baseType: !115, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !818, file: !819, line: 29, baseType: !115, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !798, file: !797, line: 44, baseType: !732, size: 32, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !798, file: !797, line: 50, baseType: !837, size: 16, offset: 864)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !639)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !798, file: !797, line: 51, baseType: !840, size: 16, offset: 880)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !842)
!842 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !687, line: 495, baseType: !110, size: 64, offset: 6528)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !707, file: !687, line: 497, baseType: !845, size: 64, offset: 6592)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !687, line: 381, size: 384, elements: !847)
!847 = !{!848, !849, !1750}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !846, file: !687, line: 382, baseType: !732, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !846, file: !687, line: 383, baseType: !850, size: 128, offset: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !687, line: 376, size: 128, elements: !851)
!851 = !{!852, !1748}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !850, file: !687, line: 377, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !855, line: 640, size: 48640, elements: !856)
!855 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !863, !865, !866, !872, !873, !874, !875, !876, !877, !878, !879, !883, !901, !912, !1004, !1005, !1006, !1017, !1018, !1020, !1021, !1022, !1023, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1102, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1158, !1160, !1161, !1162, !1174, !1176, !1177, !1178, !1179, !1180, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1204, !1209, !1214, !1215, !1216, !1219, !1223, !1226, !1229, !1232, !1235, !1239, !1242, !1245, !1251, !1252, !1253, !1259, !1260, !1261, !1262, !1263, !1272, !1273, !1274, !1275, !1276, !1281, !1282, !1283, !1286, !1287, !1290, !1293, !1296, !1299, !1302, !1305, !1306, !1386, !1389, !1392, !1393, !1396, !1397, !1398, !1404, !1405, !1406, !1419, !1420, !1421, !1433, !1438, !1441, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !854, file: !855, line: 646, baseType: !858, size: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !859, line: 56, size: 128, elements: !860)
!859 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !859, line: 57, baseType: !110, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !858, file: !859, line: 58, baseType: !197, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !854, file: !855, line: 649, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !854, file: !855, line: 657, baseType: !61, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !854, file: !855, line: 658, baseType: !867, size: 32, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !868, line: 113, baseType: !869)
!868 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !868, line: 111, size: 32, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !869, file: !868, line: 112, baseType: !732, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !855, line: 660, baseType: !7, size: 32, offset: 288)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !854, file: !855, line: 661, baseType: !7, size: 32, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !854, file: !855, line: 684, baseType: !60, size: 32, offset: 352)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !854, file: !855, line: 686, baseType: !60, size: 32, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !854, file: !855, line: 687, baseType: !60, size: 32, offset: 416)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !854, file: !855, line: 688, baseType: !60, size: 32, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !854, file: !855, line: 689, baseType: !7, size: 32, offset: 480)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !854, file: !855, line: 691, baseType: !880, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !855, line: 691, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !854, file: !855, line: 692, baseType: !884, size: 832, offset: 576)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !855, line: 451, size: 832, elements: !885)
!885 = !{!886, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !884, file: !855, line: 453, baseType: !887, size: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !855, line: 325, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !887, file: !855, line: 326, baseType: !110, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !887, file: !855, line: 327, baseType: !197, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !884, file: !855, line: 454, baseType: !694, size: 192, align: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !884, file: !855, line: 455, baseType: !559, size: 128, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !884, file: !855, line: 456, baseType: !7, size: 32, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !884, file: !855, line: 458, baseType: !224, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !884, file: !855, line: 459, baseType: !224, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !884, file: !855, line: 460, baseType: !224, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !884, file: !855, line: 461, baseType: !224, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !884, file: !855, line: 463, baseType: !224, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !884, file: !855, line: 465, baseType: !900, offset: 832)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !855, line: 415, elements: !223)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !854, file: !855, line: 693, baseType: !902, size: 384, offset: 1408)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !855, line: 489, size: 384, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !902, file: !855, line: 490, baseType: !559, size: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !902, file: !855, line: 491, baseType: !110, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !902, file: !855, line: 492, baseType: !110, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !902, file: !855, line: 493, baseType: !7, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !902, file: !855, line: 494, baseType: !639, size: 16, offset: 288)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !902, file: !855, line: 495, baseType: !639, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !902, file: !855, line: 497, baseType: !911, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !854, file: !855, line: 697, baseType: !913, size: 1792, offset: 1792)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !855, line: 507, size: 1792, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !1001, !1002}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !913, file: !855, line: 508, baseType: !694, size: 192, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !913, file: !855, line: 515, baseType: !224, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !913, file: !855, line: 516, baseType: !224, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !913, file: !855, line: 517, baseType: !224, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !913, file: !855, line: 518, baseType: !224, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !913, file: !855, line: 519, baseType: !224, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !913, file: !855, line: 526, baseType: !746, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !913, file: !855, line: 527, baseType: !224, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !855, line: 528, baseType: !7, size: 32, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !913, file: !855, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !913, file: !855, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !913, file: !855, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !913, file: !855, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !913, file: !855, line: 563, baseType: !929, size: 512, offset: 704)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !930)
!930 = !{!931, !939, !940, !945, !997, !998, !999, !1000}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !6, line: 119, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !933, line: 9, size: 256, elements: !934)
!933 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !932, file: !933, line: 10, baseType: !694, size: 192, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !932, file: !933, line: 11, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !938, line: 29, baseType: !746)
!938 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !929, file: !6, line: 120, baseType: !937, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !929, file: !6, line: 121, baseType: !941, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!5, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !6, line: 122, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !948)
!948 = !{!949, !969, !970, !973, !983, !984, !992, !996}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !947, file: !6, line: 160, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !6, line: 215, baseType: !253)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !951, file: !6, line: 216, baseType: !7, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !951, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !951, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !951, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !951, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !951, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !951, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !951, file: !6, line: 233, baseType: !937, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !951, file: !6, line: 234, baseType: !944, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !951, file: !6, line: 235, baseType: !937, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !951, file: !6, line: 236, baseType: !944, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !951, file: !6, line: 237, baseType: !966, size: 4096, offset: 512)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 4096, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 8)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !947, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !947, file: !6, line: 162, baseType: !971, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !59, line: 27, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !631, line: 96, baseType: !60)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !947, file: !6, line: 163, baseType: !974, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !975, line: 276, baseType: !976)
!975 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !975, line: 276, size: 32, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !976, file: !975, line: 276, baseType: !979, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !975, line: 70, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !975, line: 65, size: 32, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !980, file: !975, line: 66, baseType: !7, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !947, file: !6, line: 164, baseType: !944, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !947, file: !6, line: 165, baseType: !985, size: 128, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !933, line: 14, size: 128, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !985, file: !933, line: 15, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !695, line: 125, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !988, file: !695, line: 126, baseType: !711, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !988, file: !695, line: 127, baseType: !699, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !947, file: !6, line: 166, baseType: !993, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!937}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !947, file: !6, line: 167, baseType: !937, size: 64, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !929, file: !6, line: 123, baseType: !133, size: 8, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !929, file: !6, line: 124, baseType: !133, size: 8, offset: 456)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !929, file: !6, line: 125, baseType: !133, size: 8, offset: 464)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !929, file: !6, line: 126, baseType: !133, size: 8, offset: 472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !913, file: !855, line: 572, baseType: !929, size: 512, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !913, file: !855, line: 580, baseType: !1003, size: 64, offset: 1728)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !854, file: !855, line: 721, baseType: !7, size: 32, offset: 3584)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !854, file: !855, line: 722, baseType: !60, size: 32, offset: 3616)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !854, file: !855, line: 723, baseType: !1007, size: 64, offset: 3648)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1010, line: 17, baseType: !1011)
!1010 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1010, line: 17, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1011, file: !1010, line: 17, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 1)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !854, file: !855, line: 724, baseType: !1009, size: 64, offset: 3712)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !854, file: !855, line: 749, baseType: !1019, offset: 3776)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !855, line: 290, elements: !223)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !854, file: !855, line: 751, baseType: !559, size: 128, offset: 3776)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !854, file: !855, line: 757, baseType: !703, size: 64, offset: 3904)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !854, file: !855, line: 758, baseType: !703, size: 64, offset: 3968)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !854, file: !855, line: 761, baseType: !1024, size: 320, offset: 4032)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !786, line: 34, size: 320, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1024, file: !786, line: 35, baseType: !224, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1024, file: !786, line: 36, baseType: !1028, size: 256, offset: 64)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 256, elements: !790)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !854, file: !855, line: 766, baseType: !60, size: 32, offset: 4352)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !854, file: !855, line: 767, baseType: !60, size: 32, offset: 4384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !854, file: !855, line: 768, baseType: !60, size: 32, offset: 4416)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !854, file: !855, line: 770, baseType: !60, size: 32, offset: 4448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !854, file: !855, line: 772, baseType: !110, size: 64, offset: 4480)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !854, file: !855, line: 775, baseType: !7, size: 32, offset: 4544)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !854, file: !855, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !854, file: !855, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !854, file: !855, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !854, file: !855, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !854, file: !855, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !854, file: !855, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !854, file: !855, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !854, file: !855, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !854, file: !855, line: 831, baseType: !110, size: 64, offset: 4672)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !854, file: !855, line: 833, baseType: !1045, size: 384, offset: 4736)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !1046)
!1046 = !{!1047, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1045, file: !12, line: 26, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!115, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !12, line: 27, baseType: !1053, size: 320, offset: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !12, line: 27, size: 320, elements: !1054)
!1054 = !{!1055, !1065, !1092}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1053, file: !12, line: 36, baseType: !1056, size: 320)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !12, line: 29, size: 320, elements: !1057)
!1057 = !{!1058, !1060, !1061, !1062, !1063, !1064}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1056, file: !12, line: 30, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1056, file: !12, line: 31, baseType: !197, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !12, line: 32, baseType: !197, size: 32, offset: 96)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1056, file: !12, line: 33, baseType: !197, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1056, file: !12, line: 34, baseType: !224, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1056, file: !12, line: 35, baseType: !1059, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1053, file: !12, line: 46, baseType: !1066, size: 192)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !12, line: 38, size: 192, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1091}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1066, file: !12, line: 39, baseType: !971, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1066, file: !12, line: 41, baseType: !1071, size: 64, offset: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !12, line: 41, size: 64, elements: !1072)
!1072 = !{!1073, !1081}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1071, file: !12, line: 42, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1076, line: 7, size: 128, elements: !1077)
!1076 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1077 = !{!1078, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1075, file: !1076, line: 8, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !631, line: 93, baseType: !679)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1075, file: !1076, line: 9, baseType: !679, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1071, file: !12, line: 43, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1084, line: 7, size: 64, elements: !1085)
!1084 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1085 = !{!1086, !1090}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1083, file: !1084, line: 8, baseType: !1087, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1084, line: 5, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !60)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1083, file: !1084, line: 9, baseType: !1088, size: 32, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1066, file: !12, line: 45, baseType: !224, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1053, file: !12, line: 54, baseType: !1093, size: 256)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !12, line: 48, size: 256, elements: !1094)
!1094 = !{!1095, !1098, !1099, !1100, !1101}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1093, file: !12, line: 49, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1093, file: !12, line: 50, baseType: !60, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1093, file: !12, line: 51, baseType: !60, size: 32, offset: 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1093, file: !12, line: 52, baseType: !110, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1093, file: !12, line: 53, baseType: !110, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !854, file: !855, line: 835, baseType: !1103, size: 32, offset: 5120)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !59, line: 22, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !631, line: 28, baseType: !60)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !854, file: !855, line: 836, baseType: !1103, size: 32, offset: 5152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !854, file: !855, line: 840, baseType: !110, size: 64, offset: 5184)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !854, file: !855, line: 849, baseType: !853, size: 64, offset: 5248)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !854, file: !855, line: 852, baseType: !853, size: 64, offset: 5312)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !854, file: !855, line: 857, baseType: !559, size: 128, offset: 5376)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !854, file: !855, line: 858, baseType: !559, size: 128, offset: 5504)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !854, file: !855, line: 859, baseType: !853, size: 64, offset: 5632)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !854, file: !855, line: 867, baseType: !559, size: 128, offset: 5696)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !854, file: !855, line: 868, baseType: !559, size: 128, offset: 5824)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !854, file: !855, line: 871, baseType: !1115, size: 64, offset: 5952)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1117, line: 59, size: 768, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1120, !1121, !1122, !1133, !1134, !1141, !1150}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1116, file: !1117, line: 61, baseType: !867, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1116, file: !1117, line: 62, baseType: !7, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 63, baseType: !209, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1116, file: !1117, line: 65, baseType: !1123, size: 256, offset: 64)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 256, elements: !790)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !59, line: 182, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1124, file: !59, line: 183, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !59, line: 186, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1128, file: !59, line: 187, baseType: !1127, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1128, file: !59, line: 187, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1116, file: !1117, line: 66, baseType: !1124, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1116, file: !1117, line: 68, baseType: !1135, size: 128, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1136, line: 40, baseType: !1137)
!1136 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1136, line: 36, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1137, file: !1136, line: 37, baseType: !209)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1137, file: !1136, line: 38, baseType: !559, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1116, file: !1117, line: 69, baseType: !1142, size: 128, align: 64, offset: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !59, line: 216, size: 128, align: 64, elements: !1143)
!1143 = !{!1144, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1142, file: !59, line: 217, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1142, file: !59, line: 218, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1145}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1116, file: !1117, line: 70, baseType: !1151, size: 128, offset: 640)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 128, elements: !1015)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1117, line: 54, size: 128, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1152, file: !1117, line: 55, baseType: !60, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1152, file: !1117, line: 56, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1117, line: 56, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !854, file: !855, line: 872, baseType: !1159, size: 512, offset: 6016)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 512, elements: !790)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !854, file: !855, line: 873, baseType: !559, size: 128, offset: 6528)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !854, file: !855, line: 874, baseType: !559, size: 128, offset: 6656)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !854, file: !855, line: 876, baseType: !1163, size: 64, offset: 6784)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1165, line: 26, size: 192, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1164, file: !1165, line: 27, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1164, file: !1165, line: 28, baseType: !1169, size: 128, offset: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1170, line: 43, size: 128, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1170, line: 44, baseType: !253)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1169, file: !1170, line: 45, baseType: !559, size: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !854, file: !855, line: 879, baseType: !1175, size: 64, offset: 6848)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !854, file: !855, line: 882, baseType: !1175, size: 64, offset: 6912)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !854, file: !855, line: 884, baseType: !224, size: 64, offset: 6976)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !854, file: !855, line: 885, baseType: !224, size: 64, offset: 7040)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !854, file: !855, line: 890, baseType: !224, size: 64, offset: 7104)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !854, file: !855, line: 891, baseType: !1181, size: 128, offset: 7168)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !855, line: 242, size: 128, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1181, file: !855, line: 244, baseType: !224, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1181, file: !855, line: 245, baseType: !224, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1181, file: !855, line: 246, baseType: !253, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !854, file: !855, line: 900, baseType: !110, size: 64, offset: 7296)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !854, file: !855, line: 901, baseType: !110, size: 64, offset: 7360)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !854, file: !855, line: 904, baseType: !224, size: 64, offset: 7424)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !854, file: !855, line: 907, baseType: !224, size: 64, offset: 7488)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !854, file: !855, line: 910, baseType: !110, size: 64, offset: 7552)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !854, file: !855, line: 911, baseType: !110, size: 64, offset: 7616)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !854, file: !855, line: 914, baseType: !1193, size: 640, offset: 7680)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1194, line: 123, size: 640, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1202, !1203}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1193, file: !1194, line: 124, baseType: !1197, size: 576)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 576, elements: !599)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1194, line: 108, size: 192, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1198, file: !1194, line: 109, baseType: !224, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1198, file: !1194, line: 110, baseType: !985, size: 128, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1193, file: !1194, line: 125, baseType: !7, size: 32, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1193, file: !1194, line: 126, baseType: !7, size: 32, offset: 608)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !854, file: !855, line: 917, baseType: !1205, size: 192, offset: 8320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1194, line: 134, size: 192, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1205, file: !1194, line: 135, baseType: !1142, size: 128, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1205, file: !1194, line: 136, baseType: !7, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !854, file: !855, line: 923, baseType: !1210, size: 64, offset: 8512)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1213, line: 11, flags: DIFlagFwdDecl)
!1213 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !854, file: !855, line: 926, baseType: !1210, size: 64, offset: 8576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !854, file: !855, line: 929, baseType: !1210, size: 64, offset: 8640)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !854, file: !855, line: 933, baseType: !1217, size: 64, offset: 8704)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !855, line: 933, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !854, file: !855, line: 943, baseType: !1220, size: 128, offset: 8768)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 16)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !854, file: !855, line: 945, baseType: !1224, size: 64, offset: 8896)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !855, line: 49, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !854, file: !855, line: 956, baseType: !1227, size: 64, offset: 8960)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !855, line: 45, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !854, file: !855, line: 959, baseType: !1230, size: 64, offset: 9024)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !855, line: 959, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !854, file: !855, line: 962, baseType: !1233, size: 64, offset: 9088)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !855, line: 66, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !854, file: !855, line: 966, baseType: !1236, size: 64, offset: 9152)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1238, line: 35, flags: DIFlagFwdDecl)
!1238 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !854, file: !855, line: 969, baseType: !1240, size: 64, offset: 9216)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1194, line: 223, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !854, file: !855, line: 970, baseType: !1243, size: 64, offset: 9280)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !855, line: 62, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !854, file: !855, line: 971, baseType: !1246, size: 64, offset: 9344)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1247, line: 25, baseType: !1248)
!1247 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 23, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1248, file: !1247, line: 24, baseType: !1014, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !854, file: !855, line: 972, baseType: !1246, size: 64, offset: 9408)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !854, file: !855, line: 974, baseType: !1246, size: 64, offset: 9472)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !854, file: !855, line: 975, baseType: !1254, size: 192, offset: 9536)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1255, line: 30, size: 192, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1254, file: !1255, line: 31, baseType: !559, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1254, file: !1255, line: 32, baseType: !1246, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !854, file: !855, line: 976, baseType: !110, size: 64, offset: 9728)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !854, file: !855, line: 977, baseType: !644, size: 64, offset: 9792)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !854, file: !855, line: 978, baseType: !7, size: 32, offset: 9856)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !854, file: !855, line: 980, baseType: !1145, size: 64, offset: 9920)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !854, file: !855, line: 989, baseType: !1264, size: 128, offset: 9984)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1265, line: 35, size: 128, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1264, file: !1265, line: 36, baseType: !60, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1264, file: !1265, line: 37, baseType: !732, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1264, file: !1265, line: 38, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1265, line: 23, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !854, file: !855, line: 992, baseType: !224, size: 64, offset: 10112)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !854, file: !855, line: 993, baseType: !224, size: 64, offset: 10176)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !854, file: !855, line: 996, baseType: !209, offset: 10240)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !854, file: !855, line: 999, baseType: !253, offset: 10240)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !854, file: !855, line: 1001, baseType: !1277, size: 64, offset: 10240)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !855, line: 636, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1277, file: !855, line: 637, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !854, file: !855, line: 1005, baseType: !988, size: 128, offset: 10304)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !854, file: !855, line: 1007, baseType: !853, size: 64, offset: 10432)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !854, file: !855, line: 1009, baseType: !1284, size: 64, offset: 10496)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !855, line: 1009, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !854, file: !855, line: 1043, baseType: !61, size: 64, offset: 10560)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !854, file: !855, line: 1046, baseType: !1288, size: 64, offset: 10624)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !855, line: 41, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !854, file: !855, line: 1050, baseType: !1291, size: 64, offset: 10688)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !855, line: 42, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !854, file: !855, line: 1054, baseType: !1294, size: 64, offset: 10752)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !855, line: 55, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !854, file: !855, line: 1056, baseType: !1297, size: 64, offset: 10816)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !855, line: 40, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !854, file: !855, line: 1058, baseType: !1300, size: 64, offset: 10880)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !855, line: 47, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !854, file: !855, line: 1061, baseType: !1303, size: 64, offset: 10944)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !855, line: 43, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !854, file: !855, line: 1064, baseType: !110, size: 64, offset: 11008)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !854, file: !855, line: 1065, baseType: !1307, size: 64, offset: 11072)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1255, line: 14, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1255, line: 12, size: 384, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !1255, line: 13, baseType: !1312, size: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !1255, line: 13, size: 384, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1312, file: !1255, line: 13, baseType: !60, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1312, file: !1255, line: 13, baseType: !60, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1312, file: !1255, line: 13, baseType: !60, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1312, file: !1255, line: 13, baseType: !1318, size: 256, offset: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1319, line: 32, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1327, !1340, !1346, !1355, !1375, !1380}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1318, file: !1319, line: 37, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 34, size: 64, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1322, file: !1319, line: 35, baseType: !1104, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1322, file: !1319, line: 36, baseType: !1326, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !631, line: 49, baseType: !7)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1318, file: !1319, line: 45, baseType: !1328, size: 192)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 40, size: 192, elements: !1329)
!1329 = !{!1330, !1332, !1333, !1339}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1328, file: !1319, line: 41, baseType: !1331, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !631, line: 95, baseType: !60)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1328, file: !1319, line: 42, baseType: !60, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1328, file: !1319, line: 43, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1319, line: 11, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1319, line: 8, size: 64, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1335, file: !1319, line: 9, baseType: !60, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1335, file: !1319, line: 10, baseType: !61, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1328, file: !1319, line: 44, baseType: !60, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1318, file: !1319, line: 52, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 48, size: 128, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1341, file: !1319, line: 49, baseType: !1104, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1341, file: !1319, line: 50, baseType: !1326, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1341, file: !1319, line: 51, baseType: !1334, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1318, file: !1319, line: 61, baseType: !1347, size: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 55, size: 256, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1354}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1347, file: !1319, line: 56, baseType: !1104, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1347, file: !1319, line: 57, baseType: !1326, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1347, file: !1319, line: 58, baseType: !60, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1347, file: !1319, line: 59, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !631, line: 94, baseType: !632)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1347, file: !1319, line: 60, baseType: !1353, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1318, file: !1319, line: 95, baseType: !1356, size: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 64, size: 256, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1356, file: !1319, line: 65, baseType: !61, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1319, line: 77, baseType: !1360, size: 192, offset: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1319, line: 77, size: 192, elements: !1361)
!1361 = !{!1362, !1363, !1370}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1360, file: !1319, line: 82, baseType: !842, size: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1360, file: !1319, line: 88, baseType: !1364, size: 192)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1319, line: 84, size: 192, elements: !1365)
!1365 = !{!1366, !1368, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1364, file: !1319, line: 85, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !967)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1364, file: !1319, line: 86, baseType: !61, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1364, file: !1319, line: 87, baseType: !61, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1360, file: !1319, line: 93, baseType: !1371, size: 96)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1319, line: 90, size: 96, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1371, file: !1319, line: 91, baseType: !1367, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1371, file: !1319, line: 92, baseType: !198, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1318, file: !1319, line: 101, baseType: !1376, size: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 98, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1376, file: !1319, line: 99, baseType: !115, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1376, file: !1319, line: 100, baseType: !60, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1318, file: !1319, line: 108, baseType: !1381, size: 128)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 104, size: 128, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1381, file: !1319, line: 105, baseType: !61, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1381, file: !1319, line: 106, baseType: !60, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1381, file: !1319, line: 107, baseType: !7, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !854, file: !855, line: 1067, baseType: !1387, offset: 11136)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1388, line: 12, elements: !223)
!1388 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !854, file: !855, line: 1099, baseType: !1390, size: 64, offset: 11136)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !855, line: 56, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !854, file: !855, line: 1103, baseType: !559, size: 128, offset: 11200)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !854, file: !855, line: 1104, baseType: !1394, size: 64, offset: 11328)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !855, line: 46, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !854, file: !855, line: 1105, baseType: !808, size: 192, offset: 11392)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !854, file: !855, line: 1106, baseType: !7, size: 32, offset: 11584)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !854, file: !855, line: 1109, baseType: !1399, size: 128, offset: 11648)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 128, elements: !1402)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !855, line: 51, flags: DIFlagFwdDecl)
!1402 = !{!1403}
!1403 = !DISubrange(count: 2)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !854, file: !855, line: 1110, baseType: !808, size: 192, offset: 11776)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !854, file: !855, line: 1111, baseType: !559, size: 128, offset: 11968)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !854, file: !855, line: 1173, baseType: !1407, size: 64, offset: 12096)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1409, line: 62, size: 256, align: 256, elements: !1410)
!1409 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1412, !1413, !1418}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1408, file: !1409, line: 75, baseType: !198, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1408, file: !1409, line: 90, baseType: !198, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1408, file: !1409, line: 124, baseType: !1414, size: 64, offset: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 109, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1414, file: !1409, line: 110, baseType: !225, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1414, file: !1409, line: 112, baseType: !225, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1409, line: 144, baseType: !198, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !854, file: !855, line: 1174, baseType: !197, size: 32, offset: 12160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !854, file: !855, line: 1179, baseType: !110, size: 64, offset: 12224)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !854, file: !855, line: 1182, baseType: !1422, size: 128, offset: 12288)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !786, line: 76, size: 128, elements: !1423)
!1423 = !{!1424, !1429, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1422, file: !786, line: 85, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1426, line: 7, size: 64, elements: !1427)
!1426 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1425, file: !1426, line: 12, baseType: !1011, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1422, file: !786, line: 88, baseType: !1430, size: 8, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 30, baseType: !1431)
!1431 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1422, file: !786, line: 95, baseType: !1430, size: 8, offset: 72)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !855, line: 1184, baseType: !1434, size: 128, offset: 12416)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !855, line: 1184, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1434, file: !855, line: 1185, baseType: !867, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1434, file: !855, line: 1186, baseType: !1142, size: 128, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !854, file: !855, line: 1190, baseType: !1439, size: 64, offset: 12544)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !855, line: 53, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !854, file: !855, line: 1192, baseType: !1442, size: 128, offset: 12608)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !786, line: 64, size: 128, elements: !1443)
!1443 = !{!1444, !1537, !1538}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1442, file: !786, line: 65, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !687, line: 68, size: 512, align: 128, elements: !1447)
!1447 = !{!1448, !1449, !1529, !1536}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !687, line: 69, baseType: !110, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !687, line: 77, baseType: !1450, size: 320, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !687, line: 77, size: 320, elements: !1451)
!1451 = !{!1452, !1461, !1466, !1494, !1502, !1508, !1521, !1528}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 78, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 78, size: 320, elements: !1454)
!1454 = !{!1455, !1456, !1459, !1460}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1453, file: !687, line: 84, baseType: !559, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1453, file: !687, line: 86, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !687, line: 26, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1453, file: !687, line: 87, baseType: !110, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1453, file: !687, line: 94, baseType: !110, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 96, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 96, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1462, file: !687, line: 101, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !59, line: 143, baseType: !224)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 103, baseType: !1467, size: 320)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 103, size: 320, elements: !1468)
!1468 = !{!1469, !1479, !1482, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !687, line: 104, baseType: !1470, size: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !687, line: 104, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1470, file: !687, line: 105, baseType: !559, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !687, line: 106, baseType: !1474, size: 128)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !687, line: 106, size: 128, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1474, file: !687, line: 107, baseType: !1445, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1474, file: !687, line: 109, baseType: !60, size: 32, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1474, file: !687, line: 110, baseType: !60, size: 32, offset: 96)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1467, file: !687, line: 117, baseType: !1480, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !687, line: 117, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1467, file: !687, line: 119, baseType: !61, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !687, line: 120, baseType: !1484, size: 64, offset: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !687, line: 120, size: 64, elements: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1484, file: !687, line: 121, baseType: !61, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1484, file: !687, line: 122, baseType: !110, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !687, line: 123, baseType: !1489, size: 32)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !687, line: 123, size: 32, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1489, file: !687, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1489, file: !687, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1489, file: !687, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 130, baseType: !1495, size: 192)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 130, size: 192, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1495, file: !687, line: 131, baseType: !110, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1495, file: !687, line: 134, baseType: !137, size: 8, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1495, file: !687, line: 135, baseType: !137, size: 8, offset: 72)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1495, file: !687, line: 136, baseType: !732, size: 32, offset: 96)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1495, file: !687, line: 137, baseType: !7, size: 32, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 139, baseType: !1503, size: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 139, size: 256, elements: !1504)
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1503, file: !687, line: 140, baseType: !110, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1503, file: !687, line: 141, baseType: !732, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1503, file: !687, line: 143, baseType: !559, size: 128, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 145, baseType: !1509, size: 256)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 145, size: 256, elements: !1510)
!1510 = !{!1511, !1512, !1514, !1515, !1520}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1509, file: !687, line: 146, baseType: !110, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1509, file: !687, line: 147, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !676, line: 509, baseType: !1445)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1509, file: !687, line: 148, baseType: !110, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !687, line: 149, baseType: !1516, size: 64, offset: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !687, line: 149, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1516, file: !687, line: 150, baseType: !703, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1516, file: !687, line: 151, baseType: !732, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1509, file: !687, line: 156, baseType: !209, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !687, line: 159, baseType: !1522, size: 128)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !687, line: 159, size: 128, elements: !1523)
!1523 = !{!1524, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1522, file: !687, line: 161, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !687, line: 161, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1522, file: !687, line: 162, baseType: !61, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1450, file: !687, line: 176, baseType: !1142, size: 128, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !687, line: 179, baseType: !1530, size: 32, offset: 384)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !687, line: 179, size: 32, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1530, file: !687, line: 184, baseType: !732, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1530, file: !687, line: 192, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1530, file: !687, line: 194, baseType: !7, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1530, file: !687, line: 195, baseType: !60, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1446, file: !687, line: 199, baseType: !732, size: 32, offset: 416)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1442, file: !786, line: 67, baseType: !198, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1442, file: !786, line: 68, baseType: !198, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !854, file: !855, line: 1206, baseType: !60, size: 32, offset: 12736)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !854, file: !855, line: 1207, baseType: !60, size: 32, offset: 12768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !854, file: !855, line: 1209, baseType: !110, size: 64, offset: 12800)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !854, file: !855, line: 1219, baseType: !224, size: 64, offset: 12864)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !854, file: !855, line: 1220, baseType: !224, size: 64, offset: 12928)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !854, file: !855, line: 1317, baseType: !60, size: 32, offset: 12992)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !854, file: !855, line: 1319, baseType: !853, size: 64, offset: 13056)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !854, file: !855, line: 1322, baseType: !1547, size: 64, offset: 13120)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1549, line: 56, size: 512, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1557, !1558, !1560}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1548, file: !1549, line: 57, baseType: !1547, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1548, file: !1549, line: 58, baseType: !61, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1548, file: !1549, line: 59, baseType: !110, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !1549, line: 60, baseType: !110, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1548, file: !1549, line: 61, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1548, file: !1549, line: 62, baseType: !7, size: 32, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1548, file: !1549, line: 63, baseType: !1559, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !59, line: 153, baseType: !224)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1548, file: !1549, line: 64, baseType: !1561, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !854, file: !855, line: 1326, baseType: !867, size: 32, offset: 13184)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !854, file: !855, line: 1342, baseType: !61, size: 64, offset: 13248)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !854, file: !855, line: 1343, baseType: !225, size: 64, offset: 13312)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !854, file: !855, line: 1344, baseType: !224, size: 64, offset: 13376)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !854, file: !855, line: 1345, baseType: !225, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !854, file: !855, line: 1346, baseType: !225, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !854, file: !855, line: 1347, baseType: !225, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !854, file: !855, line: 1348, baseType: !1142, size: 128, align: 64, offset: 13504)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !854, file: !855, line: 1358, baseType: !1572, size: 34816, offset: 13824)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1573, line: 485, size: 34816, elements: !1574)
!1573 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1604, !1605, !1606, !1607, !1608, !1609, !1612, !1613, !1614}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1572, file: !1573, line: 487, baseType: !1576, size: 192)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 192, elements: !599)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1578, line: 16, size: 64, elements: !1579)
!1578 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1577, file: !1578, line: 17, baseType: !837, size: 16)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1577, file: !1578, line: 18, baseType: !837, size: 16, offset: 16)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1577, file: !1578, line: 19, baseType: !837, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1577, file: !1578, line: 19, baseType: !837, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1577, file: !1578, line: 19, baseType: !837, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1577, file: !1578, line: 19, baseType: !837, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1577, file: !1578, line: 19, baseType: !837, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1577, file: !1578, line: 20, baseType: !837, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1577, file: !1578, line: 20, baseType: !837, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1577, file: !1578, line: 20, baseType: !837, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1577, file: !1578, line: 20, baseType: !837, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1577, file: !1578, line: 20, baseType: !837, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1577, file: !1578, line: 20, baseType: !837, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1572, file: !1573, line: 491, baseType: !110, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1572, file: !1573, line: 495, baseType: !639, size: 16, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1572, file: !1573, line: 496, baseType: !639, size: 16, offset: 272)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1572, file: !1573, line: 497, baseType: !639, size: 16, offset: 288)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1572, file: !1573, line: 498, baseType: !639, size: 16, offset: 304)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1572, file: !1573, line: 502, baseType: !110, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1572, file: !1573, line: 503, baseType: !110, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1572, file: !1573, line: 514, baseType: !1601, size: 256, offset: 448)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1602, size: 256, elements: !790)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1573, line: 483, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1572, file: !1573, line: 516, baseType: !110, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1572, file: !1573, line: 518, baseType: !110, size: 64, offset: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1572, file: !1573, line: 520, baseType: !110, size: 64, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1572, file: !1573, line: 521, baseType: !110, size: 64, offset: 896)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1572, file: !1573, line: 522, baseType: !110, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1572, file: !1573, line: 528, baseType: !1610, size: 64, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1573, line: 10, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1572, file: !1573, line: 535, baseType: !110, size: 64, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1572, file: !1573, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1572, file: !1573, line: 540, baseType: !1615, size: 33280, offset: 1536)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1616, line: 317, size: 33280, elements: !1617)
!1616 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1615, file: !1616, line: 330, baseType: !7, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1615, file: !1616, line: 337, baseType: !110, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1615, file: !1616, line: 348, baseType: !1621, size: 32768, offset: 512)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1616, line: 304, size: 32768, elements: !1622)
!1622 = !{!1623, !1638, !1677, !1727, !1744}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1621, file: !1616, line: 305, baseType: !1624, size: 896)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1616, line: 12, size: 896, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1637}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1624, file: !1616, line: 13, baseType: !197, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1624, file: !1616, line: 14, baseType: !197, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1624, file: !1616, line: 15, baseType: !197, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1624, file: !1616, line: 16, baseType: !197, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1624, file: !1616, line: 17, baseType: !197, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1624, file: !1616, line: 18, baseType: !197, size: 32, offset: 160)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1624, file: !1616, line: 19, baseType: !197, size: 32, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1624, file: !1616, line: 22, baseType: !1634, size: 640, offset: 224)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 640, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 20)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1624, file: !1616, line: 25, baseType: !197, size: 32, offset: 864)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1621, file: !1616, line: 306, baseType: !1639, size: 4096, align: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1616, line: 34, size: 4096, align: 128, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1660, !1661, !1662, !1666, !1668, !1672}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1639, file: !1616, line: 35, baseType: !837, size: 16)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1639, file: !1616, line: 36, baseType: !837, size: 16, offset: 16)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1639, file: !1616, line: 37, baseType: !837, size: 16, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1639, file: !1616, line: 38, baseType: !837, size: 16, offset: 48)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1616, line: 39, baseType: !1646, size: 128, offset: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1616, line: 39, size: 128, elements: !1647)
!1647 = !{!1648, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1616, line: 40, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1616, line: 40, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1649, file: !1616, line: 41, baseType: !224, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1649, file: !1616, line: 42, baseType: !224, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1616, line: 44, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !1616, line: 44, size: 128, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1654, file: !1616, line: 45, baseType: !197, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1654, file: !1616, line: 46, baseType: !197, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1654, file: !1616, line: 47, baseType: !197, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1654, file: !1616, line: 48, baseType: !197, size: 32, offset: 96)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1639, file: !1616, line: 51, baseType: !197, size: 32, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1639, file: !1616, line: 52, baseType: !197, size: 32, offset: 224)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1639, file: !1616, line: 55, baseType: !1663, size: 1024, offset: 256)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1639, file: !1616, line: 58, baseType: !1667, size: 2048, offset: 1280)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2048, elements: !603)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1639, file: !1616, line: 60, baseType: !1669, size: 384, offset: 3328)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 12)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1616, line: 62, baseType: !1673, size: 384, offset: 3712)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1616, line: 62, size: 384, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1673, file: !1616, line: 63, baseType: !1669, size: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1673, file: !1616, line: 64, baseType: !1669, size: 384)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1621, file: !1616, line: 307, baseType: !1678, size: 1088)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1616, line: 79, size: 1088, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1726}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1678, file: !1616, line: 80, baseType: !197, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1678, file: !1616, line: 81, baseType: !197, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1678, file: !1616, line: 82, baseType: !197, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1678, file: !1616, line: 83, baseType: !197, size: 32, offset: 96)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1678, file: !1616, line: 84, baseType: !197, size: 32, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1678, file: !1616, line: 85, baseType: !197, size: 32, offset: 160)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1678, file: !1616, line: 86, baseType: !197, size: 32, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1678, file: !1616, line: 88, baseType: !1634, size: 640, offset: 224)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1678, file: !1616, line: 89, baseType: !133, size: 8, offset: 864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1678, file: !1616, line: 90, baseType: !133, size: 8, offset: 872)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1678, file: !1616, line: 91, baseType: !133, size: 8, offset: 880)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1678, file: !1616, line: 92, baseType: !133, size: 8, offset: 888)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1678, file: !1616, line: 93, baseType: !133, size: 8, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1678, file: !1616, line: 94, baseType: !133, size: 8, offset: 904)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1678, file: !1616, line: 95, baseType: !1695, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1697, line: 11, size: 128, elements: !1698)
!1697 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1696, file: !1697, line: 12, baseType: !115, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1696, file: !1697, line: 13, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1703, line: 56, size: 1344, elements: !1704)
!1703 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1702, file: !1703, line: 61, baseType: !110, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1702, file: !1703, line: 62, baseType: !110, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1702, file: !1703, line: 63, baseType: !110, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1702, file: !1703, line: 64, baseType: !110, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1702, file: !1703, line: 65, baseType: !110, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1702, file: !1703, line: 66, baseType: !110, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1702, file: !1703, line: 68, baseType: !110, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1702, file: !1703, line: 69, baseType: !110, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1702, file: !1703, line: 70, baseType: !110, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1702, file: !1703, line: 71, baseType: !110, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1702, file: !1703, line: 72, baseType: !110, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1702, file: !1703, line: 73, baseType: !110, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1702, file: !1703, line: 74, baseType: !110, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1702, file: !1703, line: 75, baseType: !110, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1702, file: !1703, line: 76, baseType: !110, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1702, file: !1703, line: 81, baseType: !110, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1702, file: !1703, line: 83, baseType: !110, size: 64, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1702, file: !1703, line: 84, baseType: !110, size: 64, offset: 1088)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1703, line: 85, baseType: !110, size: 64, offset: 1152)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1702, file: !1703, line: 86, baseType: !110, size: 64, offset: 1216)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1702, file: !1703, line: 87, baseType: !110, size: 64, offset: 1280)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1678, file: !1616, line: 96, baseType: !197, size: 32, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1621, file: !1616, line: 308, baseType: !1728, size: 4608, align: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1616, line: 289, size: 4608, align: 512, elements: !1729)
!1729 = !{!1730, !1731, !1740}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1728, file: !1616, line: 290, baseType: !1639, size: 4096, align: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1728, file: !1616, line: 291, baseType: !1732, size: 512, offset: 4096)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1616, line: 268, size: 512, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1732, file: !1616, line: 269, baseType: !224, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1732, file: !1616, line: 270, baseType: !224, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1732, file: !1616, line: 271, baseType: !1737, size: 384, offset: 128)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 384, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 6)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1728, file: !1616, line: 292, baseType: !1741, offset: 4608)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1621, file: !1616, line: 309, baseType: !1745, size: 32768)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32768, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 4096)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !687, line: 378, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !846, file: !687, line: 384, baseType: !1164, size: 192, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !707, file: !687, line: 500, baseType: !209, offset: 6656)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !707, file: !687, line: 501, baseType: !1753, size: 64, offset: 6656)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !687, line: 387, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !707, file: !687, line: 516, baseType: !1756, size: 64, offset: 6720)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !687, line: 516, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !707, file: !687, line: 519, baseType: !674, size: 64, offset: 6784)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !707, file: !687, line: 521, baseType: !1760, size: 64, offset: 6848)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !687, line: 521, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !707, file: !687, line: 545, baseType: !732, size: 32, offset: 6912)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !707, file: !687, line: 548, baseType: !1430, size: 8, offset: 6944)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !707, file: !687, line: 550, baseType: !1765, offset: 6952)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1766, line: 142, elements: !223)
!1766 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !707, file: !687, line: 554, baseType: !1768, size: 256, offset: 6976)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1769, line: 102, size: 256, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1768, file: !1769, line: 103, baseType: !740, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1768, file: !1769, line: 104, baseType: !559, size: 128, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1768, file: !1769, line: 105, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1769, line: 21, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !707, file: !687, line: 557, baseType: !197, size: 32, offset: 7232)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !704, file: !687, line: 565, baseType: !1781, offset: 7296)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !1782)
!1782 = !{!1783}
!1783 = !DISubrange(count: -1)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !686, file: !687, line: 333, baseType: !1785, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !676, line: 284, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !676, line: 284, size: 64, elements: !1787)
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1786, file: !676, line: 284, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !730, line: 19, baseType: !110)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !686, file: !687, line: 334, baseType: !110, size: 64, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !686, file: !687, line: 343, baseType: !1792, size: 256, offset: 704)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !687, line: 340, size: 256, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1792, file: !687, line: 341, baseType: !694, size: 192, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1792, file: !687, line: 342, baseType: !110, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !686, file: !687, line: 351, baseType: !559, size: 128, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !686, file: !687, line: 353, baseType: !1798, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !687, line: 353, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !686, file: !687, line: 356, baseType: !1801, size: 64, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !687, line: 356, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !686, file: !687, line: 359, baseType: !110, size: 64, offset: 1216)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !686, file: !687, line: 361, baseType: !674, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !686, file: !687, line: 362, baseType: !61, size: 64, offset: 1344)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !686, file: !687, line: 365, baseType: !740, size: 64, offset: 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !686, file: !687, line: 373, baseType: !1809, offset: 1472)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !687, line: 296, elements: !223)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !653, file: !623, line: 90, baseType: !648, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !653, file: !623, line: 91, baseType: !1812, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !613, file: !555, line: 143, baseType: !1814, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1817, !565}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1820)
!1820 = !{!1821, !1822, !1826, !1830, !1836, !1840}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !18, line: 40, baseType: !17, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1819, file: !18, line: 41, baseType: !1823, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1430}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1819, file: !18, line: 42, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!61}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1819, file: !18, line: 43, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1561, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1819, file: !18, line: 44, baseType: !1837, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1561}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1819, file: !18, line: 45, baseType: !1841, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !61}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !613, file: !555, line: 144, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1561, !565}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !613, file: !555, line: 145, baseType: !1849, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !565, !1852, !1859}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1854, line: 23, baseType: !1855)
!1854 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1854, line: 21, size: 32, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1855, file: !1854, line: 22, baseType: !1858, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !59, line: 32, baseType: !1326)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1854, line: 28, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1854, line: 26, size: 32, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1861, file: !1854, line: 27, baseType: !1864, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !59, line: 33, baseType: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !631, line: 50, baseType: !7)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !554, file: !555, line: 70, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !174, line: 123, size: 1024, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !2011, !2012, !2013, !2014, !2015}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1868, file: !174, line: 124, baseType: !732, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1868, file: !174, line: 125, baseType: !732, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1868, file: !174, line: 135, baseType: !1867, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !174, line: 136, baseType: !81, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1868, file: !174, line: 138, baseType: !694, size: 192, align: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1868, file: !174, line: 140, baseType: !1561, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1868, file: !174, line: 141, baseType: !7, size: 32, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !174, line: 142, baseType: !1878, size: 256, offset: 512)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !174, line: 142, size: 256, elements: !1879)
!1879 = !{!1880, !1934, !1938}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1878, file: !174, line: 143, baseType: !1881, size: 192)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !174, line: 91, size: 192, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1881, file: !174, line: 92, baseType: !110, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1881, file: !174, line: 94, baseType: !711, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1881, file: !174, line: 100, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !174, line: 180, size: 704, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1904, !1905, !1906, !1932, !1933}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1887, file: !174, line: 182, baseType: !1867, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1887, file: !174, line: 183, baseType: !7, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1887, file: !174, line: 186, baseType: !1892, size: 192, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1893, line: 19, size: 192, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1902, !1903}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1892, file: !1893, line: 20, baseType: !1896, size: 128)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1897, line: 292, size: 128, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1896, file: !1897, line: 293, baseType: !209)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1896, file: !1897, line: 295, baseType: !58, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1896, file: !1897, line: 296, baseType: !61, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1892, file: !1893, line: 21, baseType: !7, size: 32, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1892, file: !1893, line: 22, baseType: !7, size: 32, offset: 160)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1887, file: !174, line: 187, baseType: !197, size: 32, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1887, file: !174, line: 188, baseType: !197, size: 32, offset: 352)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1887, file: !174, line: 189, baseType: !1907, size: 64, offset: 384)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !174, line: 168, size: 320, elements: !1909)
!1909 = !{!1910, !1916, !1920, !1924, !1928}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1908, file: !174, line: 169, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!60, !1914, !1886}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !676, line: 539, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1908, file: !174, line: 171, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!60, !1867, !81, !638}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1908, file: !174, line: 173, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!60, !1867}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1908, file: !174, line: 174, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!60, !1867, !1867, !81}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1908, file: !174, line: 176, baseType: !1929, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!60, !1914, !1867, !1886}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1887, file: !174, line: 192, baseType: !559, size: 128, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1887, file: !174, line: 194, baseType: !1135, size: 128, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1878, file: !174, line: 144, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !174, line: 103, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1935, file: !174, line: 104, baseType: !1867, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1878, file: !174, line: 145, baseType: !1939, size: 256)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !174, line: 107, size: 256, elements: !1940)
!1940 = !{!1941, !2006, !2009, !2010}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1939, file: !174, line: 108, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !174, line: 217, size: 768, elements: !1945)
!1945 = !{!1946, !1966, !1970, !1974, !1979, !1983, !1987, !1991, !1992, !1993, !1994, !2002}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1944, file: !174, line: 222, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!60, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !174, line: 197, size: 1088, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1951, file: !174, line: 199, baseType: !1867, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1951, file: !174, line: 200, baseType: !674, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1951, file: !174, line: 201, baseType: !1914, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1951, file: !174, line: 202, baseType: !61, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1951, file: !174, line: 205, baseType: !808, size: 192, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1951, file: !174, line: 206, baseType: !808, size: 192, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1951, file: !174, line: 207, baseType: !60, size: 32, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1951, file: !174, line: 208, baseType: !559, size: 128, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1951, file: !174, line: 209, baseType: !598, size: 64, offset: 832)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1951, file: !174, line: 211, baseType: !644, size: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1951, file: !174, line: 212, baseType: !1430, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1951, file: !174, line: 213, baseType: !1430, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1951, file: !174, line: 214, baseType: !1801, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1944, file: !174, line: 223, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1950}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1944, file: !174, line: 236, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!60, !1914, !61}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1944, file: !174, line: 238, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!61, !1914, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1944, file: !174, line: 239, baseType: !1980, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!61, !1914, !61, !1978}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1944, file: !174, line: 240, baseType: !1984, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1914, !61}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1944, file: !174, line: 242, baseType: !1988, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!629, !1950, !598, !644, !677}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1944, file: !174, line: 252, baseType: !644, size: 64, offset: 448)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1944, file: !174, line: 259, baseType: !1430, size: 8, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1944, file: !174, line: 260, baseType: !1988, size: 64, offset: 576)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1944, file: !174, line: 263, baseType: !1995, size: 64, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1998, !1950, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1999, line: 52, baseType: !7)
!1999 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !174, line: 27, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1944, file: !174, line: 266, baseType: !2003, size: 64, offset: 704)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!60, !1950, !685}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1939, file: !174, line: 109, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !174, line: 31, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1939, file: !174, line: 110, baseType: !677, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1939, file: !174, line: 111, baseType: !1867, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1868, file: !174, line: 148, baseType: !61, size: 64, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1868, file: !174, line: 154, baseType: !224, size: 64, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !174, line: 156, baseType: !639, size: 16, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1868, file: !174, line: 157, baseType: !638, size: 16, offset: 912)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1868, file: !174, line: 158, baseType: !2016, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !174, line: 32, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !554, file: !555, line: 71, baseType: !2019, size: 32, offset: 448)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2020, line: 19, size: 32, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2019, file: !2020, line: 20, baseType: !867, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !554, file: !555, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !554, file: !555, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !554, file: !555, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !554, file: !555, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !554, file: !555, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !551, file: !30, line: 463, baseType: !550, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !551, file: !30, line: 465, baseType: !2030, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !551, file: !30, line: 467, baseType: !81, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !30, line: 468, baseType: !2034, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2044, !2049, !2053}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2036, file: !30, line: 88, baseType: !81, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2036, file: !30, line: 89, baseType: !650, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2036, file: !30, line: 90, baseType: !2041, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!60, !550, !593}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2036, file: !30, line: 91, baseType: !2045, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!598, !550, !2048, !1852, !1859}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2036, file: !30, line: 93, baseType: !2050, size: 64, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !550}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2036, file: !30, line: 95, baseType: !2054, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !2057)
!2057 = !{!2058, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2056, file: !37, line: 279, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!60, !550}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2056, file: !37, line: 280, baseType: !2050, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2056, file: !37, line: 281, baseType: !2059, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2056, file: !37, line: 282, baseType: !2059, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2056, file: !37, line: 283, baseType: !2059, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2056, file: !37, line: 284, baseType: !2059, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2056, file: !37, line: 285, baseType: !2059, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2056, file: !37, line: 286, baseType: !2059, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2056, file: !37, line: 287, baseType: !2059, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2056, file: !37, line: 288, baseType: !2059, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2056, file: !37, line: 289, baseType: !2059, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2056, file: !37, line: 290, baseType: !2059, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2056, file: !37, line: 291, baseType: !2059, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2056, file: !37, line: 292, baseType: !2059, size: 64, offset: 832)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2056, file: !37, line: 293, baseType: !2059, size: 64, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2056, file: !37, line: 294, baseType: !2059, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2056, file: !37, line: 295, baseType: !2059, size: 64, offset: 1024)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2056, file: !37, line: 296, baseType: !2059, size: 64, offset: 1088)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2056, file: !37, line: 297, baseType: !2059, size: 64, offset: 1152)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2056, file: !37, line: 298, baseType: !2059, size: 64, offset: 1216)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2056, file: !37, line: 299, baseType: !2059, size: 64, offset: 1280)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2056, file: !37, line: 300, baseType: !2059, size: 64, offset: 1344)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2056, file: !37, line: 301, baseType: !2059, size: 64, offset: 1408)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !551, file: !30, line: 470, baseType: !2085, size: 64, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2087, line: 82, size: 1408, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2174, !2177, !2180}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2086, file: !2087, line: 83, baseType: !81, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2086, file: !2087, line: 84, baseType: !81, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2086, file: !2087, line: 85, baseType: !550, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2086, file: !2087, line: 86, baseType: !650, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2086, file: !2087, line: 87, baseType: !650, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2086, file: !2087, line: 88, baseType: !650, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2086, file: !2087, line: 90, baseType: !2096, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!60, !550, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2108, !2109, !2110, !2111, !2125, !2138, !2139, !2140, !2141, !2142, !2150, !2151, !2152, !2153, !2154, !2155}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2100, file: !24, line: 96, baseType: !81, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2100, file: !24, line: 97, baseType: !2085, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2100, file: !24, line: 99, baseType: !2105, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !2107, line: 76, flags: DIFlagFwdDecl)
!2107 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2100, file: !24, line: 100, baseType: !81, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2100, file: !24, line: 102, baseType: !1430, size: 8, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2100, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2100, file: !24, line: 105, baseType: !2112, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2115, line: 262, size: 1600, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2119, !2120, !2124}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2114, file: !2115, line: 263, baseType: !2118, size: 256)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !1664)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2114, file: !2115, line: 264, baseType: !2118, size: 256, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2114, file: !2115, line: 265, baseType: !2121, size: 1024, offset: 512)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 1024, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2114, file: !2115, line: 266, baseType: !1561, size: 64, offset: 1536)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2100, file: !24, line: 106, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2115, line: 210, size: 256, elements: !2129)
!2129 = !{!2130, !2134, !2136, !2137}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2128, file: !2115, line: 211, baseType: !2131, size: 72)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 72, elements: !2132)
!2132 = !{!2133}
!2133 = !DISubrange(count: 9)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2128, file: !2115, line: 212, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2115, line: 14, baseType: !110)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2128, file: !2115, line: 213, baseType: !198, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2128, file: !2115, line: 214, baseType: !198, size: 32, offset: 224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2100, file: !24, line: 108, baseType: !2059, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2100, file: !24, line: 109, baseType: !2050, size: 64, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2100, file: !24, line: 110, baseType: !2059, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2100, file: !24, line: 111, baseType: !2050, size: 64, offset: 640)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2100, file: !24, line: 112, baseType: !2143, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!60, !550, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2147, file: !37, line: 51, baseType: !60, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2100, file: !24, line: 113, baseType: !2059, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2100, file: !24, line: 114, baseType: !650, size: 64, offset: 832)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2100, file: !24, line: 115, baseType: !650, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2100, file: !24, line: 117, baseType: !2054, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2100, file: !24, line: 118, baseType: !2050, size: 64, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2100, file: !24, line: 120, baseType: !2156, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2086, file: !2087, line: 91, baseType: !2041, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2086, file: !2087, line: 92, baseType: !2059, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2086, file: !2087, line: 93, baseType: !2050, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2086, file: !2087, line: 94, baseType: !2059, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2086, file: !2087, line: 95, baseType: !2050, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2086, file: !2087, line: 97, baseType: !2059, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2086, file: !2087, line: 98, baseType: !2059, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2086, file: !2087, line: 100, baseType: !2143, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2086, file: !2087, line: 101, baseType: !2059, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2086, file: !2087, line: 103, baseType: !2059, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2086, file: !2087, line: 105, baseType: !2059, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2086, file: !2087, line: 107, baseType: !2054, size: 64, offset: 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2086, file: !2087, line: 109, baseType: !2171, size: 64, offset: 1216)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2087, line: 109, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2086, file: !2087, line: 111, baseType: !2175, size: 64, offset: 1280)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2087, line: 111, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2086, file: !2087, line: 112, baseType: !2178, offset: 1344)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2179, line: 187, elements: !223)
!2179 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2086, file: !2087, line: 114, baseType: !1430, size: 8, offset: 1344)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !551, file: !30, line: 471, baseType: !2099, size: 64, offset: 832)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !551, file: !30, line: 473, baseType: !61, size: 64, offset: 896)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !551, file: !30, line: 475, baseType: !61, size: 64, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !551, file: !30, line: 480, baseType: !808, size: 192, offset: 1024)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !551, file: !30, line: 484, baseType: !2186, size: 576, offset: 1216)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2186, file: !30, line: 362, baseType: !559, size: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2186, file: !30, line: 363, baseType: !559, size: 128, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2186, file: !30, line: 364, baseType: !559, size: 128, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2186, file: !30, line: 365, baseType: !559, size: 128, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2186, file: !30, line: 366, baseType: !1430, size: 8, offset: 512)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2186, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !551, file: !30, line: 485, baseType: !2195, size: 2304, offset: 1792)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2292, !2296}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2195, file: !37, line: 566, baseType: !2146, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2195, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2195, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2195, file: !37, line: 569, baseType: !1430, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2195, file: !37, line: 570, baseType: !1430, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2195, file: !37, line: 571, baseType: !1430, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2195, file: !37, line: 572, baseType: !1430, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2195, file: !37, line: 573, baseType: !1430, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2195, file: !37, line: 574, baseType: !1430, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2195, file: !37, line: 575, baseType: !1430, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2195, file: !37, line: 576, baseType: !1430, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2195, file: !37, line: 577, baseType: !197, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2195, file: !37, line: 578, baseType: !209, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2195, file: !37, line: 580, baseType: !559, size: 128, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2195, file: !37, line: 581, baseType: !1164, size: 192, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2195, file: !37, line: 582, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2215, line: 43, size: 1472, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2224, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2214, file: !2215, line: 44, baseType: !81, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2214, file: !2215, line: 45, baseType: !60, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2214, file: !2215, line: 46, baseType: !559, size: 128, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2214, file: !2215, line: 47, baseType: !209, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2214, file: !2215, line: 48, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2214, file: !2215, line: 49, baseType: !2225, size: 320, offset: 320)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2226, line: 11, size: 320, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !{!2228, !2229, !2230, !2235}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2225, file: !2226, line: 16, baseType: !1128, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2225, file: !2226, line: 17, baseType: !110, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2225, file: !2226, line: 18, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2225, file: !2226, line: 19, baseType: !197, size: 32, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2214, file: !2215, line: 50, baseType: !110, size: 64, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2214, file: !2215, line: 51, baseType: !937, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2214, file: !2215, line: 52, baseType: !937, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2214, file: !2215, line: 53, baseType: !937, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2214, file: !2215, line: 54, baseType: !937, size: 64, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2214, file: !2215, line: 55, baseType: !937, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2214, file: !2215, line: 56, baseType: !110, size: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2214, file: !2215, line: 57, baseType: !110, size: 64, offset: 1088)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2214, file: !2215, line: 58, baseType: !110, size: 64, offset: 1152)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2214, file: !2215, line: 59, baseType: !110, size: 64, offset: 1216)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2214, file: !2215, line: 60, baseType: !110, size: 64, offset: 1280)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2214, file: !2215, line: 61, baseType: !550, size: 64, offset: 1344)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2214, file: !2215, line: 62, baseType: !1430, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2214, file: !2215, line: 63, baseType: !1430, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2195, file: !37, line: 583, baseType: !1430, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2195, file: !37, line: 584, baseType: !1430, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2195, file: !37, line: 585, baseType: !1430, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2195, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2195, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2195, file: !37, line: 592, baseType: !929, size: 512, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2195, file: !37, line: 593, baseType: !224, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2195, file: !37, line: 594, baseType: !1768, size: 256, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2195, file: !37, line: 595, baseType: !1135, size: 128, offset: 1408)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2195, file: !37, line: 596, baseType: !2222, size: 64, offset: 1536)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2195, file: !37, line: 597, baseType: !732, size: 32, offset: 1600)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2195, file: !37, line: 598, baseType: !732, size: 32, offset: 1632)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2195, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2195, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2195, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2195, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2195, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2195, file: !37, line: 604, baseType: !1430, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2195, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2195, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2195, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2195, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2195, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2195, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2195, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2195, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2195, file: !37, line: 613, baseType: !60, size: 32, offset: 1792)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2195, file: !37, line: 614, baseType: !60, size: 32, offset: 1824)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2195, file: !37, line: 615, baseType: !224, size: 64, offset: 1856)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2195, file: !37, line: 616, baseType: !224, size: 64, offset: 1920)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2195, file: !37, line: 617, baseType: !224, size: 64, offset: 1984)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2195, file: !37, line: 618, baseType: !224, size: 64, offset: 2048)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2195, file: !37, line: 620, baseType: !2283, size: 64, offset: 2112)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2284, file: !37, line: 537, baseType: !209)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2284, file: !37, line: 538, baseType: !7, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2284, file: !37, line: 540, baseType: !559, size: 128, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2284, file: !37, line: 543, baseType: !2290, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2195, file: !37, line: 621, baseType: !2293, size: 64, offset: 2176)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !550, !1088}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2195, file: !37, line: 622, baseType: !2297, size: 64, offset: 2240)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !551, file: !30, line: 486, baseType: !2300, size: 64, offset: 4096)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2309, !2310, !2311}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2301, file: !37, line: 643, baseType: !2056, size: 1472)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2301, file: !37, line: 644, baseType: !2059, size: 64, offset: 1472)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2301, file: !37, line: 645, baseType: !2306, size: 64, offset: 1536)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !550, !1430}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2301, file: !37, line: 646, baseType: !2059, size: 64, offset: 1600)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2301, file: !37, line: 647, baseType: !2050, size: 64, offset: 1664)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2301, file: !37, line: 648, baseType: !2050, size: 64, offset: 1728)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !551, file: !30, line: 493, baseType: !2313, size: 64, offset: 4160)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !551, file: !30, line: 499, baseType: !559, size: 128, offset: 4224)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !551, file: !30, line: 502, baseType: !2317, size: 64, offset: 4352)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !551, file: !30, line: 504, baseType: !2321, size: 64, offset: 4416)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !551, file: !30, line: 505, baseType: !224, size: 64, offset: 4480)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !551, file: !30, line: 510, baseType: !224, size: 64, offset: 4544)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !551, file: !30, line: 511, baseType: !2325, size: 64, offset: 4608)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2327)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !551, file: !30, line: 513, baseType: !2329, size: 64, offset: 4672)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2330, file: !30, line: 293, baseType: !7, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2330, file: !30, line: 294, baseType: !110, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !551, file: !30, line: 515, baseType: !559, size: 128, offset: 4736)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !551, file: !30, line: 526, baseType: !2336, offset: 4864)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2337, line: 5, elements: !223)
!2337 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !551, file: !30, line: 528, baseType: !2339, size: 64, offset: 4864)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2341, line: 51, size: 1344, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2344, !2346, !2347, !2437, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2340, file: !2341, line: 52, baseType: !81, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2340, file: !2341, line: 53, baseType: !2345, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2341, line: 28, baseType: !197)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2340, file: !2341, line: 54, baseType: !81, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2340, file: !2341, line: 55, baseType: !2348, size: 192, offset: 192)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2349, line: 17, size: 192, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !{!2351, !2353, !2436}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2348, file: !2349, line: 18, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2348, file: !2349, line: 19, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2349, line: 110, size: 1152, elements: !2357)
!2357 = !{!2358, !2362, !2366, !2372, !2378, !2382, !2386, !2391, !2395, !2396, !2400, !2404, !2408, !2419, !2420, !2421, !2422, !2432}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2356, file: !2349, line: 111, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!2352, !2352}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2356, file: !2349, line: 112, baseType: !2363, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2352}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2356, file: !2349, line: 113, baseType: !2367, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!1430, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2356, file: !2349, line: 114, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!1561, !2370, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2356, file: !2349, line: 116, baseType: !2379, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!1430, !2370, !81}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2356, file: !2349, line: 118, baseType: !2383, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!60, !2370, !81, !7, !61, !644}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2356, file: !2349, line: 123, baseType: !2387, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!60, !2370, !81, !2390, !644}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2356, file: !2349, line: 126, baseType: !2392, size: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!81, !2370}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2356, file: !2349, line: 127, baseType: !2392, size: 64, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2356, file: !2349, line: 128, baseType: !2397, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!2352, !2370}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2356, file: !2349, line: 130, baseType: !2401, size: 64, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2352, !2370, !2352}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2356, file: !2349, line: 133, baseType: !2405, size: 64, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2352, !2370, !81}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2356, file: !2349, line: 135, baseType: !2409, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!60, !2370, !81, !81, !7, !7, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2349, line: 43, size: 640, elements: !2414)
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2413, file: !2349, line: 44, baseType: !2352, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2413, file: !2349, line: 45, baseType: !7, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2413, file: !2349, line: 46, baseType: !2418, size: 512, offset: 128)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 512, elements: !967)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2356, file: !2349, line: 140, baseType: !2401, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2356, file: !2349, line: 143, baseType: !2397, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2356, file: !2349, line: 145, baseType: !2359, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2356, file: !2349, line: 146, baseType: !2423, size: 64, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!60, !2370, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2349, line: 29, size: 128, elements: !2428)
!2428 = !{!2429, !2430, !2431}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2427, file: !2349, line: 30, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2427, file: !2349, line: 31, baseType: !7, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2427, file: !2349, line: 32, baseType: !2370, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2356, file: !2349, line: 148, baseType: !2433, size: 64, offset: 1088)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!60, !2370, !550}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2348, file: !2349, line: 20, baseType: !550, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2340, file: !2341, line: 57, baseType: !2438, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2341, line: 31, size: 704, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2439, file: !2341, line: 32, baseType: !598, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2439, file: !2341, line: 33, baseType: !60, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2439, file: !2341, line: 34, baseType: !61, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2439, file: !2341, line: 35, baseType: !2438, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2439, file: !2341, line: 43, baseType: !665, size: 448, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2340, file: !2341, line: 58, baseType: !2438, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2340, file: !2341, line: 59, baseType: !2339, size: 64, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2340, file: !2341, line: 60, baseType: !2339, size: 64, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2340, file: !2341, line: 61, baseType: !2339, size: 64, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2340, file: !2341, line: 63, baseType: !554, size: 512, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2340, file: !2341, line: 65, baseType: !110, size: 64, offset: 1216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2340, file: !2341, line: 66, baseType: !61, size: 64, offset: 1280)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !551, file: !30, line: 529, baseType: !2352, size: 64, offset: 4928)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !551, file: !30, line: 534, baseType: !2455, size: 32, offset: 4992)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !59, line: 16, baseType: !2456)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !59, line: 13, baseType: !197)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !551, file: !30, line: 535, baseType: !197, size: 32, offset: 5024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !551, file: !30, line: 537, baseType: !209, offset: 5056)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !551, file: !30, line: 538, baseType: !559, size: 128, offset: 5056)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !551, file: !30, line: 540, baseType: !2461, size: 64, offset: 5184)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2463, line: 54, size: 960, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2475, !2479, !2480, !2481, !2482, !2486, !2490, !2491}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !2463, line: 55, baseType: !81, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2462, file: !2463, line: 56, baseType: !2105, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2462, file: !2463, line: 58, baseType: !650, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2462, file: !2463, line: 59, baseType: !650, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2462, file: !2463, line: 60, baseType: !565, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2462, file: !2463, line: 62, baseType: !2041, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2462, file: !2463, line: 63, baseType: !2472, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!598, !550, !2048}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2462, file: !2463, line: 65, baseType: !2476, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2461}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2462, file: !2463, line: 66, baseType: !2050, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2462, file: !2463, line: 68, baseType: !2059, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2462, file: !2463, line: 70, baseType: !1817, size: 64, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2462, file: !2463, line: 71, baseType: !2483, size: 64, offset: 704)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1561, !550}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2462, file: !2463, line: 73, baseType: !2487, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !550, !1852, !1859}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2462, file: !2463, line: 75, baseType: !2054, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2462, file: !2463, line: 77, baseType: !2175, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !551, file: !30, line: 541, baseType: !650, size: 64, offset: 5248)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !551, file: !30, line: 543, baseType: !2050, size: 64, offset: 5312)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !551, file: !30, line: 544, baseType: !2495, size: 64, offset: 5376)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !551, file: !30, line: 545, baseType: !2498, size: 64, offset: 5440)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !551, file: !30, line: 547, baseType: !1430, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !551, file: !30, line: 548, baseType: !1430, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !551, file: !30, line: 549, baseType: !1430, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !551, file: !30, line: 550, baseType: !1430, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2504 = !DILocalVariable(name: "dev", arg: 1, scope: !547, file: !3, line: 155, type: !550)
!2505 = !DILocation(line: 155, column: 66, scope: !547)
!2506 = !DILocalVariable(name: "name", arg: 2, scope: !547, file: !3, line: 156, type: !81)
!2507 = !DILocation(line: 156, column: 15, scope: !547)
!2508 = !DILocalVariable(name: "parent_name", arg: 3, scope: !547, file: !3, line: 156, type: !81)
!2509 = !DILocation(line: 156, column: 33, scope: !547)
!2510 = !DILocalVariable(name: "flags", arg: 4, scope: !547, file: !3, line: 156, type: !110)
!2511 = !DILocation(line: 156, column: 60, scope: !547)
!2512 = !DILocalVariable(name: "reg", arg: 5, scope: !547, file: !3, line: 157, type: !61)
!2513 = !DILocation(line: 157, column: 17, scope: !547)
!2514 = !DILocalVariable(name: "mshift", arg: 6, scope: !547, file: !3, line: 157, type: !133)
!2515 = !DILocation(line: 157, column: 25, scope: !547)
!2516 = !DILocalVariable(name: "mwidth", arg: 7, scope: !547, file: !3, line: 157, type: !133)
!2517 = !DILocation(line: 157, column: 36, scope: !547)
!2518 = !DILocalVariable(name: "nshift", arg: 8, scope: !547, file: !3, line: 157, type: !133)
!2519 = !DILocation(line: 157, column: 47, scope: !547)
!2520 = !DILocalVariable(name: "nwidth", arg: 9, scope: !547, file: !3, line: 157, type: !133)
!2521 = !DILocation(line: 157, column: 58, scope: !547)
!2522 = !DILocalVariable(name: "clk_divider_flags", arg: 10, scope: !547, file: !3, line: 158, type: !133)
!2523 = !DILocation(line: 158, column: 6, scope: !547)
!2524 = !DILocalVariable(name: "lock", arg: 11, scope: !547, file: !3, line: 158, type: !208)
!2525 = !DILocation(line: 158, column: 37, scope: !547)
!2526 = !DILocalVariable(name: "fd", scope: !547, file: !3, line: 160, type: !62)
!2527 = !DILocation(line: 160, column: 33, scope: !547)
!2528 = !DILocalVariable(name: "init", scope: !547, file: !3, line: 161, type: !78)
!2529 = !DILocation(line: 161, column: 23, scope: !547)
!2530 = !DILocalVariable(name: "hw", scope: !547, file: !3, line: 162, type: !93)
!2531 = !DILocation(line: 162, column: 17, scope: !547)
!2532 = !DILocalVariable(name: "ret", scope: !547, file: !3, line: 163, type: !60)
!2533 = !DILocation(line: 163, column: 6, scope: !547)
!2534 = !DILocation(line: 165, column: 7, scope: !547)
!2535 = !DILocation(line: 165, column: 5, scope: !547)
!2536 = !DILocation(line: 166, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !547, file: !3, line: 166, column: 6)
!2538 = !DILocation(line: 166, column: 6, scope: !547)
!2539 = !DILocation(line: 167, column: 10, scope: !2537)
!2540 = !DILocation(line: 167, column: 3, scope: !2537)
!2541 = !DILocation(line: 169, column: 14, scope: !547)
!2542 = !DILocation(line: 169, column: 7, scope: !547)
!2543 = !DILocation(line: 169, column: 12, scope: !547)
!2544 = !DILocation(line: 170, column: 7, scope: !547)
!2545 = !DILocation(line: 170, column: 11, scope: !547)
!2546 = !DILocation(line: 171, column: 15, scope: !547)
!2547 = !DILocation(line: 171, column: 7, scope: !547)
!2548 = !DILocation(line: 171, column: 13, scope: !547)
!2549 = !DILocation(line: 172, column: 22, scope: !547)
!2550 = !DILocation(line: 172, column: 7, scope: !547)
!2551 = !DILocation(line: 172, column: 20, scope: !547)
!2552 = !DILocation(line: 173, column: 21, scope: !547)
!2553 = !DILocation(line: 173, column: 7, scope: !547)
!2554 = !DILocation(line: 173, column: 19, scope: !547)
!2555 = !DILocation(line: 175, column: 12, scope: !547)
!2556 = !DILocation(line: 175, column: 2, scope: !547)
!2557 = !DILocation(line: 175, column: 6, scope: !547)
!2558 = !DILocation(line: 175, column: 10, scope: !547)
!2559 = !DILocation(line: 176, column: 15, scope: !547)
!2560 = !DILocation(line: 176, column: 2, scope: !547)
!2561 = !DILocation(line: 176, column: 6, scope: !547)
!2562 = !DILocation(line: 176, column: 13, scope: !547)
!2563 = !DILocation(line: 177, column: 15, scope: !547)
!2564 = !DILocation(line: 177, column: 2, scope: !547)
!2565 = !DILocation(line: 177, column: 6, scope: !547)
!2566 = !DILocation(line: 177, column: 13, scope: !547)
!2567 = !DILocation(line: 178, column: 14, scope: !547)
!2568 = !DILocation(line: 178, column: 40, scope: !547)
!2569 = !DILocation(line: 178, column: 37, scope: !547)
!2570 = !DILocation(line: 178, column: 2, scope: !547)
!2571 = !DILocation(line: 178, column: 6, scope: !547)
!2572 = !DILocation(line: 178, column: 12, scope: !547)
!2573 = !DILocation(line: 179, column: 15, scope: !547)
!2574 = !DILocation(line: 179, column: 2, scope: !547)
!2575 = !DILocation(line: 179, column: 6, scope: !547)
!2576 = !DILocation(line: 179, column: 13, scope: !547)
!2577 = !DILocation(line: 180, column: 15, scope: !547)
!2578 = !DILocation(line: 180, column: 2, scope: !547)
!2579 = !DILocation(line: 180, column: 6, scope: !547)
!2580 = !DILocation(line: 180, column: 13, scope: !547)
!2581 = !DILocation(line: 181, column: 14, scope: !547)
!2582 = !DILocation(line: 181, column: 40, scope: !547)
!2583 = !DILocation(line: 181, column: 37, scope: !547)
!2584 = !DILocation(line: 181, column: 2, scope: !547)
!2585 = !DILocation(line: 181, column: 6, scope: !547)
!2586 = !DILocation(line: 181, column: 12, scope: !547)
!2587 = !DILocation(line: 182, column: 14, scope: !547)
!2588 = !DILocation(line: 182, column: 2, scope: !547)
!2589 = !DILocation(line: 182, column: 6, scope: !547)
!2590 = !DILocation(line: 182, column: 12, scope: !547)
!2591 = !DILocation(line: 183, column: 13, scope: !547)
!2592 = !DILocation(line: 183, column: 2, scope: !547)
!2593 = !DILocation(line: 183, column: 6, scope: !547)
!2594 = !DILocation(line: 183, column: 11, scope: !547)
!2595 = !DILocation(line: 184, column: 2, scope: !547)
!2596 = !DILocation(line: 184, column: 6, scope: !547)
!2597 = !DILocation(line: 184, column: 9, scope: !547)
!2598 = !DILocation(line: 184, column: 14, scope: !547)
!2599 = !DILocation(line: 186, column: 8, scope: !547)
!2600 = !DILocation(line: 186, column: 12, scope: !547)
!2601 = !DILocation(line: 186, column: 5, scope: !547)
!2602 = !DILocation(line: 187, column: 24, scope: !547)
!2603 = !DILocation(line: 187, column: 29, scope: !547)
!2604 = !DILocation(line: 187, column: 8, scope: !547)
!2605 = !DILocation(line: 187, column: 6, scope: !547)
!2606 = !DILocation(line: 188, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !547, file: !3, line: 188, column: 6)
!2608 = !DILocation(line: 188, column: 6, scope: !547)
!2609 = !DILocation(line: 189, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 188, column: 11)
!2611 = !DILocation(line: 189, column: 3, scope: !2610)
!2612 = !DILocation(line: 190, column: 16, scope: !2610)
!2613 = !DILocation(line: 190, column: 8, scope: !2610)
!2614 = !DILocation(line: 190, column: 6, scope: !2610)
!2615 = !DILocation(line: 191, column: 2, scope: !2610)
!2616 = !DILocation(line: 193, column: 9, scope: !547)
!2617 = !DILocation(line: 193, column: 2, scope: !547)
!2618 = !DILocation(line: 194, column: 1, scope: !547)
!2619 = distinct !DISubprogram(name: "kzalloc", scope: !51, file: !51, line: 662, type: !2620, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!61, !644, !58}
!2622 = !DILocalVariable(name: "s", arg: 1, scope: !2623, file: !51, line: 445, type: !1480)
!2623 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2624, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!61, !1480, !58, !644}
!2626 = !DILocation(line: 445, column: 72, scope: !2623, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 552, column: 10, scope: !2628, inlinedAt: !2631)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !51, line: 540, column: 34)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !51, line: 540, column: 6)
!2630 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2620, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2631 = distinct !DILocation(line: 664, column: 9, scope: !2619)
!2632 = !DILocalVariable(name: "flags", arg: 2, scope: !2623, file: !51, line: 446, type: !58)
!2633 = !DILocation(line: 446, column: 9, scope: !2623, inlinedAt: !2627)
!2634 = !DILocalVariable(name: "size", arg: 3, scope: !2623, file: !51, line: 446, type: !644)
!2635 = !DILocation(line: 446, column: 23, scope: !2623, inlinedAt: !2627)
!2636 = !DILocalVariable(name: "ret", scope: !2623, file: !51, line: 448, type: !61)
!2637 = !DILocation(line: 448, column: 8, scope: !2623, inlinedAt: !2627)
!2638 = !DILocalVariable(name: "flags", arg: 1, scope: !2639, file: !51, line: 318, type: !58)
!2639 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2640, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!50, !58}
!2642 = !DILocation(line: 318, column: 67, scope: !2639, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 553, column: 20, scope: !2628, inlinedAt: !2631)
!2644 = !DILocalVariable(name: "size", arg: 1, scope: !2645, file: !51, line: 346, type: !644)
!2645 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2646, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!7, !644}
!2648 = !DILocation(line: 346, column: 58, scope: !2645, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 547, column: 11, scope: !2628, inlinedAt: !2631)
!2650 = !DILocalVariable(name: "size", arg: 1, scope: !2651, file: !51, line: 472, type: !644)
!2651 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2652, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!61, !644, !58, !7}
!2654 = !DILocation(line: 472, column: 28, scope: !2651, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 481, column: 9, scope: !2656, inlinedAt: !2657)
!2656 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2620, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2657 = distinct !DILocation(line: 545, column: 11, scope: !2658, inlinedAt: !2631)
!2658 = distinct !DILexicalBlock(scope: !2628, file: !51, line: 544, column: 7)
!2659 = !DILocalVariable(name: "flags", arg: 2, scope: !2651, file: !51, line: 472, type: !58)
!2660 = !DILocation(line: 472, column: 40, scope: !2651, inlinedAt: !2655)
!2661 = !DILocalVariable(name: "order", arg: 3, scope: !2651, file: !51, line: 472, type: !7)
!2662 = !DILocation(line: 472, column: 60, scope: !2651, inlinedAt: !2655)
!2663 = !DILocalVariable(name: "size", arg: 1, scope: !2656, file: !51, line: 478, type: !644)
!2664 = !DILocation(line: 478, column: 51, scope: !2656, inlinedAt: !2657)
!2665 = !DILocalVariable(name: "flags", arg: 2, scope: !2656, file: !51, line: 478, type: !58)
!2666 = !DILocation(line: 478, column: 63, scope: !2656, inlinedAt: !2657)
!2667 = !DILocalVariable(name: "order", scope: !2656, file: !51, line: 480, type: !7)
!2668 = !DILocation(line: 480, column: 15, scope: !2656, inlinedAt: !2657)
!2669 = !DILocalVariable(name: "size", arg: 1, scope: !2630, file: !51, line: 538, type: !644)
!2670 = !DILocation(line: 538, column: 45, scope: !2630, inlinedAt: !2631)
!2671 = !DILocalVariable(name: "flags", arg: 2, scope: !2630, file: !51, line: 538, type: !58)
!2672 = !DILocation(line: 538, column: 57, scope: !2630, inlinedAt: !2631)
!2673 = !DILocalVariable(name: "index", scope: !2628, file: !51, line: 542, type: !7)
!2674 = !DILocation(line: 542, column: 16, scope: !2628, inlinedAt: !2631)
!2675 = !DILocalVariable(name: "size", arg: 1, scope: !2619, file: !51, line: 662, type: !644)
!2676 = !DILocation(line: 662, column: 36, scope: !2619)
!2677 = !DILocalVariable(name: "flags", arg: 2, scope: !2619, file: !51, line: 662, type: !58)
!2678 = !DILocation(line: 662, column: 48, scope: !2619)
!2679 = !DILocation(line: 664, column: 17, scope: !2619)
!2680 = !DILocation(line: 664, column: 23, scope: !2619)
!2681 = !DILocation(line: 664, column: 29, scope: !2619)
!2682 = !DILocation(line: 540, column: 27, scope: !2629, inlinedAt: !2631)
!2683 = !DILocation(line: 540, column: 6, scope: !2629, inlinedAt: !2631)
!2684 = !DILocation(line: 540, column: 6, scope: !2630, inlinedAt: !2631)
!2685 = !DILocation(line: 544, column: 7, scope: !2658, inlinedAt: !2631)
!2686 = !DILocation(line: 544, column: 12, scope: !2658, inlinedAt: !2631)
!2687 = !DILocation(line: 544, column: 7, scope: !2628, inlinedAt: !2631)
!2688 = !DILocation(line: 545, column: 25, scope: !2658, inlinedAt: !2631)
!2689 = !DILocation(line: 545, column: 31, scope: !2658, inlinedAt: !2631)
!2690 = !DILocation(line: 480, column: 33, scope: !2656, inlinedAt: !2657)
!2691 = !DILocation(line: 480, column: 23, scope: !2656, inlinedAt: !2657)
!2692 = !DILocation(line: 481, column: 29, scope: !2656, inlinedAt: !2657)
!2693 = !DILocation(line: 481, column: 35, scope: !2656, inlinedAt: !2657)
!2694 = !DILocation(line: 481, column: 42, scope: !2656, inlinedAt: !2657)
!2695 = !DILocation(line: 474, column: 23, scope: !2651, inlinedAt: !2655)
!2696 = !DILocation(line: 474, column: 29, scope: !2651, inlinedAt: !2655)
!2697 = !DILocation(line: 474, column: 36, scope: !2651, inlinedAt: !2655)
!2698 = !DILocation(line: 474, column: 9, scope: !2651, inlinedAt: !2655)
!2699 = !DILocation(line: 545, column: 4, scope: !2658, inlinedAt: !2631)
!2700 = !DILocation(line: 547, column: 25, scope: !2628, inlinedAt: !2631)
!2701 = !DILocation(line: 348, column: 7, scope: !2702, inlinedAt: !2649)
!2702 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 348, column: 6)
!2703 = !DILocation(line: 348, column: 6, scope: !2645, inlinedAt: !2649)
!2704 = !DILocation(line: 349, column: 3, scope: !2702, inlinedAt: !2649)
!2705 = !DILocation(line: 351, column: 6, scope: !2706, inlinedAt: !2649)
!2706 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 351, column: 6)
!2707 = !DILocation(line: 351, column: 11, scope: !2706, inlinedAt: !2649)
!2708 = !DILocation(line: 351, column: 6, scope: !2645, inlinedAt: !2649)
!2709 = !DILocation(line: 352, column: 3, scope: !2706, inlinedAt: !2649)
!2710 = !DILocation(line: 354, column: 32, scope: !2711, inlinedAt: !2649)
!2711 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 354, column: 6)
!2712 = !DILocation(line: 354, column: 37, scope: !2711, inlinedAt: !2649)
!2713 = !DILocation(line: 354, column: 42, scope: !2711, inlinedAt: !2649)
!2714 = !DILocation(line: 354, column: 45, scope: !2711, inlinedAt: !2649)
!2715 = !DILocation(line: 354, column: 50, scope: !2711, inlinedAt: !2649)
!2716 = !DILocation(line: 354, column: 6, scope: !2645, inlinedAt: !2649)
!2717 = !DILocation(line: 355, column: 3, scope: !2711, inlinedAt: !2649)
!2718 = !DILocation(line: 356, column: 32, scope: !2719, inlinedAt: !2649)
!2719 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 356, column: 6)
!2720 = !DILocation(line: 356, column: 37, scope: !2719, inlinedAt: !2649)
!2721 = !DILocation(line: 356, column: 43, scope: !2719, inlinedAt: !2649)
!2722 = !DILocation(line: 356, column: 46, scope: !2719, inlinedAt: !2649)
!2723 = !DILocation(line: 356, column: 51, scope: !2719, inlinedAt: !2649)
!2724 = !DILocation(line: 356, column: 6, scope: !2645, inlinedAt: !2649)
!2725 = !DILocation(line: 357, column: 3, scope: !2719, inlinedAt: !2649)
!2726 = !DILocation(line: 358, column: 6, scope: !2727, inlinedAt: !2649)
!2727 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 358, column: 6)
!2728 = !DILocation(line: 358, column: 11, scope: !2727, inlinedAt: !2649)
!2729 = !DILocation(line: 358, column: 6, scope: !2645, inlinedAt: !2649)
!2730 = !DILocation(line: 358, column: 26, scope: !2727, inlinedAt: !2649)
!2731 = !DILocation(line: 359, column: 6, scope: !2732, inlinedAt: !2649)
!2732 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 359, column: 6)
!2733 = !DILocation(line: 359, column: 11, scope: !2732, inlinedAt: !2649)
!2734 = !DILocation(line: 359, column: 6, scope: !2645, inlinedAt: !2649)
!2735 = !DILocation(line: 359, column: 26, scope: !2732, inlinedAt: !2649)
!2736 = !DILocation(line: 360, column: 6, scope: !2737, inlinedAt: !2649)
!2737 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 360, column: 6)
!2738 = !DILocation(line: 360, column: 11, scope: !2737, inlinedAt: !2649)
!2739 = !DILocation(line: 360, column: 6, scope: !2645, inlinedAt: !2649)
!2740 = !DILocation(line: 360, column: 26, scope: !2737, inlinedAt: !2649)
!2741 = !DILocation(line: 361, column: 6, scope: !2742, inlinedAt: !2649)
!2742 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 361, column: 6)
!2743 = !DILocation(line: 361, column: 11, scope: !2742, inlinedAt: !2649)
!2744 = !DILocation(line: 361, column: 6, scope: !2645, inlinedAt: !2649)
!2745 = !DILocation(line: 361, column: 26, scope: !2742, inlinedAt: !2649)
!2746 = !DILocation(line: 362, column: 6, scope: !2747, inlinedAt: !2649)
!2747 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 362, column: 6)
!2748 = !DILocation(line: 362, column: 11, scope: !2747, inlinedAt: !2649)
!2749 = !DILocation(line: 362, column: 6, scope: !2645, inlinedAt: !2649)
!2750 = !DILocation(line: 362, column: 26, scope: !2747, inlinedAt: !2649)
!2751 = !DILocation(line: 363, column: 6, scope: !2752, inlinedAt: !2649)
!2752 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 363, column: 6)
!2753 = !DILocation(line: 363, column: 11, scope: !2752, inlinedAt: !2649)
!2754 = !DILocation(line: 363, column: 6, scope: !2645, inlinedAt: !2649)
!2755 = !DILocation(line: 363, column: 26, scope: !2752, inlinedAt: !2649)
!2756 = !DILocation(line: 364, column: 6, scope: !2757, inlinedAt: !2649)
!2757 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 364, column: 6)
!2758 = !DILocation(line: 364, column: 11, scope: !2757, inlinedAt: !2649)
!2759 = !DILocation(line: 364, column: 6, scope: !2645, inlinedAt: !2649)
!2760 = !DILocation(line: 364, column: 26, scope: !2757, inlinedAt: !2649)
!2761 = !DILocation(line: 365, column: 6, scope: !2762, inlinedAt: !2649)
!2762 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 365, column: 6)
!2763 = !DILocation(line: 365, column: 11, scope: !2762, inlinedAt: !2649)
!2764 = !DILocation(line: 365, column: 6, scope: !2645, inlinedAt: !2649)
!2765 = !DILocation(line: 365, column: 26, scope: !2762, inlinedAt: !2649)
!2766 = !DILocation(line: 366, column: 6, scope: !2767, inlinedAt: !2649)
!2767 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 366, column: 6)
!2768 = !DILocation(line: 366, column: 11, scope: !2767, inlinedAt: !2649)
!2769 = !DILocation(line: 366, column: 6, scope: !2645, inlinedAt: !2649)
!2770 = !DILocation(line: 366, column: 26, scope: !2767, inlinedAt: !2649)
!2771 = !DILocation(line: 367, column: 6, scope: !2772, inlinedAt: !2649)
!2772 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 367, column: 6)
!2773 = !DILocation(line: 367, column: 11, scope: !2772, inlinedAt: !2649)
!2774 = !DILocation(line: 367, column: 6, scope: !2645, inlinedAt: !2649)
!2775 = !DILocation(line: 367, column: 26, scope: !2772, inlinedAt: !2649)
!2776 = !DILocation(line: 368, column: 6, scope: !2777, inlinedAt: !2649)
!2777 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 368, column: 6)
!2778 = !DILocation(line: 368, column: 11, scope: !2777, inlinedAt: !2649)
!2779 = !DILocation(line: 368, column: 6, scope: !2645, inlinedAt: !2649)
!2780 = !DILocation(line: 368, column: 26, scope: !2777, inlinedAt: !2649)
!2781 = !DILocation(line: 369, column: 6, scope: !2782, inlinedAt: !2649)
!2782 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 369, column: 6)
!2783 = !DILocation(line: 369, column: 11, scope: !2782, inlinedAt: !2649)
!2784 = !DILocation(line: 369, column: 6, scope: !2645, inlinedAt: !2649)
!2785 = !DILocation(line: 369, column: 26, scope: !2782, inlinedAt: !2649)
!2786 = !DILocation(line: 370, column: 6, scope: !2787, inlinedAt: !2649)
!2787 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 370, column: 6)
!2788 = !DILocation(line: 370, column: 11, scope: !2787, inlinedAt: !2649)
!2789 = !DILocation(line: 370, column: 6, scope: !2645, inlinedAt: !2649)
!2790 = !DILocation(line: 370, column: 26, scope: !2787, inlinedAt: !2649)
!2791 = !DILocation(line: 371, column: 6, scope: !2792, inlinedAt: !2649)
!2792 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 371, column: 6)
!2793 = !DILocation(line: 371, column: 11, scope: !2792, inlinedAt: !2649)
!2794 = !DILocation(line: 371, column: 6, scope: !2645, inlinedAt: !2649)
!2795 = !DILocation(line: 371, column: 26, scope: !2792, inlinedAt: !2649)
!2796 = !DILocation(line: 372, column: 6, scope: !2797, inlinedAt: !2649)
!2797 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 372, column: 6)
!2798 = !DILocation(line: 372, column: 11, scope: !2797, inlinedAt: !2649)
!2799 = !DILocation(line: 372, column: 6, scope: !2645, inlinedAt: !2649)
!2800 = !DILocation(line: 372, column: 26, scope: !2797, inlinedAt: !2649)
!2801 = !DILocation(line: 373, column: 6, scope: !2802, inlinedAt: !2649)
!2802 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 373, column: 6)
!2803 = !DILocation(line: 373, column: 11, scope: !2802, inlinedAt: !2649)
!2804 = !DILocation(line: 373, column: 6, scope: !2645, inlinedAt: !2649)
!2805 = !DILocation(line: 373, column: 26, scope: !2802, inlinedAt: !2649)
!2806 = !DILocation(line: 374, column: 6, scope: !2807, inlinedAt: !2649)
!2807 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 374, column: 6)
!2808 = !DILocation(line: 374, column: 11, scope: !2807, inlinedAt: !2649)
!2809 = !DILocation(line: 374, column: 6, scope: !2645, inlinedAt: !2649)
!2810 = !DILocation(line: 374, column: 26, scope: !2807, inlinedAt: !2649)
!2811 = !DILocation(line: 375, column: 6, scope: !2812, inlinedAt: !2649)
!2812 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 375, column: 6)
!2813 = !DILocation(line: 375, column: 11, scope: !2812, inlinedAt: !2649)
!2814 = !DILocation(line: 375, column: 6, scope: !2645, inlinedAt: !2649)
!2815 = !DILocation(line: 375, column: 27, scope: !2812, inlinedAt: !2649)
!2816 = !DILocation(line: 376, column: 6, scope: !2817, inlinedAt: !2649)
!2817 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 376, column: 6)
!2818 = !DILocation(line: 376, column: 11, scope: !2817, inlinedAt: !2649)
!2819 = !DILocation(line: 376, column: 6, scope: !2645, inlinedAt: !2649)
!2820 = !DILocation(line: 376, column: 32, scope: !2817, inlinedAt: !2649)
!2821 = !DILocation(line: 377, column: 6, scope: !2822, inlinedAt: !2649)
!2822 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 377, column: 6)
!2823 = !DILocation(line: 377, column: 11, scope: !2822, inlinedAt: !2649)
!2824 = !DILocation(line: 377, column: 6, scope: !2645, inlinedAt: !2649)
!2825 = !DILocation(line: 377, column: 32, scope: !2822, inlinedAt: !2649)
!2826 = !DILocation(line: 378, column: 6, scope: !2827, inlinedAt: !2649)
!2827 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 378, column: 6)
!2828 = !DILocation(line: 378, column: 11, scope: !2827, inlinedAt: !2649)
!2829 = !DILocation(line: 378, column: 6, scope: !2645, inlinedAt: !2649)
!2830 = !DILocation(line: 378, column: 32, scope: !2827, inlinedAt: !2649)
!2831 = !DILocation(line: 379, column: 6, scope: !2832, inlinedAt: !2649)
!2832 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 379, column: 6)
!2833 = !DILocation(line: 379, column: 11, scope: !2832, inlinedAt: !2649)
!2834 = !DILocation(line: 379, column: 6, scope: !2645, inlinedAt: !2649)
!2835 = !DILocation(line: 379, column: 33, scope: !2832, inlinedAt: !2649)
!2836 = !DILocation(line: 380, column: 6, scope: !2837, inlinedAt: !2649)
!2837 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 380, column: 6)
!2838 = !DILocation(line: 380, column: 11, scope: !2837, inlinedAt: !2649)
!2839 = !DILocation(line: 380, column: 6, scope: !2645, inlinedAt: !2649)
!2840 = !DILocation(line: 380, column: 33, scope: !2837, inlinedAt: !2649)
!2841 = !DILocation(line: 381, column: 6, scope: !2842, inlinedAt: !2649)
!2842 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 381, column: 6)
!2843 = !DILocation(line: 381, column: 11, scope: !2842, inlinedAt: !2649)
!2844 = !DILocation(line: 381, column: 6, scope: !2645, inlinedAt: !2649)
!2845 = !DILocation(line: 381, column: 33, scope: !2842, inlinedAt: !2649)
!2846 = !DILocation(line: 382, column: 2, scope: !2847, inlinedAt: !2649)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !51, line: 382, column: 2)
!2848 = distinct !DILexicalBlock(scope: !2645, file: !51, line: 382, column: 2)
!2849 = !{i32 -2143321518, i32 -2143321489, i32 -2143321443, i32 -2143321385, i32 -2143321331, i32 -2143321277, i32 -2143321222, i32 -2143321191}
!2850 = !DILocation(line: 382, column: 2, scope: !2851, inlinedAt: !2649)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !51, line: 382, column: 2)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !51, line: 382, column: 2)
!2853 = !{i32 -2143320748, i32 -2143320741, i32 -2143320687, i32 -2143320656, i32 -2143320626}
!2854 = !DILocation(line: 382, column: 2, scope: !2852, inlinedAt: !2649)
!2855 = !DILocation(line: 386, column: 1, scope: !2645, inlinedAt: !2649)
!2856 = !DILocation(line: 547, column: 9, scope: !2628, inlinedAt: !2631)
!2857 = !DILocation(line: 549, column: 8, scope: !2858, inlinedAt: !2631)
!2858 = distinct !DILexicalBlock(scope: !2628, file: !51, line: 549, column: 7)
!2859 = !DILocation(line: 549, column: 7, scope: !2628, inlinedAt: !2631)
!2860 = !DILocation(line: 550, column: 4, scope: !2858, inlinedAt: !2631)
!2861 = !DILocation(line: 553, column: 33, scope: !2628, inlinedAt: !2631)
!2862 = !DILocation(line: 325, column: 6, scope: !2863, inlinedAt: !2643)
!2863 = distinct !DILexicalBlock(scope: !2639, file: !51, line: 325, column: 6)
!2864 = !DILocation(line: 325, column: 6, scope: !2639, inlinedAt: !2643)
!2865 = !DILocation(line: 326, column: 3, scope: !2863, inlinedAt: !2643)
!2866 = !DILocation(line: 332, column: 9, scope: !2639, inlinedAt: !2643)
!2867 = !DILocation(line: 332, column: 15, scope: !2639, inlinedAt: !2643)
!2868 = !DILocation(line: 332, column: 2, scope: !2639, inlinedAt: !2643)
!2869 = !DILocation(line: 336, column: 1, scope: !2639, inlinedAt: !2643)
!2870 = !DILocation(line: 553, column: 5, scope: !2628, inlinedAt: !2631)
!2871 = !DILocation(line: 553, column: 41, scope: !2628, inlinedAt: !2631)
!2872 = !DILocation(line: 554, column: 5, scope: !2628, inlinedAt: !2631)
!2873 = !DILocation(line: 554, column: 12, scope: !2628, inlinedAt: !2631)
!2874 = !DILocation(line: 448, column: 31, scope: !2623, inlinedAt: !2627)
!2875 = !DILocation(line: 448, column: 34, scope: !2623, inlinedAt: !2627)
!2876 = !DILocation(line: 448, column: 14, scope: !2623, inlinedAt: !2627)
!2877 = !DILocation(line: 450, column: 22, scope: !2623, inlinedAt: !2627)
!2878 = !DILocation(line: 450, column: 25, scope: !2623, inlinedAt: !2627)
!2879 = !DILocation(line: 450, column: 30, scope: !2623, inlinedAt: !2627)
!2880 = !DILocation(line: 450, column: 36, scope: !2623, inlinedAt: !2627)
!2881 = !DILocation(line: 450, column: 8, scope: !2623, inlinedAt: !2627)
!2882 = !DILocation(line: 450, column: 6, scope: !2623, inlinedAt: !2627)
!2883 = !DILocation(line: 451, column: 9, scope: !2623, inlinedAt: !2627)
!2884 = !DILocation(line: 552, column: 3, scope: !2628, inlinedAt: !2631)
!2885 = !DILocation(line: 557, column: 19, scope: !2630, inlinedAt: !2631)
!2886 = !DILocation(line: 557, column: 25, scope: !2630, inlinedAt: !2631)
!2887 = !DILocation(line: 557, column: 9, scope: !2630, inlinedAt: !2631)
!2888 = !DILocation(line: 557, column: 2, scope: !2630, inlinedAt: !2631)
!2889 = !DILocation(line: 558, column: 1, scope: !2630, inlinedAt: !2631)
!2890 = !DILocation(line: 664, column: 2, scope: !2619)
!2891 = distinct !DISubprogram(name: "ERR_PTR", scope: !2892, file: !2892, line: 24, type: !2893, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2892 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!61, !115}
!2895 = !DILocalVariable(name: "error", arg: 1, scope: !2891, file: !2892, line: 24, type: !115)
!2896 = !DILocation(line: 24, column: 48, scope: !2891)
!2897 = !DILocation(line: 26, column: 18, scope: !2891)
!2898 = !DILocation(line: 26, column: 9, scope: !2891)
!2899 = !DILocation(line: 26, column: 2, scope: !2891)
!2900 = distinct !DISubprogram(name: "clk_register_fractional_divider", scope: !3, file: !3, line: 197, type: !2901, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!73, !550, !81, !81, !110, !61, !133, !133, !133, !133, !133, !208}
!2903 = !DILocalVariable(name: "dev", arg: 1, scope: !2900, file: !3, line: 197, type: !550)
!2904 = !DILocation(line: 197, column: 60, scope: !2900)
!2905 = !DILocalVariable(name: "name", arg: 2, scope: !2900, file: !3, line: 198, type: !81)
!2906 = !DILocation(line: 198, column: 15, scope: !2900)
!2907 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2900, file: !3, line: 198, type: !81)
!2908 = !DILocation(line: 198, column: 33, scope: !2900)
!2909 = !DILocalVariable(name: "flags", arg: 4, scope: !2900, file: !3, line: 198, type: !110)
!2910 = !DILocation(line: 198, column: 60, scope: !2900)
!2911 = !DILocalVariable(name: "reg", arg: 5, scope: !2900, file: !3, line: 199, type: !61)
!2912 = !DILocation(line: 199, column: 17, scope: !2900)
!2913 = !DILocalVariable(name: "mshift", arg: 6, scope: !2900, file: !3, line: 199, type: !133)
!2914 = !DILocation(line: 199, column: 25, scope: !2900)
!2915 = !DILocalVariable(name: "mwidth", arg: 7, scope: !2900, file: !3, line: 199, type: !133)
!2916 = !DILocation(line: 199, column: 36, scope: !2900)
!2917 = !DILocalVariable(name: "nshift", arg: 8, scope: !2900, file: !3, line: 199, type: !133)
!2918 = !DILocation(line: 199, column: 47, scope: !2900)
!2919 = !DILocalVariable(name: "nwidth", arg: 9, scope: !2900, file: !3, line: 199, type: !133)
!2920 = !DILocation(line: 199, column: 58, scope: !2900)
!2921 = !DILocalVariable(name: "clk_divider_flags", arg: 10, scope: !2900, file: !3, line: 200, type: !133)
!2922 = !DILocation(line: 200, column: 6, scope: !2900)
!2923 = !DILocalVariable(name: "lock", arg: 11, scope: !2900, file: !3, line: 200, type: !208)
!2924 = !DILocation(line: 200, column: 37, scope: !2900)
!2925 = !DILocalVariable(name: "hw", scope: !2900, file: !3, line: 202, type: !93)
!2926 = !DILocation(line: 202, column: 17, scope: !2900)
!2927 = !DILocation(line: 204, column: 42, scope: !2900)
!2928 = !DILocation(line: 204, column: 47, scope: !2900)
!2929 = !DILocation(line: 204, column: 53, scope: !2900)
!2930 = !DILocation(line: 204, column: 66, scope: !2900)
!2931 = !DILocation(line: 205, column: 4, scope: !2900)
!2932 = !DILocation(line: 205, column: 9, scope: !2900)
!2933 = !DILocation(line: 205, column: 17, scope: !2900)
!2934 = !DILocation(line: 205, column: 25, scope: !2900)
!2935 = !DILocation(line: 205, column: 33, scope: !2900)
!2936 = !DILocation(line: 205, column: 41, scope: !2900)
!2937 = !DILocation(line: 206, column: 4, scope: !2900)
!2938 = !DILocation(line: 204, column: 7, scope: !2900)
!2939 = !DILocation(line: 204, column: 5, scope: !2900)
!2940 = !DILocation(line: 207, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 207, column: 6)
!2942 = !DILocation(line: 207, column: 6, scope: !2941)
!2943 = !DILocation(line: 207, column: 6, scope: !2900)
!2944 = !DILocation(line: 208, column: 19, scope: !2941)
!2945 = !DILocation(line: 208, column: 10, scope: !2941)
!2946 = !DILocation(line: 208, column: 3, scope: !2941)
!2947 = !DILocation(line: 209, column: 9, scope: !2900)
!2948 = !DILocation(line: 209, column: 13, scope: !2900)
!2949 = !DILocation(line: 209, column: 2, scope: !2900)
!2950 = !DILocation(line: 210, column: 1, scope: !2900)
!2951 = distinct !DISubprogram(name: "IS_ERR", scope: !2892, file: !2892, line: 34, type: !2952, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!1430, !1561}
!2954 = !DILocalVariable(name: "ptr", arg: 1, scope: !2951, file: !2892, line: 34, type: !1561)
!2955 = !DILocation(line: 34, column: 60, scope: !2951)
!2956 = !DILocation(line: 36, column: 9, scope: !2951)
!2957 = !DILocation(line: 36, column: 2, scope: !2951)
!2958 = distinct !DISubprogram(name: "ERR_CAST", scope: !2892, file: !2892, line: 51, type: !2959, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!61, !1561}
!2961 = !DILocalVariable(name: "ptr", arg: 1, scope: !2958, file: !2892, line: 51, type: !1561)
!2962 = !DILocation(line: 51, column: 64, scope: !2958)
!2963 = !DILocation(line: 54, column: 18, scope: !2958)
!2964 = !DILocation(line: 54, column: 2, scope: !2958)
!2965 = distinct !DISubprogram(name: "clk_hw_unregister_fractional_divider", scope: !3, file: !3, line: 213, type: !96, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2966 = !DILocalVariable(name: "hw", arg: 1, scope: !2965, file: !3, line: 213, type: !93)
!2967 = !DILocation(line: 213, column: 58, scope: !2965)
!2968 = !DILocalVariable(name: "fd", scope: !2965, file: !3, line: 215, type: !62)
!2969 = !DILocation(line: 215, column: 33, scope: !2965)
!2970 = !DILocalVariable(name: "__mptr", scope: !2971, file: !3, line: 217, type: !61)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 217, column: 7)
!2972 = !DILocation(line: 217, column: 7, scope: !2971)
!2973 = !DILocation(line: 217, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 217, column: 7)
!2975 = !DILocation(line: 217, column: 5, scope: !2965)
!2976 = !DILocation(line: 219, column: 20, scope: !2965)
!2977 = !DILocation(line: 219, column: 2, scope: !2965)
!2978 = !DILocation(line: 220, column: 8, scope: !2965)
!2979 = !DILocation(line: 220, column: 2, scope: !2965)
!2980 = !DILocation(line: 221, column: 1, scope: !2965)
!2981 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2982, file: !2982, line: 666, type: !2983, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2982 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!110}
!2985 = !DILocalVariable(name: "f", scope: !2981, file: !2982, line: 668, type: !110)
!2986 = !DILocation(line: 668, column: 16, scope: !2981)
!2987 = !DILocation(line: 670, column: 6, scope: !2981)
!2988 = !DILocation(line: 670, column: 4, scope: !2981)
!2989 = !DILocation(line: 671, column: 2, scope: !2981)
!2990 = !DILocation(line: 672, column: 9, scope: !2981)
!2991 = !DILocation(line: 672, column: 2, scope: !2981)
!2992 = distinct !DISubprogram(name: "clk_fd_readl", scope: !3, file: !3, line: 17, type: !2993, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!197, !62}
!2995 = !DILocalVariable(name: "fd", arg: 1, scope: !2992, file: !3, line: 17, type: !62)
!2996 = !DILocation(line: 17, column: 63, scope: !2992)
!2997 = !DILocation(line: 19, column: 6, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 19, column: 6)
!2999 = !DILocation(line: 19, column: 10, scope: !2998)
!3000 = !DILocation(line: 19, column: 16, scope: !2998)
!3001 = !DILocation(line: 19, column: 6, scope: !2992)
!3002 = !DILocation(line: 20, column: 21, scope: !2998)
!3003 = !DILocation(line: 20, column: 25, scope: !2998)
!3004 = !DILocation(line: 20, column: 10, scope: !2998)
!3005 = !DILocation(line: 20, column: 3, scope: !2998)
!3006 = !DILocation(line: 22, column: 15, scope: !2992)
!3007 = !DILocation(line: 22, column: 19, scope: !2992)
!3008 = !DILocation(line: 22, column: 9, scope: !2992)
!3009 = !DILocation(line: 22, column: 2, scope: !2992)
!3010 = !DILocation(line: 23, column: 1, scope: !2992)
!3011 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2982, file: !2982, line: 646, type: !2983, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3012 = !DILocalVariable(name: "__ret", scope: !3013, file: !2982, line: 648, type: !110)
!3013 = distinct !DILexicalBlock(scope: !3011, file: !2982, line: 648, column: 9)
!3014 = !DILocation(line: 648, column: 9, scope: !3013)
!3015 = !DILocalVariable(name: "__edi", scope: !3013, file: !2982, line: 648, type: !110)
!3016 = !DILocalVariable(name: "__esi", scope: !3013, file: !2982, line: 648, type: !110)
!3017 = !DILocalVariable(name: "__edx", scope: !3013, file: !2982, line: 648, type: !110)
!3018 = !DILocalVariable(name: "__ecx", scope: !3013, file: !2982, line: 648, type: !110)
!3019 = !DILocalVariable(name: "__eax", scope: !3013, file: !2982, line: 648, type: !110)
!3020 = !DILocation(line: 648, column: 9, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !2982, line: 648, column: 9)
!3022 = distinct !DILexicalBlock(scope: !3013, file: !2982, line: 648, column: 9)
!3023 = !{i32 -2145668031, i32 -2145665716, i32 -2145665482, i32 -2145665431, i32 -2145665403, i32 -2145665378, i32 -2145665694, i32 -2145665681, i32 -2145665243, i32 -2145665124, i32 -2145665589, i32 -2145665562, i32 -2145665534, i32 -2145665504}
!3024 = !DILocalVariable(name: "__mask", scope: !3025, file: !2982, line: 648, type: !110)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !2982, line: 648, column: 9)
!3026 = !DILocation(line: 648, column: 9, scope: !3025)
!3027 = !DILocation(line: 648, column: 9, scope: !3022)
!3028 = !DILocation(line: 648, column: 2, scope: !3011)
!3029 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2982, file: !2982, line: 656, type: !3030, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null}
!3032 = !DILocalVariable(name: "__edi", scope: !3033, file: !2982, line: 658, type: !110)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !2982, line: 658, column: 2)
!3034 = !DILocation(line: 658, column: 2, scope: !3033)
!3035 = !DILocalVariable(name: "__esi", scope: !3033, file: !2982, line: 658, type: !110)
!3036 = !DILocalVariable(name: "__edx", scope: !3033, file: !2982, line: 658, type: !110)
!3037 = !DILocalVariable(name: "__ecx", scope: !3033, file: !2982, line: 658, type: !110)
!3038 = !DILocalVariable(name: "__eax", scope: !3033, file: !2982, line: 658, type: !110)
!3039 = !{i32 -2145660937, i32 -2145660205, i32 -2145659971, i32 -2145659920, i32 -2145659892, i32 -2145659867, i32 -2145660183, i32 -2145660170, i32 -2145659732, i32 -2145659613, i32 -2145660078, i32 -2145660051, i32 -2145660023, i32 -2145659993}
!3040 = !DILocation(line: 659, column: 1, scope: !3029)
!3041 = distinct !DISubprogram(name: "readl", scope: !3042, file: !3042, line: 59, type: !3043, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3042 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!7, !3045}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3048 = !DILocalVariable(name: "addr", arg: 1, scope: !3041, file: !3042, line: 59, type: !3045)
!3049 = !DILocation(line: 59, column: 1, scope: !3041)
!3050 = !DILocalVariable(name: "ret", scope: !3041, file: !3042, line: 59, type: !7)
!3051 = !{i32 -2144324827}
!3052 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2982, file: !2982, line: 651, type: !3053, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !110}
!3055 = !DILocalVariable(name: "f", arg: 1, scope: !3052, file: !2982, line: 651, type: !110)
!3056 = !DILocation(line: 651, column: 65, scope: !3052)
!3057 = !DILocalVariable(name: "__edi", scope: !3058, file: !2982, line: 653, type: !110)
!3058 = distinct !DILexicalBlock(scope: !3052, file: !2982, line: 653, column: 2)
!3059 = !DILocation(line: 653, column: 2, scope: !3058)
!3060 = !DILocalVariable(name: "__esi", scope: !3058, file: !2982, line: 653, type: !110)
!3061 = !DILocalVariable(name: "__edx", scope: !3058, file: !2982, line: 653, type: !110)
!3062 = !DILocalVariable(name: "__ecx", scope: !3058, file: !2982, line: 653, type: !110)
!3063 = !DILocalVariable(name: "__eax", scope: !3058, file: !2982, line: 653, type: !110)
!3064 = !{i32 -2145663564, i32 -2145662814, i32 -2145662580, i32 -2145662529, i32 -2145662501, i32 -2145662476, i32 -2145662792, i32 -2145662779, i32 -2145662341, i32 -2145662222, i32 -2145662687, i32 -2145662660, i32 -2145662632, i32 -2145662602}
!3065 = !DILocation(line: 654, column: 1, scope: !3052)
!3066 = distinct !DISubprogram(name: "clk_fd_general_approximation", scope: !3, file: !3, line: 71, type: !205, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3067 = !DILocalVariable(name: "hw", arg: 1, scope: !3066, file: !3, line: 71, type: !93)
!3068 = !DILocation(line: 71, column: 57, scope: !3066)
!3069 = !DILocalVariable(name: "rate", arg: 2, scope: !3066, file: !3, line: 71, type: !110)
!3070 = !DILocation(line: 71, column: 75, scope: !3066)
!3071 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !3066, file: !3, line: 72, type: !116)
!3072 = !DILocation(line: 72, column: 22, scope: !3066)
!3073 = !DILocalVariable(name: "m", arg: 4, scope: !3066, file: !3, line: 73, type: !116)
!3074 = !DILocation(line: 73, column: 22, scope: !3066)
!3075 = !DILocalVariable(name: "n", arg: 5, scope: !3066, file: !3, line: 73, type: !116)
!3076 = !DILocation(line: 73, column: 40, scope: !3066)
!3077 = !DILocalVariable(name: "fd", scope: !3066, file: !3, line: 75, type: !62)
!3078 = !DILocation(line: 75, column: 33, scope: !3066)
!3079 = !DILocalVariable(name: "__mptr", scope: !3080, file: !3, line: 75, type: !61)
!3080 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 75, column: 38)
!3081 = !DILocation(line: 75, column: 38, scope: !3080)
!3082 = !DILocation(line: 75, column: 38, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 75, column: 38)
!3084 = !DILocalVariable(name: "scale", scope: !3066, file: !3, line: 76, type: !110)
!3085 = !DILocation(line: 76, column: 16, scope: !3066)
!3086 = !DILocation(line: 83, column: 20, scope: !3066)
!3087 = !DILocation(line: 83, column: 19, scope: !3066)
!3088 = !DILocation(line: 83, column: 34, scope: !3066)
!3089 = !DILocation(line: 83, column: 32, scope: !3066)
!3090 = !DILocation(line: 83, column: 39, scope: !3066)
!3091 = !DILocation(line: 83, column: 10, scope: !3066)
!3092 = !DILocation(line: 83, column: 8, scope: !3066)
!3093 = !DILocation(line: 84, column: 6, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 84, column: 6)
!3095 = !DILocation(line: 84, column: 14, scope: !3094)
!3096 = !DILocation(line: 84, column: 18, scope: !3094)
!3097 = !DILocation(line: 84, column: 12, scope: !3094)
!3098 = !DILocation(line: 84, column: 6, scope: !3066)
!3099 = !DILocation(line: 85, column: 12, scope: !3094)
!3100 = !DILocation(line: 85, column: 20, scope: !3094)
!3101 = !DILocation(line: 85, column: 24, scope: !3094)
!3102 = !DILocation(line: 85, column: 18, scope: !3094)
!3103 = !DILocation(line: 85, column: 8, scope: !3094)
!3104 = !DILocation(line: 85, column: 3, scope: !3094)
!3105 = !DILocation(line: 87, column: 30, scope: !3066)
!3106 = !DILocation(line: 87, column: 37, scope: !3066)
!3107 = !DILocation(line: 87, column: 36, scope: !3066)
!3108 = !DILocation(line: 88, column: 4, scope: !3066)
!3109 = !DILocation(line: 88, column: 32, scope: !3066)
!3110 = !DILocation(line: 89, column: 4, scope: !3066)
!3111 = !DILocation(line: 89, column: 7, scope: !3066)
!3112 = !DILocation(line: 87, column: 2, scope: !3066)
!3113 = !DILocation(line: 90, column: 1, scope: !3066)
!3114 = distinct !DISubprogram(name: "fls_long", scope: !3115, file: !3115, line: 182, type: !3116, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3115 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!7, !110}
!3118 = !DILocalVariable(name: "x", arg: 1, scope: !3119, file: !3120, line: 366, type: !225)
!3119 = distinct !DISubprogram(name: "fls64", scope: !3120, file: !3120, line: 366, type: !3121, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3120 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!60, !225}
!3123 = !DILocation(line: 366, column: 40, scope: !3119, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 186, column: 9, scope: !3114)
!3125 = !DILocalVariable(name: "bitpos", scope: !3119, file: !3120, line: 368, type: !60)
!3126 = !DILocation(line: 368, column: 6, scope: !3119, inlinedAt: !3124)
!3127 = !DILocalVariable(name: "l", arg: 1, scope: !3114, file: !3115, line: 182, type: !110)
!3128 = !DILocation(line: 182, column: 47, scope: !3114)
!3129 = !DILocation(line: 186, column: 15, scope: !3114)
!3130 = !DILocation(line: 374, column: 2, scope: !3119, inlinedAt: !3124)
!3131 = !DILocation(line: 376, column: 14, scope: !3119, inlinedAt: !3124)
!3132 = !{i32 287847}
!3133 = !DILocation(line: 377, column: 9, scope: !3119, inlinedAt: !3124)
!3134 = !DILocation(line: 377, column: 16, scope: !3119, inlinedAt: !3124)
!3135 = !DILocation(line: 186, column: 2, scope: !3114)
!3136 = distinct !DISubprogram(name: "clk_fd_writel", scope: !3, file: !3, line: 25, type: !3137, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !62, !197}
!3139 = !DILocalVariable(name: "fd", arg: 1, scope: !3136, file: !3, line: 25, type: !62)
!3140 = !DILocation(line: 25, column: 65, scope: !3136)
!3141 = !DILocalVariable(name: "val", arg: 2, scope: !3136, file: !3, line: 25, type: !197)
!3142 = !DILocation(line: 25, column: 73, scope: !3136)
!3143 = !DILocation(line: 27, column: 6, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 27, column: 6)
!3145 = !DILocation(line: 27, column: 10, scope: !3144)
!3146 = !DILocation(line: 27, column: 16, scope: !3144)
!3147 = !DILocation(line: 27, column: 6, scope: !3136)
!3148 = !DILocation(line: 28, column: 15, scope: !3144)
!3149 = !DILocation(line: 28, column: 20, scope: !3144)
!3150 = !DILocation(line: 28, column: 24, scope: !3144)
!3151 = !DILocation(line: 28, column: 3, scope: !3144)
!3152 = !DILocation(line: 30, column: 10, scope: !3144)
!3153 = !DILocation(line: 30, column: 15, scope: !3144)
!3154 = !DILocation(line: 30, column: 19, scope: !3144)
!3155 = !DILocation(line: 30, column: 3, scope: !3144)
!3156 = !DILocation(line: 31, column: 1, scope: !3136)
!3157 = distinct !DISubprogram(name: "writel", scope: !3042, file: !3042, line: 67, type: !3158, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !7, !3160}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3161 = !DILocalVariable(name: "val", arg: 1, scope: !3157, file: !3042, line: 67, type: !7)
!3162 = !DILocation(line: 67, column: 1, scope: !3157)
!3163 = !DILocalVariable(name: "addr", arg: 2, scope: !3157, file: !3042, line: 67, type: !3160)
!3164 = !{i32 -2144322434}
!3165 = distinct !DISubprogram(name: "get_order", scope: !3166, file: !3166, line: 29, type: !3167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3166 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!60, !110}
!3169 = !DILocation(line: 366, column: 40, scope: !3119, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 46, column: 9, scope: !3165)
!3171 = !DILocation(line: 368, column: 6, scope: !3119, inlinedAt: !3170)
!3172 = !DILocalVariable(name: "size", arg: 1, scope: !3165, file: !3166, line: 29, type: !110)
!3173 = !DILocation(line: 29, column: 63, scope: !3165)
!3174 = !DILocation(line: 31, column: 27, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3165, file: !3166, line: 31, column: 6)
!3176 = !DILocation(line: 31, column: 6, scope: !3175)
!3177 = !DILocation(line: 31, column: 6, scope: !3165)
!3178 = !DILocation(line: 32, column: 8, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !3166, line: 32, column: 7)
!3180 = distinct !DILexicalBlock(scope: !3175, file: !3166, line: 31, column: 34)
!3181 = !DILocation(line: 32, column: 7, scope: !3180)
!3182 = !DILocation(line: 33, column: 4, scope: !3179)
!3183 = !DILocation(line: 35, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !3166, line: 35, column: 7)
!3185 = !DILocation(line: 35, column: 12, scope: !3184)
!3186 = !DILocation(line: 35, column: 7, scope: !3180)
!3187 = !DILocation(line: 36, column: 4, scope: !3184)
!3188 = !DILocation(line: 38, column: 10, scope: !3180)
!3189 = !DILocation(line: 38, column: 28, scope: !3180)
!3190 = !DILocation(line: 38, column: 41, scope: !3180)
!3191 = !DILocation(line: 38, column: 3, scope: !3180)
!3192 = !DILocation(line: 41, column: 6, scope: !3165)
!3193 = !DILocation(line: 42, column: 7, scope: !3165)
!3194 = !DILocation(line: 46, column: 15, scope: !3165)
!3195 = !DILocation(line: 374, column: 2, scope: !3119, inlinedAt: !3170)
!3196 = !DILocation(line: 376, column: 14, scope: !3119, inlinedAt: !3170)
!3197 = !DILocation(line: 377, column: 9, scope: !3119, inlinedAt: !3170)
!3198 = !DILocation(line: 377, column: 16, scope: !3119, inlinedAt: !3170)
!3199 = !DILocation(line: 46, column: 2, scope: !3165)
!3200 = !DILocation(line: 48, column: 1, scope: !3165)
!3201 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3202, file: !3202, line: 30, type: !3203, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3202 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!60, !224}
!3205 = !DILocation(line: 366, column: 40, scope: !3119, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 32, column: 9, scope: !3201)
!3207 = !DILocation(line: 368, column: 6, scope: !3119, inlinedAt: !3206)
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !3202, line: 30, type: !224)
!3209 = !DILocation(line: 30, column: 21, scope: !3201)
!3210 = !DILocation(line: 32, column: 15, scope: !3201)
!3211 = !DILocation(line: 374, column: 2, scope: !3119, inlinedAt: !3206)
!3212 = !DILocation(line: 376, column: 14, scope: !3119, inlinedAt: !3206)
!3213 = !DILocation(line: 377, column: 9, scope: !3119, inlinedAt: !3206)
!3214 = !DILocation(line: 377, column: 16, scope: !3119, inlinedAt: !3206)
!3215 = !DILocation(line: 32, column: 18, scope: !3201)
!3216 = !DILocation(line: 32, column: 2, scope: !3201)
!3217 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3218, file: !3218, line: 137, type: !3219, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!3218 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!61, !1480, !1561, !644, !58}
!3221 = !DILocalVariable(name: "s", arg: 1, scope: !3217, file: !3218, line: 137, type: !1480)
!3222 = !DILocation(line: 137, column: 54, scope: !3217)
!3223 = !DILocalVariable(name: "object", arg: 2, scope: !3217, file: !3218, line: 137, type: !1561)
!3224 = !DILocation(line: 137, column: 69, scope: !3217)
!3225 = !DILocalVariable(name: "size", arg: 3, scope: !3217, file: !3218, line: 138, type: !644)
!3226 = !DILocation(line: 138, column: 12, scope: !3217)
!3227 = !DILocalVariable(name: "flags", arg: 4, scope: !3217, file: !3218, line: 138, type: !58)
!3228 = !DILocation(line: 138, column: 24, scope: !3217)
!3229 = !DILocation(line: 140, column: 17, scope: !3217)
!3230 = !DILocation(line: 140, column: 2, scope: !3217)
