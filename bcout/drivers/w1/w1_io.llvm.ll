; ModuleID = '../bcout/drivers/w1/w1_io.llvm.bc'
source_filename = "drivers/w1/w1_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.1 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
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
%struct.w1_master = type { %struct.list_head, %struct.module*, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i64, i32, i32, i32, i32, i64, %struct.atomic_t, i8*, i32, i32, i64, %struct.task_struct*, %struct.mutex, %struct.mutex, %struct.device_driver*, %struct.device, %struct.w1_bus_master*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.w1_bus_master = type { i8*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8)*, i8 (i8*)*, void (i8*, i8)*, i8 (i8*, i8*, i32)*, void (i8*, i8*, i32)*, i8 (i8*, i8)*, i8 (i8*)*, i8 (i8*, i32)*, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)*, i8* }
%struct.w1_slave = type { %struct.module*, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i64, %struct.w1_master*, %struct.w1_family*, i8*, %struct.device, %struct.device* }
%struct.w1_reg_num = type { i64 }
%struct.w1_family = type { %struct.list_head, i8, %struct.w1_family_ops*, %struct.of_device_id*, %struct.atomic_t }
%struct.w1_family_ops = type { {}*, void (%struct.w1_slave*)*, %struct.attribute_group**, %struct.hwmon_chip_info* }
%struct.hwmon_chip_info = type opaque

@__param_str_delay_coef = internal constant [16 x i8] c"wire.delay_coef\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@w1_delay_parm = internal global i32 1, align 4, !dbg !144
@__param_delay_coef = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_delay_coef, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @w1_delay_parm to i8*) } }, section "__param", align 8, !dbg !61
@__UNIQUE_ID_delay_coeftype162 = internal constant [29 x i8] c"wire.parmtype=delay_coef:int\00", section ".modinfo", align 1, !dbg !132
@__param_str_disable_irqs = internal constant [18 x i8] c"wire.disable_irqs\00", align 16, !dbg !146
@w1_disable_irqs = internal global i32 0, align 4, !dbg !151
@__param_disable_irqs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_disable_irqs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @w1_disable_irqs to i8*) } }, section "__param", align 8, !dbg !137
@__UNIQUE_ID_disable_irqstype163 = internal constant [31 x i8] c"wire.parmtype=disable_irqs:int\00", section ".modinfo", align 1, !dbg !139
@w1_crc8_table = internal global [256 x i8] c"\00^\BC\E2a?\DD\83\C2\9C~ \A3\FD\1FA\9D\C3!\7F\FC\A2@\1E_\01\E3\BD>`\82\DC#}\9F\C1B\1C\FE\A0\E1\BF]\03\80\DE<b\BE\E0\02\\\DF\81c=|\22\C0\9E\1DC\A1\FFF\18\FA\A4'y\9B\C5\84\DA8f\E5\BBY\07\DB\85g9\BA\E4\06X\19G\A5\FBx&\C4\9Ae;\D9\87\04Z\B8\E6\A7\F9\1BE\C6\98z$\F8\A6D\1A\99\C7%{:d\86\D8[\05\E7\B9\8C\D20n\ED\B3Q\0FN\10\F2\AC/q\93\CD\11O\AD\F3p.\CC\92\D3\8Do1\B2\EC\0EP\AF\F1\13M\CE\90r,m3\D1\8F\0CR\B0\EE2l\8E\D0S\0D\EF\B1\F0\AEL\12\91\CF-s\CA\94v(\AB\F5\17I\08V\B4\EAi7\D5\8BW\09\EB\B56h\8A\D4\95\CB)w\F4\AAH\16\E9\B7U\0B\88\D64j+u\97\C9J\14\F6\A8t*\C8\96\15K\A9\F7\B6\E8\0AT\D7\89k5", align 16, !dbg !153
@__const.w1_reset_select_slave.match = private unnamed_addr constant <{ i8, [8 x i8] }> <{ i8 85, [8 x i8] zeroinitializer }>, align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [4 x i8*] [i8* bitcast (%struct.kernel_param* @__param_delay_coef to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_delay_coeftype162, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_disable_irqs to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_disable_irqstype163, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @w1_touch_bit(%struct.w1_master* %dev, i32 %bit) #0 !dbg !167 {
entry:
  %retval = alloca i8, align 1
  %dev.addr = alloca %struct.w1_master*, align 8
  %bit.addr = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2166, metadata !DIExpression()), !dbg !2167
  store i32 %bit, i32* %bit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2170
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2172
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2172
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 3, !dbg !2173
  %2 = load i8 (i8*, i8)*, i8 (i8*, i8)** %touch_bit, align 8, !dbg !2173
  %tobool = icmp ne i8 (i8*, i8)* %2, null, !dbg !2170
  br i1 %tobool, label %if.then, label %if.else, !dbg !2174

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2175
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 24, !dbg !2176
  %4 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2176
  %touch_bit2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %4, i32 0, i32 3, !dbg !2177
  %5 = load i8 (i8*, i8)*, i8 (i8*, i8)** %touch_bit2, align 8, !dbg !2177
  %6 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2178
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 24, !dbg !2179
  %7 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2179
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %7, i32 0, i32 0, !dbg !2180
  %8 = load i8*, i8** %data, align 8, !dbg !2180
  %9 = load i32, i32* %bit.addr, align 4, !dbg !2181
  %conv = trunc i32 %9 to i8, !dbg !2181
  %call = call zeroext i8 %5(i8* %8, i8 zeroext %conv) #7, !dbg !2175
  store i8 %call, i8* %retval, align 1, !dbg !2182
  br label %return, !dbg !2182

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %bit.addr, align 4, !dbg !2183
  %tobool4 = icmp ne i32 %10, 0, !dbg !2183
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !2185

if.then5:                                         ; preds = %if.else
  %11 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2186
  %call6 = call zeroext i8 @w1_read_bit(%struct.w1_master* %11) #7, !dbg !2187
  store i8 %call6, i8* %retval, align 1, !dbg !2188
  br label %return, !dbg !2188

if.else7:                                         ; preds = %if.else
  %12 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2189
  call void @w1_write_bit(%struct.w1_master* %12, i32 0) #7, !dbg !2191
  store i8 0, i8* %retval, align 1, !dbg !2192
  br label %return, !dbg !2192

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !2193
  ret i8 %13, !dbg !2193
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @w1_read_bit(%struct.w1_master* %dev) #0 !dbg !2194 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %result = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2201, metadata !DIExpression()), !dbg !2202
  store i64 0, i64* %flags, align 8, !dbg !2202
  br label %do.body, !dbg !2203

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2204

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2210, metadata !DIExpression()), !dbg !2209
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2209
  %conv = zext i1 %cmp to i32, !dbg !2209
  store i32 1, i32* %tmp, align 4, !dbg !2209
  %0 = load i32, i32* %tmp, align 4, !dbg !2209
  %call = call i64 @arch_local_irq_save() #7, !dbg !2211
  store i64 %call, i64* %flags, align 8, !dbg !2211
  br label %do.end, !dbg !2211

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !2204

do.end2:                                          ; preds = %do.end
  %1 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2212
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %1, i32 0, i32 24, !dbg !2213
  %2 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2213
  %write_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %2, i32 0, i32 2, !dbg !2214
  %3 = load void (i8*, i8)*, void (i8*, i8)** %write_bit, align 8, !dbg !2214
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2215
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %4, i32 0, i32 24, !dbg !2216
  %5 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2216
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %5, i32 0, i32 0, !dbg !2217
  %6 = load i8*, i8** %data, align 8, !dbg !2217
  call void %3(i8* %6, i8 zeroext 0) #7, !dbg !2212
  call void @w1_delay(i64 6) #7, !dbg !2218
  %7 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2219
  %bus_master4 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 24, !dbg !2220
  %8 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master4, align 8, !dbg !2220
  %write_bit5 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %8, i32 0, i32 2, !dbg !2221
  %9 = load void (i8*, i8)*, void (i8*, i8)** %write_bit5, align 8, !dbg !2221
  %10 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2222
  %bus_master6 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %10, i32 0, i32 24, !dbg !2223
  %11 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master6, align 8, !dbg !2223
  %data7 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %11, i32 0, i32 0, !dbg !2224
  %12 = load i8*, i8** %data7, align 8, !dbg !2224
  call void %9(i8* %12, i8 zeroext 1) #7, !dbg !2219
  call void @w1_delay(i64 9) #7, !dbg !2225
  %13 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2226
  %bus_master8 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %13, i32 0, i32 24, !dbg !2227
  %14 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master8, align 8, !dbg !2227
  %read_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %14, i32 0, i32 1, !dbg !2228
  %15 = load i8 (i8*)*, i8 (i8*)** %read_bit, align 8, !dbg !2228
  %16 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2229
  %bus_master9 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %16, i32 0, i32 24, !dbg !2230
  %17 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master9, align 8, !dbg !2230
  %data10 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %17, i32 0, i32 0, !dbg !2231
  %18 = load i8*, i8** %data10, align 8, !dbg !2231
  %call11 = call zeroext i8 %15(i8* %18) #7, !dbg !2226
  %conv12 = zext i8 %call11 to i32, !dbg !2226
  store i32 %conv12, i32* %result, align 4, !dbg !2232
  br label %do.body13, !dbg !2233

do.body13:                                        ; preds = %do.end2
  br label %do.body14, !dbg !2234

do.body14:                                        ; preds = %do.body13
  call void @llvm.dbg.declare(metadata i64* %__dummy15, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.declare(metadata i64* %__dummy216, metadata !2240, metadata !DIExpression()), !dbg !2239
  %cmp17 = icmp eq i64* %__dummy15, %__dummy216, !dbg !2239
  %conv18 = zext i1 %cmp17 to i32, !dbg !2239
  store i32 1, i32* %tmp19, align 4, !dbg !2239
  %19 = load i32, i32* %tmp19, align 4, !dbg !2239
  %20 = load i64, i64* %flags, align 8, !dbg !2241
  call void @arch_local_irq_restore(i64 %20) #7, !dbg !2241
  br label %do.end20, !dbg !2241

do.end20:                                         ; preds = %do.body14
  br label %do.end21, !dbg !2234

do.end21:                                         ; preds = %do.end20
  call void @w1_delay(i64 55) #7, !dbg !2242
  %21 = load i32, i32* %result, align 4, !dbg !2243
  %and = and i32 %21, 1, !dbg !2244
  %conv22 = trunc i32 %and to i8, !dbg !2243
  ret i8 %conv22, !dbg !2245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @w1_write_bit(%struct.w1_master* %dev, i32 %bit) #0 !dbg !2246 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %bit.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy23 = alloca i64, align 8
  %__dummy224 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i32 %bit, i32* %bit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit.addr, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2253, metadata !DIExpression()), !dbg !2254
  store i64 0, i64* %flags, align 8, !dbg !2254
  %0 = load i32, i32* @w1_disable_irqs, align 4, !dbg !2255
  %tobool = icmp ne i32 %0, 0, !dbg !2255
  br i1 %tobool, label %if.then, label %if.end, !dbg !2257

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !2259

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2261, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2265, metadata !DIExpression()), !dbg !2264
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2264
  %conv = zext i1 %cmp to i32, !dbg !2264
  store i32 1, i32* %tmp, align 4, !dbg !2264
  %1 = load i32, i32* %tmp, align 4, !dbg !2264
  %call = call i64 @arch_local_irq_save() #7, !dbg !2266
  store i64 %call, i64* %flags, align 8, !dbg !2266
  br label %do.end, !dbg !2266

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !2259

do.end2:                                          ; preds = %do.end
  br label %if.end, !dbg !2259

if.end:                                           ; preds = %do.end2, %entry
  %2 = load i32, i32* %bit.addr, align 4, !dbg !2267
  %tobool3 = icmp ne i32 %2, 0, !dbg !2267
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !2269

if.then4:                                         ; preds = %if.end
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2270
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 24, !dbg !2272
  %4 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2272
  %write_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %4, i32 0, i32 2, !dbg !2273
  %5 = load void (i8*, i8)*, void (i8*, i8)** %write_bit, align 8, !dbg !2273
  %6 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2274
  %bus_master5 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 24, !dbg !2275
  %7 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master5, align 8, !dbg !2275
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %7, i32 0, i32 0, !dbg !2276
  %8 = load i8*, i8** %data, align 8, !dbg !2276
  call void %5(i8* %8, i8 zeroext 0) #7, !dbg !2270
  call void @w1_delay(i64 6) #7, !dbg !2277
  %9 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2278
  %bus_master6 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %9, i32 0, i32 24, !dbg !2279
  %10 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master6, align 8, !dbg !2279
  %write_bit7 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %10, i32 0, i32 2, !dbg !2280
  %11 = load void (i8*, i8)*, void (i8*, i8)** %write_bit7, align 8, !dbg !2280
  %12 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2281
  %bus_master8 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %12, i32 0, i32 24, !dbg !2282
  %13 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master8, align 8, !dbg !2282
  %data9 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %13, i32 0, i32 0, !dbg !2283
  %14 = load i8*, i8** %data9, align 8, !dbg !2283
  call void %11(i8* %14, i8 zeroext 1) #7, !dbg !2278
  call void @w1_delay(i64 64) #7, !dbg !2284
  br label %if.end18, !dbg !2285

if.else:                                          ; preds = %if.end
  %15 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2286
  %bus_master10 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %15, i32 0, i32 24, !dbg !2288
  %16 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master10, align 8, !dbg !2288
  %write_bit11 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %16, i32 0, i32 2, !dbg !2289
  %17 = load void (i8*, i8)*, void (i8*, i8)** %write_bit11, align 8, !dbg !2289
  %18 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2290
  %bus_master12 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %18, i32 0, i32 24, !dbg !2291
  %19 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master12, align 8, !dbg !2291
  %data13 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %19, i32 0, i32 0, !dbg !2292
  %20 = load i8*, i8** %data13, align 8, !dbg !2292
  call void %17(i8* %20, i8 zeroext 0) #7, !dbg !2286
  call void @w1_delay(i64 60) #7, !dbg !2293
  %21 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2294
  %bus_master14 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %21, i32 0, i32 24, !dbg !2295
  %22 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master14, align 8, !dbg !2295
  %write_bit15 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %22, i32 0, i32 2, !dbg !2296
  %23 = load void (i8*, i8)*, void (i8*, i8)** %write_bit15, align 8, !dbg !2296
  %24 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2297
  %bus_master16 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %24, i32 0, i32 24, !dbg !2298
  %25 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master16, align 8, !dbg !2298
  %data17 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %25, i32 0, i32 0, !dbg !2299
  %26 = load i8*, i8** %data17, align 8, !dbg !2299
  call void %23(i8* %26, i8 zeroext 1) #7, !dbg !2294
  call void @w1_delay(i64 10) #7, !dbg !2300
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then4
  %27 = load i32, i32* @w1_disable_irqs, align 4, !dbg !2301
  %tobool19 = icmp ne i32 %27, 0, !dbg !2301
  br i1 %tobool19, label %if.then20, label %if.end30, !dbg !2303

if.then20:                                        ; preds = %if.end18
  br label %do.body21, !dbg !2304

do.body21:                                        ; preds = %if.then20
  br label %do.body22, !dbg !2305

do.body22:                                        ; preds = %do.body21
  call void @llvm.dbg.declare(metadata i64* %__dummy23, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.declare(metadata i64* %__dummy224, metadata !2311, metadata !DIExpression()), !dbg !2310
  %cmp25 = icmp eq i64* %__dummy23, %__dummy224, !dbg !2310
  %conv26 = zext i1 %cmp25 to i32, !dbg !2310
  store i32 1, i32* %tmp27, align 4, !dbg !2310
  %28 = load i32, i32* %tmp27, align 4, !dbg !2310
  %29 = load i64, i64* %flags, align 8, !dbg !2312
  call void @arch_local_irq_restore(i64 %29) #7, !dbg !2312
  br label %do.end28, !dbg !2312

do.end28:                                         ; preds = %do.body22
  br label %do.end29, !dbg !2305

do.end29:                                         ; preds = %do.end28
  br label %if.end30, !dbg !2305

if.end30:                                         ; preds = %do.end29, %if.end18
  ret void, !dbg !2313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_write_8(%struct.w1_master* %dev, i8 zeroext %byte) #0 !dbg !2314 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %byte.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2323
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2325
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2325
  %write_byte = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 5, !dbg !2326
  %2 = load void (i8*, i8)*, void (i8*, i8)** %write_byte, align 8, !dbg !2326
  %tobool = icmp ne void (i8*, i8)* %2, null, !dbg !2323
  br i1 %tobool, label %if.then, label %if.else, !dbg !2327

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2328
  call void @w1_pre_write(%struct.w1_master* %3) #7, !dbg !2330
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2331
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %4, i32 0, i32 24, !dbg !2332
  %5 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2332
  %write_byte2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %5, i32 0, i32 5, !dbg !2333
  %6 = load void (i8*, i8)*, void (i8*, i8)** %write_byte2, align 8, !dbg !2333
  %7 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2334
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 24, !dbg !2335
  %8 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2335
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %8, i32 0, i32 0, !dbg !2336
  %9 = load i8*, i8** %data, align 8, !dbg !2336
  %10 = load i8, i8* %byte.addr, align 1, !dbg !2337
  call void %6(i8* %9, i8 zeroext %10) #7, !dbg !2331
  br label %if.end6, !dbg !2338

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2339
  br label %for.cond, !dbg !2341

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4, !dbg !2342
  %cmp = icmp slt i32 %11, 8, !dbg !2344
  br i1 %cmp, label %for.body, label %for.end, !dbg !2345

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !2346
  %cmp4 = icmp eq i32 %12, 7, !dbg !2349
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2350

if.then5:                                         ; preds = %for.body
  %13 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2351
  call void @w1_pre_write(%struct.w1_master* %13) #7, !dbg !2352
  br label %if.end, !dbg !2352

if.end:                                           ; preds = %if.then5, %for.body
  %14 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2353
  %15 = load i8, i8* %byte.addr, align 1, !dbg !2354
  %conv = zext i8 %15 to i32, !dbg !2354
  %16 = load i32, i32* %i, align 4, !dbg !2355
  %shr = ashr i32 %conv, %16, !dbg !2356
  %and = and i32 %shr, 1, !dbg !2357
  %call = call zeroext i8 @w1_touch_bit(%struct.w1_master* %14, i32 %and) #7, !dbg !2358
  br label %for.inc, !dbg !2359

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !2360
  %inc = add i32 %17, 1, !dbg !2360
  store i32 %inc, i32* %i, align 4, !dbg !2360
  br label %for.cond, !dbg !2361, !llvm.loop !2362

for.end:                                          ; preds = %for.cond
  br label %if.end6

if.end6:                                          ; preds = %for.end, %if.then
  %18 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2364
  call void @w1_post_write(%struct.w1_master* %18) #7, !dbg !2365
  ret void, !dbg !2366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @w1_pre_write(%struct.w1_master* %dev) #0 !dbg !2367 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2372
  %pullup_duration = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 17, !dbg !2374
  %1 = load i32, i32* %pullup_duration, align 4, !dbg !2374
  %tobool = icmp ne i32 %1, 0, !dbg !2372
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2375

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2376
  %enable_pullup = getelementptr inbounds %struct.w1_master, %struct.w1_master* %2, i32 0, i32 16, !dbg !2377
  %3 = load i32, i32* %enable_pullup, align 8, !dbg !2377
  %tobool1 = icmp ne i32 %3, 0, !dbg !2376
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !2378

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2379
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %4, i32 0, i32 24, !dbg !2380
  %5 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2380
  %set_pullup = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %5, i32 0, i32 10, !dbg !2381
  %6 = load i8 (i8*, i32)*, i8 (i8*, i32)** %set_pullup, align 8, !dbg !2381
  %tobool3 = icmp ne i8 (i8*, i32)* %6, null, !dbg !2379
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2382

if.then:                                          ; preds = %land.lhs.true2
  %7 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2383
  %bus_master4 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 24, !dbg !2385
  %8 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master4, align 8, !dbg !2385
  %set_pullup5 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %8, i32 0, i32 10, !dbg !2386
  %9 = load i8 (i8*, i32)*, i8 (i8*, i32)** %set_pullup5, align 8, !dbg !2386
  %10 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2387
  %bus_master6 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %10, i32 0, i32 24, !dbg !2388
  %11 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master6, align 8, !dbg !2388
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %11, i32 0, i32 0, !dbg !2389
  %12 = load i8*, i8** %data, align 8, !dbg !2389
  %13 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2390
  %pullup_duration7 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %13, i32 0, i32 17, !dbg !2391
  %14 = load i32, i32* %pullup_duration7, align 4, !dbg !2391
  %call = call zeroext i8 %9(i8* %12, i32 %14) #7, !dbg !2383
  br label %if.end, !dbg !2392

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !2393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @w1_post_write(%struct.w1_master* %dev) #0 !dbg !2394 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2397
  %pullup_duration = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 17, !dbg !2399
  %1 = load i32, i32* %pullup_duration, align 4, !dbg !2399
  %tobool = icmp ne i32 %1, 0, !dbg !2397
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2400

if.then:                                          ; preds = %entry
  %2 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2401
  %enable_pullup = getelementptr inbounds %struct.w1_master, %struct.w1_master* %2, i32 0, i32 16, !dbg !2404
  %3 = load i32, i32* %enable_pullup, align 8, !dbg !2404
  %tobool1 = icmp ne i32 %3, 0, !dbg !2401
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !2405

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2406
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %4, i32 0, i32 24, !dbg !2407
  %5 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2407
  %set_pullup = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %5, i32 0, i32 10, !dbg !2408
  %6 = load i8 (i8*, i32)*, i8 (i8*, i32)** %set_pullup, align 8, !dbg !2408
  %tobool2 = icmp ne i8 (i8*, i32)* %6, null, !dbg !2406
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !2409

if.then3:                                         ; preds = %land.lhs.true
  %7 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2410
  %bus_master4 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 24, !dbg !2411
  %8 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master4, align 8, !dbg !2411
  %set_pullup5 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %8, i32 0, i32 10, !dbg !2412
  %9 = load i8 (i8*, i32)*, i8 (i8*, i32)** %set_pullup5, align 8, !dbg !2412
  %10 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2413
  %bus_master6 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %10, i32 0, i32 24, !dbg !2414
  %11 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master6, align 8, !dbg !2414
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %11, i32 0, i32 0, !dbg !2415
  %12 = load i8*, i8** %data, align 8, !dbg !2415
  %call = call zeroext i8 %9(i8* %12, i32 0) #7, !dbg !2410
  br label %if.end, !dbg !2410

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2416
  %pullup_duration7 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %13, i32 0, i32 17, !dbg !2417
  %14 = load i32, i32* %pullup_duration7, align 4, !dbg !2417
  call void @msleep(i32 %14) #7, !dbg !2418
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %15 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2419
  %pullup_duration8 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %15, i32 0, i32 17, !dbg !2420
  store i32 0, i32* %pullup_duration8, align 4, !dbg !2421
  br label %if.end9, !dbg !2422

if.end9:                                          ; preds = %if.end, %entry
  ret void, !dbg !2423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @w1_triplet(%struct.w1_master* %dev, i32 %bdir) #0 !dbg !2424 {
entry:
  %retval = alloca i8, align 1
  %dev.addr = alloca %struct.w1_master*, align 8
  %bdir.addr = alloca i32, align 4
  %id_bit = alloca i8, align 1
  %comp_bit = alloca i8, align 1
  %retval6 = alloca i8, align 1
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i32 %bdir, i32* %bdir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bdir.addr, metadata !2427, metadata !DIExpression()), !dbg !2428
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2429
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2431
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2431
  %triplet = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 8, !dbg !2432
  %2 = load i8 (i8*, i8)*, i8 (i8*, i8)** %triplet, align 8, !dbg !2432
  %tobool = icmp ne i8 (i8*, i8)* %2, null, !dbg !2429
  br i1 %tobool, label %if.then, label %if.else, !dbg !2433

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2434
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 24, !dbg !2435
  %4 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2435
  %triplet2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %4, i32 0, i32 8, !dbg !2436
  %5 = load i8 (i8*, i8)*, i8 (i8*, i8)** %triplet2, align 8, !dbg !2436
  %6 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2437
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 24, !dbg !2438
  %7 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2438
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %7, i32 0, i32 0, !dbg !2439
  %8 = load i8*, i8** %data, align 8, !dbg !2439
  %9 = load i32, i32* %bdir.addr, align 4, !dbg !2440
  %conv = trunc i32 %9 to i8, !dbg !2440
  %call = call zeroext i8 %5(i8* %8, i8 zeroext %conv) #7, !dbg !2434
  store i8 %call, i8* %retval, align 1, !dbg !2441
  br label %return, !dbg !2441

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %id_bit, metadata !2442, metadata !DIExpression()), !dbg !2444
  %10 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2445
  %call4 = call zeroext i8 @w1_touch_bit(%struct.w1_master* %10, i32 1) #7, !dbg !2446
  store i8 %call4, i8* %id_bit, align 1, !dbg !2444
  call void @llvm.dbg.declare(metadata i8* %comp_bit, metadata !2447, metadata !DIExpression()), !dbg !2448
  %11 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2449
  %call5 = call zeroext i8 @w1_touch_bit(%struct.w1_master* %11, i32 1) #7, !dbg !2450
  store i8 %call5, i8* %comp_bit, align 1, !dbg !2448
  call void @llvm.dbg.declare(metadata i8* %retval6, metadata !2451, metadata !DIExpression()), !dbg !2452
  %12 = load i8, i8* %id_bit, align 1, !dbg !2453
  %conv7 = zext i8 %12 to i32, !dbg !2453
  %tobool8 = icmp ne i32 %conv7, 0, !dbg !2453
  br i1 %tobool8, label %land.lhs.true, label %if.end, !dbg !2455

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8, i8* %comp_bit, align 1, !dbg !2456
  %conv9 = zext i8 %13 to i32, !dbg !2456
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !2456
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !2457

if.then11:                                        ; preds = %land.lhs.true
  store i8 3, i8* %retval, align 1, !dbg !2458
  br label %return, !dbg !2458

if.end:                                           ; preds = %land.lhs.true, %if.else
  %14 = load i8, i8* %id_bit, align 1, !dbg !2459
  %tobool12 = icmp ne i8 %14, 0, !dbg !2459
  br i1 %tobool12, label %if.else18, label %land.lhs.true13, !dbg !2461

land.lhs.true13:                                  ; preds = %if.end
  %15 = load i8, i8* %comp_bit, align 1, !dbg !2462
  %tobool14 = icmp ne i8 %15, 0, !dbg !2462
  br i1 %tobool14, label %if.else18, label %if.then15, !dbg !2463

if.then15:                                        ; preds = %land.lhs.true13
  %16 = load i32, i32* %bdir.addr, align 4, !dbg !2464
  %tobool16 = icmp ne i32 %16, 0, !dbg !2464
  %17 = zext i1 %tobool16 to i64, !dbg !2464
  %cond = select i1 %tobool16, i32 4, i32 0, !dbg !2464
  %conv17 = trunc i32 %cond to i8, !dbg !2464
  store i8 %conv17, i8* %retval6, align 1, !dbg !2466
  br label %if.end24, !dbg !2467

if.else18:                                        ; preds = %land.lhs.true13, %if.end
  %18 = load i8, i8* %id_bit, align 1, !dbg !2468
  %conv19 = zext i8 %18 to i32, !dbg !2468
  store i32 %conv19, i32* %bdir.addr, align 4, !dbg !2470
  %19 = load i8, i8* %id_bit, align 1, !dbg !2471
  %conv20 = zext i8 %19 to i32, !dbg !2471
  %tobool21 = icmp ne i32 %conv20, 0, !dbg !2471
  %20 = zext i1 %tobool21 to i64, !dbg !2471
  %cond22 = select i1 %tobool21, i32 5, i32 2, !dbg !2471
  %conv23 = trunc i32 %cond22 to i8, !dbg !2471
  store i8 %conv23, i8* %retval6, align 1, !dbg !2472
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then15
  %21 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2473
  %bus_master25 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %21, i32 0, i32 24, !dbg !2475
  %22 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master25, align 8, !dbg !2475
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %22, i32 0, i32 3, !dbg !2476
  %23 = load i8 (i8*, i8)*, i8 (i8*, i8)** %touch_bit, align 8, !dbg !2476
  %tobool26 = icmp ne i8 (i8*, i8)* %23, null, !dbg !2473
  br i1 %tobool26, label %if.then27, label %if.else29, !dbg !2477

if.then27:                                        ; preds = %if.end24
  %24 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2478
  %25 = load i32, i32* %bdir.addr, align 4, !dbg !2479
  %call28 = call zeroext i8 @w1_touch_bit(%struct.w1_master* %24, i32 %25) #7, !dbg !2480
  br label %if.end30, !dbg !2480

if.else29:                                        ; preds = %if.end24
  %26 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2481
  %27 = load i32, i32* %bdir.addr, align 4, !dbg !2482
  call void @w1_write_bit(%struct.w1_master* %26, i32 %27) #7, !dbg !2483
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then27
  %28 = load i8, i8* %retval6, align 1, !dbg !2484
  store i8 %28, i8* %retval, align 1, !dbg !2485
  br label %return, !dbg !2485

return:                                           ; preds = %if.end30, %if.then11, %if.then
  %29 = load i8, i8* %retval, align 1, !dbg !2486
  ret i8 %29, !dbg !2486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @w1_read_8(%struct.w1_master* %dev) #0 !dbg !2487 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %i = alloca i32, align 4
  %res = alloca i8, align 1
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata i8* %res, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i8 0, i8* %res, align 1, !dbg !2493
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2494
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2496
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2496
  %read_byte = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 4, !dbg !2497
  %2 = load i8 (i8*)*, i8 (i8*)** %read_byte, align 8, !dbg !2497
  %tobool = icmp ne i8 (i8*)* %2, null, !dbg !2494
  br i1 %tobool, label %if.then, label %if.else, !dbg !2498

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2499
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 24, !dbg !2500
  %4 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2500
  %read_byte2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %4, i32 0, i32 4, !dbg !2501
  %5 = load i8 (i8*)*, i8 (i8*)** %read_byte2, align 8, !dbg !2501
  %6 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2502
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 24, !dbg !2503
  %7 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2503
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %7, i32 0, i32 0, !dbg !2504
  %8 = load i8*, i8** %data, align 8, !dbg !2504
  %call = call zeroext i8 %5(i8* %8) #7, !dbg !2499
  store i8 %call, i8* %res, align 1, !dbg !2505
  br label %if.end, !dbg !2506

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2507
  br label %for.cond, !dbg !2509

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %i, align 4, !dbg !2510
  %cmp = icmp slt i32 %9, 8, !dbg !2512
  br i1 %cmp, label %for.body, label %for.end, !dbg !2513

for.body:                                         ; preds = %for.cond
  %10 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2514
  %call4 = call zeroext i8 @w1_touch_bit(%struct.w1_master* %10, i32 1) #7, !dbg !2515
  %conv = zext i8 %call4 to i32, !dbg !2515
  %11 = load i32, i32* %i, align 4, !dbg !2516
  %shl = shl i32 %conv, %11, !dbg !2517
  %12 = load i8, i8* %res, align 1, !dbg !2518
  %conv5 = zext i8 %12 to i32, !dbg !2518
  %or = or i32 %conv5, %shl, !dbg !2518
  %conv6 = trunc i32 %or to i8, !dbg !2518
  store i8 %conv6, i8* %res, align 1, !dbg !2518
  br label %for.inc, !dbg !2519

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !2520
  %inc = add i32 %13, 1, !dbg !2520
  store i32 %inc, i32* %i, align 4, !dbg !2520
  br label %for.cond, !dbg !2521, !llvm.loop !2522

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %14 = load i8, i8* %res, align 1, !dbg !2524
  ret i8 %14, !dbg !2525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_write_block(%struct.w1_master* %dev, i8* %buf, i32 %len) #0 !dbg !2526 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2535, metadata !DIExpression()), !dbg !2536
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2537
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2539
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2539
  %write_block = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 7, !dbg !2540
  %2 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %write_block, align 8, !dbg !2540
  %tobool = icmp ne void (i8*, i8*, i32)* %2, null, !dbg !2537
  br i1 %tobool, label %if.then, label %if.else, !dbg !2541

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2542
  call void @w1_pre_write(%struct.w1_master* %3) #7, !dbg !2544
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2545
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %4, i32 0, i32 24, !dbg !2546
  %5 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2546
  %write_block2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %5, i32 0, i32 7, !dbg !2547
  %6 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %write_block2, align 8, !dbg !2547
  %7 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2548
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 24, !dbg !2549
  %8 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2549
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %8, i32 0, i32 0, !dbg !2550
  %9 = load i8*, i8** %data, align 8, !dbg !2550
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !2551
  %11 = load i32, i32* %len.addr, align 4, !dbg !2552
  call void %6(i8* %9, i8* %10, i32 %11) #7, !dbg !2545
  br label %if.end, !dbg !2553

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2554
  br label %for.cond, !dbg !2556

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, i32* %i, align 4, !dbg !2557
  %13 = load i32, i32* %len.addr, align 4, !dbg !2559
  %cmp = icmp slt i32 %12, %13, !dbg !2560
  br i1 %cmp, label %for.body, label %for.end, !dbg !2561

for.body:                                         ; preds = %for.cond
  %14 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2562
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !2563
  %16 = load i32, i32* %i, align 4, !dbg !2564
  %idxprom = sext i32 %16 to i64, !dbg !2563
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !2563
  %17 = load i8, i8* %arrayidx, align 1, !dbg !2563
  call void @w1_write_8(%struct.w1_master* %14, i8 zeroext %17) #7, !dbg !2565
  br label %for.inc, !dbg !2565

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !2566
  %inc = add i32 %18, 1, !dbg !2566
  store i32 %inc, i32* %i, align 4, !dbg !2566
  br label %for.cond, !dbg !2567, !llvm.loop !2568

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %19 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2570
  call void @w1_post_write(%struct.w1_master* %19) #7, !dbg !2571
  ret void, !dbg !2572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_touch_block(%struct.w1_master* %dev, i8* %buf, i32 %len) #0 !dbg !2573 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i8, align 1
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !2586, metadata !DIExpression()), !dbg !2587
  store i32 0, i32* %i, align 4, !dbg !2588
  br label %for.cond, !dbg !2590

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2591
  %1 = load i32, i32* %len.addr, align 4, !dbg !2593
  %cmp = icmp slt i32 %0, %1, !dbg !2594
  br i1 %cmp, label %for.body, label %for.end12, !dbg !2595

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %tmp, align 1, !dbg !2596
  store i32 0, i32* %j, align 4, !dbg !2598
  br label %for.cond1, !dbg !2600

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !2601
  %cmp2 = icmp slt i32 %2, 8, !dbg !2603
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2604

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %j, align 4, !dbg !2605
  %cmp4 = icmp eq i32 %3, 7, !dbg !2608
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2609

if.then:                                          ; preds = %for.body3
  %4 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2610
  call void @w1_pre_write(%struct.w1_master* %4) #7, !dbg !2611
  br label %if.end, !dbg !2611

if.end:                                           ; preds = %if.then, %for.body3
  %5 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2612
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !2613
  %7 = load i32, i32* %i, align 4, !dbg !2614
  %idxprom = sext i32 %7 to i64, !dbg !2613
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom, !dbg !2613
  %8 = load i8, i8* %arrayidx, align 1, !dbg !2613
  %conv = zext i8 %8 to i32, !dbg !2613
  %9 = load i32, i32* %j, align 4, !dbg !2615
  %shr = ashr i32 %conv, %9, !dbg !2616
  %and = and i32 %shr, 1, !dbg !2617
  %call = call zeroext i8 @w1_touch_bit(%struct.w1_master* %5, i32 %and) #7, !dbg !2618
  %conv5 = zext i8 %call to i32, !dbg !2618
  %10 = load i32, i32* %j, align 4, !dbg !2619
  %shl = shl i32 %conv5, %10, !dbg !2620
  %11 = load i8, i8* %tmp, align 1, !dbg !2621
  %conv6 = zext i8 %11 to i32, !dbg !2621
  %or = or i32 %conv6, %shl, !dbg !2621
  %conv7 = trunc i32 %or to i8, !dbg !2621
  store i8 %conv7, i8* %tmp, align 1, !dbg !2621
  br label %for.inc, !dbg !2622

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4, !dbg !2623
  %inc = add i32 %12, 1, !dbg !2623
  store i32 %inc, i32* %j, align 4, !dbg !2623
  br label %for.cond1, !dbg !2624, !llvm.loop !2625

for.end:                                          ; preds = %for.cond1
  %13 = load i8, i8* %tmp, align 1, !dbg !2627
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !2628
  %15 = load i32, i32* %i, align 4, !dbg !2629
  %idxprom8 = sext i32 %15 to i64, !dbg !2628
  %arrayidx9 = getelementptr i8, i8* %14, i64 %idxprom8, !dbg !2628
  store i8 %13, i8* %arrayidx9, align 1, !dbg !2630
  br label %for.inc10, !dbg !2631

for.inc10:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !dbg !2632
  %inc11 = add i32 %16, 1, !dbg !2632
  store i32 %inc11, i32* %i, align 4, !dbg !2632
  br label %for.cond, !dbg !2633, !llvm.loop !2634

for.end12:                                        ; preds = %for.cond
  ret void, !dbg !2636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @w1_read_block(%struct.w1_master* %dev, i8* %buf, i32 %len) #0 !dbg !2637 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i8, align 1
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2642, metadata !DIExpression()), !dbg !2643
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !2648, metadata !DIExpression()), !dbg !2649
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2650
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 24, !dbg !2652
  %1 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2652
  %read_block = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %1, i32 0, i32 6, !dbg !2653
  %2 = load i8 (i8*, i8*, i32)*, i8 (i8*, i8*, i32)** %read_block, align 8, !dbg !2653
  %tobool = icmp ne i8 (i8*, i8*, i32)* %2, null, !dbg !2650
  br i1 %tobool, label %if.then, label %if.else, !dbg !2654

if.then:                                          ; preds = %entry
  %3 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2655
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 24, !dbg !2656
  %4 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2656
  %read_block2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %4, i32 0, i32 6, !dbg !2657
  %5 = load i8 (i8*, i8*, i32)*, i8 (i8*, i8*, i32)** %read_block2, align 8, !dbg !2657
  %6 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2658
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 24, !dbg !2659
  %7 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2659
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %7, i32 0, i32 0, !dbg !2660
  %8 = load i8*, i8** %data, align 8, !dbg !2660
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !2661
  %10 = load i32, i32* %len.addr, align 4, !dbg !2662
  %call = call zeroext i8 %5(i8* %8, i8* %9, i32 %10) #7, !dbg !2655
  store i8 %call, i8* %ret, align 1, !dbg !2663
  br label %if.end, !dbg !2664

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2665
  br label %for.cond, !dbg !2668

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4, !dbg !2669
  %12 = load i32, i32* %len.addr, align 4, !dbg !2671
  %cmp = icmp slt i32 %11, %12, !dbg !2672
  br i1 %cmp, label %for.body, label %for.end, !dbg !2673

for.body:                                         ; preds = %for.cond
  %13 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2674
  %call4 = call zeroext i8 @w1_read_8(%struct.w1_master* %13) #7, !dbg !2675
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !2676
  %15 = load i32, i32* %i, align 4, !dbg !2677
  %idxprom = sext i32 %15 to i64, !dbg !2676
  %arrayidx = getelementptr i8, i8* %14, i64 %idxprom, !dbg !2676
  store i8 %call4, i8* %arrayidx, align 1, !dbg !2678
  br label %for.inc, !dbg !2676

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !2679
  %inc = add i32 %16, 1, !dbg !2679
  store i32 %inc, i32* %i, align 4, !dbg !2679
  br label %for.cond, !dbg !2680, !llvm.loop !2681

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %len.addr, align 4, !dbg !2683
  %conv = trunc i32 %17 to i8, !dbg !2683
  store i8 %conv, i8* %ret, align 1, !dbg !2684
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %18 = load i8, i8* %ret, align 1, !dbg !2685
  ret i8 %18, !dbg !2686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @w1_reset_bus(%struct.w1_master* %dev) #0 !dbg !2687 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %result = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i64 0, i64* %flags, align 8, !dbg !2695
  %0 = load i32, i32* @w1_disable_irqs, align 4, !dbg !2696
  %tobool = icmp ne i32 %0, 0, !dbg !2696
  br i1 %tobool, label %if.then, label %if.end, !dbg !2698

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2699

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !2700

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2706, metadata !DIExpression()), !dbg !2705
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2705
  %conv = zext i1 %cmp to i32, !dbg !2705
  store i32 1, i32* %tmp, align 4, !dbg !2705
  %1 = load i32, i32* %tmp, align 4, !dbg !2705
  %call = call i64 @arch_local_irq_save() #7, !dbg !2707
  store i64 %call, i64* %flags, align 8, !dbg !2707
  br label %do.end, !dbg !2707

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !2700

do.end2:                                          ; preds = %do.end
  br label %if.end, !dbg !2700

if.end:                                           ; preds = %do.end2, %entry
  %2 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2708
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %2, i32 0, i32 24, !dbg !2710
  %3 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2710
  %reset_bus = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %3, i32 0, i32 9, !dbg !2711
  %4 = load i8 (i8*)*, i8 (i8*)** %reset_bus, align 8, !dbg !2711
  %tobool3 = icmp ne i8 (i8*)* %4, null, !dbg !2708
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !2712

if.then4:                                         ; preds = %if.end
  %5 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2713
  %bus_master5 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %5, i32 0, i32 24, !dbg !2714
  %6 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master5, align 8, !dbg !2714
  %reset_bus6 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %6, i32 0, i32 9, !dbg !2715
  %7 = load i8 (i8*)*, i8 (i8*)** %reset_bus6, align 8, !dbg !2715
  %8 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2716
  %bus_master7 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %8, i32 0, i32 24, !dbg !2717
  %9 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master7, align 8, !dbg !2717
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %9, i32 0, i32 0, !dbg !2718
  %10 = load i8*, i8** %data, align 8, !dbg !2718
  %call8 = call zeroext i8 %7(i8* %10) #7, !dbg !2713
  %conv9 = zext i8 %call8 to i32, !dbg !2713
  %and = and i32 %conv9, 1, !dbg !2719
  store i32 %and, i32* %result, align 4, !dbg !2720
  br label %if.end23, !dbg !2721

if.else:                                          ; preds = %if.end
  %11 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2722
  %bus_master10 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %11, i32 0, i32 24, !dbg !2724
  %12 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master10, align 8, !dbg !2724
  %write_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %12, i32 0, i32 2, !dbg !2725
  %13 = load void (i8*, i8)*, void (i8*, i8)** %write_bit, align 8, !dbg !2725
  %14 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2726
  %bus_master11 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %14, i32 0, i32 24, !dbg !2727
  %15 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master11, align 8, !dbg !2727
  %data12 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %15, i32 0, i32 0, !dbg !2728
  %16 = load i8*, i8** %data12, align 8, !dbg !2728
  call void %13(i8* %16, i8 zeroext 0) #7, !dbg !2722
  call void @w1_delay(i64 500) #7, !dbg !2729
  %17 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2730
  %bus_master13 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %17, i32 0, i32 24, !dbg !2731
  %18 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master13, align 8, !dbg !2731
  %write_bit14 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %18, i32 0, i32 2, !dbg !2732
  %19 = load void (i8*, i8)*, void (i8*, i8)** %write_bit14, align 8, !dbg !2732
  %20 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2733
  %bus_master15 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %20, i32 0, i32 24, !dbg !2734
  %21 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master15, align 8, !dbg !2734
  %data16 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %21, i32 0, i32 0, !dbg !2735
  %22 = load i8*, i8** %data16, align 8, !dbg !2735
  call void %19(i8* %22, i8 zeroext 1) #7, !dbg !2730
  call void @w1_delay(i64 70) #7, !dbg !2736
  %23 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2737
  %bus_master17 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 24, !dbg !2738
  %24 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master17, align 8, !dbg !2738
  %read_bit = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %24, i32 0, i32 1, !dbg !2739
  %25 = load i8 (i8*)*, i8 (i8*)** %read_bit, align 8, !dbg !2739
  %26 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2740
  %bus_master18 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %26, i32 0, i32 24, !dbg !2741
  %27 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master18, align 8, !dbg !2741
  %data19 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %27, i32 0, i32 0, !dbg !2742
  %28 = load i8*, i8** %data19, align 8, !dbg !2742
  %call20 = call zeroext i8 %25(i8* %28) #7, !dbg !2737
  %conv21 = zext i8 %call20 to i32, !dbg !2737
  %and22 = and i32 %conv21, 1, !dbg !2743
  store i32 %and22, i32* %result, align 4, !dbg !2744
  call void @msleep(i32 1) #7, !dbg !2745
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then4
  %29 = load i32, i32* @w1_disable_irqs, align 4, !dbg !2746
  %tobool24 = icmp ne i32 %29, 0, !dbg !2746
  br i1 %tobool24, label %if.then25, label %if.end35, !dbg !2748

if.then25:                                        ; preds = %if.end23
  br label %do.body26, !dbg !2749

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !2750

do.body27:                                        ; preds = %do.body26
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.declare(metadata i64* %__dummy229, metadata !2756, metadata !DIExpression()), !dbg !2755
  %cmp30 = icmp eq i64* %__dummy28, %__dummy229, !dbg !2755
  %conv31 = zext i1 %cmp30 to i32, !dbg !2755
  store i32 1, i32* %tmp32, align 4, !dbg !2755
  %30 = load i32, i32* %tmp32, align 4, !dbg !2755
  %31 = load i64, i64* %flags, align 8, !dbg !2757
  call void @arch_local_irq_restore(i64 %31) #7, !dbg !2757
  br label %do.end33, !dbg !2757

do.end33:                                         ; preds = %do.body27
  br label %do.end34, !dbg !2750

do.end34:                                         ; preds = %do.end33
  br label %if.end35, !dbg !2750

if.end35:                                         ; preds = %do.end34, %if.end23
  %32 = load i32, i32* %result, align 4, !dbg !2758
  ret i32 %32, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2760 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2764, metadata !DIExpression()), !dbg !2765
  %call = call i64 @arch_local_save_flags() #7, !dbg !2766
  store i64 %call, i64* %f, align 8, !dbg !2767
  call void @arch_local_irq_disable() #7, !dbg !2768
  %0 = load i64, i64* %f, align 8, !dbg !2769
  ret i64 %0, !dbg !2770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @w1_delay(i64 %tm) #0 !dbg !2771 {
entry:
  %tm.addr = alloca i64, align 8
  store i64 %tm, i64* %tm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %tm.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load i64, i64* %tm.addr, align 8, !dbg !2776
  %1 = load i32, i32* @w1_delay_parm, align 4, !dbg !2776
  %conv = sext i32 %1 to i64, !dbg !2776
  %mul = mul i64 %0, %conv, !dbg !2776
  %2 = call i1 @llvm.is.constant.i64(i64 %mul), !dbg !2776
  br i1 %2, label %if.then, label %if.else8, !dbg !2779

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %tm.addr, align 8, !dbg !2780
  %4 = load i32, i32* @w1_delay_parm, align 4, !dbg !2780
  %conv1 = sext i32 %4 to i64, !dbg !2780
  %mul2 = mul i64 %3, %conv1, !dbg !2780
  %div = udiv i64 %mul2, 20000, !dbg !2780
  %cmp = icmp uge i64 %div, 1, !dbg !2780
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2783

if.then4:                                         ; preds = %if.then
  call void @__bad_udelay() #7, !dbg !2780
  br label %if.end, !dbg !2780

if.else:                                          ; preds = %if.then
  %5 = load i64, i64* %tm.addr, align 8, !dbg !2780
  %6 = load i32, i32* @w1_delay_parm, align 4, !dbg !2780
  %conv5 = sext i32 %6 to i64, !dbg !2780
  %mul6 = mul i64 %5, %conv5, !dbg !2780
  %mul7 = mul i64 %mul6, 4295, !dbg !2780
  call void @__const_udelay(i64 %mul7) #7, !dbg !2780
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11, !dbg !2783

if.else8:                                         ; preds = %entry
  %7 = load i64, i64* %tm.addr, align 8, !dbg !2784
  %8 = load i32, i32* @w1_delay_parm, align 4, !dbg !2784
  %conv9 = sext i32 %8 to i64, !dbg !2784
  %mul10 = mul i64 %7, %conv9, !dbg !2784
  call void @__udelay(i64 %mul10) #7, !dbg !2784
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.end
  ret void, !dbg !2786
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !2787 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2790, metadata !DIExpression()), !dbg !2792
  %0 = load i64, i64* %__edi, align 8, !dbg !2792
  store i64 %0, i64* %__edi, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2793, metadata !DIExpression()), !dbg !2792
  %1 = load i64, i64* %__esi, align 8, !dbg !2792
  store i64 %1, i64* %__esi, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2794, metadata !DIExpression()), !dbg !2792
  %2 = load i64, i64* %__edx, align 8, !dbg !2792
  store i64 %2, i64* %__edx, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2795, metadata !DIExpression()), !dbg !2792
  %3 = load i64, i64* %__ecx, align 8, !dbg !2792
  store i64 %3, i64* %__ecx, align 8, !dbg !2792
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2796, metadata !DIExpression()), !dbg !2792
  %4 = load i64, i64* %__eax, align 8, !dbg !2792
  store i64 %4, i64* %__eax, align 8, !dbg !2792
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !2792
  %6 = call i64 @llvm.read_register.i64(metadata !161), !dbg !2792
  %7 = load i64, i64* %f.addr, align 8, !dbg !2792
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !2792, !srcloc !2797
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !2792
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !2792
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2792
  call void @llvm.write_register.i64(metadata !161, i64 %asmresult1), !dbg !2792
  ret void, !dbg !2798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @w1_calc_crc8(i8* %data, i32 %len) #0 !dbg !2799 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %crc = alloca i8, align 1
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata i8* %crc, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i8 0, i8* %crc, align 1, !dbg !2807
  br label %while.cond, !dbg !2808

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %len.addr, align 4, !dbg !2809
  %dec = add i32 %0, -1, !dbg !2809
  store i32 %dec, i32* %len.addr, align 4, !dbg !2809
  %tobool = icmp ne i32 %0, 0, !dbg !2808
  br i1 %tobool, label %while.body, label %while.end, !dbg !2808

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %crc, align 1, !dbg !2810
  %conv = zext i8 %1 to i32, !dbg !2810
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2811
  %incdec.ptr = getelementptr i8, i8* %2, i32 1, !dbg !2811
  store i8* %incdec.ptr, i8** %data.addr, align 8, !dbg !2811
  %3 = load i8, i8* %2, align 1, !dbg !2812
  %conv1 = zext i8 %3 to i32, !dbg !2812
  %xor = xor i32 %conv, %conv1, !dbg !2813
  %idxprom = sext i32 %xor to i64, !dbg !2814
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @w1_crc8_table, i64 0, i64 %idxprom, !dbg !2814
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2814
  store i8 %4, i8* %crc, align 1, !dbg !2815
  br label %while.cond, !dbg !2808, !llvm.loop !2816

while.end:                                        ; preds = %while.cond
  %5 = load i8, i8* %crc, align 1, !dbg !2818
  ret i8 %5, !dbg !2819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_search_devices(%struct.w1_master* %dev, i8 zeroext %search_type, void (%struct.w1_master*, i64)* %cb) #0 !dbg !2820 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %search_type.addr = alloca i8, align 1
  %cb.addr = alloca void (%struct.w1_master*, i64)*, align 8
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2823, metadata !DIExpression()), !dbg !2824
  store i8 %search_type, i8* %search_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %search_type.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  store void (%struct.w1_master*, i64)* %cb, void (%struct.w1_master*, i64)** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.w1_master*, i64)** %cb.addr, metadata !2827, metadata !DIExpression()), !dbg !2828
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2829
  %attempts = getelementptr inbounds %struct.w1_master, %struct.w1_master* %0, i32 0, i32 8, !dbg !2830
  %1 = load i64, i64* %attempts, align 8, !dbg !2831
  %inc = add i64 %1, 1, !dbg !2831
  store i64 %inc, i64* %attempts, align 8, !dbg !2831
  %2 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2832
  %bus_master = getelementptr inbounds %struct.w1_master, %struct.w1_master* %2, i32 0, i32 24, !dbg !2834
  %3 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master, align 8, !dbg !2834
  %search = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %3, i32 0, i32 11, !dbg !2835
  %4 = load void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)*, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)** %search, align 8, !dbg !2835
  %tobool = icmp ne void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)* %4, null, !dbg !2832
  br i1 %tobool, label %if.then, label %if.else, !dbg !2836

if.then:                                          ; preds = %entry
  %5 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2837
  %bus_master1 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %5, i32 0, i32 24, !dbg !2838
  %6 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master1, align 8, !dbg !2838
  %search2 = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %6, i32 0, i32 11, !dbg !2839
  %7 = load void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)*, void (i8*, %struct.w1_master*, i8, void (%struct.w1_master*, i64)*)** %search2, align 8, !dbg !2839
  %8 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2840
  %bus_master3 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %8, i32 0, i32 24, !dbg !2841
  %9 = load %struct.w1_bus_master*, %struct.w1_bus_master** %bus_master3, align 8, !dbg !2841
  %data = getelementptr inbounds %struct.w1_bus_master, %struct.w1_bus_master* %9, i32 0, i32 0, !dbg !2842
  %10 = load i8*, i8** %data, align 8, !dbg !2842
  %11 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2843
  %12 = load i8, i8* %search_type.addr, align 1, !dbg !2844
  %13 = load void (%struct.w1_master*, i64)*, void (%struct.w1_master*, i64)** %cb.addr, align 8, !dbg !2845
  call void %7(i8* %10, %struct.w1_master* %11, i8 zeroext %12, void (%struct.w1_master*, i64)* %13) #7, !dbg !2837
  br label %if.end, !dbg !2837

if.else:                                          ; preds = %entry
  %14 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2846
  %15 = load i8, i8* %search_type.addr, align 1, !dbg !2847
  %16 = load void (%struct.w1_master*, i64)*, void (%struct.w1_master*, i64)** %cb.addr, align 8, !dbg !2848
  call void @w1_search(%struct.w1_master* %14, i8 zeroext %15, void (%struct.w1_master*, i64)* %16) #7, !dbg !2849
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2850
}

; Function Attrs: noredzone
declare dso_local void @w1_search(%struct.w1_master*, i8 zeroext, void (%struct.w1_master*, i64)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @w1_reset_select_slave(%struct.w1_slave* %sl) #0 !dbg !2851 {
entry:
  %retval = alloca i32, align 4
  %sl.addr = alloca %struct.w1_slave*, align 8
  %match = alloca [9 x i8], align 1
  %rn = alloca i64, align 8
  store %struct.w1_slave* %sl, %struct.w1_slave** %sl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_slave** %sl.addr, metadata !2897, metadata !DIExpression()), !dbg !2898
  %0 = load %struct.w1_slave*, %struct.w1_slave** %sl.addr, align 8, !dbg !2899
  %master = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %0, i32 0, i32 7, !dbg !2901
  %1 = load %struct.w1_master*, %struct.w1_master** %master, align 8, !dbg !2901
  %call = call i32 @w1_reset_bus(%struct.w1_master* %1) #7, !dbg !2902
  %tobool = icmp ne i32 %call, 0, !dbg !2902
  br i1 %tobool, label %if.then, label %if.end, !dbg !2903

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

if.end:                                           ; preds = %entry
  %2 = load %struct.w1_slave*, %struct.w1_slave** %sl.addr, align 8, !dbg !2905
  %master1 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %2, i32 0, i32 7, !dbg !2907
  %3 = load %struct.w1_master*, %struct.w1_master** %master1, align 8, !dbg !2907
  %slave_count = getelementptr inbounds %struct.w1_master, %struct.w1_master* %3, i32 0, i32 7, !dbg !2908
  %4 = load i32, i32* %slave_count, align 4, !dbg !2908
  %cmp = icmp eq i32 %4, 1, !dbg !2909
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2910

if.then2:                                         ; preds = %if.end
  %5 = load %struct.w1_slave*, %struct.w1_slave** %sl.addr, align 8, !dbg !2911
  %master3 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %5, i32 0, i32 7, !dbg !2912
  %6 = load %struct.w1_master*, %struct.w1_master** %master3, align 8, !dbg !2912
  call void @w1_write_8(%struct.w1_master* %6, i8 zeroext -52) #7, !dbg !2913
  br label %if.end5, !dbg !2913

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata [9 x i8]* %match, metadata !2914, metadata !DIExpression()), !dbg !2919
  %7 = bitcast [9 x i8]* %match to i8*, !dbg !2919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds (<{ i8, [8 x i8] }>, <{ i8, [8 x i8] }>* @__const.w1_reset_select_slave.match, i32 0, i32 0), i64 9, i1 false), !dbg !2919
  call void @llvm.dbg.declare(metadata i64* %rn, metadata !2920, metadata !DIExpression()), !dbg !2921
  %8 = load %struct.w1_slave*, %struct.w1_slave** %sl.addr, align 8, !dbg !2922
  %reg_num = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %8, i32 0, i32 3, !dbg !2922
  %9 = bitcast %struct.w1_reg_num* %reg_num to i64*, !dbg !2922
  %10 = load i64, i64* %9, align 8, !dbg !2922
  store i64 %10, i64* %rn, align 8, !dbg !2921
  %arrayidx = getelementptr [9 x i8], [9 x i8]* %match, i64 0, i64 1, !dbg !2923
  %11 = bitcast i64* %rn to i8*, !dbg !2924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 8 %11, i64 8, i1 false), !dbg !2924
  %12 = load %struct.w1_slave*, %struct.w1_slave** %sl.addr, align 8, !dbg !2925
  %master4 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %12, i32 0, i32 7, !dbg !2926
  %13 = load %struct.w1_master*, %struct.w1_master** %master4, align 8, !dbg !2926
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %match, i64 0, i64 0, !dbg !2927
  call void @w1_write_block(%struct.w1_master* %13, i8* %arraydecay, i32 9) #7, !dbg !2928
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  store i32 0, i32* %retval, align 4, !dbg !2929
  br label %return, !dbg !2929

return:                                           ; preds = %if.end5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2930
  ret i32 %14, !dbg !2930
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @w1_reset_resume_command(%struct.w1_master* %dev) #0 !dbg !2931 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.w1_master*, align 8
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  %0 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2934
  %call = call i32 @w1_reset_bus(%struct.w1_master* %0) #7, !dbg !2936
  %tobool = icmp ne i32 %call, 0, !dbg !2936
  br i1 %tobool, label %if.then, label %if.end, !dbg !2937

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

if.end:                                           ; preds = %entry
  %1 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2939
  %2 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2940
  %slave_count = getelementptr inbounds %struct.w1_master, %struct.w1_master* %2, i32 0, i32 7, !dbg !2941
  %3 = load i32, i32* %slave_count, align 4, !dbg !2941
  %cmp = icmp sgt i32 %3, 1, !dbg !2942
  %4 = zext i1 %cmp to i64, !dbg !2940
  %cond = select i1 %cmp, i32 165, i32 204, !dbg !2940
  %conv = trunc i32 %cond to i8, !dbg !2940
  call void @w1_write_8(%struct.w1_master* %1, i8 zeroext %conv) #7, !dbg !2943
  store i32 0, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2945
  ret i32 %5, !dbg !2945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @w1_next_pullup(%struct.w1_master* %dev, i32 %delay) #0 !dbg !2946 {
entry:
  %dev.addr = alloca %struct.w1_master*, align 8
  %delay.addr = alloca i32, align 4
  store %struct.w1_master* %dev, %struct.w1_master** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.w1_master** %dev.addr, metadata !2947, metadata !DIExpression()), !dbg !2948
  store i32 %delay, i32* %delay.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  %0 = load i32, i32* %delay.addr, align 4, !dbg !2951
  %1 = load %struct.w1_master*, %struct.w1_master** %dev.addr, align 8, !dbg !2952
  %pullup_duration = getelementptr inbounds %struct.w1_master, %struct.w1_master* %1, i32 0, i32 17, !dbg !2953
  store i32 %0, i32* %pullup_duration, align 4, !dbg !2954
  ret void, !dbg !2955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2956 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2960, metadata !DIExpression()), !dbg !2959
  %0 = load i64, i64* %__edi, align 8, !dbg !2959
  store i64 %0, i64* %__edi, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2961, metadata !DIExpression()), !dbg !2959
  %1 = load i64, i64* %__esi, align 8, !dbg !2959
  store i64 %1, i64* %__esi, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2962, metadata !DIExpression()), !dbg !2959
  %2 = load i64, i64* %__edx, align 8, !dbg !2959
  store i64 %2, i64* %__edx, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2963, metadata !DIExpression()), !dbg !2959
  %3 = load i64, i64* %__ecx, align 8, !dbg !2959
  store i64 %3, i64* %__ecx, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2964, metadata !DIExpression()), !dbg !2959
  %4 = load i64, i64* %__eax, align 8, !dbg !2959
  store i64 %4, i64* %__eax, align 8, !dbg !2959
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2959
  %6 = call i64 @llvm.read_register.i64(metadata !161), !dbg !2965
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !2965, !srcloc !2968
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2965
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2965
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2965
  call void @llvm.write_register.i64(metadata !161, i64 %asmresult1), !dbg !2965
  %8 = load i64, i64* %__eax, align 8, !dbg !2965
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2969, metadata !DIExpression()), !dbg !2971
  store i64 -1, i64* %__mask, align 8, !dbg !2971
  %9 = load i64, i64* %__mask, align 8, !dbg !2971
  store i64 %9, i64* %tmp, align 8, !dbg !2971
  %10 = load i64, i64* %tmp, align 8, !dbg !2971
  %and = and i64 %8, %10, !dbg !2965
  store i64 %and, i64* %__ret, align 8, !dbg !2965
  %11 = load i64, i64* %__ret, align 8, !dbg !2959
  store i64 %11, i64* %tmp2, align 8, !dbg !2972
  %12 = load i64, i64* %tmp2, align 8, !dbg !2959
  ret i64 %12, !dbg !2973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !2974 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2977, metadata !DIExpression()), !dbg !2979
  %0 = load i64, i64* %__edi, align 8, !dbg !2979
  store i64 %0, i64* %__edi, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2980, metadata !DIExpression()), !dbg !2979
  %1 = load i64, i64* %__esi, align 8, !dbg !2979
  store i64 %1, i64* %__esi, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2981, metadata !DIExpression()), !dbg !2979
  %2 = load i64, i64* %__edx, align 8, !dbg !2979
  store i64 %2, i64* %__edx, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2982, metadata !DIExpression()), !dbg !2979
  %3 = load i64, i64* %__ecx, align 8, !dbg !2979
  store i64 %3, i64* %__ecx, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2983, metadata !DIExpression()), !dbg !2979
  %4 = load i64, i64* %__eax, align 8, !dbg !2979
  store i64 %4, i64* %__eax, align 8, !dbg !2979
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2979
  %6 = call i64 @llvm.read_register.i64(metadata !161), !dbg !2979
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !2979, !srcloc !2984
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2979
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2979
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2979
  call void @llvm.write_register.i64(metadata !161, i64 %asmresult1), !dbg !2979
  ret void, !dbg !2985
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_delay_coef", scope: !2, file: !3, line: 15, type: !158, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/w1/w1_io.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !30, !38, !44}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !24, line: 343, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !31, line: 524, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !31, line: 502, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !45, line: 44, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!50 = !{!51, !54, !56, !59}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !52, line: 31, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!53 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !55, line: 33, baseType: !51)
!55 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !58, line: 23, baseType: !51)
!58 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61, !132, !137, !139, !0, !144, !146, !151, !153}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__param_delay_coef", scope: !2, file: !3, line: 15, type: !63, isLocal: true, isDefinition: true, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !65, line: 69, size: 320, elements: !66)
!65 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !71, !75, !97, !102, !106, !110}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 70, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !64, file: !65, line: 71, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !74, line: 189, flags: DIFlagFwdDecl)
!74 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !64, file: !65, line: 72, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !65, line: 47, size: 256, elements: !79)
!79 = !{!80, !81, !87, !92}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !65, line: 49, baseType: !7, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !78, file: !65, line: 51, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !68, !86}
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !78, file: !65, line: 53, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!85, !91, !86}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !78, file: !65, line: 55, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !64, file: !65, line: 73, baseType: !98, size: 16, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !58, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !52, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !64, file: !65, line: 74, baseType: !103, size: 8, offset: 208)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !58, line: 16, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !52, line: 20, baseType: !105)
!105 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !65, line: 75, baseType: !107, size: 8, offset: 216)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !58, line: 17, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !52, line: 21, baseType: !109)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !65, line: 76, baseType: !111, size: 64, offset: 256)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !65, line: 76, size: 64, elements: !112)
!112 = !{!113, !114, !121}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !111, file: !65, line: 77, baseType: !96, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !111, file: !65, line: 78, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !65, line: 86, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !117, file: !65, line: 87, baseType: !7, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !117, file: !65, line: 88, baseType: !91, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !111, file: !65, line: 79, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !65, line: 92, size: 256, elements: !125)
!125 = !{!126, !127, !128, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !124, file: !65, line: 94, baseType: !7, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !124, file: !65, line: 95, baseType: !7, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !124, file: !65, line: 96, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !124, file: !65, line: 97, baseType: !76, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !124, file: !65, line: 98, baseType: !96, size: 64, offset: 192)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_delay_coeftype162", scope: !2, file: !3, line: 15, type: !134, isLocal: true, isDefinition: true, align: 8)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 232, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 29)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "__param_disable_irqs", scope: !2, file: !3, line: 18, type: !63, isLocal: true, isDefinition: true, align: 64)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_disable_irqstype163", scope: !2, file: !3, line: 18, type: !141, isLocal: true, isDefinition: true, align: 8)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 248, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 31)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "w1_delay_parm", scope: !2, file: !3, line: 14, type: !85, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__param_str_disable_irqs", scope: !2, file: !3, line: 18, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 144, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 18)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "w1_disable_irqs", scope: !2, file: !3, line: 17, type: !85, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "w1_crc8_table", scope: !2, file: !3, line: 20, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2048, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 256)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 16)
!161 = !{!"rsp"}
!162 = !{i32 7, !"Dwarf Version", i32 4}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"Code Model", i32 2}
!166 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!167 = distinct !DISubprogram(name: "w1_touch_bit", scope: !3, file: !3, line: 52, type: !168, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!168 = !DISubroutineType(types: !169)
!169 = !{!107, !170, !85}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_master", file: !172, line: 199, size: 7680, elements: !173)
!172 = !DIFile(filename: "./include/linux/w1.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !181, !182, !186, !217, !218, !219, !220, !221, !222, !223, !224, !227, !228, !229, !234, !235, !236, !237, !239, !1355, !1356, !1357, !2119, !2120, !2165}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "w1_master_entry", scope: !171, file: !172, line: 200, baseType: !175, size: 128)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !176, line: 178, size: 128, elements: !177)
!176 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !176, line: 179, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !176, line: 179, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !171, file: !172, line: 201, baseType: !72, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !172, line: 202, baseType: !183, size: 256, offset: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_mutex", scope: !171, file: !172, line: 208, baseType: !187, size: 192, offset: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !188, line: 53, size: 192, elements: !189)
!188 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !200, !216}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 54, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !192, line: 13, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !176, line: 175, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 173, size: 64, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !194, file: !176, line: 174, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !58, line: 22, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !52, line: 30, baseType: !199)
!199 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !187, file: !188, line: 55, baseType: !201, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !202, line: 83, baseType: !203)
!202 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !202, line: 71, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !202, line: 72, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 72, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !206, file: !202, line: 73, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !202, line: 20, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !209, file: !202, line: 21, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !213, line: 25, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 25, elements: !215)
!215 = !{}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !187, file: !188, line: 59, baseType: !175, size: 128, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !171, file: !172, line: 209, baseType: !175, size: 128, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !171, file: !172, line: 210, baseType: !175, size: 128, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "max_slave_count", scope: !171, file: !172, line: 211, baseType: !85, size: 32, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "slave_count", scope: !171, file: !172, line: 211, baseType: !85, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "attempts", scope: !171, file: !172, line: 212, baseType: !59, size: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ttl", scope: !171, file: !172, line: 213, baseType: !85, size: 32, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !171, file: !172, line: 214, baseType: !85, size: 32, offset: 1056)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !171, file: !172, line: 215, baseType: !225, size: 32, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !58, line: 21, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !52, line: 27, baseType: !7)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "search_count", scope: !171, file: !172, line: 216, baseType: !85, size: 32, offset: 1120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "search_id", scope: !171, file: !172, line: 218, baseType: !57, size: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !171, file: !172, line: 220, baseType: !230, size: 32, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !176, line: 168, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 166, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !231, file: !176, line: 167, baseType: !85, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !171, file: !172, line: 222, baseType: !96, size: 64, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "enable_pullup", scope: !171, file: !172, line: 225, baseType: !85, size: 32, offset: 1344)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pullup_duration", scope: !171, file: !172, line: 227, baseType: !85, size: 32, offset: 1376)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !172, line: 229, baseType: !238, size: 64, offset: 1408)
!238 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !171, file: !172, line: 231, baseType: !240, size: 64, offset: 1472)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !242, line: 640, size: 48640, elements: !243)
!242 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !250, !252, !253, !259, !260, !261, !262, !263, !264, !265, !266, !270, !295, !306, !403, !404, !405, !416, !417, !419, !420, !637, !638, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !717, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !773, !775, !776, !777, !779, !781, !782, !783, !784, !785, !791, !792, !793, !794, !795, !796, !797, !811, !816, !821, !822, !823, !826, !828, !831, !834, !837, !840, !844, !847, !850, !856, !857, !858, !864, !865, !869, !870, !871, !880, !881, !882, !883, !884, !889, !890, !891, !894, !895, !898, !901, !904, !907, !910, !913, !914, !995, !998, !1001, !1002, !1005, !1006, !1007, !1013, !1014, !1015, !1028, !1029, !1030, !1040, !1045, !1048, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !241, file: !242, line: 646, baseType: !245, size: 128)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !246, line: 56, size: 128, elements: !247)
!246 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !246, line: 57, baseType: !59, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !245, file: !246, line: 58, baseType: !225, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !241, file: !242, line: 649, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !238)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !241, file: !242, line: 657, baseType: !96, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !241, file: !242, line: 658, baseType: !254, size: 32, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !255, line: 113, baseType: !256)
!255 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !255, line: 111, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !256, file: !255, line: 112, baseType: !230, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !242, line: 660, baseType: !7, size: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !241, file: !242, line: 661, baseType: !7, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !241, file: !242, line: 684, baseType: !85, size: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !241, file: !242, line: 686, baseType: !85, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !241, file: !242, line: 687, baseType: !85, size: 32, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !241, file: !242, line: 688, baseType: !85, size: 32, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !241, file: !242, line: 689, baseType: !7, size: 32, offset: 480)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !241, file: !242, line: 691, baseType: !267, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !242, line: 691, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !241, file: !242, line: 692, baseType: !271, size: 832, offset: 576)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !242, line: 451, size: 832, elements: !272)
!272 = !{!273, !278, !286, !287, !288, !289, !290, !291, !292, !293}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !271, file: !242, line: 453, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !242, line: 325, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !274, file: !242, line: 326, baseType: !59, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !274, file: !242, line: 327, baseType: !225, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !271, file: !242, line: 454, baseType: !279, size: 192, align: 64, offset: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !280, line: 24, size: 192, align: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!281 = !{!282, !283, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !279, file: !280, line: 25, baseType: !59, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !279, file: !280, line: 26, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !279, file: !280, line: 27, baseType: !284, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !271, file: !242, line: 455, baseType: !175, size: 128, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !271, file: !242, line: 456, baseType: !7, size: 32, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !271, file: !242, line: 458, baseType: !57, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !271, file: !242, line: 459, baseType: !57, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !271, file: !242, line: 460, baseType: !57, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !271, file: !242, line: 461, baseType: !57, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !271, file: !242, line: 463, baseType: !57, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !271, file: !242, line: 465, baseType: !294, offset: 832)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !242, line: 415, elements: !215)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !241, file: !242, line: 693, baseType: !296, size: 384, offset: 1408)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !242, line: 489, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !296, file: !242, line: 490, baseType: !175, size: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !296, file: !242, line: 491, baseType: !59, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !296, file: !242, line: 492, baseType: !59, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !296, file: !242, line: 493, baseType: !7, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !296, file: !242, line: 494, baseType: !101, size: 16, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !296, file: !242, line: 495, baseType: !101, size: 16, offset: 304)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !296, file: !242, line: 497, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !241, file: !242, line: 697, baseType: !307, size: 1792, offset: 1792)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !242, line: 507, size: 1792, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !400, !401}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !307, file: !242, line: 508, baseType: !279, size: 192, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !307, file: !242, line: 515, baseType: !57, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !307, file: !242, line: 516, baseType: !57, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !307, file: !242, line: 517, baseType: !57, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !307, file: !242, line: 518, baseType: !57, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !307, file: !242, line: 519, baseType: !57, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !307, file: !242, line: 526, baseType: !197, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !307, file: !242, line: 527, baseType: !57, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !242, line: 528, baseType: !7, size: 32, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !307, file: !242, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !307, file: !242, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !307, file: !242, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !307, file: !242, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !307, file: !242, line: 563, baseType: !323, size: 512, offset: 704)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !324)
!324 = !{!325, !333, !334, !339, !396, !397, !398, !399}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !323, file: !6, line: 119, baseType: !326, size: 256)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !327, line: 9, size: 256, elements: !328)
!327 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !327, line: 10, baseType: !279, size: 192, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !326, file: !327, line: 11, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !332, line: 29, baseType: !197)
!332 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !323, file: !6, line: 120, baseType: !331, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !323, file: !6, line: 121, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!5, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !323, file: !6, line: 122, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !342)
!342 = !{!343, !364, !365, !369, !379, !380, !391, !395}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !341, file: !6, line: 160, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !346)
!346 = !{!347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !6, line: 215, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !202, line: 29, baseType: !209)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !345, file: !6, line: 216, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !345, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !345, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !345, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !345, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !345, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !345, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !345, file: !6, line: 233, baseType: !331, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !345, file: !6, line: 234, baseType: !338, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !345, file: !6, line: 235, baseType: !331, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !345, file: !6, line: 236, baseType: !338, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !345, file: !6, line: 237, baseType: !361, size: 4096, offset: 512)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4096, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !341, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !341, file: !6, line: 162, baseType: !366, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !176, line: 27, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !368, line: 96, baseType: !85)
!368 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !341, file: !6, line: 163, baseType: !370, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !371, line: 276, baseType: !372)
!371 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !371, line: 276, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !372, file: !371, line: 276, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !371, line: 70, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !371, line: 65, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !376, file: !371, line: 66, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !341, file: !6, line: 164, baseType: !338, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !341, file: !6, line: 165, baseType: !381, size: 128, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !327, line: 14, size: 128, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !381, file: !327, line: 15, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !280, line: 125, size: 128, elements: !385)
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !384, file: !280, line: 126, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !280, line: 31, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !387, file: !280, line: 32, baseType: !284, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !384, file: !280, line: 127, baseType: !284, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !341, file: !6, line: 166, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!331}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !341, file: !6, line: 167, baseType: !331, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !6, line: 123, baseType: !107, size: 8, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !323, file: !6, line: 124, baseType: !107, size: 8, offset: 456)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !323, file: !6, line: 125, baseType: !107, size: 8, offset: 464)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !323, file: !6, line: 126, baseType: !107, size: 8, offset: 472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !307, file: !242, line: 572, baseType: !323, size: 512, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !307, file: !242, line: 580, baseType: !402, size: 64, offset: 1728)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !241, file: !242, line: 721, baseType: !7, size: 32, offset: 3584)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !241, file: !242, line: 722, baseType: !85, size: 32, offset: 3616)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !241, file: !242, line: 723, baseType: !406, size: 64, offset: 3648)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !409, line: 17, baseType: !410)
!409 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !409, line: 17, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !410, file: !409, line: 17, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 1)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !241, file: !242, line: 724, baseType: !408, size: 64, offset: 3712)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !241, file: !242, line: 749, baseType: !418, offset: 3776)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !242, line: 290, elements: !215)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !241, file: !242, line: 751, baseType: !175, size: 128, offset: 3776)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !241, file: !242, line: 757, baseType: !421, size: 64, offset: 3904)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !423, line: 388, size: 7296, elements: !424)
!423 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !633}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !423, line: 389, baseType: !426, size: 7296)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !423, line: 389, size: 7296, elements: !427)
!427 = !{!428, !469, !470, !471, !475, !476, !477, !478, !479, !486, !487, !488, !489, !490, !491, !492, !493, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !527, !535, !538, !578, !579, !601, !602, !605, !609, !610, !613, !614, !617, !620, !632}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !426, file: !423, line: 390, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !423, line: 305, size: 1472, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !447, !448, !453, !454, !457, !461, !462, !465, !466, !467}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !430, file: !423, line: 308, baseType: !59, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !430, file: !423, line: 309, baseType: !59, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !430, file: !423, line: 313, baseType: !429, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !430, file: !423, line: 313, baseType: !429, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !430, file: !423, line: 315, baseType: !279, size: 192, align: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !430, file: !423, line: 323, baseType: !59, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !430, file: !423, line: 327, baseType: !421, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !430, file: !423, line: 333, baseType: !440, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !441, line: 284, baseType: !442)
!441 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !441, line: 284, size: 64, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !442, file: !441, line: 284, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !446, line: 19, baseType: !59)
!446 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !430, file: !423, line: 334, baseType: !59, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !430, file: !423, line: 343, baseType: !449, size: 256, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !423, line: 340, size: 256, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !449, file: !423, line: 341, baseType: !279, size: 192, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !449, file: !423, line: 342, baseType: !59, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !430, file: !423, line: 351, baseType: !175, size: 128, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !430, file: !423, line: 353, baseType: !455, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !423, line: 353, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !430, file: !423, line: 356, baseType: !458, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !423, line: 356, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !430, file: !423, line: 359, baseType: !59, size: 64, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !430, file: !423, line: 361, baseType: !463, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !441, line: 526, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !430, file: !423, line: 362, baseType: !96, size: 64, offset: 1344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !430, file: !423, line: 365, baseType: !191, size: 64, offset: 1408)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !430, file: !423, line: 373, baseType: !468, offset: 1472)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !423, line: 296, elements: !215)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !426, file: !423, line: 391, baseType: !387, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !426, file: !423, line: 392, baseType: !57, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !426, file: !423, line: 394, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!59, !463, !59, !59, !59, !59}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !426, file: !423, line: 398, baseType: !59, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !426, file: !423, line: 399, baseType: !59, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !426, file: !423, line: 405, baseType: !59, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !426, file: !423, line: 406, baseType: !59, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !426, file: !423, line: 407, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !441, line: 286, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 286, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !482, file: !441, line: 286, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !446, line: 18, baseType: !59)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !426, file: !423, line: 416, baseType: !230, size: 32, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !426, file: !423, line: 428, baseType: !230, size: 32, offset: 608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !426, file: !423, line: 437, baseType: !230, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !426, file: !423, line: 447, baseType: !230, size: 32, offset: 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !426, file: !423, line: 450, baseType: !191, size: 64, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !426, file: !423, line: 452, baseType: !85, size: 32, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !426, file: !423, line: 454, baseType: !201, offset: 800)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !426, file: !423, line: 457, baseType: !494, size: 256, offset: 832)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !495, line: 35, size: 256, elements: !496)
!495 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498, !499, !500}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !494, file: !495, line: 36, baseType: !191, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !495, line: 42, baseType: !191, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !494, file: !495, line: 46, baseType: !348, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !494, file: !495, line: 47, baseType: !175, size: 128, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !426, file: !423, line: 459, baseType: !175, size: 128, offset: 1088)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !426, file: !423, line: 466, baseType: !59, size: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !426, file: !423, line: 467, baseType: !59, size: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !426, file: !423, line: 469, baseType: !59, size: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !426, file: !423, line: 470, baseType: !59, size: 64, offset: 1408)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !426, file: !423, line: 471, baseType: !193, size: 64, offset: 1472)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !426, file: !423, line: 472, baseType: !59, size: 64, offset: 1536)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !426, file: !423, line: 473, baseType: !59, size: 64, offset: 1600)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !426, file: !423, line: 474, baseType: !59, size: 64, offset: 1664)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !426, file: !423, line: 475, baseType: !59, size: 64, offset: 1728)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !426, file: !423, line: 477, baseType: !201, offset: 1792)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !426, file: !423, line: 478, baseType: !59, size: 64, offset: 1792)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !426, file: !423, line: 478, baseType: !59, size: 64, offset: 1856)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !426, file: !423, line: 478, baseType: !59, size: 64, offset: 1920)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !426, file: !423, line: 478, baseType: !59, size: 64, offset: 1984)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !426, file: !423, line: 479, baseType: !59, size: 64, offset: 2048)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !426, file: !423, line: 479, baseType: !59, size: 64, offset: 2112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !426, file: !423, line: 479, baseType: !59, size: 64, offset: 2176)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !426, file: !423, line: 480, baseType: !59, size: 64, offset: 2240)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !426, file: !423, line: 480, baseType: !59, size: 64, offset: 2304)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !426, file: !423, line: 480, baseType: !59, size: 64, offset: 2368)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !426, file: !423, line: 480, baseType: !59, size: 64, offset: 2432)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !426, file: !423, line: 482, baseType: !524, size: 2816, offset: 2496)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2816, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 44)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !426, file: !423, line: 488, baseType: !528, size: 256, offset: 5312)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !529, line: 60, size: 256, elements: !530)
!529 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !529, line: 61, baseType: !532, size: 256)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 4)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !426, file: !423, line: 490, baseType: !536, size: 64, offset: 5568)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !423, line: 490, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !426, file: !423, line: 493, baseType: !539, size: 896, offset: 5632)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !540, line: 53, baseType: !541)
!540 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 13, size: 896, elements: !542)
!542 = !{!543, !544, !545, !546, !549, !550, !551, !552, !572, !573, !574}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !541, file: !540, line: 18, baseType: !57, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !541, file: !540, line: 28, baseType: !193, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !541, file: !540, line: 31, baseType: !494, size: 256, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !541, file: !540, line: 32, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !540, line: 32, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !541, file: !540, line: 37, baseType: !101, size: 16, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !540, line: 40, baseType: !187, size: 192, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !541, file: !540, line: 41, baseType: !96, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !541, file: !540, line: 42, baseType: !553, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !556, line: 13, size: 896, elements: !557)
!556 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !555, file: !556, line: 14, baseType: !96, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !555, file: !556, line: 15, baseType: !59, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !555, file: !556, line: 17, baseType: !59, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !555, file: !556, line: 17, baseType: !59, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !555, file: !556, line: 19, baseType: !238, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !555, file: !556, line: 21, baseType: !238, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !555, file: !556, line: 22, baseType: !238, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !555, file: !556, line: 23, baseType: !238, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !555, file: !556, line: 24, baseType: !238, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !555, file: !556, line: 25, baseType: !238, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !555, file: !556, line: 26, baseType: !238, size: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !555, file: !556, line: 27, baseType: !238, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !555, file: !556, line: 28, baseType: !238, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !555, file: !556, line: 29, baseType: !238, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !541, file: !540, line: 44, baseType: !230, size: 32, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !541, file: !540, line: 50, baseType: !99, size: 16, offset: 864)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !541, file: !540, line: 51, baseType: !575, size: 16, offset: 880)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !58, line: 18, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !52, line: 23, baseType: !577)
!577 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !423, line: 495, baseType: !59, size: 64, offset: 6528)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !426, file: !423, line: 497, baseType: !580, size: 64, offset: 6592)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !423, line: 381, size: 384, elements: !582)
!582 = !{!583, !584, !590}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !581, file: !423, line: 382, baseType: !230, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !581, file: !423, line: 383, baseType: !585, size: 128, offset: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !423, line: 376, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !585, file: !423, line: 377, baseType: !240, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !423, line: 378, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !581, file: !423, line: 384, baseType: !591, size: 192, offset: 192)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !592, line: 26, size: 192, elements: !593)
!592 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !591, file: !592, line: 27, baseType: !7, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !591, file: !592, line: 28, baseType: !596, size: 128, offset: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !597, line: 43, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !597, line: 44, baseType: !348)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !596, file: !597, line: 45, baseType: !175, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !426, file: !423, line: 500, baseType: !201, offset: 6656)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !426, file: !423, line: 501, baseType: !603, size: 64, offset: 6656)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !423, line: 387, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !426, file: !423, line: 516, baseType: !606, size: 64, offset: 6720)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !608, line: 18, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !426, file: !423, line: 519, baseType: !463, size: 64, offset: 6784)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !426, file: !423, line: 521, baseType: !611, size: 64, offset: 6848)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !423, line: 521, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !426, file: !423, line: 545, baseType: !230, size: 32, offset: 6912)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !426, file: !423, line: 548, baseType: !615, size: 8, offset: 6944)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !176, line: 30, baseType: !616)
!616 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !426, file: !423, line: 550, baseType: !618, offset: 6952)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !619, line: 142, elements: !215)
!619 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !426, file: !423, line: 554, baseType: !621, size: 256, offset: 6976)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !622, line: 102, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624, !625, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !621, file: !622, line: 103, baseType: !191, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !621, file: !622, line: 104, baseType: !175, size: 128, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !621, file: !622, line: 105, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !622, line: 21, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !426, file: !423, line: 557, baseType: !225, size: 32, offset: 7232)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !422, file: !423, line: 565, baseType: !634, offset: 7296)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: -1)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !241, file: !242, line: 758, baseType: !421, size: 64, offset: 3968)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !241, file: !242, line: 761, baseType: !639, size: 320, offset: 4032)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !529, line: 34, size: 320, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !639, file: !529, line: 35, baseType: !57, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !639, file: !529, line: 36, baseType: !643, size: 256, offset: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 256, elements: !533)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !241, file: !242, line: 766, baseType: !85, size: 32, offset: 4352)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !241, file: !242, line: 767, baseType: !85, size: 32, offset: 4384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !241, file: !242, line: 768, baseType: !85, size: 32, offset: 4416)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !241, file: !242, line: 770, baseType: !85, size: 32, offset: 4448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !241, file: !242, line: 772, baseType: !59, size: 64, offset: 4480)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !241, file: !242, line: 775, baseType: !7, size: 32, offset: 4544)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !241, file: !242, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !241, file: !242, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !241, file: !242, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !241, file: !242, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !241, file: !242, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !241, file: !242, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !241, file: !242, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !241, file: !242, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !241, file: !242, line: 831, baseType: !59, size: 64, offset: 4672)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !241, file: !242, line: 833, baseType: !660, size: 384, offset: 4736)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !661)
!661 = !{!662, !667}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !660, file: !12, line: 26, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!238, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !12, line: 27, baseType: !668, size: 320, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !12, line: 27, size: 320, elements: !669)
!669 = !{!670, !680, !707}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !668, file: !12, line: 36, baseType: !671, size: 320)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !12, line: 29, size: 320, elements: !672)
!672 = !{!673, !675, !676, !677, !678, !679}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !671, file: !12, line: 30, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !671, file: !12, line: 31, baseType: !225, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !12, line: 32, baseType: !225, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !671, file: !12, line: 33, baseType: !225, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !671, file: !12, line: 34, baseType: !57, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !671, file: !12, line: 35, baseType: !674, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !668, file: !12, line: 46, baseType: !681, size: 192)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !12, line: 38, size: 192, elements: !682)
!682 = !{!683, !684, !685, !706}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !681, file: !12, line: 39, baseType: !366, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !12, line: 41, baseType: !686, size: 64, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !12, line: 41, size: 64, elements: !687)
!687 = !{!688, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !686, file: !12, line: 42, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !691, line: 7, size: 128, elements: !692)
!691 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !690, file: !691, line: 8, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !368, line: 93, baseType: !199)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !690, file: !691, line: 9, baseType: !199, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !686, file: !12, line: 43, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !699, line: 7, size: 64, elements: !700)
!699 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !705}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !698, file: !699, line: 8, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !699, line: 5, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !58, line: 20, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !52, line: 26, baseType: !85)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !698, file: !699, line: 9, baseType: !703, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !681, file: !12, line: 45, baseType: !57, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !668, file: !12, line: 54, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !12, line: 48, size: 256, elements: !709)
!709 = !{!710, !713, !714, !715, !716}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !708, file: !12, line: 49, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !708, file: !12, line: 50, baseType: !85, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !708, file: !12, line: 51, baseType: !85, size: 32, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !12, line: 52, baseType: !59, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !12, line: 53, baseType: !59, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !241, file: !242, line: 835, baseType: !718, size: 32, offset: 5120)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !176, line: 22, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !368, line: 28, baseType: !85)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !241, file: !242, line: 836, baseType: !718, size: 32, offset: 5152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !241, file: !242, line: 840, baseType: !59, size: 64, offset: 5184)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !241, file: !242, line: 849, baseType: !240, size: 64, offset: 5248)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !242, line: 852, baseType: !240, size: 64, offset: 5312)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !241, file: !242, line: 857, baseType: !175, size: 128, offset: 5376)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !241, file: !242, line: 858, baseType: !175, size: 128, offset: 5504)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !241, file: !242, line: 859, baseType: !240, size: 64, offset: 5632)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !241, file: !242, line: 867, baseType: !175, size: 128, offset: 5696)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !241, file: !242, line: 868, baseType: !175, size: 128, offset: 5824)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !241, file: !242, line: 871, baseType: !730, size: 64, offset: 5952)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !732, line: 59, size: 768, elements: !733)
!732 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !735, !736, !737, !748, !749, !756, !765}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 61, baseType: !254, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !731, file: !732, line: 62, baseType: !7, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !732, line: 63, baseType: !201, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !731, file: !732, line: 65, baseType: !738, size: 256, offset: 64)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 256, elements: !533)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !176, line: 182, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !739, file: !176, line: 183, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !176, line: 186, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !176, line: 187, baseType: !742, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !743, file: !176, line: 187, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !731, file: !732, line: 66, baseType: !739, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !731, file: !732, line: 68, baseType: !750, size: 128, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !751, line: 40, baseType: !752)
!751 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !751, line: 36, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !752, file: !751, line: 37, baseType: !201)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !752, file: !751, line: 38, baseType: !175, size: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !732, line: 69, baseType: !757, size: 128, align: 64, offset: 512)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !176, line: 216, size: 128, align: 64, elements: !758)
!758 = !{!759, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !176, line: 217, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !757, file: !176, line: 218, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !760}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !731, file: !732, line: 70, baseType: !766, size: 128, offset: 640)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 128, elements: !414)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !732, line: 54, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !767, file: !732, line: 55, baseType: !85, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !732, line: 56, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !732, line: 56, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !241, file: !242, line: 872, baseType: !774, size: 512, offset: 6016)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 512, elements: !533)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !241, file: !242, line: 873, baseType: !175, size: 128, offset: 6528)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !241, file: !242, line: 874, baseType: !175, size: 128, offset: 6656)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !241, file: !242, line: 876, baseType: !778, size: 64, offset: 6784)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !241, file: !242, line: 879, baseType: !780, size: 64, offset: 6848)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !241, file: !242, line: 882, baseType: !780, size: 64, offset: 6912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !241, file: !242, line: 884, baseType: !57, size: 64, offset: 6976)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !241, file: !242, line: 885, baseType: !57, size: 64, offset: 7040)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !241, file: !242, line: 890, baseType: !57, size: 64, offset: 7104)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !241, file: !242, line: 891, baseType: !786, size: 128, offset: 7168)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !242, line: 242, size: 128, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !786, file: !242, line: 244, baseType: !57, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !786, file: !242, line: 245, baseType: !57, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !242, line: 246, baseType: !348, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !241, file: !242, line: 900, baseType: !59, size: 64, offset: 7296)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !241, file: !242, line: 901, baseType: !59, size: 64, offset: 7360)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !241, file: !242, line: 904, baseType: !57, size: 64, offset: 7424)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !241, file: !242, line: 907, baseType: !57, size: 64, offset: 7488)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !241, file: !242, line: 910, baseType: !59, size: 64, offset: 7552)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !241, file: !242, line: 911, baseType: !59, size: 64, offset: 7616)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !241, file: !242, line: 914, baseType: !798, size: 640, offset: 7680)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !799, line: 123, size: 640, elements: !800)
!799 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !809, !810}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !798, file: !799, line: 124, baseType: !802, size: 576)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 576, elements: !807)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !799, line: 108, size: 192, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !803, file: !799, line: 109, baseType: !57, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !803, file: !799, line: 110, baseType: !381, size: 128, offset: 64)
!807 = !{!808}
!808 = !DISubrange(count: 3)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !798, file: !799, line: 125, baseType: !7, size: 32, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !798, file: !799, line: 126, baseType: !7, size: 32, offset: 608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !241, file: !242, line: 917, baseType: !812, size: 192, offset: 8320)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !799, line: 134, size: 192, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !812, file: !799, line: 135, baseType: !757, size: 128, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !812, file: !799, line: 136, baseType: !7, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !241, file: !242, line: 923, baseType: !817, size: 64, offset: 8512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !820, line: 11, flags: DIFlagFwdDecl)
!820 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !241, file: !242, line: 926, baseType: !817, size: 64, offset: 8576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !241, file: !242, line: 929, baseType: !817, size: 64, offset: 8640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !241, file: !242, line: 933, baseType: !824, size: 64, offset: 8704)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !242, line: 933, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !241, file: !242, line: 943, baseType: !827, size: 128, offset: 8768)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !159)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !241, file: !242, line: 945, baseType: !829, size: 64, offset: 8896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !242, line: 49, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !241, file: !242, line: 956, baseType: !832, size: 64, offset: 8960)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !242, line: 45, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !241, file: !242, line: 959, baseType: !835, size: 64, offset: 9024)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !242, line: 959, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !241, file: !242, line: 962, baseType: !838, size: 64, offset: 9088)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !242, line: 66, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !241, file: !242, line: 966, baseType: !841, size: 64, offset: 9152)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !843, line: 35, flags: DIFlagFwdDecl)
!843 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !241, file: !242, line: 969, baseType: !845, size: 64, offset: 9216)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !799, line: 223, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !241, file: !242, line: 970, baseType: !848, size: 64, offset: 9280)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !242, line: 62, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !241, file: !242, line: 971, baseType: !851, size: 64, offset: 9344)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !852, line: 25, baseType: !853)
!852 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 23, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !853, file: !852, line: 24, baseType: !413, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !241, file: !242, line: 972, baseType: !851, size: 64, offset: 9408)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !241, file: !242, line: 974, baseType: !851, size: 64, offset: 9472)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !241, file: !242, line: 975, baseType: !859, size: 192, offset: 9536)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !860, line: 30, size: 192, elements: !861)
!860 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !859, file: !860, line: 31, baseType: !175, size: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !859, file: !860, line: 32, baseType: !851, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !241, file: !242, line: 976, baseType: !59, size: 64, offset: 9728)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !241, file: !242, line: 977, baseType: !866, size: 64, offset: 9792)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 55, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !368, line: 72, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !368, line: 16, baseType: !59)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !241, file: !242, line: 978, baseType: !7, size: 32, offset: 9856)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !241, file: !242, line: 980, baseType: !760, size: 64, offset: 9920)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !241, file: !242, line: 989, baseType: !872, size: 128, offset: 9984)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !873, line: 35, size: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !872, file: !873, line: 36, baseType: !85, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !872, file: !873, line: 37, baseType: !230, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !872, file: !873, line: 38, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !873, line: 23, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !241, file: !242, line: 992, baseType: !57, size: 64, offset: 10112)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !241, file: !242, line: 993, baseType: !57, size: 64, offset: 10176)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !241, file: !242, line: 996, baseType: !201, offset: 10240)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !241, file: !242, line: 999, baseType: !348, offset: 10240)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !241, file: !242, line: 1001, baseType: !885, size: 64, offset: 10240)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !242, line: 636, size: 64, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !885, file: !242, line: 637, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !241, file: !242, line: 1005, baseType: !384, size: 128, offset: 10304)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !241, file: !242, line: 1007, baseType: !240, size: 64, offset: 10432)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !241, file: !242, line: 1009, baseType: !892, size: 64, offset: 10496)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !242, line: 1009, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !241, file: !242, line: 1043, baseType: !96, size: 64, offset: 10560)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !241, file: !242, line: 1046, baseType: !896, size: 64, offset: 10624)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !242, line: 41, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !241, file: !242, line: 1050, baseType: !899, size: 64, offset: 10688)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !242, line: 42, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !241, file: !242, line: 1054, baseType: !902, size: 64, offset: 10752)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !242, line: 55, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !241, file: !242, line: 1056, baseType: !905, size: 64, offset: 10816)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !242, line: 40, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !241, file: !242, line: 1058, baseType: !908, size: 64, offset: 10880)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !242, line: 47, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !241, file: !242, line: 1061, baseType: !911, size: 64, offset: 10944)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !242, line: 43, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !241, file: !242, line: 1064, baseType: !59, size: 64, offset: 11008)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !241, file: !242, line: 1065, baseType: !915, size: 64, offset: 11072)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !860, line: 14, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !860, line: 12, size: 384, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !860, line: 13, baseType: !920, size: 384)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !860, line: 13, size: 384, elements: !921)
!921 = !{!922, !923, !924, !925}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !920, file: !860, line: 13, baseType: !85, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !920, file: !860, line: 13, baseType: !85, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !920, file: !860, line: 13, baseType: !85, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !920, file: !860, line: 13, baseType: !926, size: 256, offset: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !927, line: 32, size: 256, elements: !928)
!927 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !935, !948, !954, !964, !984, !989}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !926, file: !927, line: 37, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 34, size: 64, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !930, file: !927, line: 35, baseType: !719, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !930, file: !927, line: 36, baseType: !934, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !368, line: 49, baseType: !7)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !926, file: !927, line: 45, baseType: !936, size: 192)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 40, size: 192, elements: !937)
!937 = !{!938, !940, !941, !947}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !936, file: !927, line: 41, baseType: !939, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !368, line: 95, baseType: !85)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !936, file: !927, line: 42, baseType: !85, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !936, file: !927, line: 43, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !927, line: 11, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !927, line: 8, size: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !943, file: !927, line: 9, baseType: !85, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !943, file: !927, line: 10, baseType: !96, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !936, file: !927, line: 44, baseType: !85, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !926, file: !927, line: 52, baseType: !949, size: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 48, size: 128, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !949, file: !927, line: 49, baseType: !719, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !949, file: !927, line: 50, baseType: !934, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !949, file: !927, line: 51, baseType: !942, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !926, file: !927, line: 61, baseType: !955, size: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 55, size: 256, elements: !956)
!956 = !{!957, !958, !959, !960, !963}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !955, file: !927, line: 56, baseType: !719, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !955, file: !927, line: 57, baseType: !934, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !955, file: !927, line: 58, baseType: !85, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !955, file: !927, line: 59, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !368, line: 94, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !368, line: 15, baseType: !238)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !955, file: !927, line: 60, baseType: !961, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !926, file: !927, line: 95, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 64, size: 256, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !965, file: !927, line: 65, baseType: !96, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !927, line: 77, baseType: !969, size: 192, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !927, line: 77, size: 192, elements: !970)
!970 = !{!971, !972, !979}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !969, file: !927, line: 82, baseType: !577, size: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !969, file: !927, line: 88, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !927, line: 84, size: 192, elements: !974)
!974 = !{!975, !977, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !973, file: !927, line: 85, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !362)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !973, file: !927, line: 86, baseType: !96, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !973, file: !927, line: 87, baseType: !96, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !969, file: !927, line: 93, baseType: !980, size: 96)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !927, line: 90, size: 96, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !980, file: !927, line: 91, baseType: !976, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !980, file: !927, line: 92, baseType: !226, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !926, file: !927, line: 101, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 98, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !985, file: !927, line: 99, baseType: !238, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !985, file: !927, line: 100, baseType: !85, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !926, file: !927, line: 108, baseType: !990, size: 128)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 104, size: 128, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !990, file: !927, line: 105, baseType: !96, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !990, file: !927, line: 106, baseType: !85, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !990, file: !927, line: 107, baseType: !7, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !241, file: !242, line: 1067, baseType: !996, offset: 11136)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !997, line: 12, elements: !215)
!997 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!998 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !241, file: !242, line: 1099, baseType: !999, size: 64, offset: 11136)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !242, line: 56, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !241, file: !242, line: 1103, baseType: !175, size: 128, offset: 11200)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !241, file: !242, line: 1104, baseType: !1003, size: 64, offset: 11328)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !242, line: 46, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !241, file: !242, line: 1105, baseType: !187, size: 192, offset: 11392)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !241, file: !242, line: 1106, baseType: !7, size: 32, offset: 11584)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !241, file: !242, line: 1109, baseType: !1008, size: 128, offset: 11648)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 128, elements: !1011)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !242, line: 51, flags: DIFlagFwdDecl)
!1011 = !{!1012}
!1012 = !DISubrange(count: 2)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !241, file: !242, line: 1110, baseType: !187, size: 192, offset: 11776)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !241, file: !242, line: 1111, baseType: !175, size: 128, offset: 11968)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !241, file: !242, line: 1173, baseType: !1016, size: 64, offset: 12096)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1018, line: 62, size: 256, align: 256, elements: !1019)
!1018 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1019 = !{!1020, !1021, !1022, !1027}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1017, file: !1018, line: 75, baseType: !226, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1017, file: !1018, line: 90, baseType: !226, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1017, file: !1018, line: 124, baseType: !1023, size: 64, offset: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !1018, line: 109, size: 64, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1023, file: !1018, line: 110, baseType: !51, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1023, file: !1018, line: 112, baseType: !51, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !1018, line: 144, baseType: !226, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !241, file: !242, line: 1174, baseType: !225, size: 32, offset: 12160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !241, file: !242, line: 1179, baseType: !59, size: 64, offset: 12224)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !241, file: !242, line: 1182, baseType: !1031, size: 128, offset: 12288)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !529, line: 76, size: 128, elements: !1032)
!1032 = !{!1033, !1038, !1039}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1031, file: !529, line: 85, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1035, line: 7, size: 64, elements: !1036)
!1035 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1034, file: !1035, line: 12, baseType: !410, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1031, file: !529, line: 88, baseType: !615, size: 8, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1031, file: !529, line: 95, baseType: !615, size: 8, offset: 72)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !242, line: 1184, baseType: !1041, size: 128, offset: 12416)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !242, line: 1184, size: 128, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1041, file: !242, line: 1185, baseType: !254, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1041, file: !242, line: 1186, baseType: !757, size: 128, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !241, file: !242, line: 1190, baseType: !1046, size: 64, offset: 12544)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !242, line: 53, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !241, file: !242, line: 1192, baseType: !1049, size: 128, offset: 12608)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !529, line: 64, size: 128, elements: !1050)
!1050 = !{!1051, !1144, !1145}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1049, file: !529, line: 65, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !423, line: 68, size: 512, align: 128, elements: !1054)
!1054 = !{!1055, !1056, !1136, !1143}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !423, line: 69, baseType: !59, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !423, line: 77, baseType: !1057, size: 320, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !423, line: 77, size: 320, elements: !1058)
!1058 = !{!1059, !1068, !1073, !1101, !1109, !1115, !1128, !1135}
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 78, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 78, size: 320, elements: !1061)
!1061 = !{!1062, !1063, !1066, !1067}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1060, file: !423, line: 84, baseType: !175, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1060, file: !423, line: 86, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !423, line: 26, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1060, file: !423, line: 87, baseType: !59, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1060, file: !423, line: 94, baseType: !59, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 96, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 96, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1069, file: !423, line: 101, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !176, line: 143, baseType: !57)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 103, baseType: !1074, size: 320)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 103, size: 320, elements: !1075)
!1075 = !{!1076, !1086, !1089, !1090}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !423, line: 104, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !423, line: 104, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1077, file: !423, line: 105, baseType: !175, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !423, line: 106, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !423, line: 106, size: 128, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !423, line: 107, baseType: !1052, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1081, file: !423, line: 109, baseType: !85, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1081, file: !423, line: 110, baseType: !85, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1074, file: !423, line: 117, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !423, line: 117, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1074, file: !423, line: 119, baseType: !96, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !423, line: 120, baseType: !1091, size: 64, offset: 256)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !423, line: 120, size: 64, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1091, file: !423, line: 121, baseType: !96, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1091, file: !423, line: 122, baseType: !59, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !423, line: 123, baseType: !1096, size: 32)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !423, line: 123, size: 32, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1096, file: !423, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1096, file: !423, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1096, file: !423, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 130, baseType: !1102, size: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 130, size: 192, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1102, file: !423, line: 131, baseType: !59, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1102, file: !423, line: 134, baseType: !109, size: 8, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1102, file: !423, line: 135, baseType: !109, size: 8, offset: 72)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1102, file: !423, line: 136, baseType: !230, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1102, file: !423, line: 137, baseType: !7, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 139, baseType: !1110, size: 256)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 139, size: 256, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1110, file: !423, line: 140, baseType: !59, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1110, file: !423, line: 141, baseType: !230, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1110, file: !423, line: 143, baseType: !175, size: 128, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 145, baseType: !1116, size: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 145, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1121, !1122, !1127}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1116, file: !423, line: 146, baseType: !59, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1116, file: !423, line: 147, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !441, line: 509, baseType: !1052)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1116, file: !423, line: 148, baseType: !59, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !423, line: 149, baseType: !1123, size: 64, offset: 192)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !423, line: 149, size: 64, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1123, file: !423, line: 150, baseType: !421, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1123, file: !423, line: 151, baseType: !230, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1116, file: !423, line: 156, baseType: !201, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !423, line: 159, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !423, line: 159, size: 128, elements: !1130)
!1130 = !{!1131, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1129, file: !423, line: 161, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !423, line: 161, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1129, file: !423, line: 162, baseType: !96, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1057, file: !423, line: 176, baseType: !757, size: 128, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !423, line: 179, baseType: !1137, size: 32, offset: 384)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !423, line: 179, size: 32, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1137, file: !423, line: 184, baseType: !230, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1137, file: !423, line: 192, baseType: !7, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1137, file: !423, line: 194, baseType: !7, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1137, file: !423, line: 195, baseType: !85, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1053, file: !423, line: 199, baseType: !230, size: 32, offset: 416)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !529, line: 67, baseType: !226, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !529, line: 68, baseType: !226, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !241, file: !242, line: 1206, baseType: !85, size: 32, offset: 12736)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !241, file: !242, line: 1207, baseType: !85, size: 32, offset: 12768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !241, file: !242, line: 1209, baseType: !59, size: 64, offset: 12800)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !241, file: !242, line: 1219, baseType: !57, size: 64, offset: 12864)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !241, file: !242, line: 1220, baseType: !57, size: 64, offset: 12928)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !241, file: !242, line: 1317, baseType: !85, size: 32, offset: 12992)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !241, file: !242, line: 1319, baseType: !240, size: 64, offset: 13056)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !241, file: !242, line: 1322, baseType: !1154, size: 64, offset: 13120)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1156, line: 56, size: 512, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1164, !1165, !1167}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1155, file: !1156, line: 57, baseType: !1154, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1155, file: !1156, line: 58, baseType: !96, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1155, file: !1156, line: 59, baseType: !59, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !1156, line: 60, baseType: !59, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1155, file: !1156, line: 61, baseType: !1163, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1155, file: !1156, line: 62, baseType: !7, size: 32, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1155, file: !1156, line: 63, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !176, line: 153, baseType: !57)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1155, file: !1156, line: 64, baseType: !1168, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !241, file: !242, line: 1326, baseType: !254, size: 32, offset: 13184)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !241, file: !242, line: 1342, baseType: !96, size: 64, offset: 13248)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !241, file: !242, line: 1343, baseType: !51, size: 64, offset: 13312)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !241, file: !242, line: 1344, baseType: !57, size: 64, offset: 13376)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !241, file: !242, line: 1345, baseType: !51, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !241, file: !242, line: 1346, baseType: !51, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !241, file: !242, line: 1347, baseType: !51, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !241, file: !242, line: 1348, baseType: !757, size: 128, align: 64, offset: 13504)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !241, file: !242, line: 1358, baseType: !1179, size: 34816, offset: 13824)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1180, line: 485, size: 34816, elements: !1181)
!1180 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1211, !1212, !1213, !1214, !1215, !1216, !1219, !1220, !1221}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1179, file: !1180, line: 487, baseType: !1183, size: 192)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 192, elements: !807)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1185, line: 16, size: 64, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1184, file: !1185, line: 17, baseType: !99, size: 16)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1184, file: !1185, line: 18, baseType: !99, size: 16, offset: 16)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1184, file: !1185, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1184, file: !1185, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1184, file: !1185, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1184, file: !1185, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1184, file: !1185, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1184, file: !1185, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1184, file: !1185, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1184, file: !1185, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1184, file: !1185, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1184, file: !1185, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1184, file: !1185, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1179, file: !1180, line: 491, baseType: !59, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1179, file: !1180, line: 495, baseType: !101, size: 16, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1179, file: !1180, line: 496, baseType: !101, size: 16, offset: 272)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1179, file: !1180, line: 497, baseType: !101, size: 16, offset: 288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1179, file: !1180, line: 498, baseType: !101, size: 16, offset: 304)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1179, file: !1180, line: 502, baseType: !59, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1179, file: !1180, line: 503, baseType: !59, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1179, file: !1180, line: 514, baseType: !1208, size: 256, offset: 448)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 256, elements: !533)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1180, line: 483, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1179, file: !1180, line: 516, baseType: !59, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1179, file: !1180, line: 518, baseType: !59, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1179, file: !1180, line: 520, baseType: !59, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1179, file: !1180, line: 521, baseType: !59, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1179, file: !1180, line: 522, baseType: !59, size: 64, offset: 960)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1179, file: !1180, line: 528, baseType: !1217, size: 64, offset: 1024)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1180, line: 10, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1179, file: !1180, line: 535, baseType: !59, size: 64, offset: 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1179, file: !1180, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1179, file: !1180, line: 540, baseType: !1222, size: 33280, offset: 1536)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1223, line: 317, size: 33280, elements: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1222, file: !1223, line: 330, baseType: !7, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1222, file: !1223, line: 337, baseType: !59, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1222, file: !1223, line: 348, baseType: !1228, size: 32768, offset: 512)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1223, line: 304, size: 32768, elements: !1229)
!1229 = !{!1230, !1245, !1284, !1334, !1351}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1228, file: !1223, line: 305, baseType: !1231, size: 896)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1223, line: 12, size: 896, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1244}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1231, file: !1223, line: 13, baseType: !225, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1231, file: !1223, line: 14, baseType: !225, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1231, file: !1223, line: 15, baseType: !225, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1231, file: !1223, line: 16, baseType: !225, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1231, file: !1223, line: 17, baseType: !225, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1231, file: !1223, line: 18, baseType: !225, size: 32, offset: 160)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1231, file: !1223, line: 19, baseType: !225, size: 32, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1231, file: !1223, line: 22, baseType: !1241, size: 640, offset: 224)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 640, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 20)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1231, file: !1223, line: 25, baseType: !225, size: 32, offset: 864)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1228, file: !1223, line: 306, baseType: !1246, size: 4096, align: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1223, line: 34, size: 4096, align: 128, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1267, !1268, !1269, !1271, !1275, !1279}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1246, file: !1223, line: 35, baseType: !99, size: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1246, file: !1223, line: 36, baseType: !99, size: 16, offset: 16)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1246, file: !1223, line: 37, baseType: !99, size: 16, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1246, file: !1223, line: 38, baseType: !99, size: 16, offset: 48)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1223, line: 39, baseType: !1253, size: 128, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1223, line: 39, size: 128, elements: !1254)
!1254 = !{!1255, !1260}
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1223, line: 40, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !1223, line: 40, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1256, file: !1223, line: 41, baseType: !57, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1256, file: !1223, line: 42, baseType: !57, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1223, line: 44, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !1223, line: 44, size: 128, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1261, file: !1223, line: 45, baseType: !225, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1261, file: !1223, line: 46, baseType: !225, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1261, file: !1223, line: 47, baseType: !225, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1261, file: !1223, line: 48, baseType: !225, size: 32, offset: 96)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1246, file: !1223, line: 51, baseType: !225, size: 32, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1246, file: !1223, line: 52, baseType: !225, size: 32, offset: 224)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1246, file: !1223, line: 55, baseType: !1270, size: 1024, offset: 256)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 1024, elements: !184)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1246, file: !1223, line: 58, baseType: !1272, size: 2048, offset: 1280)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2048, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1246, file: !1223, line: 60, baseType: !1276, size: 384, offset: 3328)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 384, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 12)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1223, line: 62, baseType: !1280, size: 384, offset: 3712)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1223, line: 62, size: 384, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1280, file: !1223, line: 63, baseType: !1276, size: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1280, file: !1223, line: 64, baseType: !1276, size: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1228, file: !1223, line: 307, baseType: !1285, size: 1088)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1223, line: 79, size: 1088, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1333}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1285, file: !1223, line: 80, baseType: !225, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1285, file: !1223, line: 81, baseType: !225, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1285, file: !1223, line: 82, baseType: !225, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1285, file: !1223, line: 83, baseType: !225, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1285, file: !1223, line: 84, baseType: !225, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1285, file: !1223, line: 85, baseType: !225, size: 32, offset: 160)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1285, file: !1223, line: 86, baseType: !225, size: 32, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1285, file: !1223, line: 88, baseType: !1241, size: 640, offset: 224)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1285, file: !1223, line: 89, baseType: !107, size: 8, offset: 864)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1285, file: !1223, line: 90, baseType: !107, size: 8, offset: 872)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1285, file: !1223, line: 91, baseType: !107, size: 8, offset: 880)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1285, file: !1223, line: 92, baseType: !107, size: 8, offset: 888)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1285, file: !1223, line: 93, baseType: !107, size: 8, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1285, file: !1223, line: 94, baseType: !107, size: 8, offset: 904)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1285, file: !1223, line: 95, baseType: !1302, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1304, line: 11, size: 128, elements: !1305)
!1304 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1303, file: !1304, line: 12, baseType: !238, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1303, file: !1304, line: 13, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1310, line: 56, size: 1344, elements: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1309, file: !1310, line: 61, baseType: !59, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1309, file: !1310, line: 62, baseType: !59, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1309, file: !1310, line: 63, baseType: !59, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1309, file: !1310, line: 64, baseType: !59, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1309, file: !1310, line: 65, baseType: !59, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1309, file: !1310, line: 66, baseType: !59, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1309, file: !1310, line: 68, baseType: !59, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1309, file: !1310, line: 69, baseType: !59, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1309, file: !1310, line: 70, baseType: !59, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1309, file: !1310, line: 71, baseType: !59, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1309, file: !1310, line: 72, baseType: !59, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1309, file: !1310, line: 73, baseType: !59, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1309, file: !1310, line: 74, baseType: !59, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1309, file: !1310, line: 75, baseType: !59, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1309, file: !1310, line: 76, baseType: !59, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1309, file: !1310, line: 81, baseType: !59, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1309, file: !1310, line: 83, baseType: !59, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1309, file: !1310, line: 84, baseType: !59, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !1310, line: 85, baseType: !59, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1309, file: !1310, line: 86, baseType: !59, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1309, file: !1310, line: 87, baseType: !59, size: 64, offset: 1280)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1285, file: !1223, line: 96, baseType: !225, size: 32, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1228, file: !1223, line: 308, baseType: !1335, size: 4608, align: 512)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1223, line: 289, size: 4608, align: 512, elements: !1336)
!1336 = !{!1337, !1338, !1347}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1335, file: !1223, line: 290, baseType: !1246, size: 4096, align: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1335, file: !1223, line: 291, baseType: !1339, size: 512, offset: 4096)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1223, line: 268, size: 512, elements: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1339, file: !1223, line: 269, baseType: !57, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1339, file: !1223, line: 270, baseType: !57, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1339, file: !1223, line: 271, baseType: !1344, size: 384, offset: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 384, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 6)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1335, file: !1223, line: 292, baseType: !1348, offset: 4608)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 0)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1228, file: !1223, line: 309, baseType: !1352, size: 32768)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 32768, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 4096)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !172, line: 232, baseType: !187, size: 192, offset: 1536)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mutex", scope: !171, file: !172, line: 233, baseType: !187, size: 192, offset: 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !171, file: !172, line: 235, baseType: !1358, size: 64, offset: 1920)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !45, line: 95, size: 1152, elements: !1360)
!1360 = !{!1361, !1362, !2094, !2095, !2096, !2097, !2098, !2102, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1359, file: !45, line: 96, baseType: !68, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1359, file: !45, line: 97, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1365, line: 82, size: 1408, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1368, !1369, !2063, !2064, !2065, !2066, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2081, !2082, !2083, !2084, !2085, !2089, !2090, !2093}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1364, file: !1365, line: 83, baseType: !68, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1364, file: !1365, line: 84, baseType: !68, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1364, file: !1365, line: 85, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !24, line: 461, size: 5568, elements: !1372)
!1372 = !{!1373, !1700, !1701, !1704, !1705, !1756, !1757, !1758, !1759, !1760, !1761, !1770, !1879, !1892, !1895, !1896, !1900, !1901, !1902, !1903, !1907, !1913, !1914, !1917, !1921, !2011, !2014, !2015, !2016, !2017, !2051, !2052, !2053, !2056, !2059, !2060, !2061, !2062}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1371, file: !24, line: 462, baseType: !1374, size: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1375, line: 64, size: 512, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1378, !1379, !1381, !1421, !1537, !1690, !1695, !1696, !1697, !1698, !1699}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1374, file: !1375, line: 65, baseType: !68, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1374, file: !1375, line: 66, baseType: !175, size: 128, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1374, file: !1375, line: 67, baseType: !1380, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1374, file: !1375, line: 68, baseType: !1382, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1375, line: 192, size: 704, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1383, file: !1375, line: 193, baseType: !175, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1383, file: !1375, line: 194, baseType: !201, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1383, file: !1375, line: 195, baseType: !1374, size: 512, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1383, file: !1375, line: 196, baseType: !1389, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1375, line: 156, size: 192, elements: !1392)
!1392 = !{!1393, !1398, !1403}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1391, file: !1375, line: 157, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!85, !1382, !1380}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1391, file: !1375, line: 158, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!68, !1382, !1380}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1391, file: !1375, line: 159, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!85, !1382, !1380, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1375, line: 148, size: 20736, elements: !1410)
!1410 = !{!1411, !1413, !1415, !1416, !1420}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1409, file: !1375, line: 149, baseType: !1412, size: 192)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !807)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1409, file: !1375, line: 150, baseType: !1414, size: 4096, offset: 192)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 4096, elements: !1273)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1409, file: !1375, line: 151, baseType: !85, size: 32, offset: 4288)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1409, file: !1375, line: 152, baseType: !1417, size: 16384, offset: 4320)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 16384, elements: !1418)
!1418 = !{!1419}
!1419 = !DISubrange(count: 2048)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1409, file: !1375, line: 153, baseType: !85, size: 32, offset: 20704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1374, file: !1375, line: 69, baseType: !1422, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1375, line: 138, size: 448, elements: !1424)
!1424 = !{!1425, !1429, !1451, !1453, !1488, !1516, !1520}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1423, file: !1375, line: 139, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1380}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1423, file: !1375, line: 140, baseType: !1430, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1433, line: 230, size: 128, elements: !1434)
!1433 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1447}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1432, file: !1433, line: 231, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1380, !1441, !91}
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !176, line: 60, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !368, line: 73, baseType: !962)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1433, line: 30, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1442, file: !1433, line: 31, baseType: !68, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1442, file: !1433, line: 32, baseType: !1446, size: 16, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !176, line: 19, baseType: !101)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1432, file: !1433, line: 232, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1439, !1380, !1441, !68, !866}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1423, file: !1375, line: 141, baseType: !1452, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1423, file: !1375, line: 142, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1433, line: 84, size: 320, elements: !1458)
!1458 = !{!1459, !1460, !1464, !1485, !1486}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1457, file: !1433, line: 85, baseType: !68, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1457, file: !1433, line: 86, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1446, !1380, !1441, !85}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1457, file: !1433, line: 88, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1446, !1380, !1468, !85}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1433, line: 168, size: 448, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1480, !1481}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1469, file: !1433, line: 169, baseType: !1442, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1469, file: !1433, line: 170, baseType: !866, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1469, file: !1433, line: 171, baseType: !96, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1469, file: !1433, line: 172, baseType: !1475, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1439, !463, !1380, !1468, !91, !1478, !866}
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !176, line: 46, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !368, line: 88, baseType: !199)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1469, file: !1433, line: 174, baseType: !1475, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1469, file: !1433, line: 176, baseType: !1482, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!85, !463, !1380, !1468, !429}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1457, file: !1433, line: 90, baseType: !1452, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1457, file: !1433, line: 91, baseType: !1487, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1423, file: !1375, line: 143, baseType: !1489, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1492, !1380}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1495)
!1495 = !{!1496, !1497, !1501, !1505, !1511, !1515}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1494, file: !18, line: 40, baseType: !17, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1494, file: !18, line: 41, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!615}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1494, file: !18, line: 42, baseType: !1502, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!96}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1494, file: !18, line: 43, baseType: !1506, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1168, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1494, file: !18, line: 44, baseType: !1512, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1168}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1494, file: !18, line: 45, baseType: !93, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1423, file: !1375, line: 144, baseType: !1517, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1168, !1380}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1423, file: !1375, line: 145, baseType: !1521, size: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1380, !1524, !1530}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !608, line: 23, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 21, size: 32, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1526, file: !608, line: 22, baseType: !1529, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !176, line: 32, baseType: !934)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !608, line: 28, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 26, size: 32, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1532, file: !608, line: 27, baseType: !1535, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !176, line: 33, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !368, line: 50, baseType: !7)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1374, file: !1375, line: 70, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1540, line: 123, size: 1024, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1683, !1684, !1685, !1686, !1687}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1539, file: !1540, line: 124, baseType: !230, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1539, file: !1540, line: 125, baseType: !230, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1539, file: !1540, line: 135, baseType: !1538, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1539, file: !1540, line: 136, baseType: !68, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1539, file: !1540, line: 138, baseType: !279, size: 192, align: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1539, file: !1540, line: 140, baseType: !1168, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1539, file: !1540, line: 141, baseType: !7, size: 32, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 142, baseType: !1550, size: 256, offset: 512)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 142, size: 256, elements: !1551)
!1551 = !{!1552, !1607, !1611}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1550, file: !1540, line: 143, baseType: !1553, size: 192)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1540, line: 91, size: 192, elements: !1554)
!1554 = !{!1555, !1556, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1553, file: !1540, line: 92, baseType: !59, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1553, file: !1540, line: 94, baseType: !387, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1553, file: !1540, line: 100, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1540, line: 180, size: 704, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1577, !1578, !1579, !1605, !1606}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1559, file: !1540, line: 182, baseType: !1538, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !1540, line: 183, baseType: !7, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1559, file: !1540, line: 186, baseType: !1564, size: 192, offset: 128)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1565, line: 19, size: 192, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1575, !1576}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1564, file: !1565, line: 20, baseType: !1568, size: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1569, line: 292, size: 128, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572, !1574}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1568, file: !1569, line: 293, baseType: !201)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1568, file: !1569, line: 295, baseType: !1573, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !176, line: 148, baseType: !7)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1568, file: !1569, line: 296, baseType: !96, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1564, file: !1565, line: 21, baseType: !7, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1564, file: !1565, line: 22, baseType: !7, size: 32, offset: 160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1559, file: !1540, line: 187, baseType: !225, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1559, file: !1540, line: 188, baseType: !225, size: 32, offset: 352)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1559, file: !1540, line: 189, baseType: !1580, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1540, line: 168, size: 320, elements: !1582)
!1582 = !{!1583, !1589, !1593, !1597, !1601}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1581, file: !1540, line: 169, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!85, !1587, !1558}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !441, line: 539, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1581, file: !1540, line: 171, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!85, !1538, !68, !1446}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1581, file: !1540, line: 173, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!85, !1538}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1581, file: !1540, line: 174, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!85, !1538, !1538, !68}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1581, file: !1540, line: 176, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!85, !1587, !1538, !1558}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1559, file: !1540, line: 192, baseType: !175, size: 128, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1559, file: !1540, line: 194, baseType: !750, size: 128, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1550, file: !1540, line: 144, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1540, line: 103, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1608, file: !1540, line: 104, baseType: !1538, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1550, file: !1540, line: 145, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1540, line: 107, size: 256, elements: !1613)
!1613 = !{!1614, !1678, !1681, !1682}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1612, file: !1540, line: 108, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1540, line: 217, size: 768, elements: !1618)
!1618 = !{!1619, !1639, !1643, !1647, !1652, !1656, !1660, !1664, !1665, !1666, !1667, !1674}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1617, file: !1540, line: 222, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!85, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1540, line: 197, size: 1088, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1624, file: !1540, line: 199, baseType: !1538, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1624, file: !1540, line: 200, baseType: !463, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1624, file: !1540, line: 201, baseType: !1587, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1624, file: !1540, line: 202, baseType: !96, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1624, file: !1540, line: 205, baseType: !187, size: 192, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1624, file: !1540, line: 206, baseType: !187, size: 192, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1624, file: !1540, line: 207, baseType: !85, size: 32, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1624, file: !1540, line: 208, baseType: !175, size: 128, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1624, file: !1540, line: 209, baseType: !91, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1624, file: !1540, line: 211, baseType: !866, size: 64, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1624, file: !1540, line: 212, baseType: !615, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1624, file: !1540, line: 213, baseType: !615, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1624, file: !1540, line: 214, baseType: !458, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1617, file: !1540, line: 223, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1623}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1617, file: !1540, line: 236, baseType: !1644, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!85, !1587, !96}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1617, file: !1540, line: 238, baseType: !1648, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!96, !1587, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1617, file: !1540, line: 239, baseType: !1653, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!96, !1587, !96, !1651}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1617, file: !1540, line: 240, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1587, !96}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1617, file: !1540, line: 242, baseType: !1661, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1439, !1623, !91, !866, !1478}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1617, file: !1540, line: 252, baseType: !866, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1617, file: !1540, line: 259, baseType: !615, size: 8, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1617, file: !1540, line: 260, baseType: !1661, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1617, file: !1540, line: 263, baseType: !1668, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!1671, !1623, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !55, line: 52, baseType: !7)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1540, line: 27, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1617, file: !1540, line: 266, baseType: !1675, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!85, !1623, !429}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1612, file: !1540, line: 109, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1540, line: 31, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1612, file: !1540, line: 110, baseType: !1478, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1612, file: !1540, line: 111, baseType: !1538, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1539, file: !1540, line: 148, baseType: !96, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1539, file: !1540, line: 154, baseType: !57, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1540, line: 156, baseType: !101, size: 16, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1539, file: !1540, line: 157, baseType: !1446, size: 16, offset: 912)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1539, file: !1540, line: 158, baseType: !1688, size: 64, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1540, line: 32, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1374, file: !1375, line: 71, baseType: !1691, size: 32, offset: 448)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1692, line: 19, size: 32, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1691, file: !1692, line: 20, baseType: !254, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1374, file: !1375, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1374, file: !1375, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1374, file: !1375, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1374, file: !1375, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1374, file: !1375, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1371, file: !24, line: 463, baseType: !1370, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1371, file: !24, line: 465, baseType: !1702, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !24, line: 36, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1371, file: !24, line: 467, baseType: !68, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !24, line: 468, baseType: !1706, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !24, line: 87, size: 384, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1716, !1721, !1725}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1708, file: !24, line: 88, baseType: !68, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1708, file: !24, line: 89, baseType: !1454, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1708, file: !24, line: 90, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!85, !1370, !1408}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1708, file: !24, line: 91, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!91, !1370, !1720, !1524, !1530}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1708, file: !24, line: 93, baseType: !1722, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1370}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1708, file: !24, line: 95, baseType: !1726, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 278, size: 1472, elements: !1729)
!1729 = !{!1730, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1728, file: !31, line: 279, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!85, !1370}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1728, file: !31, line: 280, baseType: !1722, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1728, file: !31, line: 281, baseType: !1731, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1728, file: !31, line: 282, baseType: !1731, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1728, file: !31, line: 283, baseType: !1731, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1728, file: !31, line: 284, baseType: !1731, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1728, file: !31, line: 285, baseType: !1731, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1728, file: !31, line: 286, baseType: !1731, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1728, file: !31, line: 287, baseType: !1731, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1728, file: !31, line: 288, baseType: !1731, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1728, file: !31, line: 289, baseType: !1731, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1728, file: !31, line: 290, baseType: !1731, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1728, file: !31, line: 291, baseType: !1731, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1728, file: !31, line: 292, baseType: !1731, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1728, file: !31, line: 293, baseType: !1731, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1728, file: !31, line: 294, baseType: !1731, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1728, file: !31, line: 295, baseType: !1731, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1728, file: !31, line: 296, baseType: !1731, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1728, file: !31, line: 297, baseType: !1731, size: 64, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1728, file: !31, line: 298, baseType: !1731, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1728, file: !31, line: 299, baseType: !1731, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1728, file: !31, line: 300, baseType: !1731, size: 64, offset: 1344)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1728, file: !31, line: 301, baseType: !1731, size: 64, offset: 1408)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1371, file: !24, line: 470, baseType: !1363, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1371, file: !24, line: 471, baseType: !1358, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1371, file: !24, line: 473, baseType: !96, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1371, file: !24, line: 475, baseType: !96, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1371, file: !24, line: 480, baseType: !187, size: 192, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1371, file: !24, line: 484, baseType: !1762, size: 576, offset: 1216)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !24, line: 361, size: 576, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1762, file: !24, line: 362, baseType: !175, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1762, file: !24, line: 363, baseType: !175, size: 128, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1762, file: !24, line: 364, baseType: !175, size: 128, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1762, file: !24, line: 365, baseType: !175, size: 128, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1762, file: !24, line: 366, baseType: !615, size: 8, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1762, file: !24, line: 367, baseType: !23, size: 32, offset: 544)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1371, file: !24, line: 485, baseType: !1771, size: 2304, offset: 1792)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 565, size: 2304, elements: !1772)
!1772 = !{!1773, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1872, !1876}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1771, file: !31, line: 566, baseType: !1774, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 52, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 50, size: 32, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1775, file: !31, line: 51, baseType: !85, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1771, file: !31, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1771, file: !31, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1771, file: !31, line: 569, baseType: !615, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1771, file: !31, line: 570, baseType: !615, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1771, file: !31, line: 571, baseType: !615, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1771, file: !31, line: 572, baseType: !615, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1771, file: !31, line: 573, baseType: !615, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1771, file: !31, line: 574, baseType: !615, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1771, file: !31, line: 575, baseType: !615, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1771, file: !31, line: 576, baseType: !615, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1771, file: !31, line: 577, baseType: !225, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !31, line: 578, baseType: !201, offset: 96)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1771, file: !31, line: 580, baseType: !175, size: 128, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1771, file: !31, line: 581, baseType: !591, size: 192, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1771, file: !31, line: 582, baseType: !1793, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1795, line: 43, size: 1472, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1804, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1794, file: !1795, line: 44, baseType: !68, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1794, file: !1795, line: 45, baseType: !85, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1794, file: !1795, line: 46, baseType: !175, size: 128, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1794, file: !1795, line: 47, baseType: !201, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1794, file: !1795, line: 48, baseType: !1802, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 533, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1794, file: !1795, line: 49, baseType: !1805, size: 320, offset: 320)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1806, line: 11, size: 320, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810, !1815}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1805, file: !1806, line: 16, baseType: !743, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1805, file: !1806, line: 17, baseType: !59, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1805, file: !1806, line: 18, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1805, file: !1806, line: 19, baseType: !225, size: 32, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1794, file: !1795, line: 50, baseType: !59, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1794, file: !1795, line: 51, baseType: !331, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1794, file: !1795, line: 52, baseType: !331, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1794, file: !1795, line: 53, baseType: !331, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1794, file: !1795, line: 54, baseType: !331, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1794, file: !1795, line: 55, baseType: !331, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1794, file: !1795, line: 56, baseType: !59, size: 64, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1794, file: !1795, line: 57, baseType: !59, size: 64, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1794, file: !1795, line: 58, baseType: !59, size: 64, offset: 1152)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1794, file: !1795, line: 59, baseType: !59, size: 64, offset: 1216)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1794, file: !1795, line: 60, baseType: !59, size: 64, offset: 1280)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1794, file: !1795, line: 61, baseType: !1370, size: 64, offset: 1344)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1794, file: !1795, line: 62, baseType: !615, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1794, file: !1795, line: 63, baseType: !615, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1771, file: !31, line: 583, baseType: !615, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1771, file: !31, line: 584, baseType: !615, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1771, file: !31, line: 585, baseType: !615, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1771, file: !31, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1771, file: !31, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1771, file: !31, line: 592, baseType: !323, size: 512, offset: 576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1771, file: !31, line: 593, baseType: !57, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1771, file: !31, line: 594, baseType: !621, size: 256, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1771, file: !31, line: 595, baseType: !750, size: 128, offset: 1408)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1771, file: !31, line: 596, baseType: !1802, size: 64, offset: 1536)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1771, file: !31, line: 597, baseType: !230, size: 32, offset: 1600)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1771, file: !31, line: 598, baseType: !230, size: 32, offset: 1632)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1771, file: !31, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1771, file: !31, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1771, file: !31, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1771, file: !31, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1771, file: !31, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1771, file: !31, line: 604, baseType: !615, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1771, file: !31, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1771, file: !31, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1771, file: !31, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1771, file: !31, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1771, file: !31, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1771, file: !31, line: 610, baseType: !7, size: 32, offset: 1696)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1771, file: !31, line: 611, baseType: !30, size: 32, offset: 1728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1771, file: !31, line: 612, baseType: !38, size: 32, offset: 1760)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1771, file: !31, line: 613, baseType: !85, size: 32, offset: 1792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1771, file: !31, line: 614, baseType: !85, size: 32, offset: 1824)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1771, file: !31, line: 615, baseType: !57, size: 64, offset: 1856)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1771, file: !31, line: 616, baseType: !57, size: 64, offset: 1920)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1771, file: !31, line: 617, baseType: !57, size: 64, offset: 1984)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1771, file: !31, line: 618, baseType: !57, size: 64, offset: 2048)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1771, file: !31, line: 620, baseType: !1863, size: 64, offset: 2112)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 536, size: 256, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !31, line: 537, baseType: !201)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1864, file: !31, line: 538, baseType: !7, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1864, file: !31, line: 540, baseType: !175, size: 128, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1864, file: !31, line: 543, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !31, line: 534, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1771, file: !31, line: 621, baseType: !1873, size: 64, offset: 2176)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1370, !703}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1771, file: !31, line: 622, baseType: !1877, size: 64, offset: 2240)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 622, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1371, file: !24, line: 486, baseType: !1880, size: 64, offset: 4096)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 642, size: 1792, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1889, !1890, !1891}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1881, file: !31, line: 643, baseType: !1728, size: 1472)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1881, file: !31, line: 644, baseType: !1731, size: 64, offset: 1472)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1881, file: !31, line: 645, baseType: !1886, size: 64, offset: 1536)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1370, !615}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1881, file: !31, line: 646, baseType: !1731, size: 64, offset: 1600)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1881, file: !31, line: 647, baseType: !1722, size: 64, offset: 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1881, file: !31, line: 648, baseType: !1722, size: 64, offset: 1728)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1371, file: !24, line: 493, baseType: !1893, size: 64, offset: 4160)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !24, line: 493, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1371, file: !24, line: 499, baseType: !175, size: 128, offset: 4224)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1371, file: !24, line: 502, baseType: !1897, size: 64, offset: 4352)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !24, line: 502, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1371, file: !24, line: 504, baseType: !56, size: 64, offset: 4416)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1371, file: !24, line: 505, baseType: !57, size: 64, offset: 4480)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1371, file: !24, line: 510, baseType: !57, size: 64, offset: 4544)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1371, file: !24, line: 511, baseType: !1904, size: 64, offset: 4608)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !24, line: 511, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1371, file: !24, line: 513, baseType: !1908, size: 64, offset: 4672)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !24, line: 288, size: 128, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1909, file: !24, line: 293, baseType: !7, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1909, file: !24, line: 294, baseType: !59, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1371, file: !24, line: 515, baseType: !175, size: 128, offset: 4736)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1371, file: !24, line: 526, baseType: !1915, offset: 4864)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1916, line: 5, elements: !215)
!1916 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1371, file: !24, line: 528, baseType: !1918, size: 64, offset: 4864)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1920, line: 14, flags: DIFlagFwdDecl)
!1920 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1371, file: !24, line: 529, baseType: !1922, size: 64, offset: 4928)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1924, line: 17, size: 192, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !2010}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1923, file: !1924, line: 18, baseType: !1922, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1923, file: !1924, line: 19, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1924, line: 110, size: 1152, elements: !1931)
!1931 = !{!1932, !1936, !1940, !1946, !1952, !1956, !1960, !1965, !1969, !1970, !1974, !1978, !1982, !1993, !1994, !1995, !1996, !2006}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1930, file: !1924, line: 111, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1922, !1922}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1930, file: !1924, line: 112, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1922}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1930, file: !1924, line: 113, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!615, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1930, file: !1924, line: 114, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1168, !1944, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1930, file: !1924, line: 116, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!615, !1944, !68}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1930, file: !1924, line: 118, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!85, !1944, !68, !7, !96, !866}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1930, file: !1924, line: 123, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!85, !1944, !68, !1964, !866}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1930, file: !1924, line: 126, baseType: !1966, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!68, !1944}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1930, file: !1924, line: 127, baseType: !1966, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1930, file: !1924, line: 128, baseType: !1971, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1922, !1944}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1930, file: !1924, line: 130, baseType: !1975, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1922, !1944, !1922}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1930, file: !1924, line: 133, baseType: !1979, size: 64, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1922, !1944, !68}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1930, file: !1924, line: 135, baseType: !1983, size: 64, offset: 768)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!85, !1944, !68, !68, !7, !7, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1924, line: 43, size: 640, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1987, file: !1924, line: 44, baseType: !1922, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1987, file: !1924, line: 45, baseType: !7, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1987, file: !1924, line: 46, baseType: !1992, size: 512, offset: 128)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 512, elements: !362)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1930, file: !1924, line: 140, baseType: !1975, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1930, file: !1924, line: 143, baseType: !1971, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1930, file: !1924, line: 145, baseType: !1933, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1930, file: !1924, line: 146, baseType: !1997, size: 64, offset: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!85, !1944, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1924, line: 29, size: 128, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2001, file: !1924, line: 30, baseType: !7, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2001, file: !1924, line: 31, baseType: !7, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2001, file: !1924, line: 32, baseType: !1944, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1930, file: !1924, line: 148, baseType: !2007, size: 64, offset: 1088)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!85, !1944, !1370}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1923, file: !1924, line: 20, baseType: !1370, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1371, file: !24, line: 534, baseType: !2012, size: 32, offset: 4992)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !176, line: 16, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !176, line: 13, baseType: !225)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1371, file: !24, line: 535, baseType: !225, size: 32, offset: 5024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1371, file: !24, line: 537, baseType: !201, offset: 5056)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1371, file: !24, line: 538, baseType: !175, size: 128, offset: 5056)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1371, file: !24, line: 540, baseType: !2018, size: 64, offset: 5184)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2020, line: 54, size: 960, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2032, !2036, !2037, !2038, !2039, !2043, !2047, !2048}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2019, file: !2020, line: 55, baseType: !68, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2019, file: !2020, line: 56, baseType: !72, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2019, file: !2020, line: 58, baseType: !1454, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2019, file: !2020, line: 59, baseType: !1454, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2019, file: !2020, line: 60, baseType: !1380, size: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2019, file: !2020, line: 62, baseType: !1713, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2019, file: !2020, line: 63, baseType: !2029, size: 64, offset: 384)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!91, !1370, !1720}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2019, file: !2020, line: 65, baseType: !2033, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2018}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2019, file: !2020, line: 66, baseType: !1722, size: 64, offset: 512)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2019, file: !2020, line: 68, baseType: !1731, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2019, file: !2020, line: 70, baseType: !1492, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2019, file: !2020, line: 71, baseType: !2040, size: 64, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!1168, !1370}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2019, file: !2020, line: 73, baseType: !2044, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1370, !1524, !1530}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2019, file: !2020, line: 75, baseType: !1726, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2019, file: !2020, line: 77, baseType: !2049, size: 64, offset: 896)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1365, line: 111, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1371, file: !24, line: 541, baseType: !1454, size: 64, offset: 5248)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1371, file: !24, line: 543, baseType: !1722, size: 64, offset: 5312)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1371, file: !24, line: 544, baseType: !2054, size: 64, offset: 5376)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !24, line: 45, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1371, file: !24, line: 545, baseType: !2057, size: 64, offset: 5440)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !24, line: 47, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1371, file: !24, line: 547, baseType: !615, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1371, file: !24, line: 548, baseType: !615, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1371, file: !24, line: 549, baseType: !615, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1371, file: !24, line: 550, baseType: !615, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1364, file: !1365, line: 86, baseType: !1454, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1364, file: !1365, line: 87, baseType: !1454, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1364, file: !1365, line: 88, baseType: !1454, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1364, file: !1365, line: 90, baseType: !2067, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!85, !1370, !1358}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1364, file: !1365, line: 91, baseType: !1713, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1364, file: !1365, line: 92, baseType: !1731, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1364, file: !1365, line: 93, baseType: !1722, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1364, file: !1365, line: 94, baseType: !1731, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1364, file: !1365, line: 95, baseType: !1722, size: 64, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1364, file: !1365, line: 97, baseType: !1731, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1364, file: !1365, line: 98, baseType: !1731, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1364, file: !1365, line: 100, baseType: !2078, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!85, !1370, !1774}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1364, file: !1365, line: 101, baseType: !1731, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1364, file: !1365, line: 103, baseType: !1731, size: 64, offset: 1024)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1364, file: !1365, line: 105, baseType: !1731, size: 64, offset: 1088)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1364, file: !1365, line: 107, baseType: !1726, size: 64, offset: 1152)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1364, file: !1365, line: 109, baseType: !2086, size: 64, offset: 1216)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1365, line: 109, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1364, file: !1365, line: 111, baseType: !2049, size: 64, offset: 1280)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1364, file: !1365, line: 112, baseType: !2091, offset: 1344)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2092, line: 187, elements: !215)
!2092 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1364, file: !1365, line: 114, baseType: !615, size: 8, offset: 1344)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1359, file: !45, line: 99, baseType: !72, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1359, file: !45, line: 100, baseType: !68, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1359, file: !45, line: 102, baseType: !615, size: 8, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1359, file: !45, line: 103, baseType: !44, size: 32, offset: 288)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1359, file: !45, line: 105, baseType: !2099, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !45, line: 105, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1359, file: !45, line: 106, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !45, line: 106, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1359, file: !45, line: 108, baseType: !1731, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1359, file: !45, line: 109, baseType: !1722, size: 64, offset: 512)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1359, file: !45, line: 110, baseType: !1731, size: 64, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1359, file: !45, line: 111, baseType: !1722, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1359, file: !45, line: 112, baseType: !2078, size: 64, offset: 704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1359, file: !45, line: 113, baseType: !1731, size: 64, offset: 768)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1359, file: !45, line: 114, baseType: !1454, size: 64, offset: 832)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1359, file: !45, line: 115, baseType: !1454, size: 64, offset: 896)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1359, file: !45, line: 117, baseType: !1726, size: 64, offset: 960)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1359, file: !45, line: 118, baseType: !1722, size: 64, offset: 1024)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1359, file: !45, line: 120, baseType: !2117, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !45, line: 120, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !171, file: !172, line: 236, baseType: !1371, size: 5568, offset: 1984)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !171, file: !172, line: 238, baseType: !2121, size: 64, offset: 7552)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_bus_master", file: !172, line: 131, size: 832, elements: !2123)
!2123 = !{!2124, !2125, !2129, !2133, !2137, !2138, !2139, !2144, !2150, !2151, !2152, !2156, !2164}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2122, file: !172, line: 132, baseType: !96, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "read_bit", scope: !2122, file: !172, line: 134, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!107, !96}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "write_bit", scope: !2122, file: !172, line: 136, baseType: !2130, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !96, !107}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "touch_bit", scope: !2122, file: !172, line: 138, baseType: !2134, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!107, !96, !107}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2122, file: !172, line: 140, baseType: !2126, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2122, file: !172, line: 142, baseType: !2130, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "read_block", scope: !2122, file: !172, line: 144, baseType: !2140, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!107, !96, !2143, !85}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "write_block", scope: !2122, file: !172, line: 146, baseType: !2145, size: 64, offset: 448)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !96, !2148, !85}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "triplet", scope: !2122, file: !172, line: 148, baseType: !2134, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bus", scope: !2122, file: !172, line: 150, baseType: !2126, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "set_pullup", scope: !2122, file: !172, line: 152, baseType: !2153, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!107, !96, !85}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !2122, file: !172, line: 154, baseType: !2157, size: 64, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !96, !170, !107, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "w1_slave_found_callback", file: !172, line: 81, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !170, !57}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2122, file: !172, line: 157, baseType: !91, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !171, file: !172, line: 240, baseType: !225, size: 32, offset: 7616)
!2166 = !DILocalVariable(name: "dev", arg: 1, scope: !167, file: !3, line: 52, type: !170)
!2167 = !DILocation(line: 52, column: 35, scope: !167)
!2168 = !DILocalVariable(name: "bit", arg: 2, scope: !167, file: !3, line: 52, type: !85)
!2169 = !DILocation(line: 52, column: 44, scope: !167)
!2170 = !DILocation(line: 54, column: 6, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 54, column: 6)
!2172 = !DILocation(line: 54, column: 11, scope: !2171)
!2173 = !DILocation(line: 54, column: 23, scope: !2171)
!2174 = !DILocation(line: 54, column: 6, scope: !167)
!2175 = !DILocation(line: 55, column: 10, scope: !2171)
!2176 = !DILocation(line: 55, column: 15, scope: !2171)
!2177 = !DILocation(line: 55, column: 27, scope: !2171)
!2178 = !DILocation(line: 55, column: 37, scope: !2171)
!2179 = !DILocation(line: 55, column: 42, scope: !2171)
!2180 = !DILocation(line: 55, column: 54, scope: !2171)
!2181 = !DILocation(line: 55, column: 60, scope: !2171)
!2182 = !DILocation(line: 55, column: 3, scope: !2171)
!2183 = !DILocation(line: 56, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 56, column: 11)
!2185 = !DILocation(line: 56, column: 11, scope: !2171)
!2186 = !DILocation(line: 57, column: 22, scope: !2184)
!2187 = !DILocation(line: 57, column: 10, scope: !2184)
!2188 = !DILocation(line: 57, column: 3, scope: !2184)
!2189 = !DILocation(line: 59, column: 16, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 58, column: 7)
!2191 = !DILocation(line: 59, column: 3, scope: !2190)
!2192 = !DILocation(line: 60, column: 3, scope: !2190)
!2193 = !DILocation(line: 62, column: 1, scope: !167)
!2194 = distinct !DISubprogram(name: "w1_read_bit", scope: !3, file: !3, line: 159, type: !2195, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!107, !170}
!2197 = !DILocalVariable(name: "dev", arg: 1, scope: !2194, file: !3, line: 159, type: !170)
!2198 = !DILocation(line: 159, column: 41, scope: !2194)
!2199 = !DILocalVariable(name: "result", scope: !2194, file: !3, line: 161, type: !85)
!2200 = !DILocation(line: 161, column: 6, scope: !2194)
!2201 = !DILocalVariable(name: "flags", scope: !2194, file: !3, line: 162, type: !59)
!2202 = !DILocation(line: 162, column: 16, scope: !2194)
!2203 = !DILocation(line: 165, column: 2, scope: !2194)
!2204 = !DILocation(line: 165, column: 2, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 165, column: 2)
!2206 = !DILocalVariable(name: "__dummy", scope: !2207, file: !3, line: 165, type: !59)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 165, column: 2)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 165, column: 2)
!2209 = !DILocation(line: 165, column: 2, scope: !2207)
!2210 = !DILocalVariable(name: "__dummy2", scope: !2207, file: !3, line: 165, type: !59)
!2211 = !DILocation(line: 165, column: 2, scope: !2208)
!2212 = !DILocation(line: 166, column: 2, scope: !2194)
!2213 = !DILocation(line: 166, column: 7, scope: !2194)
!2214 = !DILocation(line: 166, column: 19, scope: !2194)
!2215 = !DILocation(line: 166, column: 29, scope: !2194)
!2216 = !DILocation(line: 166, column: 34, scope: !2194)
!2217 = !DILocation(line: 166, column: 46, scope: !2194)
!2218 = !DILocation(line: 167, column: 2, scope: !2194)
!2219 = !DILocation(line: 168, column: 2, scope: !2194)
!2220 = !DILocation(line: 168, column: 7, scope: !2194)
!2221 = !DILocation(line: 168, column: 19, scope: !2194)
!2222 = !DILocation(line: 168, column: 29, scope: !2194)
!2223 = !DILocation(line: 168, column: 34, scope: !2194)
!2224 = !DILocation(line: 168, column: 46, scope: !2194)
!2225 = !DILocation(line: 169, column: 2, scope: !2194)
!2226 = !DILocation(line: 171, column: 11, scope: !2194)
!2227 = !DILocation(line: 171, column: 16, scope: !2194)
!2228 = !DILocation(line: 171, column: 28, scope: !2194)
!2229 = !DILocation(line: 171, column: 37, scope: !2194)
!2230 = !DILocation(line: 171, column: 42, scope: !2194)
!2231 = !DILocation(line: 171, column: 54, scope: !2194)
!2232 = !DILocation(line: 171, column: 9, scope: !2194)
!2233 = !DILocation(line: 172, column: 2, scope: !2194)
!2234 = !DILocation(line: 172, column: 2, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 172, column: 2)
!2236 = !DILocalVariable(name: "__dummy", scope: !2237, file: !3, line: 172, type: !59)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 172, column: 2)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 172, column: 2)
!2239 = !DILocation(line: 172, column: 2, scope: !2237)
!2240 = !DILocalVariable(name: "__dummy2", scope: !2237, file: !3, line: 172, type: !59)
!2241 = !DILocation(line: 172, column: 2, scope: !2238)
!2242 = !DILocation(line: 174, column: 2, scope: !2194)
!2243 = !DILocation(line: 176, column: 9, scope: !2194)
!2244 = !DILocation(line: 176, column: 16, scope: !2194)
!2245 = !DILocation(line: 176, column: 2, scope: !2194)
!2246 = distinct !DISubprogram(name: "w1_write_bit", scope: !3, file: !3, line: 72, type: !2247, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !170, !85}
!2249 = !DILocalVariable(name: "dev", arg: 1, scope: !2246, file: !3, line: 72, type: !170)
!2250 = !DILocation(line: 72, column: 44, scope: !2246)
!2251 = !DILocalVariable(name: "bit", arg: 2, scope: !2246, file: !3, line: 72, type: !85)
!2252 = !DILocation(line: 72, column: 53, scope: !2246)
!2253 = !DILocalVariable(name: "flags", scope: !2246, file: !3, line: 74, type: !59)
!2254 = !DILocation(line: 74, column: 16, scope: !2246)
!2255 = !DILocation(line: 76, column: 5, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 76, column: 5)
!2257 = !DILocation(line: 76, column: 5, scope: !2246)
!2258 = !DILocation(line: 76, column: 22, scope: !2256)
!2259 = !DILocation(line: 76, column: 22, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 76, column: 22)
!2261 = !DILocalVariable(name: "__dummy", scope: !2262, file: !3, line: 76, type: !59)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 76, column: 22)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 76, column: 22)
!2264 = !DILocation(line: 76, column: 22, scope: !2262)
!2265 = !DILocalVariable(name: "__dummy2", scope: !2262, file: !3, line: 76, type: !59)
!2266 = !DILocation(line: 76, column: 22, scope: !2263)
!2267 = !DILocation(line: 78, column: 6, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 78, column: 6)
!2269 = !DILocation(line: 78, column: 6, scope: !2246)
!2270 = !DILocation(line: 79, column: 3, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 78, column: 11)
!2272 = !DILocation(line: 79, column: 8, scope: !2271)
!2273 = !DILocation(line: 79, column: 20, scope: !2271)
!2274 = !DILocation(line: 79, column: 30, scope: !2271)
!2275 = !DILocation(line: 79, column: 35, scope: !2271)
!2276 = !DILocation(line: 79, column: 47, scope: !2271)
!2277 = !DILocation(line: 80, column: 3, scope: !2271)
!2278 = !DILocation(line: 81, column: 3, scope: !2271)
!2279 = !DILocation(line: 81, column: 8, scope: !2271)
!2280 = !DILocation(line: 81, column: 20, scope: !2271)
!2281 = !DILocation(line: 81, column: 30, scope: !2271)
!2282 = !DILocation(line: 81, column: 35, scope: !2271)
!2283 = !DILocation(line: 81, column: 47, scope: !2271)
!2284 = !DILocation(line: 82, column: 3, scope: !2271)
!2285 = !DILocation(line: 83, column: 2, scope: !2271)
!2286 = !DILocation(line: 84, column: 3, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 83, column: 9)
!2288 = !DILocation(line: 84, column: 8, scope: !2287)
!2289 = !DILocation(line: 84, column: 20, scope: !2287)
!2290 = !DILocation(line: 84, column: 30, scope: !2287)
!2291 = !DILocation(line: 84, column: 35, scope: !2287)
!2292 = !DILocation(line: 84, column: 47, scope: !2287)
!2293 = !DILocation(line: 85, column: 3, scope: !2287)
!2294 = !DILocation(line: 86, column: 3, scope: !2287)
!2295 = !DILocation(line: 86, column: 8, scope: !2287)
!2296 = !DILocation(line: 86, column: 20, scope: !2287)
!2297 = !DILocation(line: 86, column: 30, scope: !2287)
!2298 = !DILocation(line: 86, column: 35, scope: !2287)
!2299 = !DILocation(line: 86, column: 47, scope: !2287)
!2300 = !DILocation(line: 87, column: 3, scope: !2287)
!2301 = !DILocation(line: 90, column: 5, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 90, column: 5)
!2303 = !DILocation(line: 90, column: 5, scope: !2246)
!2304 = !DILocation(line: 90, column: 22, scope: !2302)
!2305 = !DILocation(line: 90, column: 22, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 90, column: 22)
!2307 = !DILocalVariable(name: "__dummy", scope: !2308, file: !3, line: 90, type: !59)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 90, column: 22)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 90, column: 22)
!2310 = !DILocation(line: 90, column: 22, scope: !2308)
!2311 = !DILocalVariable(name: "__dummy2", scope: !2308, file: !3, line: 90, type: !59)
!2312 = !DILocation(line: 90, column: 22, scope: !2309)
!2313 = !DILocation(line: 91, column: 1, scope: !2246)
!2314 = distinct !DISubprogram(name: "w1_write_8", scope: !3, file: !3, line: 134, type: !2315, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !170, !107}
!2317 = !DILocalVariable(name: "dev", arg: 1, scope: !2314, file: !3, line: 134, type: !170)
!2318 = !DILocation(line: 134, column: 35, scope: !2314)
!2319 = !DILocalVariable(name: "byte", arg: 2, scope: !2314, file: !3, line: 134, type: !107)
!2320 = !DILocation(line: 134, column: 43, scope: !2314)
!2321 = !DILocalVariable(name: "i", scope: !2314, file: !3, line: 136, type: !85)
!2322 = !DILocation(line: 136, column: 6, scope: !2314)
!2323 = !DILocation(line: 138, column: 6, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 138, column: 6)
!2325 = !DILocation(line: 138, column: 11, scope: !2324)
!2326 = !DILocation(line: 138, column: 23, scope: !2324)
!2327 = !DILocation(line: 138, column: 6, scope: !2314)
!2328 = !DILocation(line: 139, column: 16, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 138, column: 35)
!2330 = !DILocation(line: 139, column: 3, scope: !2329)
!2331 = !DILocation(line: 140, column: 3, scope: !2329)
!2332 = !DILocation(line: 140, column: 8, scope: !2329)
!2333 = !DILocation(line: 140, column: 20, scope: !2329)
!2334 = !DILocation(line: 140, column: 31, scope: !2329)
!2335 = !DILocation(line: 140, column: 36, scope: !2329)
!2336 = !DILocation(line: 140, column: 48, scope: !2329)
!2337 = !DILocation(line: 140, column: 54, scope: !2329)
!2338 = !DILocation(line: 141, column: 2, scope: !2329)
!2339 = !DILocation(line: 143, column: 10, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 143, column: 3)
!2341 = !DILocation(line: 143, column: 8, scope: !2340)
!2342 = !DILocation(line: 143, column: 15, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 143, column: 3)
!2344 = !DILocation(line: 143, column: 17, scope: !2343)
!2345 = !DILocation(line: 143, column: 3, scope: !2340)
!2346 = !DILocation(line: 144, column: 8, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 144, column: 8)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 143, column: 27)
!2349 = !DILocation(line: 144, column: 10, scope: !2347)
!2350 = !DILocation(line: 144, column: 8, scope: !2348)
!2351 = !DILocation(line: 145, column: 18, scope: !2347)
!2352 = !DILocation(line: 145, column: 5, scope: !2347)
!2353 = !DILocation(line: 146, column: 17, scope: !2348)
!2354 = !DILocation(line: 146, column: 23, scope: !2348)
!2355 = !DILocation(line: 146, column: 31, scope: !2348)
!2356 = !DILocation(line: 146, column: 28, scope: !2348)
!2357 = !DILocation(line: 146, column: 34, scope: !2348)
!2358 = !DILocation(line: 146, column: 4, scope: !2348)
!2359 = !DILocation(line: 147, column: 3, scope: !2348)
!2360 = !DILocation(line: 143, column: 22, scope: !2343)
!2361 = !DILocation(line: 143, column: 3, scope: !2343)
!2362 = distinct !{!2362, !2345, !2363}
!2363 = !DILocation(line: 147, column: 3, scope: !2340)
!2364 = !DILocation(line: 148, column: 16, scope: !2314)
!2365 = !DILocation(line: 148, column: 2, scope: !2314)
!2366 = !DILocation(line: 149, column: 1, scope: !2314)
!2367 = distinct !DISubprogram(name: "w1_pre_write", scope: !3, file: !3, line: 101, type: !2368, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !170}
!2370 = !DILocalVariable(name: "dev", arg: 1, scope: !2367, file: !3, line: 101, type: !170)
!2371 = !DILocation(line: 101, column: 44, scope: !2367)
!2372 = !DILocation(line: 103, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 103, column: 6)
!2374 = !DILocation(line: 103, column: 11, scope: !2373)
!2375 = !DILocation(line: 103, column: 27, scope: !2373)
!2376 = !DILocation(line: 104, column: 3, scope: !2373)
!2377 = !DILocation(line: 104, column: 8, scope: !2373)
!2378 = !DILocation(line: 104, column: 22, scope: !2373)
!2379 = !DILocation(line: 104, column: 25, scope: !2373)
!2380 = !DILocation(line: 104, column: 30, scope: !2373)
!2381 = !DILocation(line: 104, column: 42, scope: !2373)
!2382 = !DILocation(line: 103, column: 6, scope: !2367)
!2383 = !DILocation(line: 105, column: 3, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 104, column: 54)
!2385 = !DILocation(line: 105, column: 8, scope: !2384)
!2386 = !DILocation(line: 105, column: 20, scope: !2384)
!2387 = !DILocation(line: 105, column: 31, scope: !2384)
!2388 = !DILocation(line: 105, column: 36, scope: !2384)
!2389 = !DILocation(line: 105, column: 48, scope: !2384)
!2390 = !DILocation(line: 106, column: 4, scope: !2384)
!2391 = !DILocation(line: 106, column: 9, scope: !2384)
!2392 = !DILocation(line: 107, column: 2, scope: !2384)
!2393 = !DILocation(line: 108, column: 1, scope: !2367)
!2394 = distinct !DISubprogram(name: "w1_post_write", scope: !3, file: !3, line: 118, type: !2368, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2395 = !DILocalVariable(name: "dev", arg: 1, scope: !2394, file: !3, line: 118, type: !170)
!2396 = !DILocation(line: 118, column: 45, scope: !2394)
!2397 = !DILocation(line: 120, column: 6, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 120, column: 6)
!2399 = !DILocation(line: 120, column: 11, scope: !2398)
!2400 = !DILocation(line: 120, column: 6, scope: !2394)
!2401 = !DILocation(line: 121, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 121, column: 7)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 120, column: 28)
!2404 = !DILocation(line: 121, column: 12, scope: !2402)
!2405 = !DILocation(line: 121, column: 26, scope: !2402)
!2406 = !DILocation(line: 121, column: 29, scope: !2402)
!2407 = !DILocation(line: 121, column: 34, scope: !2402)
!2408 = !DILocation(line: 121, column: 46, scope: !2402)
!2409 = !DILocation(line: 121, column: 7, scope: !2403)
!2410 = !DILocation(line: 122, column: 4, scope: !2402)
!2411 = !DILocation(line: 122, column: 9, scope: !2402)
!2412 = !DILocation(line: 122, column: 21, scope: !2402)
!2413 = !DILocation(line: 122, column: 32, scope: !2402)
!2414 = !DILocation(line: 122, column: 37, scope: !2402)
!2415 = !DILocation(line: 122, column: 49, scope: !2402)
!2416 = !DILocation(line: 124, column: 11, scope: !2402)
!2417 = !DILocation(line: 124, column: 16, scope: !2402)
!2418 = !DILocation(line: 124, column: 4, scope: !2402)
!2419 = !DILocation(line: 125, column: 3, scope: !2403)
!2420 = !DILocation(line: 125, column: 8, scope: !2403)
!2421 = !DILocation(line: 125, column: 24, scope: !2403)
!2422 = !DILocation(line: 126, column: 2, scope: !2403)
!2423 = !DILocation(line: 127, column: 1, scope: !2394)
!2424 = distinct !DISubprogram(name: "w1_triplet", scope: !3, file: !3, line: 193, type: !168, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2425 = !DILocalVariable(name: "dev", arg: 1, scope: !2424, file: !3, line: 193, type: !170)
!2426 = !DILocation(line: 193, column: 33, scope: !2424)
!2427 = !DILocalVariable(name: "bdir", arg: 2, scope: !2424, file: !3, line: 193, type: !85)
!2428 = !DILocation(line: 193, column: 42, scope: !2424)
!2429 = !DILocation(line: 195, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 195, column: 6)
!2431 = !DILocation(line: 195, column: 11, scope: !2430)
!2432 = !DILocation(line: 195, column: 23, scope: !2430)
!2433 = !DILocation(line: 195, column: 6, scope: !2424)
!2434 = !DILocation(line: 196, column: 10, scope: !2430)
!2435 = !DILocation(line: 196, column: 15, scope: !2430)
!2436 = !DILocation(line: 196, column: 27, scope: !2430)
!2437 = !DILocation(line: 196, column: 35, scope: !2430)
!2438 = !DILocation(line: 196, column: 40, scope: !2430)
!2439 = !DILocation(line: 196, column: 52, scope: !2430)
!2440 = !DILocation(line: 196, column: 58, scope: !2430)
!2441 = !DILocation(line: 196, column: 3, scope: !2430)
!2442 = !DILocalVariable(name: "id_bit", scope: !2443, file: !3, line: 198, type: !107)
!2443 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 197, column: 7)
!2444 = !DILocation(line: 198, column: 6, scope: !2443)
!2445 = !DILocation(line: 198, column: 30, scope: !2443)
!2446 = !DILocation(line: 198, column: 17, scope: !2443)
!2447 = !DILocalVariable(name: "comp_bit", scope: !2443, file: !3, line: 199, type: !107)
!2448 = !DILocation(line: 199, column: 6, scope: !2443)
!2449 = !DILocation(line: 199, column: 30, scope: !2443)
!2450 = !DILocation(line: 199, column: 17, scope: !2443)
!2451 = !DILocalVariable(name: "retval", scope: !2443, file: !3, line: 200, type: !107)
!2452 = !DILocation(line: 200, column: 6, scope: !2443)
!2453 = !DILocation(line: 202, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 202, column: 7)
!2455 = !DILocation(line: 202, column: 14, scope: !2454)
!2456 = !DILocation(line: 202, column: 17, scope: !2454)
!2457 = !DILocation(line: 202, column: 7, scope: !2443)
!2458 = !DILocation(line: 203, column: 4, scope: !2454)
!2459 = !DILocation(line: 205, column: 8, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 205, column: 7)
!2461 = !DILocation(line: 205, column: 15, scope: !2460)
!2462 = !DILocation(line: 205, column: 19, scope: !2460)
!2463 = !DILocation(line: 205, column: 7, scope: !2443)
!2464 = !DILocation(line: 207, column: 13, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 205, column: 29)
!2466 = !DILocation(line: 207, column: 11, scope: !2465)
!2467 = !DILocation(line: 208, column: 3, scope: !2465)
!2468 = !DILocation(line: 210, column: 11, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 208, column: 10)
!2470 = !DILocation(line: 210, column: 9, scope: !2469)
!2471 = !DILocation(line: 211, column: 13, scope: !2469)
!2472 = !DILocation(line: 211, column: 11, scope: !2469)
!2473 = !DILocation(line: 214, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 214, column: 7)
!2475 = !DILocation(line: 214, column: 12, scope: !2474)
!2476 = !DILocation(line: 214, column: 24, scope: !2474)
!2477 = !DILocation(line: 214, column: 7, scope: !2443)
!2478 = !DILocation(line: 215, column: 17, scope: !2474)
!2479 = !DILocation(line: 215, column: 22, scope: !2474)
!2480 = !DILocation(line: 215, column: 4, scope: !2474)
!2481 = !DILocation(line: 217, column: 17, scope: !2474)
!2482 = !DILocation(line: 217, column: 22, scope: !2474)
!2483 = !DILocation(line: 217, column: 4, scope: !2474)
!2484 = !DILocation(line: 218, column: 10, scope: !2443)
!2485 = !DILocation(line: 218, column: 3, scope: !2443)
!2486 = !DILocation(line: 220, column: 1, scope: !2424)
!2487 = distinct !DISubprogram(name: "w1_read_8", scope: !3, file: !3, line: 229, type: !2195, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2488 = !DILocalVariable(name: "dev", arg: 1, scope: !2487, file: !3, line: 229, type: !170)
!2489 = !DILocation(line: 229, column: 32, scope: !2487)
!2490 = !DILocalVariable(name: "i", scope: !2487, file: !3, line: 231, type: !85)
!2491 = !DILocation(line: 231, column: 6, scope: !2487)
!2492 = !DILocalVariable(name: "res", scope: !2487, file: !3, line: 232, type: !107)
!2493 = !DILocation(line: 232, column: 5, scope: !2487)
!2494 = !DILocation(line: 234, column: 6, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 234, column: 6)
!2496 = !DILocation(line: 234, column: 11, scope: !2495)
!2497 = !DILocation(line: 234, column: 23, scope: !2495)
!2498 = !DILocation(line: 234, column: 6, scope: !2487)
!2499 = !DILocation(line: 235, column: 9, scope: !2495)
!2500 = !DILocation(line: 235, column: 14, scope: !2495)
!2501 = !DILocation(line: 235, column: 26, scope: !2495)
!2502 = !DILocation(line: 235, column: 36, scope: !2495)
!2503 = !DILocation(line: 235, column: 41, scope: !2495)
!2504 = !DILocation(line: 235, column: 53, scope: !2495)
!2505 = !DILocation(line: 235, column: 7, scope: !2495)
!2506 = !DILocation(line: 235, column: 3, scope: !2495)
!2507 = !DILocation(line: 237, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 237, column: 3)
!2509 = !DILocation(line: 237, column: 8, scope: !2508)
!2510 = !DILocation(line: 237, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 237, column: 3)
!2512 = !DILocation(line: 237, column: 17, scope: !2511)
!2513 = !DILocation(line: 237, column: 3, scope: !2508)
!2514 = !DILocation(line: 238, column: 25, scope: !2511)
!2515 = !DILocation(line: 238, column: 12, scope: !2511)
!2516 = !DILocation(line: 238, column: 35, scope: !2511)
!2517 = !DILocation(line: 238, column: 32, scope: !2511)
!2518 = !DILocation(line: 238, column: 8, scope: !2511)
!2519 = !DILocation(line: 238, column: 4, scope: !2511)
!2520 = !DILocation(line: 237, column: 22, scope: !2511)
!2521 = !DILocation(line: 237, column: 3, scope: !2511)
!2522 = distinct !{!2522, !2513, !2523}
!2523 = !DILocation(line: 238, column: 36, scope: !2508)
!2524 = !DILocation(line: 240, column: 9, scope: !2487)
!2525 = !DILocation(line: 240, column: 2, scope: !2487)
!2526 = distinct !DISubprogram(name: "w1_write_block", scope: !3, file: !3, line: 250, type: !2527, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !170, !2148, !85}
!2529 = !DILocalVariable(name: "dev", arg: 1, scope: !2526, file: !3, line: 250, type: !170)
!2530 = !DILocation(line: 250, column: 39, scope: !2526)
!2531 = !DILocalVariable(name: "buf", arg: 2, scope: !2526, file: !3, line: 250, type: !2148)
!2532 = !DILocation(line: 250, column: 54, scope: !2526)
!2533 = !DILocalVariable(name: "len", arg: 3, scope: !2526, file: !3, line: 250, type: !85)
!2534 = !DILocation(line: 250, column: 63, scope: !2526)
!2535 = !DILocalVariable(name: "i", scope: !2526, file: !3, line: 252, type: !85)
!2536 = !DILocation(line: 252, column: 6, scope: !2526)
!2537 = !DILocation(line: 254, column: 6, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 254, column: 6)
!2539 = !DILocation(line: 254, column: 11, scope: !2538)
!2540 = !DILocation(line: 254, column: 23, scope: !2538)
!2541 = !DILocation(line: 254, column: 6, scope: !2526)
!2542 = !DILocation(line: 255, column: 16, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 254, column: 36)
!2544 = !DILocation(line: 255, column: 3, scope: !2543)
!2545 = !DILocation(line: 256, column: 3, scope: !2543)
!2546 = !DILocation(line: 256, column: 8, scope: !2543)
!2547 = !DILocation(line: 256, column: 20, scope: !2543)
!2548 = !DILocation(line: 256, column: 32, scope: !2543)
!2549 = !DILocation(line: 256, column: 37, scope: !2543)
!2550 = !DILocation(line: 256, column: 49, scope: !2543)
!2551 = !DILocation(line: 256, column: 55, scope: !2543)
!2552 = !DILocation(line: 256, column: 60, scope: !2543)
!2553 = !DILocation(line: 257, column: 2, scope: !2543)
!2554 = !DILocation(line: 259, column: 10, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 259, column: 3)
!2556 = !DILocation(line: 259, column: 8, scope: !2555)
!2557 = !DILocation(line: 259, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 259, column: 3)
!2559 = !DILocation(line: 259, column: 19, scope: !2558)
!2560 = !DILocation(line: 259, column: 17, scope: !2558)
!2561 = !DILocation(line: 259, column: 3, scope: !2555)
!2562 = !DILocation(line: 260, column: 15, scope: !2558)
!2563 = !DILocation(line: 260, column: 20, scope: !2558)
!2564 = !DILocation(line: 260, column: 24, scope: !2558)
!2565 = !DILocation(line: 260, column: 4, scope: !2558)
!2566 = !DILocation(line: 259, column: 24, scope: !2558)
!2567 = !DILocation(line: 259, column: 3, scope: !2558)
!2568 = distinct !{!2568, !2561, !2569}
!2569 = !DILocation(line: 260, column: 26, scope: !2555)
!2570 = !DILocation(line: 261, column: 16, scope: !2526)
!2571 = !DILocation(line: 261, column: 2, scope: !2526)
!2572 = !DILocation(line: 262, column: 1, scope: !2526)
!2573 = distinct !DISubprogram(name: "w1_touch_block", scope: !3, file: !3, line: 271, type: !2574, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !170, !2143, !85}
!2576 = !DILocalVariable(name: "dev", arg: 1, scope: !2573, file: !3, line: 271, type: !170)
!2577 = !DILocation(line: 271, column: 39, scope: !2573)
!2578 = !DILocalVariable(name: "buf", arg: 2, scope: !2573, file: !3, line: 271, type: !2143)
!2579 = !DILocation(line: 271, column: 48, scope: !2573)
!2580 = !DILocalVariable(name: "len", arg: 3, scope: !2573, file: !3, line: 271, type: !85)
!2581 = !DILocation(line: 271, column: 57, scope: !2573)
!2582 = !DILocalVariable(name: "i", scope: !2573, file: !3, line: 273, type: !85)
!2583 = !DILocation(line: 273, column: 6, scope: !2573)
!2584 = !DILocalVariable(name: "j", scope: !2573, file: !3, line: 273, type: !85)
!2585 = !DILocation(line: 273, column: 9, scope: !2573)
!2586 = !DILocalVariable(name: "tmp", scope: !2573, file: !3, line: 274, type: !107)
!2587 = !DILocation(line: 274, column: 5, scope: !2573)
!2588 = !DILocation(line: 276, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 276, column: 2)
!2590 = !DILocation(line: 276, column: 7, scope: !2589)
!2591 = !DILocation(line: 276, column: 14, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 276, column: 2)
!2593 = !DILocation(line: 276, column: 18, scope: !2592)
!2594 = !DILocation(line: 276, column: 16, scope: !2592)
!2595 = !DILocation(line: 276, column: 2, scope: !2589)
!2596 = !DILocation(line: 277, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 276, column: 28)
!2598 = !DILocation(line: 278, column: 10, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 278, column: 3)
!2600 = !DILocation(line: 278, column: 8, scope: !2599)
!2601 = !DILocation(line: 278, column: 15, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 278, column: 3)
!2603 = !DILocation(line: 278, column: 17, scope: !2602)
!2604 = !DILocation(line: 278, column: 3, scope: !2599)
!2605 = !DILocation(line: 279, column: 8, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 279, column: 8)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 278, column: 27)
!2608 = !DILocation(line: 279, column: 10, scope: !2606)
!2609 = !DILocation(line: 279, column: 8, scope: !2607)
!2610 = !DILocation(line: 280, column: 18, scope: !2606)
!2611 = !DILocation(line: 280, column: 5, scope: !2606)
!2612 = !DILocation(line: 281, column: 24, scope: !2607)
!2613 = !DILocation(line: 281, column: 30, scope: !2607)
!2614 = !DILocation(line: 281, column: 34, scope: !2607)
!2615 = !DILocation(line: 281, column: 40, scope: !2607)
!2616 = !DILocation(line: 281, column: 37, scope: !2607)
!2617 = !DILocation(line: 281, column: 43, scope: !2607)
!2618 = !DILocation(line: 281, column: 11, scope: !2607)
!2619 = !DILocation(line: 281, column: 53, scope: !2607)
!2620 = !DILocation(line: 281, column: 50, scope: !2607)
!2621 = !DILocation(line: 281, column: 8, scope: !2607)
!2622 = !DILocation(line: 282, column: 3, scope: !2607)
!2623 = !DILocation(line: 278, column: 22, scope: !2602)
!2624 = !DILocation(line: 278, column: 3, scope: !2602)
!2625 = distinct !{!2625, !2604, !2626}
!2626 = !DILocation(line: 282, column: 3, scope: !2599)
!2627 = !DILocation(line: 284, column: 12, scope: !2597)
!2628 = !DILocation(line: 284, column: 3, scope: !2597)
!2629 = !DILocation(line: 284, column: 7, scope: !2597)
!2630 = !DILocation(line: 284, column: 10, scope: !2597)
!2631 = !DILocation(line: 285, column: 2, scope: !2597)
!2632 = !DILocation(line: 276, column: 23, scope: !2592)
!2633 = !DILocation(line: 276, column: 2, scope: !2592)
!2634 = distinct !{!2634, !2595, !2635}
!2635 = !DILocation(line: 285, column: 2, scope: !2589)
!2636 = !DILocation(line: 286, column: 1, scope: !2573)
!2637 = distinct !DISubprogram(name: "w1_read_block", scope: !3, file: !3, line: 296, type: !2638, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!107, !170, !2143, !85}
!2640 = !DILocalVariable(name: "dev", arg: 1, scope: !2637, file: !3, line: 296, type: !170)
!2641 = !DILocation(line: 296, column: 36, scope: !2637)
!2642 = !DILocalVariable(name: "buf", arg: 2, scope: !2637, file: !3, line: 296, type: !2143)
!2643 = !DILocation(line: 296, column: 45, scope: !2637)
!2644 = !DILocalVariable(name: "len", arg: 3, scope: !2637, file: !3, line: 296, type: !85)
!2645 = !DILocation(line: 296, column: 54, scope: !2637)
!2646 = !DILocalVariable(name: "i", scope: !2637, file: !3, line: 298, type: !85)
!2647 = !DILocation(line: 298, column: 6, scope: !2637)
!2648 = !DILocalVariable(name: "ret", scope: !2637, file: !3, line: 299, type: !107)
!2649 = !DILocation(line: 299, column: 5, scope: !2637)
!2650 = !DILocation(line: 301, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 301, column: 6)
!2652 = !DILocation(line: 301, column: 11, scope: !2651)
!2653 = !DILocation(line: 301, column: 23, scope: !2651)
!2654 = !DILocation(line: 301, column: 6, scope: !2637)
!2655 = !DILocation(line: 302, column: 9, scope: !2651)
!2656 = !DILocation(line: 302, column: 14, scope: !2651)
!2657 = !DILocation(line: 302, column: 26, scope: !2651)
!2658 = !DILocation(line: 302, column: 37, scope: !2651)
!2659 = !DILocation(line: 302, column: 42, scope: !2651)
!2660 = !DILocation(line: 302, column: 54, scope: !2651)
!2661 = !DILocation(line: 302, column: 60, scope: !2651)
!2662 = !DILocation(line: 302, column: 65, scope: !2651)
!2663 = !DILocation(line: 302, column: 7, scope: !2651)
!2664 = !DILocation(line: 302, column: 3, scope: !2651)
!2665 = !DILocation(line: 304, column: 10, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 304, column: 3)
!2667 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 303, column: 7)
!2668 = !DILocation(line: 304, column: 8, scope: !2666)
!2669 = !DILocation(line: 304, column: 15, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 304, column: 3)
!2671 = !DILocation(line: 304, column: 19, scope: !2670)
!2672 = !DILocation(line: 304, column: 17, scope: !2670)
!2673 = !DILocation(line: 304, column: 3, scope: !2666)
!2674 = !DILocation(line: 305, column: 23, scope: !2670)
!2675 = !DILocation(line: 305, column: 13, scope: !2670)
!2676 = !DILocation(line: 305, column: 4, scope: !2670)
!2677 = !DILocation(line: 305, column: 8, scope: !2670)
!2678 = !DILocation(line: 305, column: 11, scope: !2670)
!2679 = !DILocation(line: 304, column: 24, scope: !2670)
!2680 = !DILocation(line: 304, column: 3, scope: !2670)
!2681 = distinct !{!2681, !2673, !2682}
!2682 = !DILocation(line: 305, column: 26, scope: !2666)
!2683 = !DILocation(line: 306, column: 9, scope: !2667)
!2684 = !DILocation(line: 306, column: 7, scope: !2667)
!2685 = !DILocation(line: 309, column: 9, scope: !2637)
!2686 = !DILocation(line: 309, column: 2, scope: !2637)
!2687 = distinct !DISubprogram(name: "w1_reset_bus", scope: !3, file: !3, line: 318, type: !2688, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!85, !170}
!2690 = !DILocalVariable(name: "dev", arg: 1, scope: !2687, file: !3, line: 318, type: !170)
!2691 = !DILocation(line: 318, column: 36, scope: !2687)
!2692 = !DILocalVariable(name: "result", scope: !2687, file: !3, line: 320, type: !85)
!2693 = !DILocation(line: 320, column: 6, scope: !2687)
!2694 = !DILocalVariable(name: "flags", scope: !2687, file: !3, line: 321, type: !59)
!2695 = !DILocation(line: 321, column: 16, scope: !2687)
!2696 = !DILocation(line: 323, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 323, column: 5)
!2698 = !DILocation(line: 323, column: 5, scope: !2687)
!2699 = !DILocation(line: 323, column: 22, scope: !2697)
!2700 = !DILocation(line: 323, column: 22, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 323, column: 22)
!2702 = !DILocalVariable(name: "__dummy", scope: !2703, file: !3, line: 323, type: !59)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 323, column: 22)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 323, column: 22)
!2705 = !DILocation(line: 323, column: 22, scope: !2703)
!2706 = !DILocalVariable(name: "__dummy2", scope: !2703, file: !3, line: 323, type: !59)
!2707 = !DILocation(line: 323, column: 22, scope: !2704)
!2708 = !DILocation(line: 325, column: 6, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 325, column: 6)
!2710 = !DILocation(line: 325, column: 11, scope: !2709)
!2711 = !DILocation(line: 325, column: 23, scope: !2709)
!2712 = !DILocation(line: 325, column: 6, scope: !2687)
!2713 = !DILocation(line: 326, column: 12, scope: !2709)
!2714 = !DILocation(line: 326, column: 17, scope: !2709)
!2715 = !DILocation(line: 326, column: 29, scope: !2709)
!2716 = !DILocation(line: 326, column: 39, scope: !2709)
!2717 = !DILocation(line: 326, column: 44, scope: !2709)
!2718 = !DILocation(line: 326, column: 56, scope: !2709)
!2719 = !DILocation(line: 326, column: 62, scope: !2709)
!2720 = !DILocation(line: 326, column: 10, scope: !2709)
!2721 = !DILocation(line: 326, column: 3, scope: !2709)
!2722 = !DILocation(line: 328, column: 3, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 327, column: 7)
!2724 = !DILocation(line: 328, column: 8, scope: !2723)
!2725 = !DILocation(line: 328, column: 20, scope: !2723)
!2726 = !DILocation(line: 328, column: 30, scope: !2723)
!2727 = !DILocation(line: 328, column: 35, scope: !2723)
!2728 = !DILocation(line: 328, column: 47, scope: !2723)
!2729 = !DILocation(line: 336, column: 3, scope: !2723)
!2730 = !DILocation(line: 337, column: 3, scope: !2723)
!2731 = !DILocation(line: 337, column: 8, scope: !2723)
!2732 = !DILocation(line: 337, column: 20, scope: !2723)
!2733 = !DILocation(line: 337, column: 30, scope: !2723)
!2734 = !DILocation(line: 337, column: 35, scope: !2723)
!2735 = !DILocation(line: 337, column: 47, scope: !2723)
!2736 = !DILocation(line: 338, column: 3, scope: !2723)
!2737 = !DILocation(line: 340, column: 12, scope: !2723)
!2738 = !DILocation(line: 340, column: 17, scope: !2723)
!2739 = !DILocation(line: 340, column: 29, scope: !2723)
!2740 = !DILocation(line: 340, column: 38, scope: !2723)
!2741 = !DILocation(line: 340, column: 43, scope: !2723)
!2742 = !DILocation(line: 340, column: 55, scope: !2723)
!2743 = !DILocation(line: 340, column: 61, scope: !2723)
!2744 = !DILocation(line: 340, column: 10, scope: !2723)
!2745 = !DILocation(line: 346, column: 3, scope: !2723)
!2746 = !DILocation(line: 349, column: 5, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 349, column: 5)
!2748 = !DILocation(line: 349, column: 5, scope: !2687)
!2749 = !DILocation(line: 349, column: 22, scope: !2747)
!2750 = !DILocation(line: 349, column: 22, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 349, column: 22)
!2752 = !DILocalVariable(name: "__dummy", scope: !2753, file: !3, line: 349, type: !59)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 349, column: 22)
!2754 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 349, column: 22)
!2755 = !DILocation(line: 349, column: 22, scope: !2753)
!2756 = !DILocalVariable(name: "__dummy2", scope: !2753, file: !3, line: 349, type: !59)
!2757 = !DILocation(line: 349, column: 22, scope: !2754)
!2758 = !DILocation(line: 351, column: 9, scope: !2687)
!2759 = !DILocation(line: 351, column: 2, scope: !2687)
!2760 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2761, file: !2761, line: 666, type: !2762, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2761 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!59}
!2764 = !DILocalVariable(name: "f", scope: !2760, file: !2761, line: 668, type: !59)
!2765 = !DILocation(line: 668, column: 16, scope: !2760)
!2766 = !DILocation(line: 670, column: 6, scope: !2760)
!2767 = !DILocation(line: 670, column: 4, scope: !2760)
!2768 = !DILocation(line: 671, column: 2, scope: !2760)
!2769 = !DILocation(line: 672, column: 9, scope: !2760)
!2770 = !DILocation(line: 672, column: 2, scope: !2760)
!2771 = distinct !DISubprogram(name: "w1_delay", scope: !3, file: !3, line: 39, type: !2772, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !59}
!2774 = !DILocalVariable(name: "tm", arg: 1, scope: !2771, file: !3, line: 39, type: !59)
!2775 = !DILocation(line: 39, column: 36, scope: !2771)
!2776 = !DILocation(line: 41, column: 2, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 41, column: 2)
!2778 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 41, column: 2)
!2779 = !DILocation(line: 41, column: 2, scope: !2778)
!2780 = !DILocation(line: 41, column: 2, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 41, column: 2)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 41, column: 2)
!2783 = !DILocation(line: 41, column: 2, scope: !2782)
!2784 = !DILocation(line: 41, column: 2, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 41, column: 2)
!2786 = !DILocation(line: 42, column: 1, scope: !2771)
!2787 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2761, file: !2761, line: 651, type: !2772, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2788 = !DILocalVariable(name: "f", arg: 1, scope: !2787, file: !2761, line: 651, type: !59)
!2789 = !DILocation(line: 651, column: 65, scope: !2787)
!2790 = !DILocalVariable(name: "__edi", scope: !2791, file: !2761, line: 653, type: !59)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !2761, line: 653, column: 2)
!2792 = !DILocation(line: 653, column: 2, scope: !2791)
!2793 = !DILocalVariable(name: "__esi", scope: !2791, file: !2761, line: 653, type: !59)
!2794 = !DILocalVariable(name: "__edx", scope: !2791, file: !2761, line: 653, type: !59)
!2795 = !DILocalVariable(name: "__ecx", scope: !2791, file: !2761, line: 653, type: !59)
!2796 = !DILocalVariable(name: "__eax", scope: !2791, file: !2761, line: 653, type: !59)
!2797 = !{i32 -2146041655, i32 -2146040905, i32 -2146040671, i32 -2146040620, i32 -2146040592, i32 -2146040567, i32 -2146040883, i32 -2146040870, i32 -2146040432, i32 -2146040313, i32 -2146040778, i32 -2146040751, i32 -2146040723, i32 -2146040693}
!2798 = !DILocation(line: 654, column: 1, scope: !2787)
!2799 = distinct !DISubprogram(name: "w1_calc_crc8", scope: !3, file: !3, line: 355, type: !2800, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!107, !2143, !85}
!2802 = !DILocalVariable(name: "data", arg: 1, scope: !2799, file: !3, line: 355, type: !2143)
!2803 = !DILocation(line: 355, column: 22, scope: !2799)
!2804 = !DILocalVariable(name: "len", arg: 2, scope: !2799, file: !3, line: 355, type: !85)
!2805 = !DILocation(line: 355, column: 32, scope: !2799)
!2806 = !DILocalVariable(name: "crc", scope: !2799, file: !3, line: 357, type: !107)
!2807 = !DILocation(line: 357, column: 5, scope: !2799)
!2808 = !DILocation(line: 359, column: 2, scope: !2799)
!2809 = !DILocation(line: 359, column: 12, scope: !2799)
!2810 = !DILocation(line: 360, column: 23, scope: !2799)
!2811 = !DILocation(line: 360, column: 34, scope: !2799)
!2812 = !DILocation(line: 360, column: 29, scope: !2799)
!2813 = !DILocation(line: 360, column: 27, scope: !2799)
!2814 = !DILocation(line: 360, column: 9, scope: !2799)
!2815 = !DILocation(line: 360, column: 7, scope: !2799)
!2816 = distinct !{!2816, !2808, !2817}
!2817 = !DILocation(line: 360, column: 36, scope: !2799)
!2818 = !DILocation(line: 362, column: 9, scope: !2799)
!2819 = !DILocation(line: 362, column: 2, scope: !2799)
!2820 = distinct !DISubprogram(name: "w1_search_devices", scope: !3, file: !3, line: 366, type: !2821, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !170, !107, !2160}
!2823 = !DILocalVariable(name: "dev", arg: 1, scope: !2820, file: !3, line: 366, type: !170)
!2824 = !DILocation(line: 366, column: 42, scope: !2820)
!2825 = !DILocalVariable(name: "search_type", arg: 2, scope: !2820, file: !3, line: 366, type: !107)
!2826 = !DILocation(line: 366, column: 50, scope: !2820)
!2827 = !DILocalVariable(name: "cb", arg: 3, scope: !2820, file: !3, line: 366, type: !2160)
!2828 = !DILocation(line: 366, column: 87, scope: !2820)
!2829 = !DILocation(line: 368, column: 2, scope: !2820)
!2830 = !DILocation(line: 368, column: 7, scope: !2820)
!2831 = !DILocation(line: 368, column: 15, scope: !2820)
!2832 = !DILocation(line: 369, column: 6, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 369, column: 6)
!2834 = !DILocation(line: 369, column: 11, scope: !2833)
!2835 = !DILocation(line: 369, column: 23, scope: !2833)
!2836 = !DILocation(line: 369, column: 6, scope: !2820)
!2837 = !DILocation(line: 370, column: 3, scope: !2833)
!2838 = !DILocation(line: 370, column: 8, scope: !2833)
!2839 = !DILocation(line: 370, column: 20, scope: !2833)
!2840 = !DILocation(line: 370, column: 27, scope: !2833)
!2841 = !DILocation(line: 370, column: 32, scope: !2833)
!2842 = !DILocation(line: 370, column: 44, scope: !2833)
!2843 = !DILocation(line: 370, column: 50, scope: !2833)
!2844 = !DILocation(line: 371, column: 4, scope: !2833)
!2845 = !DILocation(line: 371, column: 17, scope: !2833)
!2846 = !DILocation(line: 373, column: 13, scope: !2833)
!2847 = !DILocation(line: 373, column: 18, scope: !2833)
!2848 = !DILocation(line: 373, column: 31, scope: !2833)
!2849 = !DILocation(line: 373, column: 3, scope: !2833)
!2850 = !DILocation(line: 374, column: 1, scope: !2820)
!2851 = distinct !DISubprogram(name: "w1_reset_select_slave", scope: !3, file: !3, line: 387, type: !2852, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!85, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_slave", file: !172, line: 65, size: 6464, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2866, !2867, !2868, !2869, !2870, !2894, !2895, !2896}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2855, file: !172, line: 66, baseType: !72, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2855, file: !172, line: 67, baseType: !183, size: 256, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "w1_slave_entry", scope: !2855, file: !172, line: 68, baseType: !175, size: 128, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "reg_num", scope: !2855, file: !172, line: 69, baseType: !2861, size: 64, offset: 448)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_reg_num", file: !172, line: 18, size: 64, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !2861, file: !172, line: 20, baseType: !51, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2861, file: !172, line: 21, baseType: !51, size: 48, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2861, file: !172, line: 22, baseType: !51, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2855, file: !172, line: 70, baseType: !230, size: 32, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2855, file: !172, line: 71, baseType: !85, size: 32, offset: 544)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !172, line: 72, baseType: !59, size: 64, offset: 576)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2855, file: !172, line: 74, baseType: !170, size: 64, offset: 640)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !2855, file: !172, line: 75, baseType: !2871, size: 64, offset: 704)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_family", file: !172, line: 268, size: 384, elements: !2873)
!2873 = !{!2874, !2875, !2876, !2892, !2893}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "family_entry", scope: !2872, file: !172, line: 269, baseType: !175, size: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !2872, file: !172, line: 270, baseType: !107, size: 8, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2872, file: !172, line: 272, baseType: !2877, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2879)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "w1_family_ops", file: !172, line: 253, size: 256, elements: !2880)
!2880 = !{!2881, !2883, !2887, !2888}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "add_slave", scope: !2879, file: !172, line: 254, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "remove_slave", scope: !2879, file: !172, line: 255, baseType: !2884, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{null, !2854}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2879, file: !172, line: 256, baseType: !1454, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "chip_info", scope: !2879, file: !172, line: 257, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_chip_info", file: !172, line: 257, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2872, file: !172, line: 274, baseType: !2099, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2872, file: !172, line: 276, baseType: !230, size: 32, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "family_data", scope: !2855, file: !172, line: 76, baseType: !96, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2855, file: !172, line: 77, baseType: !1371, size: 5568, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon", scope: !2855, file: !172, line: 78, baseType: !1370, size: 64, offset: 6400)
!2897 = !DILocalVariable(name: "sl", arg: 1, scope: !2851, file: !3, line: 387, type: !2854)
!2898 = !DILocation(line: 387, column: 44, scope: !2851)
!2899 = !DILocation(line: 389, column: 19, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 389, column: 6)
!2901 = !DILocation(line: 389, column: 23, scope: !2900)
!2902 = !DILocation(line: 389, column: 6, scope: !2900)
!2903 = !DILocation(line: 389, column: 6, scope: !2851)
!2904 = !DILocation(line: 390, column: 3, scope: !2900)
!2905 = !DILocation(line: 392, column: 6, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 392, column: 6)
!2907 = !DILocation(line: 392, column: 10, scope: !2906)
!2908 = !DILocation(line: 392, column: 18, scope: !2906)
!2909 = !DILocation(line: 392, column: 30, scope: !2906)
!2910 = !DILocation(line: 392, column: 6, scope: !2851)
!2911 = !DILocation(line: 393, column: 14, scope: !2906)
!2912 = !DILocation(line: 393, column: 18, scope: !2906)
!2913 = !DILocation(line: 393, column: 3, scope: !2906)
!2914 = !DILocalVariable(name: "match", scope: !2915, file: !3, line: 395, type: !2916)
!2915 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 394, column: 7)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 72, elements: !2917)
!2917 = !{!2918}
!2918 = !DISubrange(count: 9)
!2919 = !DILocation(line: 395, column: 6, scope: !2915)
!2920 = !DILocalVariable(name: "rn", scope: !2915, file: !3, line: 396, type: !57)
!2921 = !DILocation(line: 396, column: 7, scope: !2915)
!2922 = !DILocation(line: 396, column: 12, scope: !2915)
!2923 = !DILocation(line: 398, column: 11, scope: !2915)
!2924 = !DILocation(line: 398, column: 3, scope: !2915)
!2925 = !DILocation(line: 399, column: 18, scope: !2915)
!2926 = !DILocation(line: 399, column: 22, scope: !2915)
!2927 = !DILocation(line: 399, column: 30, scope: !2915)
!2928 = !DILocation(line: 399, column: 3, scope: !2915)
!2929 = !DILocation(line: 401, column: 2, scope: !2851)
!2930 = !DILocation(line: 402, column: 1, scope: !2851)
!2931 = distinct !DISubprogram(name: "w1_reset_resume_command", scope: !3, file: !3, line: 421, type: !2688, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2932 = !DILocalVariable(name: "dev", arg: 1, scope: !2931, file: !3, line: 421, type: !170)
!2933 = !DILocation(line: 421, column: 47, scope: !2931)
!2934 = !DILocation(line: 423, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 423, column: 6)
!2936 = !DILocation(line: 423, column: 6, scope: !2935)
!2937 = !DILocation(line: 423, column: 6, scope: !2931)
!2938 = !DILocation(line: 424, column: 3, scope: !2935)
!2939 = !DILocation(line: 426, column: 13, scope: !2931)
!2940 = !DILocation(line: 426, column: 18, scope: !2931)
!2941 = !DILocation(line: 426, column: 23, scope: !2931)
!2942 = !DILocation(line: 426, column: 35, scope: !2931)
!2943 = !DILocation(line: 426, column: 2, scope: !2931)
!2944 = !DILocation(line: 427, column: 2, scope: !2931)
!2945 = !DILocation(line: 428, column: 1, scope: !2931)
!2946 = distinct !DISubprogram(name: "w1_next_pullup", scope: !3, file: !3, line: 445, type: !2247, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2947 = !DILocalVariable(name: "dev", arg: 1, scope: !2946, file: !3, line: 445, type: !170)
!2948 = !DILocation(line: 445, column: 39, scope: !2946)
!2949 = !DILocalVariable(name: "delay", arg: 2, scope: !2946, file: !3, line: 445, type: !85)
!2950 = !DILocation(line: 445, column: 48, scope: !2946)
!2951 = !DILocation(line: 447, column: 25, scope: !2946)
!2952 = !DILocation(line: 447, column: 2, scope: !2946)
!2953 = !DILocation(line: 447, column: 7, scope: !2946)
!2954 = !DILocation(line: 447, column: 23, scope: !2946)
!2955 = !DILocation(line: 448, column: 1, scope: !2946)
!2956 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2761, file: !2761, line: 646, type: !2762, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2957 = !DILocalVariable(name: "__ret", scope: !2958, file: !2761, line: 648, type: !59)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !2761, line: 648, column: 9)
!2959 = !DILocation(line: 648, column: 9, scope: !2958)
!2960 = !DILocalVariable(name: "__edi", scope: !2958, file: !2761, line: 648, type: !59)
!2961 = !DILocalVariable(name: "__esi", scope: !2958, file: !2761, line: 648, type: !59)
!2962 = !DILocalVariable(name: "__edx", scope: !2958, file: !2761, line: 648, type: !59)
!2963 = !DILocalVariable(name: "__ecx", scope: !2958, file: !2761, line: 648, type: !59)
!2964 = !DILocalVariable(name: "__eax", scope: !2958, file: !2761, line: 648, type: !59)
!2965 = !DILocation(line: 648, column: 9, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !2761, line: 648, column: 9)
!2967 = distinct !DILexicalBlock(scope: !2958, file: !2761, line: 648, column: 9)
!2968 = !{i32 -2146046122, i32 -2146043807, i32 -2146043573, i32 -2146043522, i32 -2146043494, i32 -2146043469, i32 -2146043785, i32 -2146043772, i32 -2146043334, i32 -2146043215, i32 -2146043680, i32 -2146043653, i32 -2146043625, i32 -2146043595}
!2969 = !DILocalVariable(name: "__mask", scope: !2970, file: !2761, line: 648, type: !59)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !2761, line: 648, column: 9)
!2971 = !DILocation(line: 648, column: 9, scope: !2970)
!2972 = !DILocation(line: 648, column: 9, scope: !2967)
!2973 = !DILocation(line: 648, column: 2, scope: !2956)
!2974 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2761, file: !2761, line: 656, type: !2975, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !215)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null}
!2977 = !DILocalVariable(name: "__edi", scope: !2978, file: !2761, line: 658, type: !59)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !2761, line: 658, column: 2)
!2979 = !DILocation(line: 658, column: 2, scope: !2978)
!2980 = !DILocalVariable(name: "__esi", scope: !2978, file: !2761, line: 658, type: !59)
!2981 = !DILocalVariable(name: "__edx", scope: !2978, file: !2761, line: 658, type: !59)
!2982 = !DILocalVariable(name: "__ecx", scope: !2978, file: !2761, line: 658, type: !59)
!2983 = !DILocalVariable(name: "__eax", scope: !2978, file: !2761, line: 658, type: !59)
!2984 = !{i32 -2146039028, i32 -2146038296, i32 -2146038062, i32 -2146038011, i32 -2146037983, i32 -2146037958, i32 -2146038274, i32 -2146038261, i32 -2146037823, i32 -2146037704, i32 -2146038169, i32 -2146038142, i32 -2146038114, i32 -2146038084}
!2985 = !DILocation(line: 659, column: 1, scope: !2974)
