; ModuleID = '../bcout/drivers/input/serio/serio.llvm.bc'
source_filename = "drivers/input/serio/serio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_serio_init4:\09\09\09"
module asm ".long\09serio_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.workqueue_struct = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
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
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, {}*, i32 (%struct.serio*)*, {}*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, {}*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, {}*, {}*, %struct.device_driver }
%struct.serio_event = type { i32, i8*, %struct.module*, %struct.list_head }

@__UNIQUE_ID_author161 = internal constant [45 x i8] c"serio.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description162 = internal constant [41 x i8] c"serio.description=Serio abstraction core\00", section ".modinfo", align 1, !dbg !2052
@__UNIQUE_ID_file163 = internal constant [37 x i8] c"serio.file=drivers/input/serio/serio\00", section ".modinfo", align 1, !dbg !2057
@__UNIQUE_ID_license164 = internal constant [18 x i8] c"serio.license=GPL\00", section ".modinfo", align 1, !dbg !2062
@serio_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @serio_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @serio_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2132
@serio_bus = dso_local global %struct.bus_type { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @serio_driver_groups, i32 0, i32 0), i32 (%struct.device*, %struct.device_driver*)* @serio_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @serio_uevent, i32 (%struct.device*)* @serio_driver_probe, void (%struct.device*)* null, i32 (%struct.device*)* @serio_driver_remove, void (%struct.device*)* @serio_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* @serio_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !2067
@.str = private unnamed_addr constant [53 x i8] c"\013serio: driver_register() failed for %s, error: %d\0A\00", align 1
@serio_list = internal global %struct.list_head { %struct.list_head* @serio_list, %struct.list_head* @serio_list }, align 8, !dbg !2134
@.str.1 = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@serio_driver_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @serio_driver_group, %struct.attribute_group* null], align 16, !dbg !2136
@serio_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @serio_suspend, i32 (%struct.device*)* @serio_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @serio_suspend, i32 (%struct.device*)* @serio_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2159
@serio_event_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @serio_event_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @serio_event_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @serio_handle_event }, align 8, !dbg !2161
@__UNIQUE_ID___addressable_serio_init208 = internal global i8* bitcast (i32 ()* @serio_init to i8*), section ".discard.addressable", align 8, !dbg !2069
@__exitcall_serio_exit = internal global void ()* @serio_exit, section ".exitcall.exit", align 8, !dbg !2071
@serio_event_lock = internal global %struct.spinlock undef, align 1, !dbg !2078
@serio_event_list = internal global %struct.list_head { %struct.list_head* @serio_event_list, %struct.list_head* @serio_event_list }, align 8, !dbg !2080
@.str.2 = private unnamed_addr constant [46 x i8] c"\013serio: Not enough memory to queue event %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"\014serio: Can't get module reference, dropping event %d\0A\00", align 1
@system_long_wq = external dso_local global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@serio_init_port.serio_no = internal global %struct.atomic_t { i32 -1 }, align 4, !dbg !2082
@serio_init_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2085
@.str.5 = private unnamed_addr constant [18 x i8] c"&serio->drv_mutex\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"serio%lu\00", align 1
@serio_device_attr_groups = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @serio_id_attr_group, %struct.attribute_group* @serio_device_attr_group, %struct.attribute_group* null], align 16, !dbg !2087
@serio_id_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @serio_device_id_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2090
@serio_device_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x %struct.attribute*], [6 x %struct.attribute*]* @serio_device_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2117
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@serio_device_id_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_proto, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_extra, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2092
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2097
@dev_attr_proto = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @proto_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2111
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2113
@dev_attr_extra = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @extra_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2115
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@serio_device_attrs = internal global [6 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_description, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_drvctl, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bind_mode, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_firmware_id, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2119
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2122
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @serio_show_description, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2124
@dev_attr_drvctl = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @drvctl_store }, align 8, !dbg !2126
@dev_attr_bind_mode = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @serio_show_bind_mode, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @serio_set_bind_mode }, align 8, !dbg !2128
@dev_attr_firmware_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @firmware_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2130
@.str.12 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"serio:ty%02Xpr%02Xid%02Xex%02X\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"drvctl\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"bind_mode\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"firmware_id\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.25 = private unnamed_addr constant [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", align 1
@serio_driver_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @serio_driver_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2139
@serio_driver_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.driver_attribute, %struct.driver_attribute* @driver_attr_description, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.driver_attribute, %struct.driver_attribute* @driver_attr_bind_mode, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2141
@driver_attr_description = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device_driver*, i8*)* @description_show, i64 (%struct.device_driver*, i8*, i64)* null }, align 8, !dbg !2144
@driver_attr_bind_mode = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device_driver*, i8*)* @bind_mode_show, i64 (%struct.device_driver*, i8*, i64)* @bind_mode_store }, align 8, !dbg !2157
@.str.26 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"SERIO_TYPE=%02x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"SERIO_PROTO=%02x\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"SERIO_ID=%02x\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"SERIO_EXTRA=%02x\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"SERIO_FIRMWARE_ID=%s\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"fast reconnect failed with error %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"\014serio: driver_attach() failed for %s with error %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"\013serio: Failed to register serio bus, error: %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author161, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_description162, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file163, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license164, i32 0, i32 0), i8* bitcast (void ()* @serio_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_serio_init208 to i8*), i8* bitcast (void ()** @__exitcall_serio_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_rescan(%struct.serio* %serio) #0 !dbg !2172 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2175
  %1 = bitcast %struct.serio* %0 to i8*, !dbg !2175
  %call = call i32 @serio_queue_event(i8* %1, %struct.module* null, i32 0) #11, !dbg !2176
  ret void, !dbg !2177
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_queue_event(i8* %object, %struct.module* %owner, i32 %event_type) #0 !dbg !2178 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2181, metadata !DIExpression()), !dbg !2185
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2193, metadata !DIExpression()), !dbg !2194
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2195, metadata !DIExpression()), !dbg !2196
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2197, metadata !DIExpression()), !dbg !2198
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2199, metadata !DIExpression()), !dbg !2203
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2205, metadata !DIExpression()), !dbg !2209
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2211, metadata !DIExpression()), !dbg !2215
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2220, metadata !DIExpression()), !dbg !2221
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2222, metadata !DIExpression()), !dbg !2223
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2224, metadata !DIExpression()), !dbg !2225
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2226, metadata !DIExpression()), !dbg !2227
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2228, metadata !DIExpression()), !dbg !2229
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2230, metadata !DIExpression()), !dbg !2231
  %flags.addr.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i53, metadata !2232, metadata !DIExpression()), !dbg !2233
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2234, metadata !DIExpression()), !dbg !2235
  %lock.addr.i51 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i51, metadata !2236, metadata !DIExpression()), !dbg !2242
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !2245
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !2251
  %object.addr = alloca i8*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %event_type.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %event = alloca %struct.serio_event*, align 8
  %retval1 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.serio_event*, align 8
  %__mptr32 = alloca i8*, align 8
  %tmp36 = alloca %struct.serio_event*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i32 %event_type, i32* %event_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_type.addr, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2264, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2268, metadata !DIExpression()), !dbg !2269
  store i32 0, i32* %retval1, align 4, !dbg !2269
  br label %do.body, !dbg !2270

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2271

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2275, metadata !DIExpression()), !dbg !2274
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2274
  %conv = zext i1 %cmp to i32, !dbg !2274
  store i32 1, i32* %tmp, align 4, !dbg !2274
  %0 = load i32, i32* %tmp, align 4, !dbg !2274
  br label %do.body3, !dbg !2276

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2277

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2278

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2284, metadata !DIExpression()), !dbg !2283
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2283
  %conv9 = zext i1 %cmp8 to i32, !dbg !2283
  store i32 1, i32* %tmp10, align 4, !dbg !2283
  %1 = load i32, i32* %tmp10, align 4, !dbg !2283
  %call = call i64 @arch_local_irq_save() #11, !dbg !2285
  store i64 %call, i64* %flags, align 8, !dbg !2285
  br label %do.end, !dbg !2285

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !2278

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2277

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2286, !srcloc !2287
  br label %do.body13, !dbg !2286

do.body13:                                        ; preds = %do.body12
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2288
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !2289
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !2289
  br label %do.end15, !dbg !2290

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2286

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2277

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2276

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2271

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2291, metadata !DIExpression()), !dbg !2294
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_event_list, i32 0, i32 1), align 8, !dbg !2294
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2294
  store i8* %5, i8** %__mptr, align 8, !dbg !2294
  br label %do.body20, !dbg !2294

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2295

do.end21:                                         ; preds = %do.body20
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2294
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !2294
  %7 = bitcast i8* %add.ptr to %struct.serio_event*, !dbg !2294
  store %struct.serio_event* %7, %struct.serio_event** %tmp22, align 8, !dbg !2295
  %8 = load %struct.serio_event*, %struct.serio_event** %tmp22, align 8, !dbg !2294
  store %struct.serio_event* %8, %struct.serio_event** %event, align 8, !dbg !2297
  br label %for.cond, !dbg !2297

for.cond:                                         ; preds = %do.end35, %do.end21
  %9 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2298
  %node = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 3, !dbg !2298
  %cmp23 = icmp eq %struct.list_head* %node, @serio_event_list, !dbg !2298
  %lnot = xor i1 %cmp23, true, !dbg !2298
  br i1 %lnot, label %for.body, label %for.end, !dbg !2297

for.body:                                         ; preds = %for.cond
  %10 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2300
  %object25 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %10, i32 0, i32 1, !dbg !2303
  %11 = load i8*, i8** %object25, align 8, !dbg !2303
  %12 = load i8*, i8** %object.addr, align 8, !dbg !2304
  %cmp26 = icmp eq i8* %11, %12, !dbg !2305
  br i1 %cmp26, label %if.then, label %if.end31, !dbg !2306

if.then:                                          ; preds = %for.body
  %13 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2307
  %type = getelementptr inbounds %struct.serio_event, %struct.serio_event* %13, i32 0, i32 0, !dbg !2310
  %14 = load i32, i32* %type, align 8, !dbg !2310
  %15 = load i32, i32* %event_type.addr, align 4, !dbg !2311
  %cmp28 = icmp eq i32 %14, %15, !dbg !2312
  br i1 %cmp28, label %if.then30, label %if.end, !dbg !2313

if.then30:                                        ; preds = %if.then
  br label %out, !dbg !2314

if.end:                                           ; preds = %if.then
  br label %for.end, !dbg !2315

if.end31:                                         ; preds = %for.body
  br label %for.inc, !dbg !2316

for.inc:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !2317, metadata !DIExpression()), !dbg !2319
  %16 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2319
  %node33 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %16, i32 0, i32 3, !dbg !2319
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node33, i32 0, i32 1, !dbg !2319
  %17 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2319
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !2319
  store i8* %18, i8** %__mptr32, align 8, !dbg !2319
  br label %do.body34, !dbg !2319

do.body34:                                        ; preds = %for.inc
  br label %do.end35, !dbg !2320

do.end35:                                         ; preds = %do.body34
  %19 = load i8*, i8** %__mptr32, align 8, !dbg !2319
  %add.ptr37 = getelementptr i8, i8* %19, i64 -24, !dbg !2319
  %20 = bitcast i8* %add.ptr37 to %struct.serio_event*, !dbg !2319
  store %struct.serio_event* %20, %struct.serio_event** %tmp36, align 8, !dbg !2320
  %21 = load %struct.serio_event*, %struct.serio_event** %tmp36, align 8, !dbg !2319
  store %struct.serio_event* %21, %struct.serio_event** %event, align 8, !dbg !2298
  br label %for.cond, !dbg !2298, !llvm.loop !2322

for.end:                                          ; preds = %if.end, %for.cond
  store i64 40, i64* %size.addr.i, align 8
  store i32 2592, i32* %flags.addr.i53, align 4
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !2324
  %23 = call i1 @llvm.is.constant.i64(i64 %22) #10, !dbg !2325
  br i1 %23, label %if.then.i, label %if.end9.i, !dbg !2326

if.then.i:                                        ; preds = %for.end
  %24 = load i64, i64* %size.addr.i, align 8, !dbg !2327
  %cmp.i = icmp ugt i64 %24, 8192, !dbg !2328
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2329

if.then1.i:                                       ; preds = %if.then.i
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !2330
  %26 = load i32, i32* %flags.addr.i53, align 4, !dbg !2331
  store i64 %25, i64* %size.addr.i.i, align 8
  store i32 %26, i32* %flags.addr.i.i, align 4
  %27 = load i64, i64* %size.addr.i.i, align 8, !dbg !2332
  %call.i.i = call i32 @get_order(i64 %27) #12, !dbg !2333
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2229
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !2334
  %29 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2335
  %30 = load i32, i32* %order.i.i, align 4, !dbg !2336
  store i64 %28, i64* %size.addr.i.i.i, align 8
  store i32 %29, i32* %flags.addr.i.i.i, align 4
  store i32 %30, i32* %order.addr.i.i.i, align 4
  %31 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2337
  %32 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2338
  %33 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2339
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %31, i32 %32, i32 %33) #13, !dbg !2340
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2340
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2340
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2340
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2340
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2341
  br label %kmalloc.exit, !dbg !2341

if.end.i:                                         ; preds = %if.then.i
  %34 = load i64, i64* %size.addr.i, align 8, !dbg !2342
  store i64 %34, i64* %size.addr.i11.i, align 8
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2343
  %tobool.i.i = icmp ne i64 %35, 0, !dbg !2343
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2345

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2346
  br label %kmalloc_index.exit.i, !dbg !2346

if.end.i.i:                                       ; preds = %if.end.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2347
  %cmp.i.i = icmp ule i64 %36, 8, !dbg !2349
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2350

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2351
  br label %kmalloc_index.exit.i, !dbg !2351

if.end2.i.i:                                      ; preds = %if.end.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2352
  %cmp3.i.i = icmp ugt i64 %37, 64, !dbg !2354
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2355

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2356
  %cmp4.i.i = icmp ule i64 %38, 96, !dbg !2357
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2358

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2359
  br label %kmalloc_index.exit.i, !dbg !2359

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2360
  %cmp7.i.i = icmp ugt i64 %39, 128, !dbg !2362
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2363

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2364
  %cmp9.i.i = icmp ule i64 %40, 192, !dbg !2365
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2366

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2367
  br label %kmalloc_index.exit.i, !dbg !2367

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2368
  %cmp12.i.i = icmp ule i64 %41, 8, !dbg !2370
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2371

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2372
  br label %kmalloc_index.exit.i, !dbg !2372

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2373
  %cmp15.i.i = icmp ule i64 %42, 16, !dbg !2375
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2376

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2377
  br label %kmalloc_index.exit.i, !dbg !2377

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2378
  %cmp18.i.i = icmp ule i64 %43, 32, !dbg !2380
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2381

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2382
  br label %kmalloc_index.exit.i, !dbg !2382

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2383
  %cmp21.i.i = icmp ule i64 %44, 64, !dbg !2385
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2386

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2387
  br label %kmalloc_index.exit.i, !dbg !2387

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2388
  %cmp24.i.i = icmp ule i64 %45, 128, !dbg !2390
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2391

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2392
  br label %kmalloc_index.exit.i, !dbg !2392

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2393
  %cmp27.i.i = icmp ule i64 %46, 256, !dbg !2395
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2396

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2397
  br label %kmalloc_index.exit.i, !dbg !2397

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2398
  %cmp30.i.i = icmp ule i64 %47, 512, !dbg !2400
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2401

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2402
  br label %kmalloc_index.exit.i, !dbg !2402

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2403
  %cmp33.i.i = icmp ule i64 %48, 1024, !dbg !2405
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2406

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2407
  br label %kmalloc_index.exit.i, !dbg !2407

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2408
  %cmp36.i.i = icmp ule i64 %49, 2048, !dbg !2410
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2411

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2412
  br label %kmalloc_index.exit.i, !dbg !2412

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2413
  %cmp39.i.i = icmp ule i64 %50, 4096, !dbg !2415
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2416

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2417
  br label %kmalloc_index.exit.i, !dbg !2417

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2418
  %cmp42.i.i = icmp ule i64 %51, 8192, !dbg !2420
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2421

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2422
  br label %kmalloc_index.exit.i, !dbg !2422

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2423
  %cmp45.i.i = icmp ule i64 %52, 16384, !dbg !2425
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2426

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2427
  br label %kmalloc_index.exit.i, !dbg !2427

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2428
  %cmp48.i.i = icmp ule i64 %53, 32768, !dbg !2430
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2431

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2432
  br label %kmalloc_index.exit.i, !dbg !2432

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2433
  %cmp51.i.i = icmp ule i64 %54, 65536, !dbg !2435
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2436

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2437
  br label %kmalloc_index.exit.i, !dbg !2437

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2438
  %cmp54.i.i = icmp ule i64 %55, 131072, !dbg !2440
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2441

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2442
  br label %kmalloc_index.exit.i, !dbg !2442

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2443
  %cmp57.i.i = icmp ule i64 %56, 262144, !dbg !2445
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2446

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2447
  br label %kmalloc_index.exit.i, !dbg !2447

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2448
  %cmp60.i.i = icmp ule i64 %57, 524288, !dbg !2450
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2451

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2452
  br label %kmalloc_index.exit.i, !dbg !2452

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2453
  %cmp63.i.i = icmp ule i64 %58, 1048576, !dbg !2455
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2456

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2457
  br label %kmalloc_index.exit.i, !dbg !2457

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2458
  %cmp66.i.i = icmp ule i64 %59, 2097152, !dbg !2460
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2461

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2462
  br label %kmalloc_index.exit.i, !dbg !2462

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2463
  %cmp69.i.i = icmp ule i64 %60, 4194304, !dbg !2465
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2466

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2467
  br label %kmalloc_index.exit.i, !dbg !2467

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2468
  %cmp72.i.i = icmp ule i64 %61, 8388608, !dbg !2470
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2471

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2472
  br label %kmalloc_index.exit.i, !dbg !2472

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2473
  %cmp75.i.i = icmp ule i64 %62, 16777216, !dbg !2475
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2476

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2477
  br label %kmalloc_index.exit.i, !dbg !2477

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2478
  %cmp78.i.i = icmp ule i64 %63, 33554432, !dbg !2480
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2481

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2482
  br label %kmalloc_index.exit.i, !dbg !2482

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2483
  %cmp81.i.i = icmp ule i64 %64, 67108864, !dbg !2485
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2486

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2487
  br label %kmalloc_index.exit.i, !dbg !2487

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2488, !srcloc !2491
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !2492, !srcloc !2495
  unreachable, !dbg !2496

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %65 = load i32, i32* %retval.i.i, align 4, !dbg !2497
  store i32 %65, i32* %index.i, align 4, !dbg !2498
  %66 = load i32, i32* %index.i, align 4, !dbg !2499
  %tobool.i = icmp ne i32 %66, 0, !dbg !2499
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2501

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2502
  br label %kmalloc.exit, !dbg !2502

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %67 = load i32, i32* %flags.addr.i53, align 4, !dbg !2503
  store i32 %67, i32* %flags.addr.i13.i, align 4
  %68 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2504
  %and.i.i = and i32 %68, 17, !dbg !2504
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2504
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2504
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2504
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2504
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2506

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2507
  br label %kmalloc_type.exit.i, !dbg !2507

if.end.i16.i:                                     ; preds = %if.end4.i
  %69 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2508
  %and2.i.i = and i32 %69, 1, !dbg !2509
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2508
  %70 = zext i1 %tobool3.i.i to i64, !dbg !2508
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2508
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2510
  br label %kmalloc_type.exit.i, !dbg !2510

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %71 = load i32, i32* %retval.i12.i, align 4, !dbg !2511
  %idxprom.i = zext i32 %71 to i64, !dbg !2512
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2512
  %72 = load i32, i32* %index.i, align 4, !dbg !2513
  %idxprom6.i = zext i32 %72 to i64, !dbg !2512
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2512
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2512
  %74 = load i32, i32* %flags.addr.i53, align 4, !dbg !2514
  %75 = load i64, i64* %size.addr.i, align 8, !dbg !2515
  store %struct.kmem_cache* %73, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %74, i32* %flags.addr.i17.i, align 4
  store i64 %75, i64* %size.addr.i18.i, align 8
  %76 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2516
  %77 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2517
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %76, i32 %77) #13, !dbg !2518
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2518
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2518
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2518
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2518
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2198
  %78 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2519
  %79 = load i8*, i8** %ret.i.i, align 8, !dbg !2520
  %80 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2521
  %81 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2522
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %78, i8* %79, i64 %80, i32 %81) #13, !dbg !2523
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2524
  %82 = load i8*, i8** %ret.i.i, align 8, !dbg !2525
  store i8* %82, i8** %retval.i, align 8, !dbg !2526
  br label %kmalloc.exit, !dbg !2526

if.end9.i:                                        ; preds = %for.end
  %83 = load i64, i64* %size.addr.i, align 8, !dbg !2527
  %84 = load i32, i32* %flags.addr.i53, align 4, !dbg !2528
  %call10.i = call noalias i8* @__kmalloc(i64 %83, i32 %84) #13, !dbg !2529
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2529
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2529
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2529
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2529
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2530
  br label %kmalloc.exit, !dbg !2530

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %85 = load i8*, i8** %retval.i, align 8, !dbg !2531
  %86 = bitcast i8* %85 to %struct.serio_event*, !dbg !2532
  store %struct.serio_event* %86, %struct.serio_event** %event, align 8, !dbg !2533
  %87 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2534
  %tobool = icmp ne %struct.serio_event* %87, null, !dbg !2534
  br i1 %tobool, label %if.end41, label %if.then39, !dbg !2536

if.then39:                                        ; preds = %kmalloc.exit
  %88 = load i32, i32* %event_type.addr, align 4, !dbg !2537
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %88) #14, !dbg !2537
  store i32 -12, i32* %retval1, align 4, !dbg !2539
  br label %out, !dbg !2540

if.end41:                                         ; preds = %kmalloc.exit
  %89 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2541
  %call42 = call zeroext i1 @try_module_get(%struct.module* %89) #11, !dbg !2543
  br i1 %call42, label %if.end45, label %if.then43, !dbg !2544

if.then43:                                        ; preds = %if.end41
  %90 = load i32, i32* %event_type.addr, align 4, !dbg !2545
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %90) #14, !dbg !2545
  %91 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2547
  %92 = bitcast %struct.serio_event* %91 to i8*, !dbg !2547
  call void @kfree(i8* %92) #11, !dbg !2548
  store i32 -22, i32* %retval1, align 4, !dbg !2549
  br label %out, !dbg !2550

if.end45:                                         ; preds = %if.end41
  %93 = load i32, i32* %event_type.addr, align 4, !dbg !2551
  %94 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2552
  %type46 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %94, i32 0, i32 0, !dbg !2553
  store i32 %93, i32* %type46, align 8, !dbg !2554
  %95 = load i8*, i8** %object.addr, align 8, !dbg !2555
  %96 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2556
  %object47 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %96, i32 0, i32 1, !dbg !2557
  store i8* %95, i8** %object47, align 8, !dbg !2558
  %97 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2559
  %98 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2560
  %owner48 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %98, i32 0, i32 2, !dbg !2561
  store %struct.module* %97, %struct.module** %owner48, align 8, !dbg !2562
  %99 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !2563
  %node49 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %99, i32 0, i32 3, !dbg !2564
  call void @list_add_tail(%struct.list_head* %node49, %struct.list_head* @serio_event_list) #11, !dbg !2565
  %100 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_long_wq, align 8, !dbg !2566
  %call50 = call zeroext i1 @queue_work(%struct.workqueue_struct* %100, %struct.work_struct* @serio_event_work) #11, !dbg !2567
  br label %out, !dbg !2567

out:                                              ; preds = %if.end45, %if.then43, %if.then39, %if.then30
  call void @llvm.dbg.label(metadata !2568), !dbg !2569
  %101 = load i64, i64* %flags, align 8, !dbg !2570
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i51, align 8
  store i64 %101, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !2574
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !2574
  store i32 1, i32* %tmp.i, align 4, !dbg !2574
  %102 = load i32, i32* %tmp.i, align 4, !dbg !2574
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !2581
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !2581
  store i32 1, i32* %tmp8.i, align 4, !dbg !2581
  %103 = load i32, i32* %tmp8.i, align 4, !dbg !2581
  %104 = load i64, i64* %flags.addr.i, align 8, !dbg !2583
  call void @arch_local_irq_restore(i64 %104) #13, !dbg !2583
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2584, !srcloc !2586
  %105 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i51, align 8, !dbg !2587
  %106 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %105, i32 0, i32 0, !dbg !2587
  %rlock.i52 = bitcast %union.anon* %106 to %struct.raw_spinlock*, !dbg !2587
  %107 = load i32, i32* %retval1, align 4, !dbg !2589
  ret i32 %107, !dbg !2590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_reconnect(%struct.serio* %serio) #0 !dbg !2591 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2594
  %1 = bitcast %struct.serio* %0 to i8*, !dbg !2594
  %call = call i32 @serio_queue_event(i8* %1, %struct.module* null, i32 2) #11, !dbg !2595
  ret void, !dbg !2596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__serio_register_port(%struct.serio* %serio, %struct.module* %owner) #0 !dbg !2597 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2600, metadata !DIExpression()), !dbg !2601
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2602, metadata !DIExpression()), !dbg !2603
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2604
  call void @serio_init_port(%struct.serio* %0) #11, !dbg !2605
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2606
  %2 = bitcast %struct.serio* %1 to i8*, !dbg !2606
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2607
  %call = call i32 @serio_queue_event(i8* %2, %struct.module* %3, i32 3) #11, !dbg !2608
  ret void, !dbg !2609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_init_port(%struct.serio* %serio) #0 !dbg !2084 {
entry:
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !2610, metadata !DIExpression()), !dbg !2616
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2626, metadata !DIExpression()), !dbg !2627
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !2628, metadata !DIExpression()), !dbg !2630
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2631, metadata !DIExpression()), !dbg !2632
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2633, metadata !DIExpression()), !dbg !2641
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2643, metadata !DIExpression()), !dbg !2644
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2645, metadata !DIExpression()), !dbg !2646
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !2647
  %serio.addr = alloca %struct.serio*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @__module_get(%struct.module* null) #11, !dbg !2652
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2653
  %node = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 19, !dbg !2654
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #11, !dbg !2655
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2656
  %child_node = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 13, !dbg !2657
  call void @INIT_LIST_HEAD(%struct.list_head* %child_node) #11, !dbg !2658
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2659
  %children = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 14, !dbg !2660
  call void @INIT_LIST_HEAD(%struct.list_head* %children) #11, !dbg !2661
  br label %do.body, !dbg !2662

do.body:                                          ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2663
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 6, !dbg !2663
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2664
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !2665
  %rlock.i = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !2665
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2663
  %lock1 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 6, !dbg !2663
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2663
  %rlock = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !2663
  %8 = bitcast %struct.spinlock* %lock1 to i8*, !dbg !2663
  %9 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 0, i1 false), !dbg !2663
  br label %do.end, !dbg !2663

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !2666

do.body2:                                         ; preds = %do.end
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2667
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 17, !dbg !2667
  call void @__mutex_init(%struct.mutex* %drv_mutex, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @serio_init_port.__key) #11, !dbg !2667
  br label %do.end3, !dbg !2667

do.end3:                                          ; preds = %do.body2
  %11 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2669
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 18, !dbg !2670
  call void @device_initialize(%struct.device* %dev) #11, !dbg !2671
  %12 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2672
  %dev4 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 18, !dbg !2673
  store %struct.atomic_t* @serio_init_port.serio_no, %struct.atomic_t** %v.addr.i, align 8
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2674
  %14 = bitcast %struct.atomic_t* %13 to i8*, !dbg !2674
  store i8* %14, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %15 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2675
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !2676
  %conv.i.i = trunc i64 %16 to i32, !dbg !2676
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %15, i32 %conv.i.i) #13, !dbg !2677
  %17 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2678
  %18 = load i64, i64* %size.addr.i.i, align 8, !dbg !2678
  call void @kcsan_check_access(i8* %17, i64 %18, i32 7) #13, !dbg !2678
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2679
  store %struct.atomic_t* %19, %struct.atomic_t** %v.addr.i1.i, align 8
  %20 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2680
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %20, %struct.atomic_t** %v.addr.i.i.i, align 8
  %21 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2681
  %22 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2630
  store i32 %22, i32* %__ret.i.i.i, align 4, !dbg !2630
  %23 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2630
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2630
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %24, i32 0, i32 0, !dbg !2630
  %25 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %23, i32* %counter.i.i.i) #10, !dbg !2630, !srcloc !2682
  store i32 %25, i32* %__ret.i.i.i, align 4, !dbg !2630
  %26 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2630
  store i32 %26, i32* %tmp.i.i.i, align 4, !dbg !2630
  %27 = load i32, i32* %tmp.i.i.i, align 4, !dbg !2630
  %add.i.i.i = add i32 %21, %27, !dbg !2683
  %conv = sext i32 %add.i.i.i to i64, !dbg !2684
  %call6 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %conv) #11, !dbg !2685
  %28 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2686
  %dev7 = getelementptr inbounds %struct.serio, %struct.serio* %28, i32 0, i32 18, !dbg !2687
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 5, !dbg !2688
  store %struct.bus_type* @serio_bus, %struct.bus_type** %bus, align 8, !dbg !2689
  %29 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2690
  %dev8 = getelementptr inbounds %struct.serio, %struct.serio* %29, i32 0, i32 18, !dbg !2691
  %release = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 31, !dbg !2692
  store void (%struct.device*)* @serio_release_port, void (%struct.device*)** %release, align 8, !dbg !2693
  %30 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2694
  %dev9 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 18, !dbg !2695
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 30, !dbg !2696
  store %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @serio_device_attr_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2697
  %31 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2698
  %parent = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 12, !dbg !2700
  %32 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !2700
  %tobool = icmp ne %struct.serio* %32, null, !dbg !2698
  br i1 %tobool, label %if.then, label %if.else, !dbg !2701

if.then:                                          ; preds = %do.end3
  %33 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2702
  %parent10 = getelementptr inbounds %struct.serio, %struct.serio* %33, i32 0, i32 12, !dbg !2704
  %34 = load %struct.serio*, %struct.serio** %parent10, align 8, !dbg !2704
  %dev11 = getelementptr inbounds %struct.serio, %struct.serio* %34, i32 0, i32 18, !dbg !2705
  %35 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2706
  %dev12 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 18, !dbg !2707
  %parent13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 1, !dbg !2708
  store %struct.device* %dev11, %struct.device** %parent13, align 8, !dbg !2709
  %36 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2710
  %parent14 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 12, !dbg !2711
  %37 = load %struct.serio*, %struct.serio** %parent14, align 8, !dbg !2711
  %depth = getelementptr inbounds %struct.serio, %struct.serio* %37, i32 0, i32 15, !dbg !2712
  %38 = load i32, i32* %depth, align 8, !dbg !2712
  %add = add i32 %38, 1, !dbg !2713
  %39 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2714
  %depth15 = getelementptr inbounds %struct.serio, %struct.serio* %39, i32 0, i32 15, !dbg !2715
  store i32 %add, i32* %depth15, align 8, !dbg !2716
  br label %if.end, !dbg !2717

if.else:                                          ; preds = %do.end3
  %40 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2718
  %depth16 = getelementptr inbounds %struct.serio, %struct.serio* %40, i32 0, i32 15, !dbg !2719
  store i32 0, i32* %depth16, align 8, !dbg !2720
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body17, !dbg !2721

do.body17:                                        ; preds = %if.end
  br label %do.end18, !dbg !2722

do.end18:                                         ; preds = %do.body17
  ret void, !dbg !2724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_unregister_port(%struct.serio* %serio) #0 !dbg !2725 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @mutex_lock(%struct.mutex* @serio_mutex) #11, !dbg !2728
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2729
  call void @serio_disconnect_port(%struct.serio* %0) #11, !dbg !2730
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2731
  call void @serio_destroy_port(%struct.serio* %1) #11, !dbg !2732
  call void @mutex_unlock(%struct.mutex* @serio_mutex) #11, !dbg !2733
  ret void, !dbg !2734
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_disconnect_port(%struct.serio* %serio) #0 !dbg !2735 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %s = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %parent = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.serio** %s, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2740
  store %struct.serio* %0, %struct.serio** %s, align 8, !dbg !2739
  br label %while.cond, !dbg !2741

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2742
  %children = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 14, !dbg !2743
  %call = call i32 @list_empty(%struct.list_head* %children) #11, !dbg !2744
  %tobool = icmp ne i32 %call, 0, !dbg !2745
  %lnot = xor i1 %tobool, true, !dbg !2745
  br i1 %lnot, label %while.body, label %while.end9, !dbg !2741

while.body:                                       ; preds = %while.cond
  br label %while.cond1, !dbg !2746

while.cond1:                                      ; preds = %do.end, %while.body
  %2 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2748
  %children2 = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 14, !dbg !2749
  %call3 = call i32 @list_empty(%struct.list_head* %children2) #11, !dbg !2750
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2751
  %lnot5 = xor i1 %tobool4, true, !dbg !2751
  br i1 %lnot5, label %while.body6, label %while.end, !dbg !2746

while.body6:                                      ; preds = %while.cond1
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2752, metadata !DIExpression()), !dbg !2754
  %3 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2754
  %children7 = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 14, !dbg !2754
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %children7, i32 0, i32 0, !dbg !2754
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2754
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2754
  store i8* %5, i8** %__mptr, align 8, !dbg !2754
  br label %do.body, !dbg !2754

do.body:                                          ; preds = %while.body6
  br label %do.end, !dbg !2755

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2754
  %add.ptr = getelementptr i8, i8* %6, i64 -256, !dbg !2754
  %7 = bitcast i8* %add.ptr to %struct.serio*, !dbg !2754
  store %struct.serio* %7, %struct.serio** %tmp, align 8, !dbg !2755
  %8 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !2754
  store %struct.serio* %8, %struct.serio** %s, align 8, !dbg !2757
  br label %while.cond1, !dbg !2746, !llvm.loop !2758

while.end:                                        ; preds = %while.cond1
  %9 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2760
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2762
  %cmp = icmp ne %struct.serio* %9, %10, !dbg !2763
  br i1 %cmp, label %if.then, label %if.end, !dbg !2764

if.then:                                          ; preds = %while.end
  call void @llvm.dbg.declare(metadata %struct.serio** %parent, metadata !2765, metadata !DIExpression()), !dbg !2767
  %11 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2768
  %parent8 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 12, !dbg !2769
  %12 = load %struct.serio*, %struct.serio** %parent8, align 8, !dbg !2769
  store %struct.serio* %12, %struct.serio** %parent, align 8, !dbg !2767
  %13 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2770
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 18, !dbg !2771
  call void @device_release_driver(%struct.device* %dev) #11, !dbg !2772
  %14 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2773
  call void @serio_destroy_port(%struct.serio* %14) #11, !dbg !2774
  %15 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !2775
  store %struct.serio* %15, %struct.serio** %s, align 8, !dbg !2776
  br label %if.end, !dbg !2777

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond, !dbg !2741, !llvm.loop !2778

while.end9:                                       ; preds = %while.cond
  %16 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2780
  %dev10 = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 18, !dbg !2781
  call void @device_release_driver(%struct.device* %dev10) #11, !dbg !2782
  ret void, !dbg !2783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_destroy_port(%struct.serio* %serio) #0 !dbg !2784 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %child = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.serio** %child, metadata !2787, metadata !DIExpression()), !dbg !2788
  br label %while.cond, !dbg !2789

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2790
  %call = call %struct.serio* @serio_get_pending_child(%struct.serio* %0) #11, !dbg !2791
  store %struct.serio* %call, %struct.serio** %child, align 8, !dbg !2792
  %cmp = icmp ne %struct.serio* %call, null, !dbg !2793
  br i1 %cmp, label %while.body, label %while.end, !dbg !2789

while.body:                                       ; preds = %while.cond
  %1 = load %struct.serio*, %struct.serio** %child, align 8, !dbg !2794
  %2 = bitcast %struct.serio* %1 to i8*, !dbg !2794
  call void @serio_remove_pending_events(i8* %2) #11, !dbg !2796
  %3 = load %struct.serio*, %struct.serio** %child, align 8, !dbg !2797
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 18, !dbg !2798
  call void @put_device(%struct.device* %dev) #11, !dbg !2799
  br label %while.cond, !dbg !2789, !llvm.loop !2800

while.end:                                        ; preds = %while.cond
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2802
  %stop = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 11, !dbg !2804
  %stop1 = bitcast {}** %stop to void (%struct.serio*)**, !dbg !2804
  %5 = load void (%struct.serio*)*, void (%struct.serio*)** %stop1, align 8, !dbg !2804
  %tobool = icmp ne void (%struct.serio*)* %5, null, !dbg !2802
  br i1 %tobool, label %if.then, label %if.end, !dbg !2805

if.then:                                          ; preds = %while.end
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2806
  %stop2 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 11, !dbg !2807
  %stop3 = bitcast {}** %stop2 to void (%struct.serio*)**, !dbg !2807
  %7 = load void (%struct.serio*)*, void (%struct.serio*)** %stop3, align 8, !dbg !2807
  %8 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2808
  call void %7(%struct.serio* %8) #11, !dbg !2806
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %if.then, %while.end
  %9 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2809
  %parent = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 12, !dbg !2811
  %10 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !2811
  %tobool4 = icmp ne %struct.serio* %10, null, !dbg !2809
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !2812

if.then5:                                         ; preds = %if.end
  %11 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2813
  %parent6 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 12, !dbg !2815
  %12 = load %struct.serio*, %struct.serio** %parent6, align 8, !dbg !2815
  call void @serio_pause_rx(%struct.serio* %12) #11, !dbg !2816
  %13 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2817
  %child_node = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 13, !dbg !2818
  call void @list_del_init(%struct.list_head* %child_node) #11, !dbg !2819
  %14 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2820
  %parent7 = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 12, !dbg !2821
  %15 = load %struct.serio*, %struct.serio** %parent7, align 8, !dbg !2821
  call void @serio_continue_rx(%struct.serio* %15) #11, !dbg !2822
  %16 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2823
  %parent8 = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 12, !dbg !2824
  store %struct.serio* null, %struct.serio** %parent8, align 8, !dbg !2825
  br label %if.end9, !dbg !2826

if.end9:                                          ; preds = %if.then5, %if.end
  %17 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2827
  %dev10 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 18, !dbg !2829
  %call11 = call i32 @device_is_registered(%struct.device* %dev10) #11, !dbg !2830
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2830
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2831

if.then13:                                        ; preds = %if.end9
  %18 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2832
  %dev14 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 18, !dbg !2833
  call void @device_del(%struct.device* %dev14) #11, !dbg !2834
  br label %if.end15, !dbg !2834

if.end15:                                         ; preds = %if.then13, %if.end9
  %19 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2835
  %node = getelementptr inbounds %struct.serio, %struct.serio* %19, i32 0, i32 19, !dbg !2836
  call void @list_del_init(%struct.list_head* %node) #11, !dbg !2837
  %20 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2838
  %21 = bitcast %struct.serio* %20 to i8*, !dbg !2838
  call void @serio_remove_pending_events(i8* %21) #11, !dbg !2839
  %22 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2840
  %dev16 = getelementptr inbounds %struct.serio, %struct.serio* %22, i32 0, i32 18, !dbg !2841
  call void @put_device(%struct.device* %dev16) #11, !dbg !2842
  ret void, !dbg !2843
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_unregister_child_port(%struct.serio* %serio) #0 !dbg !2844 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %s = alloca %struct.serio*, align 8
  %next = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.serio*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.serio** %s, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata %struct.serio** %next, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @mutex_lock(%struct.mutex* @serio_mutex) #11, !dbg !2851
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2852, metadata !DIExpression()), !dbg !2855
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2855
  %children = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 14, !dbg !2855
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %children, i32 0, i32 0, !dbg !2855
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !2855
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2855
  store i8* %2, i8** %__mptr, align 8, !dbg !2855
  br label %do.body, !dbg !2855

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2856

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2855
  %add.ptr = getelementptr i8, i8* %3, i64 -256, !dbg !2855
  %4 = bitcast i8* %add.ptr to %struct.serio*, !dbg !2855
  store %struct.serio* %4, %struct.serio** %tmp, align 8, !dbg !2856
  %5 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !2855
  store %struct.serio* %5, %struct.serio** %s, align 8, !dbg !2858
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2859, metadata !DIExpression()), !dbg !2861
  %6 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2861
  %child_node = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 13, !dbg !2861
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %child_node, i32 0, i32 0, !dbg !2861
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2861
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2861
  store i8* %8, i8** %__mptr2, align 8, !dbg !2861
  br label %do.body4, !dbg !2861

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2862

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !2861
  %add.ptr7 = getelementptr i8, i8* %9, i64 -256, !dbg !2861
  %10 = bitcast i8* %add.ptr7 to %struct.serio*, !dbg !2861
  store %struct.serio* %10, %struct.serio** %tmp6, align 8, !dbg !2862
  %11 = load %struct.serio*, %struct.serio** %tmp6, align 8, !dbg !2861
  store %struct.serio* %11, %struct.serio** %next, align 8, !dbg !2858
  br label %for.cond, !dbg !2858

for.cond:                                         ; preds = %do.end14, %do.end5
  %12 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2864
  %child_node8 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 13, !dbg !2864
  %13 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !2864
  %children9 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 14, !dbg !2864
  %cmp = icmp eq %struct.list_head* %child_node8, %children9, !dbg !2864
  %lnot = xor i1 %cmp, true, !dbg !2864
  br i1 %lnot, label %for.body, label %for.end, !dbg !2858

for.body:                                         ; preds = %for.cond
  %14 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2866
  call void @serio_disconnect_port(%struct.serio* %14) #11, !dbg !2868
  %15 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !2869
  call void @serio_destroy_port(%struct.serio* %15) #11, !dbg !2870
  br label %for.inc, !dbg !2871

for.inc:                                          ; preds = %for.body
  %16 = load %struct.serio*, %struct.serio** %next, align 8, !dbg !2864
  store %struct.serio* %16, %struct.serio** %s, align 8, !dbg !2864
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !2872, metadata !DIExpression()), !dbg !2874
  %17 = load %struct.serio*, %struct.serio** %next, align 8, !dbg !2874
  %child_node11 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 13, !dbg !2874
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %child_node11, i32 0, i32 0, !dbg !2874
  %18 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !2874
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !2874
  store i8* %19, i8** %__mptr10, align 8, !dbg !2874
  br label %do.body13, !dbg !2874

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !2875

do.end14:                                         ; preds = %do.body13
  %20 = load i8*, i8** %__mptr10, align 8, !dbg !2874
  %add.ptr16 = getelementptr i8, i8* %20, i64 -256, !dbg !2874
  %21 = bitcast i8* %add.ptr16 to %struct.serio*, !dbg !2874
  store %struct.serio* %21, %struct.serio** %tmp15, align 8, !dbg !2875
  %22 = load %struct.serio*, %struct.serio** %tmp15, align 8, !dbg !2874
  store %struct.serio* %22, %struct.serio** %next, align 8, !dbg !2864
  br label %for.cond, !dbg !2864, !llvm.loop !2877

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @serio_mutex) #11, !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__serio_register_driver(%struct.serio_driver* %drv, %struct.module* %owner, i8* %mod_name) #0 !dbg !2881 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.serio_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %manual_bind = alloca i8, align 1
  %error = alloca i32, align 4
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !2884, metadata !DIExpression()), !dbg !2885
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2886, metadata !DIExpression()), !dbg !2887
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata i8* %manual_bind, metadata !2890, metadata !DIExpression()), !dbg !2891
  %0 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2892
  %manual_bind1 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %0, i32 0, i32 2, !dbg !2893
  %1 = load i8, i8* %manual_bind1, align 8, !dbg !2893
  %tobool = trunc i8 %1 to i1, !dbg !2893
  %frombool = zext i1 %tobool to i8, !dbg !2891
  store i8 %frombool, i8* %manual_bind, align 1, !dbg !2891
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2894, metadata !DIExpression()), !dbg !2895
  %2 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2896
  %driver = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %2, i32 0, i32 10, !dbg !2897
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 1, !dbg !2898
  store %struct.bus_type* @serio_bus, %struct.bus_type** %bus, align 8, !dbg !2899
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2900
  %4 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2901
  %driver2 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %4, i32 0, i32 10, !dbg !2902
  %owner3 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver2, i32 0, i32 2, !dbg !2903
  store %struct.module* %3, %struct.module** %owner3, align 8, !dbg !2904
  %5 = load i8*, i8** %mod_name.addr, align 8, !dbg !2905
  %6 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2906
  %driver4 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %6, i32 0, i32 10, !dbg !2907
  %mod_name5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver4, i32 0, i32 3, !dbg !2908
  store i8* %5, i8** %mod_name5, align 8, !dbg !2909
  %7 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2910
  %manual_bind6 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %7, i32 0, i32 2, !dbg !2911
  store i8 1, i8* %manual_bind6, align 8, !dbg !2912
  %8 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2913
  %driver7 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %8, i32 0, i32 10, !dbg !2914
  %call = call i32 @driver_register(%struct.device_driver* %driver7) #11, !dbg !2915
  store i32 %call, i32* %error, align 4, !dbg !2916
  %9 = load i32, i32* %error, align 4, !dbg !2917
  %tobool8 = icmp ne i32 %9, 0, !dbg !2917
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2919

if.then:                                          ; preds = %entry
  %10 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2920
  %driver9 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %10, i32 0, i32 10, !dbg !2920
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver9, i32 0, i32 0, !dbg !2920
  %11 = load i8*, i8** %name, align 8, !dbg !2920
  %12 = load i32, i32* %error, align 4, !dbg !2920
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12) #14, !dbg !2920
  %13 = load i32, i32* %error, align 4, !dbg !2922
  store i32 %13, i32* %retval, align 4, !dbg !2923
  br label %return, !dbg !2923

if.end:                                           ; preds = %entry
  %14 = load i8, i8* %manual_bind, align 1, !dbg !2924
  %tobool11 = trunc i8 %14 to i1, !dbg !2924
  br i1 %tobool11, label %if.end19, label %if.then12, !dbg !2926

if.then12:                                        ; preds = %if.end
  %15 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2927
  %manual_bind13 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %15, i32 0, i32 2, !dbg !2929
  store i8 0, i8* %manual_bind13, align 8, !dbg !2930
  %16 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2931
  %17 = bitcast %struct.serio_driver* %16 to i8*, !dbg !2931
  %call14 = call i32 @serio_queue_event(i8* %17, %struct.module* null, i32 4) #11, !dbg !2932
  store i32 %call14, i32* %error, align 4, !dbg !2933
  %18 = load i32, i32* %error, align 4, !dbg !2934
  %tobool15 = icmp ne i32 %18, 0, !dbg !2934
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2936

if.then16:                                        ; preds = %if.then12
  %19 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2937
  %driver17 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %19, i32 0, i32 10, !dbg !2939
  call void @driver_unregister(%struct.device_driver* %driver17) #11, !dbg !2940
  %20 = load i32, i32* %error, align 4, !dbg !2941
  store i32 %20, i32* %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

if.end18:                                         ; preds = %if.then12
  br label %if.end19, !dbg !2943

if.end19:                                         ; preds = %if.end18, %if.end
  store i32 0, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

return:                                           ; preds = %if.end19, %if.then16, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !2945
  ret i32 %21, !dbg !2945
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_unregister_driver(%struct.serio_driver* %drv) #0 !dbg !2946 {
entry:
  %drv.addr = alloca %struct.serio_driver*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.serio*, align 8
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @mutex_lock(%struct.mutex* @serio_mutex) #11, !dbg !2953
  %0 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2954
  %manual_bind = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %0, i32 0, i32 2, !dbg !2955
  store i8 1, i8* %manual_bind, align 8, !dbg !2956
  %1 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2957
  %2 = bitcast %struct.serio_driver* %1 to i8*, !dbg !2957
  call void @serio_remove_pending_events(i8* %2) #11, !dbg !2958
  br label %start_over, !dbg !2958

start_over:                                       ; preds = %if.then, %entry
  call void @llvm.dbg.label(metadata !2959), !dbg !2960
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2961, metadata !DIExpression()), !dbg !2964
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_list, i32 0, i32 0), align 8, !dbg !2964
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !2964
  store i8* %4, i8** %__mptr, align 8, !dbg !2964
  br label %do.body, !dbg !2964

do.body:                                          ; preds = %start_over
  br label %do.end, !dbg !2965

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2964
  %add.ptr = getelementptr i8, i8* %5, i64 -1024, !dbg !2964
  %6 = bitcast i8* %add.ptr to %struct.serio*, !dbg !2964
  store %struct.serio* %6, %struct.serio** %tmp, align 8, !dbg !2965
  %7 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !2964
  store %struct.serio* %7, %struct.serio** %serio, align 8, !dbg !2967
  br label %for.cond, !dbg !2967

for.cond:                                         ; preds = %do.end6, %do.end
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !2968
  %node = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 19, !dbg !2968
  %cmp = icmp eq %struct.list_head* %node, @serio_list, !dbg !2968
  %lnot = xor i1 %cmp, true, !dbg !2968
  br i1 %lnot, label %for.body, label %for.end, !dbg !2967

for.body:                                         ; preds = %for.cond
  %9 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !2970
  %drv1 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 16, !dbg !2973
  %10 = load %struct.serio_driver*, %struct.serio_driver** %drv1, align 8, !dbg !2973
  %11 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2974
  %cmp2 = icmp eq %struct.serio_driver* %10, %11, !dbg !2975
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2976

if.then:                                          ; preds = %for.body
  %12 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !2977
  call void @serio_disconnect_port(%struct.serio* %12) #11, !dbg !2979
  %13 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !2980
  call void @serio_find_driver(%struct.serio* %13) #11, !dbg !2981
  br label %start_over, !dbg !2982

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2983

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2984, metadata !DIExpression()), !dbg !2986
  %14 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !2986
  %node4 = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 19, !dbg !2986
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node4, i32 0, i32 0, !dbg !2986
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2986
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !2986
  store i8* %16, i8** %__mptr3, align 8, !dbg !2986
  br label %do.body5, !dbg !2986

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !2987

do.end6:                                          ; preds = %do.body5
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !2986
  %add.ptr8 = getelementptr i8, i8* %17, i64 -1024, !dbg !2986
  %18 = bitcast i8* %add.ptr8 to %struct.serio*, !dbg !2986
  store %struct.serio* %18, %struct.serio** %tmp7, align 8, !dbg !2987
  %19 = load %struct.serio*, %struct.serio** %tmp7, align 8, !dbg !2986
  store %struct.serio* %19, %struct.serio** %serio, align 8, !dbg !2968
  br label %for.cond, !dbg !2968, !llvm.loop !2989

for.end:                                          ; preds = %for.cond
  %20 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !2991
  %driver = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %20, i32 0, i32 10, !dbg !2992
  call void @driver_unregister(%struct.device_driver* %driver) #11, !dbg !2993
  call void @mutex_unlock(%struct.mutex* @serio_mutex) #11, !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_remove_pending_events(i8* %object) #0 !dbg !2996 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !2236, metadata !DIExpression()), !dbg !2997
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !2999
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !3000
  %object.addr = alloca i8*, align 8
  %event = alloca %struct.serio_event*, align 8
  %next = alloca %struct.serio_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.serio_event*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp26 = alloca %struct.serio_event*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.serio_event*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.declare(metadata %struct.serio_event** %next, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3013, metadata !DIExpression()), !dbg !3014
  br label %do.body, !dbg !3015

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3016

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3020, metadata !DIExpression()), !dbg !3019
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3019
  %conv = zext i1 %cmp to i32, !dbg !3019
  store i32 1, i32* %tmp, align 4, !dbg !3019
  %0 = load i32, i32* %tmp, align 4, !dbg !3019
  br label %do.body2, !dbg !3021

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3022

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3023

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3029, metadata !DIExpression()), !dbg !3028
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3028
  %conv8 = zext i1 %cmp7 to i32, !dbg !3028
  store i32 1, i32* %tmp9, align 4, !dbg !3028
  %1 = load i32, i32* %tmp9, align 4, !dbg !3028
  %call = call i64 @arch_local_irq_save() #11, !dbg !3030
  store i64 %call, i64* %flags, align 8, !dbg !3030
  br label %do.end, !dbg !3030

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3023

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3022

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3031, !srcloc !3032
  br label %do.body12, !dbg !3031

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3033
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3034
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !3034
  br label %do.end14, !dbg !3035

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3031

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3022

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3021

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3016

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3036, metadata !DIExpression()), !dbg !3039
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_event_list, i32 0, i32 0), align 8, !dbg !3039
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3039
  store i8* %5, i8** %__mptr, align 8, !dbg !3039
  br label %do.body19, !dbg !3039

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3040

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3039
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !3039
  %7 = bitcast i8* %add.ptr to %struct.serio_event*, !dbg !3039
  store %struct.serio_event* %7, %struct.serio_event** %tmp21, align 8, !dbg !3040
  %8 = load %struct.serio_event*, %struct.serio_event** %tmp21, align 8, !dbg !3039
  store %struct.serio_event* %8, %struct.serio_event** %event, align 8, !dbg !3042
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !3043, metadata !DIExpression()), !dbg !3045
  %9 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !3045
  %node = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 3, !dbg !3045
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3045
  %10 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !3045
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !3045
  store i8* %11, i8** %__mptr22, align 8, !dbg !3045
  br label %do.body24, !dbg !3045

do.body24:                                        ; preds = %do.end20
  br label %do.end25, !dbg !3046

do.end25:                                         ; preds = %do.body24
  %12 = load i8*, i8** %__mptr22, align 8, !dbg !3045
  %add.ptr27 = getelementptr i8, i8* %12, i64 -24, !dbg !3045
  %13 = bitcast i8* %add.ptr27 to %struct.serio_event*, !dbg !3045
  store %struct.serio_event* %13, %struct.serio_event** %tmp26, align 8, !dbg !3046
  %14 = load %struct.serio_event*, %struct.serio_event** %tmp26, align 8, !dbg !3045
  store %struct.serio_event* %14, %struct.serio_event** %next, align 8, !dbg !3042
  br label %for.cond, !dbg !3042

for.cond:                                         ; preds = %do.end39, %do.end25
  %15 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !3048
  %node28 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %15, i32 0, i32 3, !dbg !3048
  %cmp29 = icmp eq %struct.list_head* %node28, @serio_event_list, !dbg !3048
  %lnot = xor i1 %cmp29, true, !dbg !3048
  br i1 %lnot, label %for.body, label %for.end, !dbg !3042

for.body:                                         ; preds = %for.cond
  %16 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !3050
  %object31 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %16, i32 0, i32 1, !dbg !3053
  %17 = load i8*, i8** %object31, align 8, !dbg !3053
  %18 = load i8*, i8** %object.addr, align 8, !dbg !3054
  %cmp32 = icmp eq i8* %17, %18, !dbg !3055
  br i1 %cmp32, label %if.then, label %if.end, !dbg !3056

if.then:                                          ; preds = %for.body
  %19 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !3057
  %node34 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %19, i32 0, i32 3, !dbg !3059
  call void @list_del_init(%struct.list_head* %node34) #11, !dbg !3060
  %20 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !3061
  call void @serio_free_event(%struct.serio_event* %20) #11, !dbg !3062
  br label %if.end, !dbg !3063

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3064

for.inc:                                          ; preds = %if.end
  %21 = load %struct.serio_event*, %struct.serio_event** %next, align 8, !dbg !3048
  store %struct.serio_event* %21, %struct.serio_event** %event, align 8, !dbg !3048
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !3065, metadata !DIExpression()), !dbg !3067
  %22 = load %struct.serio_event*, %struct.serio_event** %next, align 8, !dbg !3067
  %node36 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %22, i32 0, i32 3, !dbg !3067
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %node36, i32 0, i32 0, !dbg !3067
  %23 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !3067
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !3067
  store i8* %24, i8** %__mptr35, align 8, !dbg !3067
  br label %do.body38, !dbg !3067

do.body38:                                        ; preds = %for.inc
  br label %do.end39, !dbg !3068

do.end39:                                         ; preds = %do.body38
  %25 = load i8*, i8** %__mptr35, align 8, !dbg !3067
  %add.ptr41 = getelementptr i8, i8* %25, i64 -24, !dbg !3067
  %26 = bitcast i8* %add.ptr41 to %struct.serio_event*, !dbg !3067
  store %struct.serio_event* %26, %struct.serio_event** %tmp40, align 8, !dbg !3068
  %27 = load %struct.serio_event*, %struct.serio_event** %tmp40, align 8, !dbg !3067
  store %struct.serio_event* %27, %struct.serio_event** %next, align 8, !dbg !3048
  br label %for.cond, !dbg !3048, !llvm.loop !3070

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %flags, align 8, !dbg !3072
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %28, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !3073
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !3073
  store i32 1, i32* %tmp.i, align 4, !dbg !3073
  %29 = load i32, i32* %tmp.i, align 4, !dbg !3073
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !3074
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !3074
  store i32 1, i32* %tmp8.i, align 4, !dbg !3074
  %30 = load i32, i32* %tmp8.i, align 4, !dbg !3074
  %31 = load i64, i64* %flags.addr.i, align 8, !dbg !3075
  call void @arch_local_irq_restore(i64 %31) #13, !dbg !3075
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3076, !srcloc !2586
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !3077
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !3077
  %rlock.i43 = bitcast %union.anon* %33 to %struct.raw_spinlock*, !dbg !3077
  ret void, !dbg !3078
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_find_driver(%struct.serio* %serio) #0 !dbg !3079 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3082, metadata !DIExpression()), !dbg !3083
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3084
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 18, !dbg !3085
  %call = call i32 @device_attach(%struct.device* %dev) #11, !dbg !3086
  store i32 %call, i32* %error, align 4, !dbg !3087
  %1 = load i32, i32* %error, align 4, !dbg !3088
  %cmp = icmp slt i32 %1, 0, !dbg !3090
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3091

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %error, align 4, !dbg !3092
  %cmp1 = icmp ne i32 %2, -517, !dbg !3093
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3094

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3095
  %dev2 = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 18, !dbg !3095
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3095
  %phys = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 2, !dbg !3095
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !3095
  %5 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3095
  %name = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 1, !dbg !3095
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !3095
  %6 = load i32, i32* %error, align 4, !dbg !3095
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay3, i32 %6) #14, !dbg !3095
  br label %if.end, !dbg !3095

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !3096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @serio_open(%struct.serio* %serio, %struct.serio_driver* %drv) #0 !dbg !3097 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca %struct.serio*, align 8
  %drv.addr = alloca %struct.serio_driver*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3098, metadata !DIExpression()), !dbg !3099
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3102
  %1 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !3103
  call void @serio_set_drv(%struct.serio* %0, %struct.serio_driver* %1) #11, !dbg !3104
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3105
  %open = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 8, !dbg !3107
  %3 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %open, align 8, !dbg !3107
  %tobool = icmp ne i32 (%struct.serio*)* %3, null, !dbg !3105
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3108

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3109
  %open1 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 8, !dbg !3110
  %5 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %open1, align 8, !dbg !3110
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3111
  %call = call i32 %5(%struct.serio* %6) #11, !dbg !3109
  %tobool2 = icmp ne i32 %call, 0, !dbg !3109
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3112

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3113
  call void @serio_set_drv(%struct.serio* %7, %struct.serio_driver* null) #11, !dbg !3115
  store i32 -1, i32* %retval, align 4, !dbg !3116
  br label %return, !dbg !3116

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !3117
  br label %return, !dbg !3117

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3118
  ret i32 %8, !dbg !3118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_set_drv(%struct.serio* %serio, %struct.serio_driver* %drv) #0 !dbg !3119 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %drv.addr = alloca %struct.serio_driver*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !3124, metadata !DIExpression()), !dbg !3125
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3126
  call void @serio_pause_rx(%struct.serio* %0) #11, !dbg !3127
  %1 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !3128
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3129
  %drv1 = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 16, !dbg !3130
  store %struct.serio_driver* %1, %struct.serio_driver** %drv1, align 8, !dbg !3131
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3132
  call void @serio_continue_rx(%struct.serio* %3) #11, !dbg !3133
  ret void, !dbg !3134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @serio_close(%struct.serio* %serio) #0 !dbg !3135 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3136, metadata !DIExpression()), !dbg !3137
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3138
  %close = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 9, !dbg !3140
  %close1 = bitcast {}** %close to void (%struct.serio*)**, !dbg !3140
  %1 = load void (%struct.serio*)*, void (%struct.serio*)** %close1, align 8, !dbg !3140
  %tobool = icmp ne void (%struct.serio*)* %1, null, !dbg !3138
  br i1 %tobool, label %if.then, label %if.end, !dbg !3141

if.then:                                          ; preds = %entry
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3142
  %close2 = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 9, !dbg !3143
  %close3 = bitcast {}** %close2 to void (%struct.serio*)**, !dbg !3143
  %3 = load void (%struct.serio*)*, void (%struct.serio*)** %close3, align 8, !dbg !3143
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3144
  call void %3(%struct.serio* %4) #11, !dbg !3142
  br label %if.end, !dbg !3142

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3145
  call void @serio_set_drv(%struct.serio* %5, %struct.serio_driver* null) #11, !dbg !3146
  ret void, !dbg !3147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @serio_interrupt(%struct.serio* %serio, i8 zeroext %data, i32 %dfl) #0 !dbg !3148 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !2236, metadata !DIExpression()), !dbg !3149
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !3151
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !3152
  %serio.addr = alloca %struct.serio*, align 8
  %data.addr = alloca i8, align 1
  %dfl.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i32 %dfl, i32* %dfl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dfl.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3165, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3167, metadata !DIExpression()), !dbg !3168
  store i32 0, i32* %ret, align 4, !dbg !3168
  br label %do.body, !dbg !3169

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3170

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3174, metadata !DIExpression()), !dbg !3173
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3173
  %conv = zext i1 %cmp to i32, !dbg !3173
  store i32 1, i32* %tmp, align 4, !dbg !3173
  %0 = load i32, i32* %tmp, align 4, !dbg !3173
  br label %do.body2, !dbg !3175

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3176

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3177

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3183, metadata !DIExpression()), !dbg !3182
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3182
  %conv8 = zext i1 %cmp7 to i32, !dbg !3182
  store i32 1, i32* %tmp9, align 4, !dbg !3182
  %1 = load i32, i32* %tmp9, align 4, !dbg !3182
  %call = call i64 @arch_local_irq_save() #11, !dbg !3184
  store i64 %call, i64* %flags, align 8, !dbg !3184
  br label %do.end, !dbg !3184

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3177

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3176

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3185, !srcloc !3186
  br label %do.body12, !dbg !3185

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3187
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 6, !dbg !3187
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3188
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3189
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3189
  br label %do.end14, !dbg !3187

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3185

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3176

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3175

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3170

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3190
  %drv = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 16, !dbg !3190
  %6 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !3190
  %tobool = icmp ne %struct.serio_driver* %6, null, !dbg !3190
  %lnot = xor i1 %tobool, true, !dbg !3190
  %lnot19 = xor i1 %lnot, true, !dbg !3190
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !3190
  %conv20 = sext i32 %lnot.ext to i64, !dbg !3190
  %tobool21 = icmp ne i64 %conv20, 0, !dbg !3190
  br i1 %tobool21, label %if.then, label %if.else, !dbg !3192

if.then:                                          ; preds = %do.end18
  %7 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3193
  %drv22 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 16, !dbg !3195
  %8 = load %struct.serio_driver*, %struct.serio_driver** %drv22, align 8, !dbg !3195
  %interrupt = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %8, i32 0, i32 4, !dbg !3196
  %9 = load i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, i8, i32)** %interrupt, align 8, !dbg !3196
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3197
  %11 = load i8, i8* %data.addr, align 1, !dbg !3198
  %12 = load i32, i32* %dfl.addr, align 4, !dbg !3199
  %call23 = call i32 %9(%struct.serio* %10, i8 zeroext %11, i32 %12) #11, !dbg !3193
  store i32 %call23, i32* %ret, align 4, !dbg !3200
  br label %if.end28, !dbg !3201

if.else:                                          ; preds = %do.end18
  %13 = load i32, i32* %dfl.addr, align 4, !dbg !3202
  %tobool24 = icmp ne i32 %13, 0, !dbg !3202
  br i1 %tobool24, label %if.end, label %land.lhs.true, !dbg !3204

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3205
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 18, !dbg !3206
  %call25 = call i32 @device_is_registered(%struct.device* %dev) #11, !dbg !3207
  %tobool26 = icmp ne i32 %call25, 0, !dbg !3207
  br i1 %tobool26, label %if.then27, label %if.end, !dbg !3208

if.then27:                                        ; preds = %land.lhs.true
  %15 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3209
  call void @serio_rescan(%struct.serio* %15) #11, !dbg !3211
  store i32 1, i32* %ret, align 4, !dbg !3212
  br label %if.end, !dbg !3213

if.end:                                           ; preds = %if.then27, %land.lhs.true, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then
  %16 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3214
  %lock29 = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 6, !dbg !3215
  %17 = load i64, i64* %flags, align 8, !dbg !3216
  store %struct.spinlock* %lock29, %struct.spinlock** %lock.addr.i30, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !3217
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !3217
  store i32 1, i32* %tmp.i, align 4, !dbg !3217
  %18 = load i32, i32* %tmp.i, align 4, !dbg !3217
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !3218
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !3218
  store i32 1, i32* %tmp8.i, align 4, !dbg !3218
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !3218
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !3219
  call void @arch_local_irq_restore(i64 %20) #13, !dbg !3219
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3220, !srcloc !2586
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !3221
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !3221
  %rlock.i31 = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !3221
  %23 = load i32, i32* %ret, align 4, !dbg !3222
  ret i32 %23, !dbg !3223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !3224 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !3228, metadata !DIExpression()), !dbg !3229
  %call = call i64 @arch_local_save_flags() #11, !dbg !3230
  store i64 %call, i64* %f, align 8, !dbg !3231
  call void @arch_local_irq_disable() #11, !dbg !3232
  %0 = load i64, i64* %f, align 8, !dbg !3233
  ret i64 %0, !dbg !3234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_is_registered(%struct.device* %dev) #0 !dbg !3235 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3238
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !3239
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !3240
  %bf.load = load i8, i8* %state_in_sysfs, align 4, !dbg !3240
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !3240
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3240
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3240
  ret i32 %bf.cast, !dbg !3241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3242 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %serio_drv = alloca %struct.serio_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.serio_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3243, metadata !DIExpression()), !dbg !3244
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3249, metadata !DIExpression()), !dbg !3251
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3251
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3251
  store i8* %1, i8** %__mptr, align 8, !dbg !3251
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3252

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3251
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3251
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3251
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3252
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3251
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3248
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %serio_drv, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3256, metadata !DIExpression()), !dbg !3258
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3258
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !3258
  store i8* %6, i8** %__mptr1, align 8, !dbg !3258
  br label %do.body2, !dbg !3258

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3259

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !3258
  %add.ptr5 = getelementptr i8, i8* %7, i64 -80, !dbg !3258
  %8 = bitcast i8* %add.ptr5 to %struct.serio_driver*, !dbg !3258
  store %struct.serio_driver* %8, %struct.serio_driver** %tmp4, align 8, !dbg !3259
  %9 = load %struct.serio_driver*, %struct.serio_driver** %tmp4, align 8, !dbg !3258
  store %struct.serio_driver* %9, %struct.serio_driver** %serio_drv, align 8, !dbg !3255
  %10 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3261
  %manual_bind = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 4, !dbg !3263
  %11 = load i8, i8* %manual_bind, align 8, !dbg !3263
  %tobool = trunc i8 %11 to i1, !dbg !3263
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3264

lor.lhs.false:                                    ; preds = %do.end3
  %12 = load %struct.serio_driver*, %struct.serio_driver** %serio_drv, align 8, !dbg !3265
  %manual_bind6 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %12, i32 0, i32 2, !dbg !3266
  %13 = load i8, i8* %manual_bind6, align 8, !dbg !3266
  %tobool7 = trunc i8 %13 to i1, !dbg !3266
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3267

if.then:                                          ; preds = %lor.lhs.false, %do.end3
  store i32 0, i32* %retval, align 4, !dbg !3268
  br label %return, !dbg !3268

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.serio_driver*, %struct.serio_driver** %serio_drv, align 8, !dbg !3269
  %id_table = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %14, i32 0, i32 1, !dbg !3270
  %15 = load %struct.serio_device_id*, %struct.serio_device_id** %id_table, align 8, !dbg !3270
  %16 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3271
  %call = call i32 @serio_match_port(%struct.serio_device_id* %15, %struct.serio* %16) #11, !dbg !3272
  store i32 %call, i32* %retval, align 4, !dbg !3273
  br label %return, !dbg !3273

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3274
  ret i32 %17, !dbg !3274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !3275 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %err = alloca i32, align 4
  %err7 = alloca i32, align 4
  %err16 = alloca i32, align 4
  %err26 = alloca i32, align 4
  %err35 = alloca i32, align 4
  %err56 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3276, metadata !DIExpression()), !dbg !3277
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3280, metadata !DIExpression()), !dbg !3281
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3282
  %tobool = icmp ne %struct.device* %0, null, !dbg !3282
  br i1 %tobool, label %if.end, label %if.then, !dbg !3284

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3285
  br label %return, !dbg !3285

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3286, metadata !DIExpression()), !dbg !3288
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3288
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3288
  store i8* %2, i8** %__mptr, align 8, !dbg !3288
  br label %do.body, !dbg !3288

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3289

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3288
  %add.ptr = getelementptr i8, i8* %3, i64 -328, !dbg !3288
  %4 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3288
  store %struct.serio* %4, %struct.serio** %tmp, align 8, !dbg !3289
  %5 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3288
  store %struct.serio* %5, %struct.serio** %serio, align 8, !dbg !3291
  br label %do.body1, !dbg !3292

do.body1:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3293, metadata !DIExpression()), !dbg !3295
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3295
  %7 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3295
  %id = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 5, !dbg !3295
  %type = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 0, !dbg !3295
  %8 = load i8, i8* %type, align 1, !dbg !3295
  %conv = zext i8 %8 to i32, !dbg !3295
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 %conv) #11, !dbg !3295
  store i32 %call, i32* %err, align 4, !dbg !3295
  %9 = load i32, i32* %err, align 4, !dbg !3296
  %tobool2 = icmp ne i32 %9, 0, !dbg !3296
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3295

if.then3:                                         ; preds = %do.body1
  %10 = load i32, i32* %err, align 4, !dbg !3296
  store i32 %10, i32* %retval, align 4, !dbg !3296
  br label %return, !dbg !3296

if.end4:                                          ; preds = %do.body1
  br label %do.end5, !dbg !3295

do.end5:                                          ; preds = %if.end4
  br label %do.body6, !dbg !3298

do.body6:                                         ; preds = %do.end5
  call void @llvm.dbg.declare(metadata i32* %err7, metadata !3299, metadata !DIExpression()), !dbg !3301
  %11 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3301
  %12 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3301
  %id8 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 5, !dbg !3301
  %proto = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id8, i32 0, i32 3, !dbg !3301
  %13 = load i8, i8* %proto, align 1, !dbg !3301
  %conv9 = zext i8 %13 to i32, !dbg !3301
  %call10 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %conv9) #11, !dbg !3301
  store i32 %call10, i32* %err7, align 4, !dbg !3301
  %14 = load i32, i32* %err7, align 4, !dbg !3302
  %tobool11 = icmp ne i32 %14, 0, !dbg !3302
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3301

if.then12:                                        ; preds = %do.body6
  %15 = load i32, i32* %err7, align 4, !dbg !3302
  store i32 %15, i32* %retval, align 4, !dbg !3302
  br label %return, !dbg !3302

if.end13:                                         ; preds = %do.body6
  br label %do.end14, !dbg !3301

do.end14:                                         ; preds = %if.end13
  br label %do.body15, !dbg !3304

do.body15:                                        ; preds = %do.end14
  call void @llvm.dbg.declare(metadata i32* %err16, metadata !3305, metadata !DIExpression()), !dbg !3307
  %16 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3307
  %17 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3307
  %id17 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 5, !dbg !3307
  %id18 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id17, i32 0, i32 2, !dbg !3307
  %18 = load i8, i8* %id18, align 1, !dbg !3307
  %conv19 = zext i8 %18 to i32, !dbg !3307
  %call20 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %conv19) #11, !dbg !3307
  store i32 %call20, i32* %err16, align 4, !dbg !3307
  %19 = load i32, i32* %err16, align 4, !dbg !3308
  %tobool21 = icmp ne i32 %19, 0, !dbg !3308
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !3307

if.then22:                                        ; preds = %do.body15
  %20 = load i32, i32* %err16, align 4, !dbg !3308
  store i32 %20, i32* %retval, align 4, !dbg !3308
  br label %return, !dbg !3308

if.end23:                                         ; preds = %do.body15
  br label %do.end24, !dbg !3307

do.end24:                                         ; preds = %if.end23
  br label %do.body25, !dbg !3310

do.body25:                                        ; preds = %do.end24
  call void @llvm.dbg.declare(metadata i32* %err26, metadata !3311, metadata !DIExpression()), !dbg !3313
  %21 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3313
  %22 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3313
  %id27 = getelementptr inbounds %struct.serio, %struct.serio* %22, i32 0, i32 5, !dbg !3313
  %extra = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id27, i32 0, i32 1, !dbg !3313
  %23 = load i8, i8* %extra, align 1, !dbg !3313
  %conv28 = zext i8 %23 to i32, !dbg !3313
  %call29 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %conv28) #11, !dbg !3313
  store i32 %call29, i32* %err26, align 4, !dbg !3313
  %24 = load i32, i32* %err26, align 4, !dbg !3314
  %tobool30 = icmp ne i32 %24, 0, !dbg !3314
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3313

if.then31:                                        ; preds = %do.body25
  %25 = load i32, i32* %err26, align 4, !dbg !3314
  store i32 %25, i32* %retval, align 4, !dbg !3314
  br label %return, !dbg !3314

if.end32:                                         ; preds = %do.body25
  br label %do.end33, !dbg !3313

do.end33:                                         ; preds = %if.end32
  br label %do.body34, !dbg !3316

do.body34:                                        ; preds = %do.end33
  call void @llvm.dbg.declare(metadata i32* %err35, metadata !3317, metadata !DIExpression()), !dbg !3319
  %26 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3319
  %27 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3319
  %id36 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 5, !dbg !3319
  %type37 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id36, i32 0, i32 0, !dbg !3319
  %28 = load i8, i8* %type37, align 1, !dbg !3319
  %conv38 = zext i8 %28 to i32, !dbg !3319
  %29 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3319
  %id39 = getelementptr inbounds %struct.serio, %struct.serio* %29, i32 0, i32 5, !dbg !3319
  %proto40 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id39, i32 0, i32 3, !dbg !3319
  %30 = load i8, i8* %proto40, align 1, !dbg !3319
  %conv41 = zext i8 %30 to i32, !dbg !3319
  %31 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3319
  %id42 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 5, !dbg !3319
  %id43 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id42, i32 0, i32 2, !dbg !3319
  %32 = load i8, i8* %id43, align 1, !dbg !3319
  %conv44 = zext i8 %32 to i32, !dbg !3319
  %33 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3319
  %id45 = getelementptr inbounds %struct.serio, %struct.serio* %33, i32 0, i32 5, !dbg !3319
  %extra46 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id45, i32 0, i32 1, !dbg !3319
  %34 = load i8, i8* %extra46, align 1, !dbg !3319
  %conv47 = zext i8 %34 to i32, !dbg !3319
  %call48 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i32 %conv38, i32 %conv41, i32 %conv44, i32 %conv47) #11, !dbg !3319
  store i32 %call48, i32* %err35, align 4, !dbg !3319
  %35 = load i32, i32* %err35, align 4, !dbg !3320
  %tobool49 = icmp ne i32 %35, 0, !dbg !3320
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !3319

if.then50:                                        ; preds = %do.body34
  %36 = load i32, i32* %err35, align 4, !dbg !3320
  store i32 %36, i32* %retval, align 4, !dbg !3320
  br label %return, !dbg !3320

if.end51:                                         ; preds = %do.body34
  br label %do.end52, !dbg !3319

do.end52:                                         ; preds = %if.end51
  %37 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3322
  %firmware_id = getelementptr inbounds %struct.serio, %struct.serio* %37, i32 0, i32 3, !dbg !3324
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %firmware_id, i64 0, i64 0, !dbg !3322
  %38 = load i8, i8* %arrayidx, align 8, !dbg !3322
  %tobool53 = icmp ne i8 %38, 0, !dbg !3322
  br i1 %tobool53, label %if.then54, label %if.end63, !dbg !3325

if.then54:                                        ; preds = %do.end52
  br label %do.body55, !dbg !3326

do.body55:                                        ; preds = %if.then54
  call void @llvm.dbg.declare(metadata i32* %err56, metadata !3327, metadata !DIExpression()), !dbg !3329
  %39 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3329
  %40 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3329
  %firmware_id57 = getelementptr inbounds %struct.serio, %struct.serio* %40, i32 0, i32 3, !dbg !3329
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %firmware_id57, i64 0, i64 0, !dbg !3329
  %call58 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* %arraydecay) #11, !dbg !3329
  store i32 %call58, i32* %err56, align 4, !dbg !3329
  %41 = load i32, i32* %err56, align 4, !dbg !3330
  %tobool59 = icmp ne i32 %41, 0, !dbg !3330
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !3329

if.then60:                                        ; preds = %do.body55
  %42 = load i32, i32* %err56, align 4, !dbg !3330
  store i32 %42, i32* %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

if.end61:                                         ; preds = %do.body55
  br label %do.end62, !dbg !3329

do.end62:                                         ; preds = %if.end61
  br label %if.end63, !dbg !3329

if.end63:                                         ; preds = %do.end62, %do.end52
  store i32 0, i32* %retval, align 4, !dbg !3332
  br label %return, !dbg !3332

return:                                           ; preds = %if.end63, %if.then60, %if.then50, %if.then31, %if.then22, %if.then12, %if.then3, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !3333
  ret i32 %43, !dbg !3333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_driver_probe(%struct.device* %dev) #0 !dbg !3334 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %drv = alloca %struct.serio_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.serio_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3339, metadata !DIExpression()), !dbg !3341
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3341
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3341
  store i8* %1, i8** %__mptr, align 8, !dbg !3341
  br label %do.body, !dbg !3341

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3342

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3341
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3341
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3341
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3342
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3341
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3338
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3346, metadata !DIExpression()), !dbg !3348
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3348
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !3348
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3348
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !3348
  store i8* %7, i8** %__mptr1, align 8, !dbg !3348
  br label %do.body2, !dbg !3348

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3349

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3348
  %add.ptr5 = getelementptr i8, i8* %8, i64 -80, !dbg !3348
  %9 = bitcast i8* %add.ptr5 to %struct.serio_driver*, !dbg !3348
  store %struct.serio_driver* %9, %struct.serio_driver** %tmp4, align 8, !dbg !3349
  %10 = load %struct.serio_driver*, %struct.serio_driver** %tmp4, align 8, !dbg !3348
  store %struct.serio_driver* %10, %struct.serio_driver** %drv, align 8, !dbg !3345
  %11 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3351
  %12 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !3352
  %call = call i32 @serio_connect_driver(%struct.serio* %11, %struct.serio_driver* %12) #11, !dbg !3353
  ret i32 %call, !dbg !3354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_driver_remove(%struct.device* %dev) #0 !dbg !3355 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3360, metadata !DIExpression()), !dbg !3362
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3362
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3362
  store i8* %1, i8** %__mptr, align 8, !dbg !3362
  br label %do.body, !dbg !3362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3363

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3362
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3362
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3362
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3363
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3362
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3359
  %5 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3365
  call void @serio_disconnect_driver(%struct.serio* %5) #11, !dbg !3366
  ret i32 0, !dbg !3367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_shutdown(%struct.device* %dev) #0 !dbg !3368 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3373, metadata !DIExpression()), !dbg !3375
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3375
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3375
  store i8* %1, i8** %__mptr, align 8, !dbg !3375
  br label %do.body, !dbg !3375

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3376

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3375
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3375
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3375
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3376
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3375
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3372
  %5 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3378
  call void @serio_cleanup(%struct.serio* %5) #11, !dbg !3379
  ret void, !dbg !3380
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @serio_exit() #4 section ".exit.text" !dbg !3381 {
entry:
  call void @bus_unregister(%struct.bus_type* @serio_bus) #11, !dbg !3382
  %call = call zeroext i1 @cancel_work_sync(%struct.work_struct* @serio_event_work) #11, !dbg !3383
  ret void, !dbg !3384
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_init() #4 section ".init.text" !dbg !3385 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3388, metadata !DIExpression()), !dbg !3389
  %call = call i32 @bus_register(%struct.bus_type* @serio_bus) #11, !dbg !3390
  store i32 %call, i32* %error, align 4, !dbg !3391
  %0 = load i32, i32* %error, align 4, !dbg !3392
  %tobool = icmp ne i32 %0, 0, !dbg !3392
  br i1 %tobool, label %if.then, label %if.end, !dbg !3394

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error, align 4, !dbg !3395
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i64 0, i64 0), i32 %1) #14, !dbg !3395
  %2 = load i32, i32* %error, align 4, !dbg !3397
  store i32 %2, i32* %retval, align 4, !dbg !3398
  br label %return, !dbg !3398

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3399
  br label %return, !dbg !3399

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3400
  ret i32 %3, !dbg !3400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !3401 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3405, metadata !DIExpression()), !dbg !3406
  ret i1 true, !dbg !3407
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3408 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3416
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3417
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3418
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3418
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3419
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !3420
  ret void, !dbg !3421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !3422 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !3431
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3432
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !3433
  ret i1 %call, !dbg !3434
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3435 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3439, metadata !DIExpression()), !dbg !3444
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3446, metadata !DIExpression()), !dbg !3447
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  %0 = load i64, i64* %size.addr, align 8, !dbg !3450
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3452
  br i1 %1, label %if.then, label %if.end447, !dbg !3453

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3454
  %tobool = icmp ne i64 %2, 0, !dbg !3454
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3457

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3458
  br label %return, !dbg !3458

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3459
  %cmp = icmp ult i64 %3, 4096, !dbg !3461
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3462

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3463
  br label %return, !dbg !3463

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub = sub i64 %4, 1, !dbg !3464
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3464
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3464

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub4 = sub i64 %6, 1, !dbg !3464
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3464
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3464

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub6 = sub i64 %8, 1, !dbg !3464
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3464
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3464

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3464

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub9 = sub i64 %9, 1, !dbg !3464
  %and = and i64 %sub9, -9223372036854775808, !dbg !3464
  %tobool10 = icmp ne i64 %and, 0, !dbg !3464
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3464

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3464

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub13 = sub i64 %10, 1, !dbg !3464
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3464
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3464
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3464

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3464

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub18 = sub i64 %11, 1, !dbg !3464
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3464
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3464
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3464

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3464

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub23 = sub i64 %12, 1, !dbg !3464
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3464
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3464
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3464

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3464

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub28 = sub i64 %13, 1, !dbg !3464
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3464
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3464
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3464

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3464

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub33 = sub i64 %14, 1, !dbg !3464
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3464
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3464
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3464

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3464

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub38 = sub i64 %15, 1, !dbg !3464
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3464
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3464
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3464

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3464

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub43 = sub i64 %16, 1, !dbg !3464
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3464
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3464
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3464

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3464

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub48 = sub i64 %17, 1, !dbg !3464
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3464
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3464
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3464

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3464

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub53 = sub i64 %18, 1, !dbg !3464
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3464
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3464
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3464

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3464

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub58 = sub i64 %19, 1, !dbg !3464
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3464
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3464
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3464

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3464

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub63 = sub i64 %20, 1, !dbg !3464
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3464
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3464
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3464

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3464

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub68 = sub i64 %21, 1, !dbg !3464
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3464
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3464
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3464

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3464

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub73 = sub i64 %22, 1, !dbg !3464
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3464
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3464
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3464

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3464

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub78 = sub i64 %23, 1, !dbg !3464
  %and79 = and i64 %sub78, 562949953421312, !dbg !3464
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3464
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3464

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3464

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub83 = sub i64 %24, 1, !dbg !3464
  %and84 = and i64 %sub83, 281474976710656, !dbg !3464
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3464
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3464

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3464

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub88 = sub i64 %25, 1, !dbg !3464
  %and89 = and i64 %sub88, 140737488355328, !dbg !3464
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3464
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3464

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3464

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub93 = sub i64 %26, 1, !dbg !3464
  %and94 = and i64 %sub93, 70368744177664, !dbg !3464
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3464
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3464

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3464

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub98 = sub i64 %27, 1, !dbg !3464
  %and99 = and i64 %sub98, 35184372088832, !dbg !3464
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3464
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3464

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3464

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub103 = sub i64 %28, 1, !dbg !3464
  %and104 = and i64 %sub103, 17592186044416, !dbg !3464
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3464
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3464

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3464

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub108 = sub i64 %29, 1, !dbg !3464
  %and109 = and i64 %sub108, 8796093022208, !dbg !3464
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3464
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3464

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3464

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub113 = sub i64 %30, 1, !dbg !3464
  %and114 = and i64 %sub113, 4398046511104, !dbg !3464
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3464
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3464

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3464

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub118 = sub i64 %31, 1, !dbg !3464
  %and119 = and i64 %sub118, 2199023255552, !dbg !3464
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3464
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3464

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3464

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub123 = sub i64 %32, 1, !dbg !3464
  %and124 = and i64 %sub123, 1099511627776, !dbg !3464
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3464
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3464

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3464

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub128 = sub i64 %33, 1, !dbg !3464
  %and129 = and i64 %sub128, 549755813888, !dbg !3464
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3464
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3464

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3464

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub133 = sub i64 %34, 1, !dbg !3464
  %and134 = and i64 %sub133, 274877906944, !dbg !3464
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3464
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3464

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3464

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub138 = sub i64 %35, 1, !dbg !3464
  %and139 = and i64 %sub138, 137438953472, !dbg !3464
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3464
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3464

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3464

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub143 = sub i64 %36, 1, !dbg !3464
  %and144 = and i64 %sub143, 68719476736, !dbg !3464
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3464
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3464

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3464

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub148 = sub i64 %37, 1, !dbg !3464
  %and149 = and i64 %sub148, 34359738368, !dbg !3464
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3464
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3464

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3464

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub153 = sub i64 %38, 1, !dbg !3464
  %and154 = and i64 %sub153, 17179869184, !dbg !3464
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3464
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3464

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3464

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub158 = sub i64 %39, 1, !dbg !3464
  %and159 = and i64 %sub158, 8589934592, !dbg !3464
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3464
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3464

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3464

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub163 = sub i64 %40, 1, !dbg !3464
  %and164 = and i64 %sub163, 4294967296, !dbg !3464
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3464
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3464

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3464

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub168 = sub i64 %41, 1, !dbg !3464
  %and169 = and i64 %sub168, 2147483648, !dbg !3464
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3464
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3464

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3464

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub173 = sub i64 %42, 1, !dbg !3464
  %and174 = and i64 %sub173, 1073741824, !dbg !3464
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3464
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3464

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3464

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub178 = sub i64 %43, 1, !dbg !3464
  %and179 = and i64 %sub178, 536870912, !dbg !3464
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3464
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3464

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3464

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub183 = sub i64 %44, 1, !dbg !3464
  %and184 = and i64 %sub183, 268435456, !dbg !3464
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3464
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3464

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3464

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub188 = sub i64 %45, 1, !dbg !3464
  %and189 = and i64 %sub188, 134217728, !dbg !3464
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3464
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3464

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3464

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub193 = sub i64 %46, 1, !dbg !3464
  %and194 = and i64 %sub193, 67108864, !dbg !3464
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3464
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3464

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3464

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub198 = sub i64 %47, 1, !dbg !3464
  %and199 = and i64 %sub198, 33554432, !dbg !3464
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3464
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3464

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3464

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub203 = sub i64 %48, 1, !dbg !3464
  %and204 = and i64 %sub203, 16777216, !dbg !3464
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3464
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3464

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3464

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub208 = sub i64 %49, 1, !dbg !3464
  %and209 = and i64 %sub208, 8388608, !dbg !3464
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3464
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3464

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3464

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub213 = sub i64 %50, 1, !dbg !3464
  %and214 = and i64 %sub213, 4194304, !dbg !3464
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3464
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3464

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3464

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub218 = sub i64 %51, 1, !dbg !3464
  %and219 = and i64 %sub218, 2097152, !dbg !3464
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3464
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3464

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3464

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub223 = sub i64 %52, 1, !dbg !3464
  %and224 = and i64 %sub223, 1048576, !dbg !3464
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3464
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3464

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3464

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub228 = sub i64 %53, 1, !dbg !3464
  %and229 = and i64 %sub228, 524288, !dbg !3464
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3464
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3464

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3464

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub233 = sub i64 %54, 1, !dbg !3464
  %and234 = and i64 %sub233, 262144, !dbg !3464
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3464
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3464

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3464

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub238 = sub i64 %55, 1, !dbg !3464
  %and239 = and i64 %sub238, 131072, !dbg !3464
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3464
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3464

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3464

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub243 = sub i64 %56, 1, !dbg !3464
  %and244 = and i64 %sub243, 65536, !dbg !3464
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3464
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3464

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3464

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub248 = sub i64 %57, 1, !dbg !3464
  %and249 = and i64 %sub248, 32768, !dbg !3464
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3464
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3464

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3464

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub253 = sub i64 %58, 1, !dbg !3464
  %and254 = and i64 %sub253, 16384, !dbg !3464
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3464
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3464

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3464

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub258 = sub i64 %59, 1, !dbg !3464
  %and259 = and i64 %sub258, 8192, !dbg !3464
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3464
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3464

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3464

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub263 = sub i64 %60, 1, !dbg !3464
  %and264 = and i64 %sub263, 4096, !dbg !3464
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3464
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3464

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3464

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub268 = sub i64 %61, 1, !dbg !3464
  %and269 = and i64 %sub268, 2048, !dbg !3464
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3464
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3464

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3464

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub273 = sub i64 %62, 1, !dbg !3464
  %and274 = and i64 %sub273, 1024, !dbg !3464
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3464
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3464

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3464

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub278 = sub i64 %63, 1, !dbg !3464
  %and279 = and i64 %sub278, 512, !dbg !3464
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3464
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3464

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3464

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub283 = sub i64 %64, 1, !dbg !3464
  %and284 = and i64 %sub283, 256, !dbg !3464
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3464
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3464

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3464

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub288 = sub i64 %65, 1, !dbg !3464
  %and289 = and i64 %sub288, 128, !dbg !3464
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3464
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3464

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3464

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub293 = sub i64 %66, 1, !dbg !3464
  %and294 = and i64 %sub293, 64, !dbg !3464
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3464
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3464

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3464

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub298 = sub i64 %67, 1, !dbg !3464
  %and299 = and i64 %sub298, 32, !dbg !3464
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3464
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3464

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3464

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub303 = sub i64 %68, 1, !dbg !3464
  %and304 = and i64 %sub303, 16, !dbg !3464
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3464
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3464

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3464

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub308 = sub i64 %69, 1, !dbg !3464
  %and309 = and i64 %sub308, 8, !dbg !3464
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3464
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3464

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3464

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub313 = sub i64 %70, 1, !dbg !3464
  %and314 = and i64 %sub313, 4, !dbg !3464
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3464
  %71 = zext i1 %tobool315 to i64, !dbg !3464
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3464
  br label %cond.end, !dbg !3464

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3464
  br label %cond.end317, !dbg !3464

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3464
  br label %cond.end319, !dbg !3464

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3464
  br label %cond.end321, !dbg !3464

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3464
  br label %cond.end323, !dbg !3464

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3464
  br label %cond.end325, !dbg !3464

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3464
  br label %cond.end327, !dbg !3464

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3464
  br label %cond.end329, !dbg !3464

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3464
  br label %cond.end331, !dbg !3464

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3464
  br label %cond.end333, !dbg !3464

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3464
  br label %cond.end335, !dbg !3464

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3464
  br label %cond.end337, !dbg !3464

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3464
  br label %cond.end339, !dbg !3464

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3464
  br label %cond.end341, !dbg !3464

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3464
  br label %cond.end343, !dbg !3464

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3464
  br label %cond.end345, !dbg !3464

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3464
  br label %cond.end347, !dbg !3464

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3464
  br label %cond.end349, !dbg !3464

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3464
  br label %cond.end351, !dbg !3464

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3464
  br label %cond.end353, !dbg !3464

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3464
  br label %cond.end355, !dbg !3464

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3464
  br label %cond.end357, !dbg !3464

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3464
  br label %cond.end359, !dbg !3464

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3464
  br label %cond.end361, !dbg !3464

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3464
  br label %cond.end363, !dbg !3464

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3464
  br label %cond.end365, !dbg !3464

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3464
  br label %cond.end367, !dbg !3464

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3464
  br label %cond.end369, !dbg !3464

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3464
  br label %cond.end371, !dbg !3464

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3464
  br label %cond.end373, !dbg !3464

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3464
  br label %cond.end375, !dbg !3464

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3464
  br label %cond.end377, !dbg !3464

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3464
  br label %cond.end379, !dbg !3464

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3464
  br label %cond.end381, !dbg !3464

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3464
  br label %cond.end383, !dbg !3464

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3464
  br label %cond.end385, !dbg !3464

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3464
  br label %cond.end387, !dbg !3464

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3464
  br label %cond.end389, !dbg !3464

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3464
  br label %cond.end391, !dbg !3464

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3464
  br label %cond.end393, !dbg !3464

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3464
  br label %cond.end395, !dbg !3464

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3464
  br label %cond.end397, !dbg !3464

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3464
  br label %cond.end399, !dbg !3464

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3464
  br label %cond.end401, !dbg !3464

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3464
  br label %cond.end403, !dbg !3464

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3464
  br label %cond.end405, !dbg !3464

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3464
  br label %cond.end407, !dbg !3464

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3464
  br label %cond.end409, !dbg !3464

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3464
  br label %cond.end411, !dbg !3464

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3464
  br label %cond.end413, !dbg !3464

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3464
  br label %cond.end415, !dbg !3464

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3464
  br label %cond.end417, !dbg !3464

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3464
  br label %cond.end419, !dbg !3464

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3464
  br label %cond.end421, !dbg !3464

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3464
  br label %cond.end423, !dbg !3464

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3464
  br label %cond.end425, !dbg !3464

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3464
  br label %cond.end427, !dbg !3464

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3464
  br label %cond.end429, !dbg !3464

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3464
  br label %cond.end431, !dbg !3464

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3464
  br label %cond.end433, !dbg !3464

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3464
  br label %cond.end435, !dbg !3464

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3464
  br label %cond.end437, !dbg !3464

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3464
  br label %cond.end440, !dbg !3464

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3464

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3464
  br label %cond.end444, !dbg !3464

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3464
  %sub443 = sub i64 %72, 1, !dbg !3464
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3464
  br label %cond.end444, !dbg !3464

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3464
  %sub446 = sub i32 %cond445, 12, !dbg !3465
  %add = add i32 %sub446, 1, !dbg !3466
  store i32 %add, i32* %retval, align 4, !dbg !3467
  br label %return, !dbg !3467

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3468
  %dec = add i64 %73, -1, !dbg !3468
  store i64 %dec, i64* %size.addr, align 8, !dbg !3468
  %74 = load i64, i64* %size.addr, align 8, !dbg !3469
  %shr = lshr i64 %74, 12, !dbg !3469
  store i64 %shr, i64* %size.addr, align 8, !dbg !3469
  %75 = load i64, i64* %size.addr, align 8, !dbg !3470
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3447
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3471
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3472
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !3471, !srcloc !3473
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3471
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3474
  %add.i = add i32 %79, 1, !dbg !3475
  store i32 %add.i, i32* %retval, align 4, !dbg !3476
  br label %return, !dbg !3476

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3477
  ret i32 %80, !dbg !3477
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3478 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3439, metadata !DIExpression()), !dbg !3482
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3446, metadata !DIExpression()), !dbg !3484
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  %0 = load i64, i64* %n.addr, align 8, !dbg !3487
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3484
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3488
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3489
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !3488, !srcloc !3473
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3488
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3490
  %add.i = add i32 %4, 1, !dbg !3491
  %sub = sub i32 %add.i, 1, !dbg !3492
  ret i32 %sub, !dbg !3493
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3494 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3498, metadata !DIExpression()), !dbg !3499
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3500, metadata !DIExpression()), !dbg !3501
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3502, metadata !DIExpression()), !dbg !3503
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3504, metadata !DIExpression()), !dbg !3505
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3506
  ret i8* %0, !dbg !3507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3508 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3513, metadata !DIExpression()), !dbg !3514
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3515, metadata !DIExpression()), !dbg !3516
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3517
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3519
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3520
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !3521
  br i1 %call, label %if.end, label %if.then, !dbg !3522

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3523

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3524
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3525
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3526
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3527
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3528
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3529
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3530
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3531
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3532
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3533
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3534
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3535
  br label %do.body, !dbg !3536

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3537

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3539

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3537

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3541
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3541
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3541
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3541
  br label %do.end7, !dbg !3541

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3537

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3544 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3549, metadata !DIExpression()), !dbg !3550
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3551, metadata !DIExpression()), !dbg !3552
  ret i1 true, !dbg !3553
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__module_get(%struct.module* %module) #0 !dbg !3554 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3557, metadata !DIExpression()), !dbg !3558
  ret void, !dbg !3559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3560 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  br label %do.body, !dbg !3565

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3566

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3568

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3566

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3570
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3570
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3570
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3570
  br label %do.end3, !dbg !3570

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3566

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3572
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3573
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3574
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3575
  ret void, !dbg !3576
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_release_port(%struct.device* %dev) #0 !dbg !3577 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3580, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3582, metadata !DIExpression()), !dbg !3584
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3584
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3584
  store i8* %1, i8** %__mptr, align 8, !dbg !3584
  br label %do.body, !dbg !3584

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3585

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3584
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3584
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3584
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3585
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3584
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3581
  %5 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3587
  %6 = bitcast %struct.serio* %5 to i8*, !dbg !3587
  call void @kfree(i8* %6) #11, !dbg !3588
  call void @module_put(%struct.module* null) #11, !dbg !3589
  ret void, !dbg !3590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3591 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  ret i1 true, !dbg !3599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3600 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3604, metadata !DIExpression()), !dbg !3605
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3606, metadata !DIExpression()), !dbg !3607
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3608, metadata !DIExpression()), !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !3611 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  ret void, !dbg !3614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3615 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3618, metadata !DIExpression()), !dbg !3619
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3624, metadata !DIExpression()), !dbg !3626
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3626
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3626
  store i8* %1, i8** %__mptr, align 8, !dbg !3626
  br label %do.body, !dbg !3626

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3627

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3626
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3626
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3626
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3627
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3626
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3623
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3629
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3630
  %id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 5, !dbg !3631
  %type = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 0, !dbg !3632
  %7 = load i8, i8* %type, align 1, !dbg !3632
  %conv = zext i8 %7 to i32, !dbg !3630
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #11, !dbg !3633
  %conv1 = sext i32 %call to i64, !dbg !3633
  ret i64 %conv1, !dbg !3634
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @proto_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3635 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3636, metadata !DIExpression()), !dbg !3637
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3638, metadata !DIExpression()), !dbg !3639
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3644, metadata !DIExpression()), !dbg !3646
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3646
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3646
  store i8* %1, i8** %__mptr, align 8, !dbg !3646
  br label %do.body, !dbg !3646

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3647

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3646
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3646
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3646
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3647
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3646
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3643
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3649
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3650
  %id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 5, !dbg !3651
  %proto = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 3, !dbg !3652
  %7 = load i8, i8* %proto, align 1, !dbg !3652
  %conv = zext i8 %7 to i32, !dbg !3650
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #11, !dbg !3653
  %conv1 = sext i32 %call to i64, !dbg !3653
  ret i64 %conv1, !dbg !3654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3655 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3656, metadata !DIExpression()), !dbg !3657
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3658, metadata !DIExpression()), !dbg !3659
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3664, metadata !DIExpression()), !dbg !3666
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3666
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3666
  store i8* %1, i8** %__mptr, align 8, !dbg !3666
  br label %do.body, !dbg !3666

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3667

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3666
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3666
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3666
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3667
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3666
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3663
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3669
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3670
  %id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 5, !dbg !3671
  %id1 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 2, !dbg !3672
  %7 = load i8, i8* %id1, align 1, !dbg !3672
  %conv = zext i8 %7 to i32, !dbg !3670
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #11, !dbg !3673
  %conv2 = sext i32 %call to i64, !dbg !3673
  ret i64 %conv2, !dbg !3674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @extra_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3675 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3684, metadata !DIExpression()), !dbg !3686
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3686
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3686
  store i8* %1, i8** %__mptr, align 8, !dbg !3686
  br label %do.body, !dbg !3686

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3687

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3686
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3686
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3686
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3687
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3686
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3683
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3689
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3690
  %id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 5, !dbg !3691
  %extra = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 1, !dbg !3692
  %7 = load i8, i8* %extra, align 1, !dbg !3692
  %conv = zext i8 %7 to i32, !dbg !3690
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #11, !dbg !3693
  %conv1 = sext i32 %call to i64, !dbg !3693
  ret i64 %conv1, !dbg !3694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3695 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3696, metadata !DIExpression()), !dbg !3697
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3698, metadata !DIExpression()), !dbg !3699
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3704, metadata !DIExpression()), !dbg !3706
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3706
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3706
  store i8* %1, i8** %__mptr, align 8, !dbg !3706
  br label %do.body, !dbg !3706

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3707

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3706
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3706
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3706
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3707
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3706
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3703
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3709
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3710
  %id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 5, !dbg !3711
  %type = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 0, !dbg !3712
  %7 = load i8, i8* %type, align 1, !dbg !3712
  %conv = zext i8 %7 to i32, !dbg !3710
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3713
  %id1 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 5, !dbg !3714
  %proto = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id1, i32 0, i32 3, !dbg !3715
  %9 = load i8, i8* %proto, align 1, !dbg !3715
  %conv2 = zext i8 %9 to i32, !dbg !3713
  %10 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3716
  %id3 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 5, !dbg !3717
  %id4 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id3, i32 0, i32 2, !dbg !3718
  %11 = load i8, i8* %id4, align 1, !dbg !3718
  %conv5 = zext i8 %11 to i32, !dbg !3716
  %12 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3719
  %id6 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 5, !dbg !3720
  %extra = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id6, i32 0, i32 1, !dbg !3721
  %13 = load i8, i8* %extra, align 1, !dbg !3721
  %conv7 = zext i8 %13 to i32, !dbg !3719
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %conv, i32 %conv2, i32 %conv5, i32 %conv7) #11, !dbg !3722
  %conv8 = sext i32 %call to i64, !dbg !3722
  ret i64 %conv8, !dbg !3723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @serio_show_description(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3724 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3733, metadata !DIExpression()), !dbg !3735
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3735
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3735
  store i8* %1, i8** %__mptr, align 8, !dbg !3735
  br label %do.body, !dbg !3735

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3736

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3735
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3735
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3735
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3736
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3735
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3732
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3738
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3739
  %name = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 1, !dbg !3740
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !3739
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %arraydecay) #11, !dbg !3741
  %conv = sext i32 %call to i64, !dbg !3741
  ret i64 %conv, !dbg !3742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drvctl_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3743 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %drv = alloca %struct.device_driver*, align 8
  %error = alloca i32, align 4
  %__mptr15 = alloca i8*, align 8
  %tmp18 = alloca %struct.serio_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3744, metadata !DIExpression()), !dbg !3745
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3746, metadata !DIExpression()), !dbg !3747
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3748, metadata !DIExpression()), !dbg !3749
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3754, metadata !DIExpression()), !dbg !3756
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3756
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3756
  store i8* %1, i8** %__mptr, align 8, !dbg !3756
  br label %do.body, !dbg !3756

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3757

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3756
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !3756
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3756
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !3757
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3756
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !3753
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3761, metadata !DIExpression()), !dbg !3762
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* @serio_mutex) #11, !dbg !3763
  store i32 %call, i32* %error, align 4, !dbg !3764
  %5 = load i32, i32* %error, align 4, !dbg !3765
  %tobool = icmp ne i32 %5, 0, !dbg !3765
  br i1 %tobool, label %if.then, label %if.end, !dbg !3767

if.then:                                          ; preds = %do.end
  %6 = load i32, i32* %error, align 4, !dbg !3768
  %conv = sext i32 %6 to i64, !dbg !3768
  store i64 %conv, i64* %retval, align 8, !dbg !3769
  br label %return, !dbg !3769

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3770
  %8 = load i64, i64* %count.addr, align 8, !dbg !3772
  %call1 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 %8) #11, !dbg !3773
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3773
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3774

if.then3:                                         ; preds = %if.end
  %9 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3775
  call void @serio_disconnect_port(%struct.serio* %9) #11, !dbg !3777
  br label %if.end25, !dbg !3778

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3779
  %11 = load i64, i64* %count.addr, align 8, !dbg !3781
  %call4 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 %11) #11, !dbg !3782
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3782
  br i1 %tobool5, label %if.else7, label %if.then6, !dbg !3783

if.then6:                                         ; preds = %if.else
  %12 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3784
  call void @serio_reconnect_subtree(%struct.serio* %12) #11, !dbg !3786
  br label %if.end24, !dbg !3787

if.else7:                                         ; preds = %if.else
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3788
  %14 = load i64, i64* %count.addr, align 8, !dbg !3790
  %call8 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i64 %14) #11, !dbg !3791
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3791
  br i1 %tobool9, label %if.else11, label %if.then10, !dbg !3792

if.then10:                                        ; preds = %if.else7
  %15 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3793
  call void @serio_disconnect_port(%struct.serio* %15) #11, !dbg !3795
  %16 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3796
  call void @serio_find_driver(%struct.serio* %16) #11, !dbg !3797
  %17 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3798
  %18 = bitcast %struct.serio* %17 to i8*, !dbg !3798
  call void @serio_remove_duplicate_events(i8* %18, i32 0) #11, !dbg !3799
  br label %if.end23, !dbg !3800

if.else11:                                        ; preds = %if.else7
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !3801
  %call12 = call %struct.device_driver* @driver_find(i8* %19, %struct.bus_type* @serio_bus) #11, !dbg !3803
  store %struct.device_driver* %call12, %struct.device_driver** %drv, align 8, !dbg !3804
  %cmp = icmp ne %struct.device_driver* %call12, null, !dbg !3805
  br i1 %cmp, label %if.then14, label %if.else21, !dbg !3806

if.then14:                                        ; preds = %if.else11
  %20 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3807
  call void @serio_disconnect_port(%struct.serio* %20) #11, !dbg !3809
  %21 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3810
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !3811, metadata !DIExpression()), !dbg !3813
  %22 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !3813
  %23 = bitcast %struct.device_driver* %22 to i8*, !dbg !3813
  store i8* %23, i8** %__mptr15, align 8, !dbg !3813
  br label %do.body16, !dbg !3813

do.body16:                                        ; preds = %if.then14
  br label %do.end17, !dbg !3814

do.end17:                                         ; preds = %do.body16
  %24 = load i8*, i8** %__mptr15, align 8, !dbg !3813
  %add.ptr19 = getelementptr i8, i8* %24, i64 -80, !dbg !3813
  %25 = bitcast i8* %add.ptr19 to %struct.serio_driver*, !dbg !3813
  store %struct.serio_driver* %25, %struct.serio_driver** %tmp18, align 8, !dbg !3814
  %26 = load %struct.serio_driver*, %struct.serio_driver** %tmp18, align 8, !dbg !3813
  %call20 = call i32 @serio_bind_driver(%struct.serio* %21, %struct.serio_driver* %26) #11, !dbg !3816
  store i32 %call20, i32* %error, align 4, !dbg !3817
  %27 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3818
  %28 = bitcast %struct.serio* %27 to i8*, !dbg !3818
  call void @serio_remove_duplicate_events(i8* %28, i32 0) #11, !dbg !3819
  br label %if.end22, !dbg !3820

if.else21:                                        ; preds = %if.else11
  store i32 -22, i32* %error, align 4, !dbg !3821
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %do.end17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then6
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then3
  call void @mutex_unlock(%struct.mutex* @serio_mutex) #11, !dbg !3823
  %29 = load i32, i32* %error, align 4, !dbg !3824
  %tobool26 = icmp ne i32 %29, 0, !dbg !3824
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !3824

cond.true:                                        ; preds = %if.end25
  %30 = load i32, i32* %error, align 4, !dbg !3825
  %conv27 = sext i32 %30 to i64, !dbg !3825
  br label %cond.end, !dbg !3824

cond.false:                                       ; preds = %if.end25
  %31 = load i64, i64* %count.addr, align 8, !dbg !3826
  br label %cond.end, !dbg !3824

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv27, %cond.true ], [ %31, %cond.false ], !dbg !3824
  store i64 %cond, i64* %retval, align 8, !dbg !3827
  br label %return, !dbg !3827

return:                                           ; preds = %cond.end, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !3828
  ret i64 %32, !dbg !3828
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_reconnect_subtree(%struct.serio* %root) #0 !dbg !3829 {
entry:
  %root.addr = alloca %struct.serio*, align 8
  %s = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %parent = alloca %struct.serio*, align 8
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.serio*, align 8
  store %struct.serio* %root, %struct.serio** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %root.addr, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.declare(metadata %struct.serio** %s, metadata !3832, metadata !DIExpression()), !dbg !3833
  %0 = load %struct.serio*, %struct.serio** %root.addr, align 8, !dbg !3834
  store %struct.serio* %0, %struct.serio** %s, align 8, !dbg !3833
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3835, metadata !DIExpression()), !dbg !3836
  br label %do.body, !dbg !3837

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3838
  %call = call i32 @serio_reconnect_port(%struct.serio* %1) #11, !dbg !3840
  store i32 %call, i32* %error, align 4, !dbg !3841
  %2 = load i32, i32* %error, align 4, !dbg !3842
  %tobool = icmp ne i32 %2, 0, !dbg !3842
  br i1 %tobool, label %if.end6, label %if.then, !dbg !3844

if.then:                                          ; preds = %do.body
  %3 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3845
  %children = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 14, !dbg !3848
  %call1 = call i32 @list_empty(%struct.list_head* %children) #11, !dbg !3849
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3849
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3850

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3851, metadata !DIExpression()), !dbg !3854
  %4 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3854
  %children4 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 14, !dbg !3854
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %children4, i32 0, i32 0, !dbg !3854
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3854
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !3854
  store i8* %6, i8** %__mptr, align 8, !dbg !3854
  br label %do.body5, !dbg !3854

do.body5:                                         ; preds = %if.then3
  br label %do.end, !dbg !3855

do.end:                                           ; preds = %do.body5
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3854
  %add.ptr = getelementptr i8, i8* %7, i64 -256, !dbg !3854
  %8 = bitcast i8* %add.ptr to %struct.serio*, !dbg !3854
  store %struct.serio* %8, %struct.serio** %tmp, align 8, !dbg !3855
  %9 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !3854
  store %struct.serio* %9, %struct.serio** %s, align 8, !dbg !3857
  br label %do.cond, !dbg !3858

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !3859

if.end6:                                          ; preds = %if.end, %do.body
  br label %while.cond, !dbg !3860

while.cond:                                       ; preds = %if.end19, %if.end6
  %10 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3861
  %11 = load %struct.serio*, %struct.serio** %root.addr, align 8, !dbg !3862
  %cmp = icmp ne %struct.serio* %10, %11, !dbg !3863
  br i1 %cmp, label %while.body, label %while.end, !dbg !3860

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.serio** %parent, metadata !3864, metadata !DIExpression()), !dbg !3866
  %12 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3867
  %parent7 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 12, !dbg !3868
  %13 = load %struct.serio*, %struct.serio** %parent7, align 8, !dbg !3868
  store %struct.serio* %13, %struct.serio** %parent, align 8, !dbg !3866
  %14 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3869
  %child_node = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 13, !dbg !3871
  %15 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !3872
  %children8 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 14, !dbg !3873
  %call9 = call i32 @list_is_last(%struct.list_head* %child_node, %struct.list_head* %children8) #11, !dbg !3874
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3874
  br i1 %tobool10, label %if.end19, label %if.then11, !dbg !3875

if.then11:                                        ; preds = %while.body
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !3876, metadata !DIExpression()), !dbg !3879
  %16 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3879
  %child_node13 = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 13, !dbg !3879
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %child_node13, i32 0, i32 0, !dbg !3879
  %17 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !3879
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !3879
  store i8* %18, i8** %__mptr12, align 8, !dbg !3879
  br label %do.body15, !dbg !3879

do.body15:                                        ; preds = %if.then11
  br label %do.end16, !dbg !3880

do.end16:                                         ; preds = %do.body15
  %19 = load i8*, i8** %__mptr12, align 8, !dbg !3879
  %add.ptr18 = getelementptr i8, i8* %19, i64 -256, !dbg !3879
  %20 = bitcast i8* %add.ptr18 to %struct.serio*, !dbg !3879
  store %struct.serio* %20, %struct.serio** %tmp17, align 8, !dbg !3880
  %21 = load %struct.serio*, %struct.serio** %tmp17, align 8, !dbg !3879
  store %struct.serio* %21, %struct.serio** %s, align 8, !dbg !3882
  br label %while.end, !dbg !3883

if.end19:                                         ; preds = %while.body
  %22 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !3884
  store %struct.serio* %22, %struct.serio** %s, align 8, !dbg !3885
  br label %while.cond, !dbg !3860, !llvm.loop !3886

while.end:                                        ; preds = %do.end16, %while.cond
  br label %do.cond, !dbg !3888

do.cond:                                          ; preds = %while.end, %do.end
  %23 = load %struct.serio*, %struct.serio** %s, align 8, !dbg !3889
  %24 = load %struct.serio*, %struct.serio** %root.addr, align 8, !dbg !3890
  %cmp20 = icmp ne %struct.serio* %23, %24, !dbg !3891
  br i1 %cmp20, label %do.body, label %do.end21, !dbg !3888, !llvm.loop !3892

do.end21:                                         ; preds = %do.cond
  ret void, !dbg !3894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_remove_duplicate_events(i8* %object, i32 %type) #0 !dbg !3895 {
entry:
  %lock.addr.i47 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i47, metadata !2236, metadata !DIExpression()), !dbg !3898
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !3900
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !3901
  %object.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %e = alloca %struct.serio_event*, align 8
  %next = alloca %struct.serio_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.serio_event*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp26 = alloca %struct.serio_event*, align 8
  %__mptr40 = alloca i8*, align 8
  %tmp45 = alloca %struct.serio_event*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3908, metadata !DIExpression()), !dbg !3909
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.declare(metadata %struct.serio_event** %e, metadata !3912, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.declare(metadata %struct.serio_event** %next, metadata !3914, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3916, metadata !DIExpression()), !dbg !3917
  br label %do.body, !dbg !3918

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3919

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3923, metadata !DIExpression()), !dbg !3922
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3922
  %conv = zext i1 %cmp to i32, !dbg !3922
  store i32 1, i32* %tmp, align 4, !dbg !3922
  %0 = load i32, i32* %tmp, align 4, !dbg !3922
  br label %do.body2, !dbg !3924

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3925

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3926

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3932, metadata !DIExpression()), !dbg !3931
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3931
  %conv8 = zext i1 %cmp7 to i32, !dbg !3931
  store i32 1, i32* %tmp9, align 4, !dbg !3931
  %1 = load i32, i32* %tmp9, align 4, !dbg !3931
  %call = call i64 @arch_local_irq_save() #11, !dbg !3933
  store i64 %call, i64* %flags, align 8, !dbg !3933
  br label %do.end, !dbg !3933

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3926

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3925

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3934, !srcloc !3935
  br label %do.body12, !dbg !3934

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3936
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3937
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !3937
  br label %do.end14, !dbg !3938

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3934

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3925

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3924

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3919

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3939, metadata !DIExpression()), !dbg !3942
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_event_list, i32 0, i32 0), align 8, !dbg !3942
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3942
  store i8* %5, i8** %__mptr, align 8, !dbg !3942
  br label %do.body19, !dbg !3942

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3943

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3942
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !3942
  %7 = bitcast i8* %add.ptr to %struct.serio_event*, !dbg !3942
  store %struct.serio_event* %7, %struct.serio_event** %tmp21, align 8, !dbg !3943
  %8 = load %struct.serio_event*, %struct.serio_event** %tmp21, align 8, !dbg !3942
  store %struct.serio_event* %8, %struct.serio_event** %e, align 8, !dbg !3945
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !3946, metadata !DIExpression()), !dbg !3948
  %9 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3948
  %node = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 3, !dbg !3948
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3948
  %10 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !3948
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !3948
  store i8* %11, i8** %__mptr22, align 8, !dbg !3948
  br label %do.body24, !dbg !3948

do.body24:                                        ; preds = %do.end20
  br label %do.end25, !dbg !3949

do.end25:                                         ; preds = %do.body24
  %12 = load i8*, i8** %__mptr22, align 8, !dbg !3948
  %add.ptr27 = getelementptr i8, i8* %12, i64 -24, !dbg !3948
  %13 = bitcast i8* %add.ptr27 to %struct.serio_event*, !dbg !3948
  store %struct.serio_event* %13, %struct.serio_event** %tmp26, align 8, !dbg !3949
  %14 = load %struct.serio_event*, %struct.serio_event** %tmp26, align 8, !dbg !3948
  store %struct.serio_event* %14, %struct.serio_event** %next, align 8, !dbg !3945
  br label %for.cond, !dbg !3945

for.cond:                                         ; preds = %do.end44, %do.end25
  %15 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3951
  %node28 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %15, i32 0, i32 3, !dbg !3951
  %cmp29 = icmp eq %struct.list_head* %node28, @serio_event_list, !dbg !3951
  %lnot = xor i1 %cmp29, true, !dbg !3951
  br i1 %lnot, label %for.body, label %for.end, !dbg !3945

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %object.addr, align 8, !dbg !3953
  %17 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3956
  %object31 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %17, i32 0, i32 1, !dbg !3957
  %18 = load i8*, i8** %object31, align 8, !dbg !3957
  %cmp32 = icmp eq i8* %16, %18, !dbg !3958
  br i1 %cmp32, label %if.then, label %if.end39, !dbg !3959

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %type.addr, align 4, !dbg !3960
  %20 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3963
  %type34 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %20, i32 0, i32 0, !dbg !3964
  %21 = load i32, i32* %type34, align 8, !dbg !3964
  %cmp35 = icmp ne i32 %19, %21, !dbg !3965
  br i1 %cmp35, label %if.then37, label %if.end, !dbg !3966

if.then37:                                        ; preds = %if.then
  br label %for.end, !dbg !3967

if.end:                                           ; preds = %if.then
  %22 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3968
  %node38 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %22, i32 0, i32 3, !dbg !3969
  call void @list_del_init(%struct.list_head* %node38) #11, !dbg !3970
  %23 = load %struct.serio_event*, %struct.serio_event** %e, align 8, !dbg !3971
  call void @serio_free_event(%struct.serio_event* %23) #11, !dbg !3972
  br label %if.end39, !dbg !3973

if.end39:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3974

for.inc:                                          ; preds = %if.end39
  %24 = load %struct.serio_event*, %struct.serio_event** %next, align 8, !dbg !3951
  store %struct.serio_event* %24, %struct.serio_event** %e, align 8, !dbg !3951
  call void @llvm.dbg.declare(metadata i8** %__mptr40, metadata !3975, metadata !DIExpression()), !dbg !3977
  %25 = load %struct.serio_event*, %struct.serio_event** %next, align 8, !dbg !3977
  %node41 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %25, i32 0, i32 3, !dbg !3977
  %next42 = getelementptr inbounds %struct.list_head, %struct.list_head* %node41, i32 0, i32 0, !dbg !3977
  %26 = load %struct.list_head*, %struct.list_head** %next42, align 8, !dbg !3977
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !3977
  store i8* %27, i8** %__mptr40, align 8, !dbg !3977
  br label %do.body43, !dbg !3977

do.body43:                                        ; preds = %for.inc
  br label %do.end44, !dbg !3978

do.end44:                                         ; preds = %do.body43
  %28 = load i8*, i8** %__mptr40, align 8, !dbg !3977
  %add.ptr46 = getelementptr i8, i8* %28, i64 -24, !dbg !3977
  %29 = bitcast i8* %add.ptr46 to %struct.serio_event*, !dbg !3977
  store %struct.serio_event* %29, %struct.serio_event** %tmp45, align 8, !dbg !3978
  %30 = load %struct.serio_event*, %struct.serio_event** %tmp45, align 8, !dbg !3977
  store %struct.serio_event* %30, %struct.serio_event** %next, align 8, !dbg !3951
  br label %for.cond, !dbg !3951, !llvm.loop !3980

for.end:                                          ; preds = %if.then37, %for.cond
  %31 = load i64, i64* %flags, align 8, !dbg !3982
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i47, align 8
  store i64 %31, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !3983
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !3983
  store i32 1, i32* %tmp.i, align 4, !dbg !3983
  %32 = load i32, i32* %tmp.i, align 4, !dbg !3983
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !3984
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !3984
  store i32 1, i32* %tmp8.i, align 4, !dbg !3984
  %33 = load i32, i32* %tmp8.i, align 4, !dbg !3984
  %34 = load i64, i64* %flags.addr.i, align 8, !dbg !3985
  call void @arch_local_irq_restore(i64 %34) #13, !dbg !3985
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3986, !srcloc !2586
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i47, align 8, !dbg !3987
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !3987
  %rlock.i48 = bitcast %union.anon* %36 to %struct.raw_spinlock*, !dbg !3987
  ret void, !dbg !3988
}

; Function Attrs: noredzone
declare dso_local %struct.device_driver* @driver_find(i8*, %struct.bus_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_bind_driver(%struct.serio* %serio, %struct.serio_driver* %drv) #0 !dbg !3989 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca %struct.serio*, align 8
  %drv.addr = alloca %struct.serio_driver*, align 8
  %error = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3990, metadata !DIExpression()), !dbg !3991
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3994, metadata !DIExpression()), !dbg !3995
  %0 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !3996
  %id_table = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %0, i32 0, i32 1, !dbg !3998
  %1 = load %struct.serio_device_id*, %struct.serio_device_id** %id_table, align 8, !dbg !3998
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3999
  %call = call i32 @serio_match_port(%struct.serio_device_id* %1, %struct.serio* %2) #11, !dbg !4000
  %tobool = icmp ne i32 %call, 0, !dbg !4000
  br i1 %tobool, label %if.then, label %if.end16, !dbg !4001

if.then:                                          ; preds = %entry
  %3 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4002
  %driver = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %3, i32 0, i32 10, !dbg !4004
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4005
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 18, !dbg !4006
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !4007
  store %struct.device_driver* %driver, %struct.device_driver** %driver1, align 8, !dbg !4008
  %5 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4009
  %6 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4011
  %call2 = call i32 @serio_connect_driver(%struct.serio* %5, %struct.serio_driver* %6) #11, !dbg !4012
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4012
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4013

if.then4:                                         ; preds = %if.then
  %7 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4014
  %dev5 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 18, !dbg !4016
  %driver6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 6, !dbg !4017
  store %struct.device_driver* null, %struct.device_driver** %driver6, align 8, !dbg !4018
  store i32 -19, i32* %retval, align 4, !dbg !4019
  br label %return, !dbg !4019

if.end:                                           ; preds = %if.then
  %8 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4020
  %dev7 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 18, !dbg !4021
  %call8 = call i32 @device_bind_driver(%struct.device* %dev7) #11, !dbg !4022
  store i32 %call8, i32* %error, align 4, !dbg !4023
  %9 = load i32, i32* %error, align 4, !dbg !4024
  %tobool9 = icmp ne i32 %9, 0, !dbg !4024
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !4026

if.then10:                                        ; preds = %if.end
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4027
  %dev11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 18, !dbg !4027
  %11 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4027
  %phys = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 2, !dbg !4027
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4027
  %12 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4027
  %name = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 1, !dbg !4027
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4027
  %13 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4027
  %description = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %13, i32 0, i32 0, !dbg !4027
  %14 = load i8*, i8** %description, align 8, !dbg !4027
  %15 = load i32, i32* %error, align 4, !dbg !4027
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay12, i8* %14, i32 %15) #14, !dbg !4027
  %16 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4029
  call void @serio_disconnect_driver(%struct.serio* %16) #11, !dbg !4030
  %17 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4031
  %dev13 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 18, !dbg !4032
  %driver14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 6, !dbg !4033
  store %struct.device_driver* null, %struct.device_driver** %driver14, align 8, !dbg !4034
  %18 = load i32, i32* %error, align 4, !dbg !4035
  store i32 %18, i32* %retval, align 4, !dbg !4036
  br label %return, !dbg !4036

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !4037

if.end16:                                         ; preds = %if.end15, %entry
  store i32 0, i32* %retval, align 4, !dbg !4038
  br label %return, !dbg !4038

return:                                           ; preds = %if.end16, %if.then10, %if.then4
  %19 = load i32, i32* %retval, align 4, !dbg !4039
  ret i32 %19, !dbg !4039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_reconnect_port(%struct.serio* %serio) #0 !dbg !4040 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4043, metadata !DIExpression()), !dbg !4044
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4045
  %call = call i32 @serio_reconnect_driver(%struct.serio* %0) #11, !dbg !4046
  store i32 %call, i32* %error, align 4, !dbg !4044
  %1 = load i32, i32* %error, align 4, !dbg !4047
  %tobool = icmp ne i32 %1, 0, !dbg !4047
  br i1 %tobool, label %if.then, label %if.end, !dbg !4049

if.then:                                          ; preds = %entry
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4050
  call void @serio_disconnect_port(%struct.serio* %2) #11, !dbg !4052
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4053
  call void @serio_find_driver(%struct.serio* %3) #11, !dbg !4054
  br label %if.end, !dbg !4055

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %error, align 4, !dbg !4056
  ret i32 %4, !dbg !4057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4058 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4063, metadata !DIExpression()), !dbg !4064
  br label %do.body, !dbg !4065

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4067

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4065
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4065
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4065
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4067
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4065
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4069
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4070
  %conv = zext i1 %cmp to i32, !dbg !4070
  ret i32 %conv, !dbg !4071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_is_last(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !4072 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4075, metadata !DIExpression()), !dbg !4076
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4077, metadata !DIExpression()), !dbg !4078
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4079
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4080
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4080
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4081
  %cmp = icmp eq %struct.list_head* %1, %2, !dbg !4082
  %conv = zext i1 %cmp to i32, !dbg !4082
  ret i32 %conv, !dbg !4083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_reconnect_driver(%struct.serio* %serio) #0 !dbg !4084 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %retval1 = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4087, metadata !DIExpression()), !dbg !4088
  store i32 -1, i32* %retval1, align 4, !dbg !4088
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4089
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 17, !dbg !4090
  call void @mutex_lock(%struct.mutex* %drv_mutex) #11, !dbg !4091
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4092
  %drv = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 16, !dbg !4094
  %2 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !4094
  %tobool = icmp ne %struct.serio_driver* %2, null, !dbg !4092
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4095

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4096
  %drv2 = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 16, !dbg !4097
  %4 = load %struct.serio_driver*, %struct.serio_driver** %drv2, align 8, !dbg !4097
  %reconnect = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %4, i32 0, i32 6, !dbg !4098
  %5 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %reconnect, align 8, !dbg !4098
  %tobool3 = icmp ne i32 (%struct.serio*)* %5, null, !dbg !4096
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4099

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4100
  %drv4 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 16, !dbg !4101
  %7 = load %struct.serio_driver*, %struct.serio_driver** %drv4, align 8, !dbg !4101
  %reconnect5 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %7, i32 0, i32 6, !dbg !4102
  %8 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %reconnect5, align 8, !dbg !4102
  %9 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4103
  %call = call i32 %8(%struct.serio* %9) #11, !dbg !4100
  store i32 %call, i32* %retval1, align 4, !dbg !4104
  br label %if.end, !dbg !4105

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4106
  %drv_mutex6 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 17, !dbg !4107
  call void @mutex_unlock(%struct.mutex* %drv_mutex6) #11, !dbg !4108
  %11 = load i32, i32* %retval1, align 4, !dbg !4109
  ret i32 %11, !dbg !4110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !4111 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4114
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !4115
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4116
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #11, !dbg !4117
  ret void, !dbg !4118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_free_event(%struct.serio_event* %event) #0 !dbg !4119 {
entry:
  %event.addr = alloca %struct.serio_event*, align 8
  store %struct.serio_event* %event, %struct.serio_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event.addr, metadata !4122, metadata !DIExpression()), !dbg !4123
  %0 = load %struct.serio_event*, %struct.serio_event** %event.addr, align 8, !dbg !4124
  %owner = getelementptr inbounds %struct.serio_event, %struct.serio_event* %0, i32 0, i32 2, !dbg !4125
  %1 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4125
  call void @module_put(%struct.module* %1) #11, !dbg !4126
  %2 = load %struct.serio_event*, %struct.serio_event** %event.addr, align 8, !dbg !4127
  %3 = bitcast %struct.serio_event* %2 to i8*, !dbg !4127
  call void @kfree(i8* %3) #11, !dbg !4128
  ret void, !dbg !4129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4130 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4131, metadata !DIExpression()), !dbg !4132
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4133
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !4135
  br i1 %call, label %if.end, label %if.then, !dbg !4136

if.then:                                          ; preds = %entry
  br label %return, !dbg !4137

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4138
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4139
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4139
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4140
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4141
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4141
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !4142
  br label %return, !dbg !4143

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4144 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  ret i1 true, !dbg !4149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4150 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4151, metadata !DIExpression()), !dbg !4152
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4153, metadata !DIExpression()), !dbg !4154
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4155
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4156
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4157
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4158
  br label %do.body, !dbg !4159

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4160

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4162

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4160

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4164
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4164
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4164
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4164
  br label %do.end5, !dbg !4164

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4160

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_match_port(%struct.serio_device_id* %ids, %struct.serio* %serio) #0 !dbg !4167 {
entry:
  %retval = alloca i32, align 4
  %ids.addr = alloca %struct.serio_device_id*, align 8
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio_device_id* %ids, %struct.serio_device_id** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_device_id** %ids.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4172, metadata !DIExpression()), !dbg !4173
  br label %while.cond, !dbg !4174

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4175
  %type = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %0, i32 0, i32 0, !dbg !4176
  %1 = load i8, i8* %type, align 1, !dbg !4176
  %conv = zext i8 %1 to i32, !dbg !4175
  %tobool = icmp ne i32 %conv, 0, !dbg !4175
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4177

lor.rhs:                                          ; preds = %while.cond
  %2 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4178
  %proto = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %2, i32 0, i32 3, !dbg !4179
  %3 = load i8, i8* %proto, align 1, !dbg !4179
  %conv1 = zext i8 %3 to i32, !dbg !4178
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !4177
  br label %lor.end, !dbg !4177

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !4174

while.body:                                       ; preds = %lor.end
  %5 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4180
  %type3 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %5, i32 0, i32 0, !dbg !4183
  %6 = load i8, i8* %type3, align 1, !dbg !4183
  %conv4 = zext i8 %6 to i32, !dbg !4180
  %cmp = icmp eq i32 %conv4, 255, !dbg !4184
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4185

lor.lhs.false:                                    ; preds = %while.body
  %7 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4186
  %type6 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %7, i32 0, i32 0, !dbg !4187
  %8 = load i8, i8* %type6, align 1, !dbg !4187
  %conv7 = zext i8 %8 to i32, !dbg !4186
  %9 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4188
  %id = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 5, !dbg !4189
  %type8 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id, i32 0, i32 0, !dbg !4190
  %10 = load i8, i8* %type8, align 1, !dbg !4190
  %conv9 = zext i8 %10 to i32, !dbg !4188
  %cmp10 = icmp eq i32 %conv7, %conv9, !dbg !4191
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !4192

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body
  %11 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4193
  %proto12 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %11, i32 0, i32 3, !dbg !4194
  %12 = load i8, i8* %proto12, align 1, !dbg !4194
  %conv13 = zext i8 %12 to i32, !dbg !4193
  %cmp14 = icmp eq i32 %conv13, 255, !dbg !4195
  br i1 %cmp14, label %land.lhs.true24, label %lor.lhs.false16, !dbg !4196

lor.lhs.false16:                                  ; preds = %land.lhs.true
  %13 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4197
  %proto17 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %13, i32 0, i32 3, !dbg !4198
  %14 = load i8, i8* %proto17, align 1, !dbg !4198
  %conv18 = zext i8 %14 to i32, !dbg !4197
  %15 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4199
  %id19 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 5, !dbg !4200
  %proto20 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id19, i32 0, i32 3, !dbg !4201
  %16 = load i8, i8* %proto20, align 1, !dbg !4201
  %conv21 = zext i8 %16 to i32, !dbg !4199
  %cmp22 = icmp eq i32 %conv18, %conv21, !dbg !4202
  br i1 %cmp22, label %land.lhs.true24, label %if.end, !dbg !4203

land.lhs.true24:                                  ; preds = %lor.lhs.false16, %land.lhs.true
  %17 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4204
  %extra = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %17, i32 0, i32 1, !dbg !4205
  %18 = load i8, i8* %extra, align 1, !dbg !4205
  %conv25 = zext i8 %18 to i32, !dbg !4204
  %cmp26 = icmp eq i32 %conv25, 255, !dbg !4206
  br i1 %cmp26, label %land.lhs.true36, label %lor.lhs.false28, !dbg !4207

lor.lhs.false28:                                  ; preds = %land.lhs.true24
  %19 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4208
  %extra29 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %19, i32 0, i32 1, !dbg !4209
  %20 = load i8, i8* %extra29, align 1, !dbg !4209
  %conv30 = zext i8 %20 to i32, !dbg !4208
  %21 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4210
  %id31 = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 5, !dbg !4211
  %extra32 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id31, i32 0, i32 1, !dbg !4212
  %22 = load i8, i8* %extra32, align 1, !dbg !4212
  %conv33 = zext i8 %22 to i32, !dbg !4210
  %cmp34 = icmp eq i32 %conv30, %conv33, !dbg !4213
  br i1 %cmp34, label %land.lhs.true36, label %if.end, !dbg !4214

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %land.lhs.true24
  %23 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4215
  %id37 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %23, i32 0, i32 2, !dbg !4216
  %24 = load i8, i8* %id37, align 1, !dbg !4216
  %conv38 = zext i8 %24 to i32, !dbg !4215
  %cmp39 = icmp eq i32 %conv38, 255, !dbg !4217
  br i1 %cmp39, label %if.then, label %lor.lhs.false41, !dbg !4218

lor.lhs.false41:                                  ; preds = %land.lhs.true36
  %25 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4219
  %id42 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %25, i32 0, i32 2, !dbg !4220
  %26 = load i8, i8* %id42, align 1, !dbg !4220
  %conv43 = zext i8 %26 to i32, !dbg !4219
  %27 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4221
  %id44 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 5, !dbg !4222
  %id45 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %id44, i32 0, i32 2, !dbg !4223
  %28 = load i8, i8* %id45, align 1, !dbg !4223
  %conv46 = zext i8 %28 to i32, !dbg !4221
  %cmp47 = icmp eq i32 %conv43, %conv46, !dbg !4224
  br i1 %cmp47, label %if.then, label %if.end, !dbg !4225

if.then:                                          ; preds = %lor.lhs.false41, %land.lhs.true36
  store i32 1, i32* %retval, align 4, !dbg !4226
  br label %return, !dbg !4226

if.end:                                           ; preds = %lor.lhs.false41, %lor.lhs.false28, %lor.lhs.false16, %lor.lhs.false
  %29 = load %struct.serio_device_id*, %struct.serio_device_id** %ids.addr, align 8, !dbg !4227
  %incdec.ptr = getelementptr %struct.serio_device_id, %struct.serio_device_id* %29, i32 1, !dbg !4227
  store %struct.serio_device_id* %incdec.ptr, %struct.serio_device_id** %ids.addr, align 8, !dbg !4227
  br label %while.cond, !dbg !4174, !llvm.loop !4228

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

return:                                           ; preds = %while.end, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !4231
  ret i32 %30, !dbg !4231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_connect_driver(%struct.serio* %serio, %struct.serio_driver* %drv) #0 !dbg !4232 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %drv.addr = alloca %struct.serio_driver*, align 8
  %retval1 = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4233, metadata !DIExpression()), !dbg !4234
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4237, metadata !DIExpression()), !dbg !4238
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4239
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 17, !dbg !4240
  call void @mutex_lock(%struct.mutex* %drv_mutex) #11, !dbg !4241
  %1 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4242
  %connect = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %1, i32 0, i32 5, !dbg !4243
  %2 = load i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*, %struct.serio_driver*)** %connect, align 8, !dbg !4243
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4244
  %4 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4245
  %call = call i32 %2(%struct.serio* %3, %struct.serio_driver* %4) #11, !dbg !4242
  store i32 %call, i32* %retval1, align 4, !dbg !4246
  %5 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4247
  %drv_mutex2 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 17, !dbg !4248
  call void @mutex_unlock(%struct.mutex* %drv_mutex2) #11, !dbg !4249
  %6 = load i32, i32* %retval1, align 4, !dbg !4250
  ret i32 %6, !dbg !4251
}

; Function Attrs: noredzone
declare dso_local i32 @device_bind_driver(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_disconnect_driver(%struct.serio* %serio) #0 !dbg !4252 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4255
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 17, !dbg !4256
  call void @mutex_lock(%struct.mutex* %drv_mutex) #11, !dbg !4257
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4258
  %drv = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 16, !dbg !4260
  %2 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !4260
  %tobool = icmp ne %struct.serio_driver* %2, null, !dbg !4258
  br i1 %tobool, label %if.then, label %if.end, !dbg !4261

if.then:                                          ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4262
  %drv1 = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 16, !dbg !4263
  %4 = load %struct.serio_driver*, %struct.serio_driver** %drv1, align 8, !dbg !4263
  %disconnect = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %4, i32 0, i32 8, !dbg !4264
  %disconnect2 = bitcast {}** %disconnect to void (%struct.serio*)**, !dbg !4264
  %5 = load void (%struct.serio*)*, void (%struct.serio*)** %disconnect2, align 8, !dbg !4264
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4265
  call void %5(%struct.serio* %6) #11, !dbg !4262
  br label %if.end, !dbg !4262

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4266
  %drv_mutex3 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 17, !dbg !4267
  call void @mutex_unlock(%struct.mutex* %drv_mutex3) #11, !dbg !4268
  ret void, !dbg !4269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @serio_show_bind_mode(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4270 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4277, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4279, metadata !DIExpression()), !dbg !4281
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4281
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4281
  store i8* %1, i8** %__mptr, align 8, !dbg !4281
  br label %do.body, !dbg !4281

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4282

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4281
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !4281
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !4281
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !4282
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !4281
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !4278
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4284
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4285
  %manual_bind = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 4, !dbg !4286
  %7 = load i8, i8* %manual_bind, align 8, !dbg !4286
  %tobool = trunc i8 %7 to i1, !dbg !4286
  %8 = zext i1 %tobool to i64, !dbg !4285
  %cond = select i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), !dbg !4285
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %cond) #11, !dbg !4287
  %conv = sext i32 %call to i64, !dbg !4287
  ret i64 %conv, !dbg !4288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @serio_set_bind_mode(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !4289 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4300, metadata !DIExpression()), !dbg !4302
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4302
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4302
  store i8* %1, i8** %__mptr, align 8, !dbg !4302
  br label %do.body, !dbg !4302

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4303

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4302
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !4302
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !4302
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !4303
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !4302
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !4299
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4305, metadata !DIExpression()), !dbg !4306
  %5 = load i64, i64* %count.addr, align 8, !dbg !4307
  %conv = trunc i64 %5 to i32, !dbg !4307
  store i32 %conv, i32* %retval1, align 4, !dbg !4308
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !4309
  %7 = load i64, i64* %count.addr, align 8, !dbg !4311
  %call = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i64 %7) #11, !dbg !4312
  %tobool = icmp ne i32 %call, 0, !dbg !4312
  br i1 %tobool, label %if.else, label %if.then, !dbg !4313

if.then:                                          ; preds = %do.end
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4314
  %manual_bind = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 4, !dbg !4316
  store i8 1, i8* %manual_bind, align 8, !dbg !4317
  br label %if.end7, !dbg !4318

if.else:                                          ; preds = %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4319
  %10 = load i64, i64* %count.addr, align 8, !dbg !4321
  %call2 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %10) #11, !dbg !4322
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4322
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !4323

if.then4:                                         ; preds = %if.else
  %11 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4324
  %manual_bind5 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 4, !dbg !4326
  store i8 0, i8* %manual_bind5, align 8, !dbg !4327
  br label %if.end, !dbg !4328

if.else6:                                         ; preds = %if.else
  store i32 -22, i32* %retval1, align 4, !dbg !4329
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval1, align 4, !dbg !4331
  %conv8 = sext i32 %12 to i64, !dbg !4331
  ret i64 %conv8, !dbg !4332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @firmware_id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4333 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4342, metadata !DIExpression()), !dbg !4344
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4344
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4344
  store i8* %1, i8** %__mptr, align 8, !dbg !4344
  br label %do.body, !dbg !4344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4345

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4344
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !4344
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !4344
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !4345
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !4344
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !4341
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4347
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4348
  %firmware_id = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 3, !dbg !4349
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %firmware_id, i64 0, i64 0, !dbg !4348
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %arraydecay) #11, !dbg !4350
  %conv = sext i32 %call to i64, !dbg !4350
  ret i64 %conv, !dbg !4351
}

; Function Attrs: noredzone
declare dso_local void @device_release_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.serio* @serio_get_pending_child(%struct.serio* %parent) #0 !dbg !4352 {
entry:
  %lock.addr.i37 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i37, metadata !2236, metadata !DIExpression()), !dbg !4355
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !4357
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !4358
  %parent.addr = alloca %struct.serio*, align 8
  %event = alloca %struct.serio_event*, align 8
  %serio = alloca %struct.serio*, align 8
  %child = alloca %struct.serio*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.serio_event*, align 8
  %__mptr31 = alloca i8*, align 8
  %tmp35 = alloca %struct.serio_event*, align 8
  store %struct.serio* %parent, %struct.serio** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %parent.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.declare(metadata %struct.serio** %child, metadata !4371, metadata !DIExpression()), !dbg !4372
  store %struct.serio* null, %struct.serio** %child, align 8, !dbg !4372
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4373, metadata !DIExpression()), !dbg !4374
  br label %do.body, !dbg !4375

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4376

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4377, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4380, metadata !DIExpression()), !dbg !4379
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4379
  %conv = zext i1 %cmp to i32, !dbg !4379
  store i32 1, i32* %tmp, align 4, !dbg !4379
  %0 = load i32, i32* %tmp, align 4, !dbg !4379
  br label %do.body2, !dbg !4381

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4382

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4383

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4389, metadata !DIExpression()), !dbg !4388
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4388
  %conv8 = zext i1 %cmp7 to i32, !dbg !4388
  store i32 1, i32* %tmp9, align 4, !dbg !4388
  %1 = load i32, i32* %tmp9, align 4, !dbg !4388
  %call = call i64 @arch_local_irq_save() #11, !dbg !4390
  store i64 %call, i64* %flags, align 8, !dbg !4390
  br label %do.end, !dbg !4390

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4383

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4382

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4391, !srcloc !4392
  br label %do.body12, !dbg !4391

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4393
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4394
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !4394
  br label %do.end14, !dbg !4395

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4391

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4382

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4381

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4376

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4396, metadata !DIExpression()), !dbg !4399
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_event_list, i32 0, i32 0), align 8, !dbg !4399
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4399
  store i8* %5, i8** %__mptr, align 8, !dbg !4399
  br label %do.body19, !dbg !4399

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4400

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4399
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !4399
  %7 = bitcast i8* %add.ptr to %struct.serio_event*, !dbg !4399
  store %struct.serio_event* %7, %struct.serio_event** %tmp21, align 8, !dbg !4400
  %8 = load %struct.serio_event*, %struct.serio_event** %tmp21, align 8, !dbg !4399
  store %struct.serio_event* %8, %struct.serio_event** %event, align 8, !dbg !4402
  br label %for.cond, !dbg !4402

for.cond:                                         ; preds = %do.end34, %do.end20
  %9 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4403
  %node = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 3, !dbg !4403
  %cmp22 = icmp eq %struct.list_head* %node, @serio_event_list, !dbg !4403
  %lnot = xor i1 %cmp22, true, !dbg !4403
  br i1 %lnot, label %for.body, label %for.end, !dbg !4402

for.body:                                         ; preds = %for.cond
  %10 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4405
  %type = getelementptr inbounds %struct.serio_event, %struct.serio_event* %10, i32 0, i32 0, !dbg !4408
  %11 = load i32, i32* %type, align 8, !dbg !4408
  %cmp24 = icmp eq i32 %11, 3, !dbg !4409
  br i1 %cmp24, label %if.then, label %if.end30, !dbg !4410

if.then:                                          ; preds = %for.body
  %12 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4411
  %object = getelementptr inbounds %struct.serio_event, %struct.serio_event* %12, i32 0, i32 1, !dbg !4413
  %13 = load i8*, i8** %object, align 8, !dbg !4413
  %14 = bitcast i8* %13 to %struct.serio*, !dbg !4411
  store %struct.serio* %14, %struct.serio** %serio, align 8, !dbg !4414
  %15 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4415
  %parent26 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 12, !dbg !4417
  %16 = load %struct.serio*, %struct.serio** %parent26, align 8, !dbg !4417
  %17 = load %struct.serio*, %struct.serio** %parent.addr, align 8, !dbg !4418
  %cmp27 = icmp eq %struct.serio* %16, %17, !dbg !4419
  br i1 %cmp27, label %if.then29, label %if.end, !dbg !4420

if.then29:                                        ; preds = %if.then
  %18 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4421
  store %struct.serio* %18, %struct.serio** %child, align 8, !dbg !4423
  br label %for.end, !dbg !4424

if.end:                                           ; preds = %if.then
  br label %if.end30, !dbg !4425

if.end30:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !4426

for.inc:                                          ; preds = %if.end30
  call void @llvm.dbg.declare(metadata i8** %__mptr31, metadata !4427, metadata !DIExpression()), !dbg !4429
  %19 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4429
  %node32 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %19, i32 0, i32 3, !dbg !4429
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node32, i32 0, i32 0, !dbg !4429
  %20 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4429
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !4429
  store i8* %21, i8** %__mptr31, align 8, !dbg !4429
  br label %do.body33, !dbg !4429

do.body33:                                        ; preds = %for.inc
  br label %do.end34, !dbg !4430

do.end34:                                         ; preds = %do.body33
  %22 = load i8*, i8** %__mptr31, align 8, !dbg !4429
  %add.ptr36 = getelementptr i8, i8* %22, i64 -24, !dbg !4429
  %23 = bitcast i8* %add.ptr36 to %struct.serio_event*, !dbg !4429
  store %struct.serio_event* %23, %struct.serio_event** %tmp35, align 8, !dbg !4430
  %24 = load %struct.serio_event*, %struct.serio_event** %tmp35, align 8, !dbg !4429
  store %struct.serio_event* %24, %struct.serio_event** %event, align 8, !dbg !4403
  br label %for.cond, !dbg !4403, !llvm.loop !4432

for.end:                                          ; preds = %if.then29, %for.cond
  %25 = load i64, i64* %flags, align 8, !dbg !4434
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i37, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !4435
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !4435
  store i32 1, i32* %tmp.i, align 4, !dbg !4435
  %26 = load i32, i32* %tmp.i, align 4, !dbg !4435
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !4436
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !4436
  store i32 1, i32* %tmp8.i, align 4, !dbg !4436
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !4436
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !4437
  call void @arch_local_irq_restore(i64 %28) #13, !dbg !4437
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4438, !srcloc !2586
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i37, align 8, !dbg !4439
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !4439
  %rlock.i38 = bitcast %union.anon* %30 to %struct.raw_spinlock*, !dbg !4439
  %31 = load %struct.serio*, %struct.serio** %child, align 8, !dbg !4440
  ret %struct.serio* %31, !dbg !4441
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_pause_rx(%struct.serio* %serio) #0 !dbg !4442 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4443, metadata !DIExpression()), !dbg !4447
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4451
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !4452
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #13, !dbg !4453
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4456, !srcloc !4458
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4459
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !4459
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !4459
  ret void, !dbg !4461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_continue_rx(%struct.serio* %serio) #0 !dbg !4462 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4463, metadata !DIExpression()), !dbg !4465
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4469
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !4470
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #13, !dbg !4471
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4474, !srcloc !4476
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4477
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !4477
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !4477
  ret void, !dbg !4479
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4480 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4481, metadata !DIExpression()), !dbg !4483
  %0 = load i64, i64* %__edi, align 8, !dbg !4483
  store i64 %0, i64* %__edi, align 8, !dbg !4483
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4484, metadata !DIExpression()), !dbg !4483
  %1 = load i64, i64* %__esi, align 8, !dbg !4483
  store i64 %1, i64* %__esi, align 8, !dbg !4483
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4485, metadata !DIExpression()), !dbg !4483
  %2 = load i64, i64* %__edx, align 8, !dbg !4483
  store i64 %2, i64* %__edx, align 8, !dbg !4483
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4486, metadata !DIExpression()), !dbg !4483
  %3 = load i64, i64* %__ecx, align 8, !dbg !4483
  store i64 %3, i64* %__ecx, align 8, !dbg !4483
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4487, metadata !DIExpression()), !dbg !4483
  %4 = load i64, i64* %__eax, align 8, !dbg !4483
  store i64 %4, i64* %__eax, align 8, !dbg !4483
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4483
  %6 = call i64 @llvm.read_register.i64(metadata !2166), !dbg !4483
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !4483, !srcloc !4488
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4483
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4483
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4483
  call void @llvm.write_register.i64(metadata !2166, i64 %asmresult1), !dbg !4483
  ret void, !dbg !4489
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4490 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4491, metadata !DIExpression()), !dbg !4493
  %0 = load i64, i64* %__edi, align 8, !dbg !4493
  store i64 %0, i64* %__edi, align 8, !dbg !4493
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4494, metadata !DIExpression()), !dbg !4493
  %1 = load i64, i64* %__esi, align 8, !dbg !4493
  store i64 %1, i64* %__esi, align 8, !dbg !4493
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4495, metadata !DIExpression()), !dbg !4493
  %2 = load i64, i64* %__edx, align 8, !dbg !4493
  store i64 %2, i64* %__edx, align 8, !dbg !4493
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4496, metadata !DIExpression()), !dbg !4493
  %3 = load i64, i64* %__ecx, align 8, !dbg !4493
  store i64 %3, i64* %__ecx, align 8, !dbg !4493
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4497, metadata !DIExpression()), !dbg !4493
  %4 = load i64, i64* %__eax, align 8, !dbg !4493
  store i64 %4, i64* %__eax, align 8, !dbg !4493
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4493
  %6 = call i64 @llvm.read_register.i64(metadata !2166), !dbg !4493
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #10, !dbg !4493, !srcloc !4498
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4493
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4493
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4493
  call void @llvm.write_register.i64(metadata !2166, i64 %asmresult1), !dbg !4493
  ret void, !dbg !4499
}

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4500 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4501, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4504, metadata !DIExpression()), !dbg !4503
  %0 = load i64, i64* %__edi, align 8, !dbg !4503
  store i64 %0, i64* %__edi, align 8, !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4505, metadata !DIExpression()), !dbg !4503
  %1 = load i64, i64* %__esi, align 8, !dbg !4503
  store i64 %1, i64* %__esi, align 8, !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4506, metadata !DIExpression()), !dbg !4503
  %2 = load i64, i64* %__edx, align 8, !dbg !4503
  store i64 %2, i64* %__edx, align 8, !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4507, metadata !DIExpression()), !dbg !4503
  %3 = load i64, i64* %__ecx, align 8, !dbg !4503
  store i64 %3, i64* %__ecx, align 8, !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4508, metadata !DIExpression()), !dbg !4503
  %4 = load i64, i64* %__eax, align 8, !dbg !4503
  store i64 %4, i64* %__eax, align 8, !dbg !4503
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4503
  %6 = call i64 @llvm.read_register.i64(metadata !2166), !dbg !4509
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !4509, !srcloc !4512
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4509
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4509
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4509
  call void @llvm.write_register.i64(metadata !2166, i64 %asmresult1), !dbg !4509
  %8 = load i64, i64* %__eax, align 8, !dbg !4509
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4513, metadata !DIExpression()), !dbg !4515
  store i64 -1, i64* %__mask, align 8, !dbg !4515
  %9 = load i64, i64* %__mask, align 8, !dbg !4515
  store i64 %9, i64* %tmp, align 8, !dbg !4515
  %10 = load i64, i64* %tmp, align 8, !dbg !4515
  %and = and i64 %8, %10, !dbg !4509
  store i64 %and, i64* %__ret, align 8, !dbg !4509
  %11 = load i64, i64* %__ret, align 8, !dbg !4503
  store i64 %11, i64* %tmp2, align 8, !dbg !4516
  %12 = load i64, i64* %tmp2, align 8, !dbg !4503
  ret i64 %12, !dbg !4517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4518 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4523, metadata !DIExpression()), !dbg !4525
  %0 = load i64, i64* %__edi, align 8, !dbg !4525
  store i64 %0, i64* %__edi, align 8, !dbg !4525
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4526, metadata !DIExpression()), !dbg !4525
  %1 = load i64, i64* %__esi, align 8, !dbg !4525
  store i64 %1, i64* %__esi, align 8, !dbg !4525
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4527, metadata !DIExpression()), !dbg !4525
  %2 = load i64, i64* %__edx, align 8, !dbg !4525
  store i64 %2, i64* %__edx, align 8, !dbg !4525
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4528, metadata !DIExpression()), !dbg !4525
  %3 = load i64, i64* %__ecx, align 8, !dbg !4525
  store i64 %3, i64* %__ecx, align 8, !dbg !4525
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4529, metadata !DIExpression()), !dbg !4525
  %4 = load i64, i64* %__eax, align 8, !dbg !4525
  store i64 %4, i64* %__eax, align 8, !dbg !4525
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4525
  %6 = call i64 @llvm.read_register.i64(metadata !2166), !dbg !4525
  %7 = load i64, i64* %f.addr, align 8, !dbg !4525
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !4525, !srcloc !4530
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4525
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4525
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4525
  call void @llvm.write_register.i64(metadata !2166, i64 %asmresult1), !dbg !4525
  ret void, !dbg !4531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @description_show(%struct.device_driver* %drv, i8* %buf) #0 !dbg !4532 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %driver = alloca %struct.serio_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4533, metadata !DIExpression()), !dbg !4534
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %driver, metadata !4537, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4539, metadata !DIExpression()), !dbg !4541
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4541
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4541
  store i8* %1, i8** %__mptr, align 8, !dbg !4541
  br label %do.body, !dbg !4541

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4542

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4541
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !4541
  %3 = bitcast i8* %add.ptr to %struct.serio_driver*, !dbg !4541
  store %struct.serio_driver* %3, %struct.serio_driver** %tmp, align 8, !dbg !4542
  %4 = load %struct.serio_driver*, %struct.serio_driver** %tmp, align 8, !dbg !4541
  store %struct.serio_driver* %4, %struct.serio_driver** %driver, align 8, !dbg !4538
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4544
  %6 = load %struct.serio_driver*, %struct.serio_driver** %driver, align 8, !dbg !4545
  %description = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %6, i32 0, i32 0, !dbg !4546
  %7 = load i8*, i8** %description, align 8, !dbg !4546
  %tobool = icmp ne i8* %7, null, !dbg !4545
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4545

cond.true:                                        ; preds = %do.end
  %8 = load %struct.serio_driver*, %struct.serio_driver** %driver, align 8, !dbg !4547
  %description1 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %8, i32 0, i32 0, !dbg !4548
  %9 = load i8*, i8** %description1, align 8, !dbg !4548
  br label %cond.end, !dbg !4545

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4545

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), %cond.false ], !dbg !4545
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %cond) #11, !dbg !4549
  %conv = sext i32 %call to i64, !dbg !4549
  ret i64 %conv, !dbg !4550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bind_mode_show(%struct.device_driver* %drv, i8* %buf) #0 !dbg !4551 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %serio_drv = alloca %struct.serio_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %serio_drv, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4558, metadata !DIExpression()), !dbg !4560
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4560
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4560
  store i8* %1, i8** %__mptr, align 8, !dbg !4560
  br label %do.body, !dbg !4560

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4561

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4560
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !4560
  %3 = bitcast i8* %add.ptr to %struct.serio_driver*, !dbg !4560
  store %struct.serio_driver* %3, %struct.serio_driver** %tmp, align 8, !dbg !4561
  %4 = load %struct.serio_driver*, %struct.serio_driver** %tmp, align 8, !dbg !4560
  store %struct.serio_driver* %4, %struct.serio_driver** %serio_drv, align 8, !dbg !4557
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4563
  %6 = load %struct.serio_driver*, %struct.serio_driver** %serio_drv, align 8, !dbg !4564
  %manual_bind = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %6, i32 0, i32 2, !dbg !4565
  %7 = load i8, i8* %manual_bind, align 8, !dbg !4565
  %tobool = trunc i8 %7 to i1, !dbg !4565
  %8 = zext i1 %tobool to i64, !dbg !4564
  %cond = select i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), !dbg !4564
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %cond) #11, !dbg !4566
  %conv = sext i32 %call to i64, !dbg !4566
  ret i64 %conv, !dbg !4567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bind_mode_store(%struct.device_driver* %drv, i8* %buf, i64 %count) #0 !dbg !4568 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %serio_drv = alloca %struct.serio_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio_driver*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %serio_drv, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4577, metadata !DIExpression()), !dbg !4579
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4579
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4579
  store i8* %1, i8** %__mptr, align 8, !dbg !4579
  br label %do.body, !dbg !4579

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4580

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4579
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !4579
  %3 = bitcast i8* %add.ptr to %struct.serio_driver*, !dbg !4579
  store %struct.serio_driver* %3, %struct.serio_driver** %tmp, align 8, !dbg !4580
  %4 = load %struct.serio_driver*, %struct.serio_driver** %tmp, align 8, !dbg !4579
  store %struct.serio_driver* %4, %struct.serio_driver** %serio_drv, align 8, !dbg !4576
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4582, metadata !DIExpression()), !dbg !4583
  %5 = load i64, i64* %count.addr, align 8, !dbg !4584
  %conv = trunc i64 %5 to i32, !dbg !4584
  store i32 %conv, i32* %retval1, align 4, !dbg !4585
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !4586
  %7 = load i64, i64* %count.addr, align 8, !dbg !4588
  %call = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i64 %7) #11, !dbg !4589
  %tobool = icmp ne i32 %call, 0, !dbg !4589
  br i1 %tobool, label %if.else, label %if.then, !dbg !4590

if.then:                                          ; preds = %do.end
  %8 = load %struct.serio_driver*, %struct.serio_driver** %serio_drv, align 8, !dbg !4591
  %manual_bind = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %8, i32 0, i32 2, !dbg !4593
  store i8 1, i8* %manual_bind, align 8, !dbg !4594
  br label %if.end7, !dbg !4595

if.else:                                          ; preds = %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4596
  %10 = load i64, i64* %count.addr, align 8, !dbg !4598
  %call2 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %10) #11, !dbg !4599
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4599
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !4600

if.then4:                                         ; preds = %if.else
  %11 = load %struct.serio_driver*, %struct.serio_driver** %serio_drv, align 8, !dbg !4601
  %manual_bind5 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %11, i32 0, i32 2, !dbg !4603
  store i8 0, i8* %manual_bind5, align 8, !dbg !4604
  br label %if.end, !dbg !4605

if.else6:                                         ; preds = %if.else
  store i32 -22, i32* %retval1, align 4, !dbg !4606
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval1, align 4, !dbg !4608
  %conv8 = sext i32 %12 to i64, !dbg !4608
  ret i64 %conv8, !dbg !4609
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_cleanup(%struct.serio* %serio) #0 !dbg !4610 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4613
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 17, !dbg !4614
  call void @mutex_lock(%struct.mutex* %drv_mutex) #11, !dbg !4615
  %1 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4616
  %drv = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 16, !dbg !4618
  %2 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !4618
  %tobool = icmp ne %struct.serio_driver* %2, null, !dbg !4616
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4619

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4620
  %drv1 = getelementptr inbounds %struct.serio, %struct.serio* %3, i32 0, i32 16, !dbg !4621
  %4 = load %struct.serio_driver*, %struct.serio_driver** %drv1, align 8, !dbg !4621
  %cleanup = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %4, i32 0, i32 9, !dbg !4622
  %cleanup2 = bitcast {}** %cleanup to void (%struct.serio*)**, !dbg !4622
  %5 = load void (%struct.serio*)*, void (%struct.serio*)** %cleanup2, align 8, !dbg !4622
  %tobool3 = icmp ne void (%struct.serio*)* %5, null, !dbg !4620
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4623

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4624
  %drv4 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 16, !dbg !4625
  %7 = load %struct.serio_driver*, %struct.serio_driver** %drv4, align 8, !dbg !4625
  %cleanup5 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %7, i32 0, i32 9, !dbg !4626
  %cleanup6 = bitcast {}** %cleanup5 to void (%struct.serio*)**, !dbg !4626
  %8 = load void (%struct.serio*)*, void (%struct.serio*)** %cleanup6, align 8, !dbg !4626
  %9 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4627
  call void %8(%struct.serio* %9) #11, !dbg !4624
  br label %if.end, !dbg !4624

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4628
  %drv_mutex7 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 17, !dbg !4629
  call void @mutex_unlock(%struct.mutex* %drv_mutex7) #11, !dbg !4630
  ret void, !dbg !4631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_suspend(%struct.device* %dev) #0 !dbg !4632 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4635, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4637, metadata !DIExpression()), !dbg !4639
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4639
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4639
  store i8* %1, i8** %__mptr, align 8, !dbg !4639
  br label %do.body, !dbg !4639

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4640

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4639
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !4639
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !4639
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !4640
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !4639
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !4636
  %5 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4642
  call void @serio_cleanup(%struct.serio* %5) #11, !dbg !4643
  ret i32 0, !dbg !4644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_resume(%struct.device* %dev) #0 !dbg !4645 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %serio = alloca %struct.serio*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.declare(metadata %struct.serio** %serio, metadata !4648, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4650, metadata !DIExpression()), !dbg !4652
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4652
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4652
  store i8* %1, i8** %__mptr, align 8, !dbg !4652
  br label %do.body, !dbg !4652

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4653

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4652
  %add.ptr = getelementptr i8, i8* %2, i64 -328, !dbg !4652
  %3 = bitcast i8* %add.ptr to %struct.serio*, !dbg !4652
  store %struct.serio* %3, %struct.serio** %tmp, align 8, !dbg !4653
  %4 = load %struct.serio*, %struct.serio** %tmp, align 8, !dbg !4652
  store %struct.serio* %4, %struct.serio** %serio, align 8, !dbg !4649
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32 -2, i32* %error, align 4, !dbg !4656
  %5 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4657
  %drv_mutex = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 17, !dbg !4658
  call void @mutex_lock(%struct.mutex* %drv_mutex) #11, !dbg !4659
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4660
  %drv = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 16, !dbg !4662
  %7 = load %struct.serio_driver*, %struct.serio_driver** %drv, align 8, !dbg !4662
  %tobool = icmp ne %struct.serio_driver* %7, null, !dbg !4660
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !4663

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4664
  %drv1 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 16, !dbg !4665
  %9 = load %struct.serio_driver*, %struct.serio_driver** %drv1, align 8, !dbg !4665
  %fast_reconnect = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %9, i32 0, i32 7, !dbg !4666
  %10 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %fast_reconnect, align 8, !dbg !4666
  %tobool2 = icmp ne i32 (%struct.serio*)* %10, null, !dbg !4664
  br i1 %tobool2, label %if.then, label %if.end8, !dbg !4667

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4668
  %drv3 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 16, !dbg !4670
  %12 = load %struct.serio_driver*, %struct.serio_driver** %drv3, align 8, !dbg !4670
  %fast_reconnect4 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %12, i32 0, i32 7, !dbg !4671
  %13 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %fast_reconnect4, align 8, !dbg !4671
  %14 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4672
  %call = call i32 %13(%struct.serio* %14) #11, !dbg !4668
  store i32 %call, i32* %error, align 4, !dbg !4673
  %15 = load i32, i32* %error, align 4, !dbg !4674
  %tobool5 = icmp ne i32 %15, 0, !dbg !4674
  br i1 %tobool5, label %land.lhs.true6, label %if.end, !dbg !4676

land.lhs.true6:                                   ; preds = %if.then
  %16 = load i32, i32* %error, align 4, !dbg !4677
  %cmp = icmp ne i32 %16, -2, !dbg !4678
  br i1 %cmp, label %if.then7, label %if.end, !dbg !4679

if.then7:                                         ; preds = %land.lhs.true6
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4680
  %18 = load i32, i32* %error, align 4, !dbg !4680
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0), i32 %18) #14, !dbg !4680
  br label %if.end, !dbg !4680

if.end:                                           ; preds = %if.then7, %land.lhs.true6, %if.then
  br label %if.end8, !dbg !4681

if.end8:                                          ; preds = %if.end, %land.lhs.true, %do.end
  %19 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4682
  %drv_mutex9 = getelementptr inbounds %struct.serio, %struct.serio* %19, i32 0, i32 17, !dbg !4683
  call void @mutex_unlock(%struct.mutex* %drv_mutex9) #11, !dbg !4684
  %20 = load i32, i32* %error, align 4, !dbg !4685
  %tobool10 = icmp ne i32 %20, 0, !dbg !4685
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4687

if.then11:                                        ; preds = %if.end8
  %21 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4688
  %22 = bitcast %struct.serio* %21 to i8*, !dbg !4688
  %call12 = call i32 @serio_queue_event(i8* %22, %struct.module* null, i32 1) #11, !dbg !4690
  br label %if.end13, !dbg !4691

if.end13:                                         ; preds = %if.then11, %if.end8
  ret i32 0, !dbg !4692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_handle_event(%struct.work_struct* %work) #0 !dbg !4693 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %event = alloca %struct.serio_event*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @mutex_lock(%struct.mutex* @serio_mutex) #11, !dbg !4698
  br label %while.cond, !dbg !4699

while.cond:                                       ; preds = %sw.epilog, %entry
  %call = call %struct.serio_event* @serio_get_event() #11, !dbg !4700
  store %struct.serio_event* %call, %struct.serio_event** %event, align 8, !dbg !4701
  %tobool = icmp ne %struct.serio_event* %call, null, !dbg !4699
  br i1 %tobool, label %while.body, label %while.end, !dbg !4699

while.body:                                       ; preds = %while.cond
  %0 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4702
  %type = getelementptr inbounds %struct.serio_event, %struct.serio_event* %0, i32 0, i32 0, !dbg !4704
  %1 = load i32, i32* %type, align 8, !dbg !4704
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb4
    i32 2, label %sw.bb7
    i32 4, label %sw.bb9
  ], !dbg !4705

sw.bb:                                            ; preds = %while.body
  %2 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4706
  %object = getelementptr inbounds %struct.serio_event, %struct.serio_event* %2, i32 0, i32 1, !dbg !4708
  %3 = load i8*, i8** %object, align 8, !dbg !4708
  %4 = bitcast i8* %3 to %struct.serio*, !dbg !4706
  call void @serio_add_port(%struct.serio* %4) #11, !dbg !4709
  br label %sw.epilog, !dbg !4710

sw.bb1:                                           ; preds = %while.body
  %5 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4711
  %object2 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %5, i32 0, i32 1, !dbg !4712
  %6 = load i8*, i8** %object2, align 8, !dbg !4712
  %7 = bitcast i8* %6 to %struct.serio*, !dbg !4711
  %call3 = call i32 @serio_reconnect_port(%struct.serio* %7) #11, !dbg !4713
  br label %sw.epilog, !dbg !4714

sw.bb4:                                           ; preds = %while.body
  %8 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4715
  %object5 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %8, i32 0, i32 1, !dbg !4716
  %9 = load i8*, i8** %object5, align 8, !dbg !4716
  %10 = bitcast i8* %9 to %struct.serio*, !dbg !4715
  call void @serio_disconnect_port(%struct.serio* %10) #11, !dbg !4717
  %11 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4718
  %object6 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %11, i32 0, i32 1, !dbg !4719
  %12 = load i8*, i8** %object6, align 8, !dbg !4719
  %13 = bitcast i8* %12 to %struct.serio*, !dbg !4718
  call void @serio_find_driver(%struct.serio* %13) #11, !dbg !4720
  br label %sw.epilog, !dbg !4721

sw.bb7:                                           ; preds = %while.body
  %14 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4722
  %object8 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %14, i32 0, i32 1, !dbg !4723
  %15 = load i8*, i8** %object8, align 8, !dbg !4723
  %16 = bitcast i8* %15 to %struct.serio*, !dbg !4722
  call void @serio_reconnect_subtree(%struct.serio* %16) #11, !dbg !4724
  br label %sw.epilog, !dbg !4725

sw.bb9:                                           ; preds = %while.body
  %17 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4726
  %object10 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %17, i32 0, i32 1, !dbg !4727
  %18 = load i8*, i8** %object10, align 8, !dbg !4727
  %19 = bitcast i8* %18 to %struct.serio_driver*, !dbg !4726
  call void @serio_attach_driver(%struct.serio_driver* %19) #11, !dbg !4728
  br label %sw.epilog, !dbg !4729

sw.epilog:                                        ; preds = %while.body, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %20 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4730
  %object11 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %20, i32 0, i32 1, !dbg !4731
  %21 = load i8*, i8** %object11, align 8, !dbg !4731
  %22 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4732
  %type12 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %22, i32 0, i32 0, !dbg !4733
  %23 = load i32, i32* %type12, align 8, !dbg !4733
  call void @serio_remove_duplicate_events(i8* %21, i32 %23) #11, !dbg !4734
  %24 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4735
  call void @serio_free_event(%struct.serio_event* %24) #11, !dbg !4736
  br label %while.cond, !dbg !4699, !llvm.loop !4737

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(%struct.mutex* @serio_mutex) #11, !dbg !4739
  ret void, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.serio_event* @serio_get_event() #0 !dbg !4741 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2236, metadata !DIExpression()), !dbg !4744
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2244, metadata !DIExpression()), !dbg !4746
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2246, metadata !DIExpression()), !dbg !4747
  %event = alloca %struct.serio_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.serio_event*, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_event** %event, metadata !4754, metadata !DIExpression()), !dbg !4755
  store %struct.serio_event* null, %struct.serio_event** %event, align 8, !dbg !4755
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4756, metadata !DIExpression()), !dbg !4757
  br label %do.body, !dbg !4758

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4759

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4760, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4763, metadata !DIExpression()), !dbg !4762
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4762
  %conv = zext i1 %cmp to i32, !dbg !4762
  store i32 1, i32* %tmp, align 4, !dbg !4762
  %0 = load i32, i32* %tmp, align 4, !dbg !4762
  br label %do.body2, !dbg !4764

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4765

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4766

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4772, metadata !DIExpression()), !dbg !4771
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4771
  %conv8 = zext i1 %cmp7 to i32, !dbg !4771
  store i32 1, i32* %tmp9, align 4, !dbg !4771
  %1 = load i32, i32* %tmp9, align 4, !dbg !4771
  %call = call i64 @arch_local_irq_save() #11, !dbg !4773
  store i64 %call, i64* %flags, align 8, !dbg !4773
  br label %do.end, !dbg !4773

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4766

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4765

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4774, !srcloc !4775
  br label %do.body12, !dbg !4774

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4776
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4777
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !4777
  br label %do.end14, !dbg !4778

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4774

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4765

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4764

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4759

do.end18:                                         ; preds = %do.end17
  %call19 = call i32 @list_empty(%struct.list_head* @serio_event_list) #11, !dbg !4779
  %tobool = icmp ne i32 %call19, 0, !dbg !4779
  br i1 %tobool, label %if.end, label %if.then, !dbg !4781

if.then:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4782, metadata !DIExpression()), !dbg !4785
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @serio_event_list, i32 0, i32 0), align 8, !dbg !4785
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4785
  store i8* %5, i8** %__mptr, align 8, !dbg !4785
  br label %do.body20, !dbg !4785

do.body20:                                        ; preds = %if.then
  br label %do.end21, !dbg !4786

do.end21:                                         ; preds = %do.body20
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4785
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !4785
  %7 = bitcast i8* %add.ptr to %struct.serio_event*, !dbg !4785
  store %struct.serio_event* %7, %struct.serio_event** %tmp22, align 8, !dbg !4786
  %8 = load %struct.serio_event*, %struct.serio_event** %tmp22, align 8, !dbg !4785
  store %struct.serio_event* %8, %struct.serio_event** %event, align 8, !dbg !4788
  %9 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4789
  %node = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 3, !dbg !4790
  call void @list_del_init(%struct.list_head* %node) #11, !dbg !4791
  br label %if.end, !dbg !4792

if.end:                                           ; preds = %do.end21, %do.end18
  %10 = load i64, i64* %flags, align 8, !dbg !4793
  store %struct.spinlock* @serio_event_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !155, metadata !2571, metadata !DIExpression()) #10, !dbg !4794
  call void @llvm.dbg.declare(metadata !155, metadata !2575, metadata !DIExpression()) #10, !dbg !4794
  store i32 1, i32* %tmp.i, align 4, !dbg !4794
  %11 = load i32, i32* %tmp.i, align 4, !dbg !4794
  call void @llvm.dbg.declare(metadata !155, metadata !2576, metadata !DIExpression()) #10, !dbg !4795
  call void @llvm.dbg.declare(metadata !155, metadata !2582, metadata !DIExpression()) #10, !dbg !4795
  store i32 1, i32* %tmp8.i, align 4, !dbg !4795
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !4795
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !4796
  call void @arch_local_irq_restore(i64 %13) #13, !dbg !4796
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4797, !srcloc !2586
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4798
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4798
  %rlock.i24 = bitcast %union.anon* %15 to %struct.raw_spinlock*, !dbg !4798
  %16 = load %struct.serio_event*, %struct.serio_event** %event, align 8, !dbg !4799
  ret %struct.serio_event* %16, !dbg !4800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_add_port(%struct.serio* %serio) #0 !dbg !4801 {
entry:
  %serio.addr = alloca %struct.serio*, align 8
  %parent = alloca %struct.serio*, align 8
  %error = alloca i32, align 4
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.declare(metadata %struct.serio** %parent, metadata !4804, metadata !DIExpression()), !dbg !4805
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4806
  %parent1 = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 12, !dbg !4807
  %1 = load %struct.serio*, %struct.serio** %parent1, align 8, !dbg !4807
  store %struct.serio* %1, %struct.serio** %parent, align 8, !dbg !4805
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4808, metadata !DIExpression()), !dbg !4809
  %2 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !4810
  %tobool = icmp ne %struct.serio* %2, null, !dbg !4810
  br i1 %tobool, label %if.then, label %if.end, !dbg !4812

if.then:                                          ; preds = %entry
  %3 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !4813
  call void @serio_pause_rx(%struct.serio* %3) #11, !dbg !4815
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4816
  %child_node = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 13, !dbg !4817
  %5 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !4818
  %children = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 14, !dbg !4819
  call void @list_add_tail(%struct.list_head* %child_node, %struct.list_head* %children) #11, !dbg !4820
  %6 = load %struct.serio*, %struct.serio** %parent, align 8, !dbg !4821
  call void @serio_continue_rx(%struct.serio* %6) #11, !dbg !4822
  br label %if.end, !dbg !4823

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4824
  %node = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 19, !dbg !4825
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @serio_list) #11, !dbg !4826
  %8 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4827
  %start = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 10, !dbg !4829
  %9 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %start, align 8, !dbg !4829
  %tobool2 = icmp ne i32 (%struct.serio*)* %9, null, !dbg !4827
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4830

if.then3:                                         ; preds = %if.end
  %10 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4831
  %start4 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 10, !dbg !4832
  %11 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %start4, align 8, !dbg !4832
  %12 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4833
  %call = call i32 %11(%struct.serio* %12) #11, !dbg !4831
  br label %if.end5, !dbg !4831

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4834
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 18, !dbg !4835
  %call6 = call i32 @device_add(%struct.device* %dev) #11, !dbg !4836
  store i32 %call6, i32* %error, align 4, !dbg !4837
  %14 = load i32, i32* %error, align 4, !dbg !4838
  %tobool7 = icmp ne i32 %14, 0, !dbg !4838
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !4840

if.then8:                                         ; preds = %if.end5
  %15 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4841
  %dev9 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 18, !dbg !4841
  %16 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4841
  %phys = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 2, !dbg !4841
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4841
  %17 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4841
  %name = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 1, !dbg !4841
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4841
  %18 = load i32, i32* %error, align 4, !dbg !4841
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay10, i32 %18) #14, !dbg !4841
  br label %if.end11, !dbg !4841

if.end11:                                         ; preds = %if.then8, %if.end5
  ret void, !dbg !4842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_attach_driver(%struct.serio_driver* %drv) #0 !dbg !4843 {
entry:
  %drv.addr = alloca %struct.serio_driver*, align 8
  %error = alloca i32, align 4
  store %struct.serio_driver* %drv, %struct.serio_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio_driver** %drv.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4848
  %driver = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %0, i32 0, i32 10, !dbg !4849
  %call = call i32 @driver_attach(%struct.device_driver* %driver) #11, !dbg !4850
  store i32 %call, i32* %error, align 4, !dbg !4851
  %1 = load i32, i32* %error, align 4, !dbg !4852
  %tobool = icmp ne i32 %1, 0, !dbg !4852
  br i1 %tobool, label %if.then, label %if.end, !dbg !4854

if.then:                                          ; preds = %entry
  %2 = load %struct.serio_driver*, %struct.serio_driver** %drv.addr, align 8, !dbg !4855
  %driver1 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %2, i32 0, i32 10, !dbg !4855
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 0, !dbg !4855
  %3 = load i8*, i8** %name, align 8, !dbg !4855
  %4 = load i32, i32* %error, align 4, !dbg !4855
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i64 0, i64 0), i8* %3, i32 %4) #14, !dbg !4855
  br label %if.end, !dbg !4855

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4856
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @driver_attach(%struct.device_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2166}
!llvm.module.flags = !{!2167, !2168, !2169, !2170}
!llvm.ident = !{!2171}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author161", scope: !2, file: !3, line: 24, type: !2163, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !2051, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/serio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50, !56, !63, !68, !75}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !24, line: 26, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !51, line: 44, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "serio_event_type", file: !3, line: 132, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "SERIO_RESCAN_PORT", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "SERIO_RECONNECT_PORT", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "SERIO_RECONNECT_SUBTREE", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "SERIO_REGISTER_PORT", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "SERIO_ATTACH_DRIVER", value: 4, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !69, line: 305, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 30, baseType: !77, size: 64, elements: !78)
!76 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!79 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!80 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!81 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!82 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!83 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!84 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!85 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!86 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!87 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!88 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!89 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!90 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!91 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!92 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!93 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!94 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!95 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!96 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!97 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!98 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!99 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!100 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!101 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!102 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!103 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!104 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!105 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!106 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!107 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!108 = !{!109, !110, !2040, !1556, !2047, !1923, !309, !181, !2049}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !112, line: 20, size: 8384, elements: !113)
!112 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !120, !121, !125, !129, !140, !156, !161, !165, !169, !170, !171, !172, !178, !179, !180, !2035, !2036, !2037, !2038}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !111, file: !112, line: 21, baseType: !109, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 23, baseType: !116, size: 256, offset: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !118)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!118 = !{!119}
!119 = !DISubrange(count: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !111, file: !112, line: 24, baseType: !116, size: 256, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !111, file: !112, line: 25, baseType: !122, size: 1024, offset: 576)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !111, file: !112, line: 27, baseType: !126, size: 8, offset: 1600)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 30, baseType: !128)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !111, file: !112, line: 29, baseType: !130, size: 32, offset: 1608)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !131, line: 236, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!132 = !{!133, !137, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !131, line: 237, baseType: !134, size: 8)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !135, line: 21, baseType: !136)
!135 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !130, file: !131, line: 238, baseType: !134, size: 8, offset: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !130, file: !131, line: 239, baseType: !134, size: 8, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !130, file: !131, line: 240, baseType: !134, size: 8, offset: 24)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !111, file: !112, line: 32, baseType: !141, offset: 1640)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !142, line: 83, baseType: !143)
!142 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !142, line: 71, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !142, line: 72, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 72, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !146, file: !142, line: 73, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !142, line: 20, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !149, file: !142, line: 21, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !153, line: 25, baseType: !154)
!153 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 25, elements: !155)
!155 = !{}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !111, file: !112, line: 34, baseType: !157, size: 64, offset: 1664)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !110, !136}
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !111, file: !112, line: 35, baseType: !162, size: 64, offset: 1728)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!160, !110}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !111, file: !112, line: 36, baseType: !166, size: 64, offset: 1792)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !110}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !111, file: !112, line: 37, baseType: !162, size: 64, offset: 1856)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !111, file: !112, line: 38, baseType: !166, size: 64, offset: 1920)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !112, line: 40, baseType: !110, size: 64, offset: 1984)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !111, file: !112, line: 42, baseType: !173, size: 128, offset: 2048)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 178, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !127, line: 179, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !127, line: 179, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !111, file: !112, line: 43, baseType: !173, size: 128, offset: 2176)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !111, file: !112, line: 45, baseType: !7, size: 32, offset: 2304)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !111, file: !112, line: 51, baseType: !181, size: 64, offset: 2368)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !112, line: 67, size: 1792, elements: !183)
!183 = !{!184, !187, !190, !191, !192, !197, !201, !202, !203, !204, !205}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !182, file: !112, line: 68, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !182, file: !112, line: 70, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !182, file: !112, line: 71, baseType: !126, size: 8, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !182, file: !112, line: 73, baseType: !166, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !182, file: !112, line: 74, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !110, !136, !7}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !182, file: !112, line: 75, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!160, !110, !181}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !182, file: !112, line: 76, baseType: !162, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !182, file: !112, line: 77, baseType: !162, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !182, file: !112, line: 78, baseType: !166, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !182, file: !112, line: 79, baseType: !166, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !182, file: !112, line: 81, baseType: !206, size: 1152, offset: 640)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !51, line: 95, size: 1152, elements: !207)
!207 = !{!208, !209, !1996, !1997, !1998, !1999, !2000, !2009, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !51, line: 96, baseType: !185, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !206, file: !51, line: 97, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !212, line: 82, size: 1408, elements: !213)
!212 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !215, !216, !1965, !1966, !1967, !1968, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1983, !1984, !1985, !1986, !1987, !1991, !1992, !1995}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !212, line: 83, baseType: !185, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !211, file: !212, line: 84, baseType: !185, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !211, file: !212, line: 85, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !219)
!219 = !{!220, !1684, !1685, !1688, !1689, !1740, !1741, !1743, !1744, !1745, !1746, !1755, !1864, !1877, !1880, !1881, !1885, !1887, !1888, !1889, !1893, !1899, !1900, !1903, !1907, !1910, !1913, !1914, !1915, !1916, !1953, !1954, !1955, !1958, !1961, !1962, !1963, !1964}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !218, file: !30, line: 462, baseType: !221, size: 512)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !222, line: 64, size: 512, elements: !223)
!222 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!223 = !{!224, !225, !226, !228, !273, !1520, !1674, !1679, !1680, !1681, !1682, !1683}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !222, line: 65, baseType: !185, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !221, file: !222, line: 66, baseType: !173, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !222, line: 67, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !221, file: !222, line: 68, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !222, line: 192, size: 704, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !230, file: !222, line: 193, baseType: !173, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !230, file: !222, line: 194, baseType: !141, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !230, file: !222, line: 195, baseType: !221, size: 512, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !230, file: !222, line: 196, baseType: !236, size: 64, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !222, line: 156, size: 192, elements: !239)
!239 = !{!240, !245, !250}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !238, file: !222, line: 157, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!160, !229, !227}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !222, line: 158, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!185, !229, !227}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !238, file: !222, line: 159, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!160, !229, !227, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !222, line: 148, size: 20736, elements: !257)
!257 = !{!258, !263, !267, !268, !272}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !256, file: !222, line: 149, baseType: !259, size: 192)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!261 = !{!262}
!262 = !DISubrange(count: 3)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !256, file: !222, line: 150, baseType: !264, size: 4096, offset: 192)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 4096, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !256, file: !222, line: 151, baseType: !160, size: 32, offset: 4288)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !256, file: !222, line: 152, baseType: !269, size: 16384, offset: 4320)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 2048)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !256, file: !222, line: 153, baseType: !160, size: 32, offset: 20704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !221, file: !222, line: 69, baseType: !274, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !222, line: 138, size: 448, elements: !276)
!276 = !{!277, !281, !310, !312, !1466, !1499, !1503}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !222, line: 139, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !227}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !275, file: !222, line: 140, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !285, line: 230, size: 128, elements: !286)
!285 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !302}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !284, file: !285, line: 231, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !227, !295, !260}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 60, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !293, line: 73, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !293, line: 15, baseType: !77)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !285, line: 30, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !285, line: 31, baseType: !185, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !296, file: !285, line: 32, baseType: !300, size: 16, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 19, baseType: !301)
!301 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !284, file: !285, line: 232, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!291, !227, !295, !185, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 55, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !293, line: 72, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !293, line: 16, baseType: !309)
!309 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !275, file: !222, line: 141, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !275, file: !222, line: 142, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !285, line: 84, size: 320, elements: !317)
!317 = !{!318, !319, !323, !1463, !1464}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !285, line: 85, baseType: !185, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !316, file: !285, line: 86, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!300, !227, !295, !160}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !316, file: !285, line: 88, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!300, !227, !327, !160}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !285, line: 168, size: 448, elements: !329)
!329 = !{!330, !331, !332, !333, !343, !344}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !328, file: !285, line: 169, baseType: !296, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !328, file: !285, line: 170, baseType: !306, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !328, file: !285, line: 171, baseType: !109, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !328, file: !285, line: 172, baseType: !334, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!291, !337, !227, !327, !260, !340, !306}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !339, line: 526, flags: DIFlagFwdDecl)
!339 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 46, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !293, line: 88, baseType: !342)
!342 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !328, file: !285, line: 174, baseType: !334, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !328, file: !285, line: 176, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!160, !337, !227, !327, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !350, line: 305, size: 1472, elements: !351)
!350 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !353, !354, !355, !356, !364, !365, !1437, !1443, !1444, !1449, !1450, !1453, !1457, !1458, !1459, !1460, !1461}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !349, file: !350, line: 308, baseType: !309, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !349, file: !350, line: 309, baseType: !309, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !349, file: !350, line: 313, baseType: !348, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !349, file: !350, line: 313, baseType: !348, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !349, file: !350, line: 315, baseType: !357, size: 192, align: 64, offset: 256)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !358, line: 24, size: 192, align: 64, elements: !359)
!358 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !361, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !357, file: !358, line: 25, baseType: !309, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !357, file: !358, line: 26, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !357, file: !358, line: 27, baseType: !362, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !349, file: !350, line: 323, baseType: !309, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !349, file: !350, line: 327, baseType: !366, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !350, line: 388, size: 7296, elements: !368)
!368 = !{!369, !1433}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !350, line: 389, baseType: !370, size: 7296)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !350, line: 389, size: 7296, elements: !371)
!371 = !{!372, !373, !377, !382, !386, !387, !388, !389, !390, !398, !403, !404, !405, !406, !415, !416, !417, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !452, !460, !463, !511, !512, !1404, !1405, !1408, !1412, !1413, !1416, !1417, !1418, !1421, !1432}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !350, line: 390, baseType: !348, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !370, file: !350, line: 391, baseType: !374, size: 64, offset: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !358, line: 31, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !374, file: !358, line: 32, baseType: !362, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !370, file: !350, line: 392, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !379, line: 23, baseType: !380)
!379 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !135, line: 31, baseType: !381)
!381 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !370, file: !350, line: 394, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!309, !337, !309, !309, !309, !309}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !370, file: !350, line: 398, baseType: !309, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !370, file: !350, line: 399, baseType: !309, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !370, file: !350, line: 405, baseType: !309, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !370, file: !350, line: 406, baseType: !309, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !350, line: 407, baseType: !391, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !339, line: 286, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 286, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !393, file: !339, line: 286, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !397, line: 18, baseType: !309)
!397 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !370, file: !350, line: 416, baseType: !399, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 168, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 166, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !400, file: !127, line: 167, baseType: !160, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !370, file: !350, line: 428, baseType: !399, size: 32, offset: 608)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !370, file: !350, line: 437, baseType: !399, size: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !370, file: !350, line: 447, baseType: !399, size: 32, offset: 672)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !370, file: !350, line: 450, baseType: !407, size: 64, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !408, line: 13, baseType: !409)
!408 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 175, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 173, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !410, file: !127, line: 174, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !379, line: 22, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !135, line: 30, baseType: !342)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !370, file: !350, line: 452, baseType: !160, size: 32, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !370, file: !350, line: 454, baseType: !141, offset: 800)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !370, file: !350, line: 457, baseType: !418, size: 256, offset: 832)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !419, line: 35, size: 256, elements: !420)
!419 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421, !422, !423, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !418, file: !419, line: 36, baseType: !407, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !418, file: !419, line: 42, baseType: !407, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !418, file: !419, line: 46, baseType: !424, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !142, line: 29, baseType: !149)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !418, file: !419, line: 47, baseType: !173, size: 128, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !370, file: !350, line: 459, baseType: !173, size: 128, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !370, file: !350, line: 466, baseType: !309, size: 64, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !370, file: !350, line: 467, baseType: !309, size: 64, offset: 1280)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !370, file: !350, line: 469, baseType: !309, size: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !370, file: !350, line: 470, baseType: !309, size: 64, offset: 1408)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !370, file: !350, line: 471, baseType: !409, size: 64, offset: 1472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !370, file: !350, line: 472, baseType: !309, size: 64, offset: 1536)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !370, file: !350, line: 473, baseType: !309, size: 64, offset: 1600)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !370, file: !350, line: 474, baseType: !309, size: 64, offset: 1664)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !370, file: !350, line: 475, baseType: !309, size: 64, offset: 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !370, file: !350, line: 477, baseType: !141, offset: 1792)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !370, file: !350, line: 478, baseType: !309, size: 64, offset: 1792)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !370, file: !350, line: 478, baseType: !309, size: 64, offset: 1856)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !370, file: !350, line: 478, baseType: !309, size: 64, offset: 1920)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !370, file: !350, line: 478, baseType: !309, size: 64, offset: 1984)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !370, file: !350, line: 479, baseType: !309, size: 64, offset: 2048)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !370, file: !350, line: 479, baseType: !309, size: 64, offset: 2112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !370, file: !350, line: 479, baseType: !309, size: 64, offset: 2176)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !370, file: !350, line: 480, baseType: !309, size: 64, offset: 2240)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !370, file: !350, line: 480, baseType: !309, size: 64, offset: 2304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !370, file: !350, line: 480, baseType: !309, size: 64, offset: 2368)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !370, file: !350, line: 480, baseType: !309, size: 64, offset: 2432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !370, file: !350, line: 482, baseType: !449, size: 2816, offset: 2496)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 2816, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 44)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !370, file: !350, line: 488, baseType: !453, size: 256, offset: 5312)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !454, line: 60, size: 256, elements: !455)
!454 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !453, file: !454, line: 61, baseType: !457, size: 256)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 256, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 4)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !370, file: !350, line: 490, baseType: !461, size: 64, offset: 5568)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !350, line: 490, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !350, line: 493, baseType: !464, size: 896, offset: 5632)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !465, line: 53, baseType: !466)
!465 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 13, size: 896, elements: !467)
!467 = !{!468, !469, !470, !471, !474, !475, !482, !483, !503, !504, !507}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !466, file: !465, line: 18, baseType: !378, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !466, file: !465, line: 28, baseType: !409, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !466, file: !465, line: 31, baseType: !418, size: 256, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !466, file: !465, line: 32, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !465, line: 32, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !466, file: !465, line: 37, baseType: !301, size: 16, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !465, line: 40, baseType: !476, size: 192, offset: 512)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !477, line: 53, size: 192, elements: !478)
!477 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !477, line: 54, baseType: !407, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !476, file: !477, line: 55, baseType: !141, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !476, file: !477, line: 59, baseType: !173, size: 128, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !466, file: !465, line: 41, baseType: !109, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !466, file: !465, line: 42, baseType: !484, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !487, line: 13, size: 896, elements: !488)
!487 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !486, file: !487, line: 14, baseType: !109, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !486, file: !487, line: 15, baseType: !309, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !486, file: !487, line: 17, baseType: !309, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !486, file: !487, line: 17, baseType: !309, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !486, file: !487, line: 19, baseType: !77, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !486, file: !487, line: 21, baseType: !77, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !486, file: !487, line: 22, baseType: !77, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !486, file: !487, line: 23, baseType: !77, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !486, file: !487, line: 24, baseType: !77, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !486, file: !487, line: 25, baseType: !77, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !486, file: !487, line: 26, baseType: !77, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !486, file: !487, line: 27, baseType: !77, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !486, file: !487, line: 28, baseType: !77, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !486, file: !487, line: 29, baseType: !77, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !466, file: !465, line: 44, baseType: !399, size: 32, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !466, file: !465, line: 50, baseType: !505, size: 16, offset: 864)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !379, line: 19, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !135, line: 24, baseType: !301)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !466, file: !465, line: 51, baseType: !508, size: 16, offset: 880)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !379, line: 18, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !135, line: 23, baseType: !510)
!510 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !350, line: 495, baseType: !309, size: 64, offset: 6528)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !370, file: !350, line: 497, baseType: !513, size: 64, offset: 6592)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !350, line: 381, size: 384, elements: !515)
!515 = !{!516, !517, !1403}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !514, file: !350, line: 382, baseType: !399, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !514, file: !350, line: 383, baseType: !518, size: 128, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !350, line: 376, size: 128, elements: !519)
!519 = !{!520, !1401}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !518, file: !350, line: 377, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !523, line: 640, size: 48640, elements: !524)
!523 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!524 = !{!525, !533, !535, !536, !542, !543, !544, !545, !546, !547, !548, !549, !553, !571, !582, !675, !676, !677, !688, !689, !691, !692, !693, !694, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !773, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !829, !831, !832, !833, !845, !847, !848, !849, !850, !851, !857, !858, !859, !860, !861, !862, !863, !875, !880, !885, !886, !887, !890, !894, !897, !900, !903, !906, !910, !913, !916, !922, !923, !924, !930, !931, !932, !933, !934, !943, !944, !945, !946, !947, !952, !953, !954, !957, !958, !961, !964, !967, !970, !973, !976, !977, !1057, !1060, !1063, !1064, !1067, !1068, !1069, !1075, !1076, !1077, !1090, !1091, !1092, !1102, !1107, !1110, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !522, file: !523, line: 646, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !527, line: 56, size: 128, elements: !528)
!527 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !527, line: 57, baseType: !309, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !526, file: !527, line: 58, baseType: !531, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !379, line: 21, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !135, line: 27, baseType: !7)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !522, file: !523, line: 649, baseType: !534, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !522, file: !523, line: 657, baseType: !109, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !522, file: !523, line: 658, baseType: !537, size: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !538, line: 113, baseType: !539)
!538 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !538, line: 111, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !539, file: !538, line: 112, baseType: !399, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !523, line: 660, baseType: !7, size: 32, offset: 288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !522, file: !523, line: 661, baseType: !7, size: 32, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !522, file: !523, line: 684, baseType: !160, size: 32, offset: 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !522, file: !523, line: 686, baseType: !160, size: 32, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !522, file: !523, line: 687, baseType: !160, size: 32, offset: 416)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !522, file: !523, line: 688, baseType: !160, size: 32, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !522, file: !523, line: 689, baseType: !7, size: 32, offset: 480)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !522, file: !523, line: 691, baseType: !550, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !523, line: 691, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !522, file: !523, line: 692, baseType: !554, size: 832, offset: 576)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !523, line: 451, size: 832, elements: !555)
!555 = !{!556, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !554, file: !523, line: 453, baseType: !557, size: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !523, line: 325, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !557, file: !523, line: 326, baseType: !309, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !557, file: !523, line: 327, baseType: !531, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !554, file: !523, line: 454, baseType: !357, size: 192, align: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !554, file: !523, line: 455, baseType: !173, size: 128, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !554, file: !523, line: 456, baseType: !7, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !554, file: !523, line: 458, baseType: !378, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !554, file: !523, line: 459, baseType: !378, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !554, file: !523, line: 460, baseType: !378, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !554, file: !523, line: 461, baseType: !378, size: 64, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !554, file: !523, line: 463, baseType: !378, size: 64, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !554, file: !523, line: 465, baseType: !570, offset: 832)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !523, line: 415, elements: !155)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !522, file: !523, line: 693, baseType: !572, size: 384, offset: 1408)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !523, line: 489, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !572, file: !523, line: 490, baseType: !173, size: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !572, file: !523, line: 491, baseType: !309, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !572, file: !523, line: 492, baseType: !309, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !572, file: !523, line: 493, baseType: !7, size: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !572, file: !523, line: 494, baseType: !301, size: 16, offset: 288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !572, file: !523, line: 495, baseType: !301, size: 16, offset: 304)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !572, file: !523, line: 497, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !522, file: !523, line: 697, baseType: !583, size: 1792, offset: 1792)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !523, line: 507, size: 1792, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !672, !673}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !583, file: !523, line: 508, baseType: !357, size: 192, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !583, file: !523, line: 515, baseType: !378, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !583, file: !523, line: 516, baseType: !378, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !583, file: !523, line: 517, baseType: !378, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !583, file: !523, line: 518, baseType: !378, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !583, file: !523, line: 519, baseType: !378, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !583, file: !523, line: 526, baseType: !413, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !583, file: !523, line: 527, baseType: !378, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !523, line: 528, baseType: !7, size: 32, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !583, file: !523, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !583, file: !523, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !583, file: !523, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !583, file: !523, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !583, file: !523, line: 563, baseType: !599, size: 512, offset: 704)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !600)
!600 = !{!601, !609, !610, !615, !667, !669, !670, !671}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !13, line: 119, baseType: !602, size: 256)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !603, line: 9, size: 256, elements: !604)
!603 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !603, line: 10, baseType: !357, size: 192, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !602, file: !603, line: 11, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !608, line: 29, baseType: !413)
!608 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !599, file: !13, line: 120, baseType: !607, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !599, file: !13, line: 121, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!12, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !599, file: !13, line: 122, baseType: !616, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !618)
!618 = !{!619, !639, !640, !643, !653, !654, !662, !666}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !617, file: !13, line: 160, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !621, file: !13, line: 215, baseType: !424)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !621, file: !13, line: 216, baseType: !7, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !621, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !621, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !621, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !621, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !621, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !621, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !621, file: !13, line: 233, baseType: !607, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !621, file: !13, line: 234, baseType: !614, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !621, file: !13, line: 235, baseType: !607, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !621, file: !13, line: 236, baseType: !614, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !621, file: !13, line: 237, baseType: !636, size: 4096, offset: 512)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 4096, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 8)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !617, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !617, file: !13, line: 162, baseType: !641, size: 32, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 27, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !293, line: 96, baseType: !160)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !617, file: !13, line: 163, baseType: !644, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !645, line: 276, baseType: !646)
!645 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !645, line: 276, size: 32, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !646, file: !645, line: 276, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !645, line: 70, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !645, line: 65, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !650, file: !645, line: 66, baseType: !7, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !617, file: !13, line: 164, baseType: !614, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !617, file: !13, line: 165, baseType: !655, size: 128, offset: 256)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !603, line: 14, size: 128, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !655, file: !603, line: 15, baseType: !658, size: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !358, line: 125, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !658, file: !358, line: 126, baseType: !374, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !658, file: !358, line: 127, baseType: !362, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !617, file: !13, line: 166, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!607}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !617, file: !13, line: 167, baseType: !607, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !599, file: !13, line: 123, baseType: !668, size: 8, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !379, line: 17, baseType: !134)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !599, file: !13, line: 124, baseType: !668, size: 8, offset: 456)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !599, file: !13, line: 125, baseType: !668, size: 8, offset: 464)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !599, file: !13, line: 126, baseType: !668, size: 8, offset: 472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !583, file: !523, line: 572, baseType: !599, size: 512, offset: 1216)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !583, file: !523, line: 580, baseType: !674, size: 64, offset: 1728)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !522, file: !523, line: 721, baseType: !7, size: 32, offset: 3584)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !522, file: !523, line: 722, baseType: !160, size: 32, offset: 3616)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !522, file: !523, line: 723, baseType: !678, size: 64, offset: 3648)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !681, line: 17, baseType: !682)
!681 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !681, line: 17, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !682, file: !681, line: 17, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 1)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !522, file: !523, line: 724, baseType: !680, size: 64, offset: 3712)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !522, file: !523, line: 749, baseType: !690, offset: 3776)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !523, line: 290, elements: !155)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !522, file: !523, line: 751, baseType: !173, size: 128, offset: 3776)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !522, file: !523, line: 757, baseType: !366, size: 64, offset: 3904)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !522, file: !523, line: 758, baseType: !366, size: 64, offset: 3968)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !522, file: !523, line: 761, baseType: !695, size: 320, offset: 4032)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !454, line: 34, size: 320, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !695, file: !454, line: 35, baseType: !378, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !695, file: !454, line: 36, baseType: !699, size: 256, offset: 64)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !458)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !522, file: !523, line: 766, baseType: !160, size: 32, offset: 4352)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !522, file: !523, line: 767, baseType: !160, size: 32, offset: 4384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !522, file: !523, line: 768, baseType: !160, size: 32, offset: 4416)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !522, file: !523, line: 770, baseType: !160, size: 32, offset: 4448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !522, file: !523, line: 772, baseType: !309, size: 64, offset: 4480)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !522, file: !523, line: 775, baseType: !7, size: 32, offset: 4544)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !522, file: !523, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !522, file: !523, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !522, file: !523, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !522, file: !523, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !522, file: !523, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !522, file: !523, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !522, file: !523, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !522, file: !523, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !522, file: !523, line: 831, baseType: !309, size: 64, offset: 4672)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !522, file: !523, line: 833, baseType: !716, size: 384, offset: 4736)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !717)
!717 = !{!718, !723}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !716, file: !18, line: 26, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!77, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !18, line: 27, baseType: !724, size: 320, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !18, line: 27, size: 320, elements: !725)
!725 = !{!726, !736, !763}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !724, file: !18, line: 36, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !18, line: 29, size: 320, elements: !728)
!728 = !{!729, !731, !732, !733, !734, !735}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !727, file: !18, line: 30, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !727, file: !18, line: 31, baseType: !531, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !18, line: 32, baseType: !531, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !727, file: !18, line: 33, baseType: !531, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !727, file: !18, line: 34, baseType: !378, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !727, file: !18, line: 35, baseType: !730, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !724, file: !18, line: 46, baseType: !737, size: 192)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !18, line: 38, size: 192, elements: !738)
!738 = !{!739, !740, !741, !762}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !737, file: !18, line: 39, baseType: !641, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !18, line: 41, baseType: !742, size: 64, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !18, line: 41, size: 64, elements: !743)
!743 = !{!744, !752}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !742, file: !18, line: 42, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !747, line: 7, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !746, file: !747, line: 8, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !293, line: 93, baseType: !342)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !746, file: !747, line: 9, baseType: !342, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !742, file: !18, line: 43, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !755, line: 7, size: 64, elements: !756)
!755 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !761}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !754, file: !755, line: 8, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !755, line: 5, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !379, line: 20, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !135, line: 26, baseType: !160)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !754, file: !755, line: 9, baseType: !759, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !737, file: !18, line: 45, baseType: !378, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !724, file: !18, line: 54, baseType: !764, size: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !18, line: 48, size: 256, elements: !765)
!765 = !{!766, !769, !770, !771, !772}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !764, file: !18, line: 49, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !764, file: !18, line: 50, baseType: !160, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !764, file: !18, line: 51, baseType: !160, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !764, file: !18, line: 52, baseType: !309, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !764, file: !18, line: 53, baseType: !309, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !522, file: !523, line: 835, baseType: !774, size: 32, offset: 5120)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 22, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !293, line: 28, baseType: !160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !522, file: !523, line: 836, baseType: !774, size: 32, offset: 5152)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !522, file: !523, line: 840, baseType: !309, size: 64, offset: 5184)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !522, file: !523, line: 849, baseType: !521, size: 64, offset: 5248)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !522, file: !523, line: 852, baseType: !521, size: 64, offset: 5312)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !522, file: !523, line: 857, baseType: !173, size: 128, offset: 5376)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !522, file: !523, line: 858, baseType: !173, size: 128, offset: 5504)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !522, file: !523, line: 859, baseType: !521, size: 64, offset: 5632)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !522, file: !523, line: 867, baseType: !173, size: 128, offset: 5696)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !522, file: !523, line: 868, baseType: !173, size: 128, offset: 5824)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !522, file: !523, line: 871, baseType: !786, size: 64, offset: 5952)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !788, line: 59, size: 768, elements: !789)
!788 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791, !792, !793, !804, !805, !812, !821}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !787, file: !788, line: 61, baseType: !537, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !787, file: !788, line: 62, baseType: !7, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !788, line: 63, baseType: !141, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !787, file: !788, line: 65, baseType: !794, size: 256, offset: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 256, elements: !458)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !127, line: 182, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !795, file: !127, line: 183, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 186, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !127, line: 187, baseType: !798, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !799, file: !127, line: 187, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !787, file: !788, line: 66, baseType: !795, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !787, file: !788, line: 68, baseType: !806, size: 128, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !807, line: 40, baseType: !808)
!807 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !807, line: 36, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !808, file: !807, line: 37, baseType: !141)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !808, file: !807, line: 38, baseType: !173, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !787, file: !788, line: 69, baseType: !813, size: 128, align: 64, offset: 512)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 216, size: 128, align: 64, elements: !814)
!814 = !{!815, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !813, file: !127, line: 217, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !813, file: !127, line: 218, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !816}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !787, file: !788, line: 70, baseType: !822, size: 128, offset: 640)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 128, elements: !686)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !788, line: 54, size: 128, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !823, file: !788, line: 55, baseType: !160, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !823, file: !788, line: 56, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !788, line: 56, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !522, file: !523, line: 872, baseType: !830, size: 512, offset: 6016)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 512, elements: !458)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !522, file: !523, line: 873, baseType: !173, size: 128, offset: 6528)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !522, file: !523, line: 874, baseType: !173, size: 128, offset: 6656)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !522, file: !523, line: 876, baseType: !834, size: 64, offset: 6784)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !836, line: 26, size: 192, elements: !837)
!836 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !835, file: !836, line: 27, baseType: !7, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !835, file: !836, line: 28, baseType: !840, size: 128, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !841, line: 43, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !841, line: 44, baseType: !424)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !840, file: !841, line: 45, baseType: !173, size: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !522, file: !523, line: 879, baseType: !846, size: 64, offset: 6848)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !522, file: !523, line: 882, baseType: !846, size: 64, offset: 6912)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !522, file: !523, line: 884, baseType: !378, size: 64, offset: 6976)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !522, file: !523, line: 885, baseType: !378, size: 64, offset: 7040)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !522, file: !523, line: 890, baseType: !378, size: 64, offset: 7104)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !522, file: !523, line: 891, baseType: !852, size: 128, offset: 7168)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !523, line: 242, size: 128, elements: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !852, file: !523, line: 244, baseType: !378, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !852, file: !523, line: 245, baseType: !378, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !852, file: !523, line: 246, baseType: !424, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !522, file: !523, line: 900, baseType: !309, size: 64, offset: 7296)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !522, file: !523, line: 901, baseType: !309, size: 64, offset: 7360)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !522, file: !523, line: 904, baseType: !378, size: 64, offset: 7424)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !522, file: !523, line: 907, baseType: !378, size: 64, offset: 7488)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !522, file: !523, line: 910, baseType: !309, size: 64, offset: 7552)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !522, file: !523, line: 911, baseType: !309, size: 64, offset: 7616)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !522, file: !523, line: 914, baseType: !864, size: 640, offset: 7680)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !865, line: 123, size: 640, elements: !866)
!865 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!866 = !{!867, !873, !874}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !864, file: !865, line: 124, baseType: !868, size: 576)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 576, elements: !261)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !865, line: 108, size: 192, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !869, file: !865, line: 109, baseType: !378, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !869, file: !865, line: 110, baseType: !655, size: 128, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !864, file: !865, line: 125, baseType: !7, size: 32, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !864, file: !865, line: 126, baseType: !7, size: 32, offset: 608)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !522, file: !523, line: 917, baseType: !876, size: 192, offset: 8320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !865, line: 134, size: 192, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !876, file: !865, line: 135, baseType: !813, size: 128, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !876, file: !865, line: 136, baseType: !7, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !522, file: !523, line: 923, baseType: !881, size: 64, offset: 8512)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !884, line: 11, flags: DIFlagFwdDecl)
!884 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !522, file: !523, line: 926, baseType: !881, size: 64, offset: 8576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !522, file: !523, line: 929, baseType: !881, size: 64, offset: 8640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !522, file: !523, line: 933, baseType: !888, size: 64, offset: 8704)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !523, line: 933, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !522, file: !523, line: 943, baseType: !891, size: 128, offset: 8768)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !522, file: !523, line: 945, baseType: !895, size: 64, offset: 8896)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !523, line: 49, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !522, file: !523, line: 956, baseType: !898, size: 64, offset: 8960)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !523, line: 45, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !522, file: !523, line: 959, baseType: !901, size: 64, offset: 9024)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !523, line: 959, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !522, file: !523, line: 962, baseType: !904, size: 64, offset: 9088)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !523, line: 66, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !522, file: !523, line: 966, baseType: !907, size: 64, offset: 9152)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !909, line: 35, flags: DIFlagFwdDecl)
!909 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!910 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !522, file: !523, line: 969, baseType: !911, size: 64, offset: 9216)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !865, line: 223, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !522, file: !523, line: 970, baseType: !914, size: 64, offset: 9280)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !523, line: 62, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !522, file: !523, line: 971, baseType: !917, size: 64, offset: 9344)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !918, line: 25, baseType: !919)
!918 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 23, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !919, file: !918, line: 24, baseType: !685, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !522, file: !523, line: 972, baseType: !917, size: 64, offset: 9408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !522, file: !523, line: 974, baseType: !917, size: 64, offset: 9472)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !522, file: !523, line: 975, baseType: !925, size: 192, offset: 9536)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !926, line: 30, size: 192, elements: !927)
!926 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !925, file: !926, line: 31, baseType: !173, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !925, file: !926, line: 32, baseType: !917, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !522, file: !523, line: 976, baseType: !309, size: 64, offset: 9728)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !522, file: !523, line: 977, baseType: !306, size: 64, offset: 9792)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !522, file: !523, line: 978, baseType: !7, size: 32, offset: 9856)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !522, file: !523, line: 980, baseType: !816, size: 64, offset: 9920)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !522, file: !523, line: 989, baseType: !935, size: 128, offset: 9984)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !936, line: 35, size: 128, elements: !937)
!936 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !935, file: !936, line: 36, baseType: !160, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !935, file: !936, line: 37, baseType: !399, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !935, file: !936, line: 38, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !936, line: 23, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !522, file: !523, line: 992, baseType: !378, size: 64, offset: 10112)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !522, file: !523, line: 993, baseType: !378, size: 64, offset: 10176)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !522, file: !523, line: 996, baseType: !141, offset: 10240)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !522, file: !523, line: 999, baseType: !424, offset: 10240)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !522, file: !523, line: 1001, baseType: !948, size: 64, offset: 10240)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !523, line: 636, size: 64, elements: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !523, line: 637, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !522, file: !523, line: 1005, baseType: !658, size: 128, offset: 10304)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !522, file: !523, line: 1007, baseType: !521, size: 64, offset: 10432)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !522, file: !523, line: 1009, baseType: !955, size: 64, offset: 10496)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !523, line: 1009, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !522, file: !523, line: 1043, baseType: !109, size: 64, offset: 10560)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !522, file: !523, line: 1046, baseType: !959, size: 64, offset: 10624)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !523, line: 41, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !522, file: !523, line: 1050, baseType: !962, size: 64, offset: 10688)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !523, line: 42, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !522, file: !523, line: 1054, baseType: !965, size: 64, offset: 10752)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !523, line: 55, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !522, file: !523, line: 1056, baseType: !968, size: 64, offset: 10816)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !523, line: 40, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !522, file: !523, line: 1058, baseType: !971, size: 64, offset: 10880)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !523, line: 47, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !522, file: !523, line: 1061, baseType: !974, size: 64, offset: 10944)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !523, line: 43, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !522, file: !523, line: 1064, baseType: !309, size: 64, offset: 11008)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !522, file: !523, line: 1065, baseType: !978, size: 64, offset: 11072)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !926, line: 14, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !926, line: 12, size: 384, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !926, line: 13, baseType: !983, size: 384)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !926, line: 13, size: 384, elements: !984)
!984 = !{!985, !986, !987, !988}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !983, file: !926, line: 13, baseType: !160, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !983, file: !926, line: 13, baseType: !160, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !983, file: !926, line: 13, baseType: !160, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !983, file: !926, line: 13, baseType: !989, size: 256, offset: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !990, line: 32, size: 256, elements: !991)
!990 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !998, !1011, !1017, !1026, !1046, !1051}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !989, file: !990, line: 37, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 34, size: 64, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !993, file: !990, line: 35, baseType: !775, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !993, file: !990, line: 36, baseType: !997, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !293, line: 49, baseType: !7)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !989, file: !990, line: 45, baseType: !999, size: 192)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 40, size: 192, elements: !1000)
!1000 = !{!1001, !1003, !1004, !1010}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !999, file: !990, line: 41, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !293, line: 95, baseType: !160)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !999, file: !990, line: 42, baseType: !160, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !999, file: !990, line: 43, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !990, line: 11, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !990, line: 8, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1006, file: !990, line: 9, baseType: !160, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1006, file: !990, line: 10, baseType: !109, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !999, file: !990, line: 44, baseType: !160, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !989, file: !990, line: 52, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 48, size: 128, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1012, file: !990, line: 49, baseType: !775, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1012, file: !990, line: 50, baseType: !997, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1012, file: !990, line: 51, baseType: !1005, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !989, file: !990, line: 61, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 55, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1025}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1018, file: !990, line: 56, baseType: !775, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1018, file: !990, line: 57, baseType: !997, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1018, file: !990, line: 58, baseType: !160, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1018, file: !990, line: 59, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !293, line: 94, baseType: !294)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1018, file: !990, line: 60, baseType: !1024, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !989, file: !990, line: 95, baseType: !1027, size: 256)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 64, size: 256, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1027, file: !990, line: 65, baseType: !109, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !990, line: 77, baseType: !1031, size: 192, offset: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !990, line: 77, size: 192, elements: !1032)
!1032 = !{!1033, !1034, !1041}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1031, file: !990, line: 82, baseType: !510, size: 16)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1031, file: !990, line: 88, baseType: !1035, size: 192)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !990, line: 84, size: 192, elements: !1036)
!1036 = !{!1037, !1039, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1035, file: !990, line: 85, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !637)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1035, file: !990, line: 86, baseType: !109, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1035, file: !990, line: 87, baseType: !109, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1031, file: !990, line: 93, baseType: !1042, size: 96)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !990, line: 90, size: 96, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1042, file: !990, line: 91, baseType: !1038, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1042, file: !990, line: 92, baseType: !532, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !989, file: !990, line: 101, baseType: !1047, size: 128)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 98, size: 128, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1047, file: !990, line: 99, baseType: !77, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1047, file: !990, line: 100, baseType: !160, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !989, file: !990, line: 108, baseType: !1052, size: 128)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !990, line: 104, size: 128, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1052, file: !990, line: 105, baseType: !109, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1052, file: !990, line: 106, baseType: !160, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1052, file: !990, line: 107, baseType: !7, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !522, file: !523, line: 1067, baseType: !1058, offset: 11136)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1059, line: 12, elements: !155)
!1059 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !522, file: !523, line: 1099, baseType: !1061, size: 64, offset: 11136)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !523, line: 56, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !522, file: !523, line: 1103, baseType: !173, size: 128, offset: 11200)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !522, file: !523, line: 1104, baseType: !1065, size: 64, offset: 11328)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !523, line: 46, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !522, file: !523, line: 1105, baseType: !476, size: 192, offset: 11392)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !522, file: !523, line: 1106, baseType: !7, size: 32, offset: 11584)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !522, file: !523, line: 1109, baseType: !1070, size: 128, offset: 11648)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 128, elements: !1073)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !523, line: 51, flags: DIFlagFwdDecl)
!1073 = !{!1074}
!1074 = !DISubrange(count: 2)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !522, file: !523, line: 1110, baseType: !476, size: 192, offset: 11776)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !522, file: !523, line: 1111, baseType: !173, size: 128, offset: 11968)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !522, file: !523, line: 1173, baseType: !1078, size: 64, offset: 12096)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1080, line: 62, size: 256, align: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !{!1082, !1083, !1084, !1089}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1079, file: !1080, line: 75, baseType: !532, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1079, file: !1080, line: 90, baseType: !532, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1079, file: !1080, line: 124, baseType: !1085, size: 64, offset: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !1080, line: 109, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1085, file: !1080, line: 110, baseType: !380, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1085, file: !1080, line: 112, baseType: !380, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !1080, line: 144, baseType: !532, size: 32, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !522, file: !523, line: 1174, baseType: !531, size: 32, offset: 12160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !522, file: !523, line: 1179, baseType: !309, size: 64, offset: 12224)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !522, file: !523, line: 1182, baseType: !1093, size: 128, offset: 12288)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !454, line: 76, size: 128, elements: !1094)
!1094 = !{!1095, !1100, !1101}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1093, file: !454, line: 85, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1097, line: 7, size: 64, elements: !1098)
!1097 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1096, file: !1097, line: 12, baseType: !682, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1093, file: !454, line: 88, baseType: !126, size: 8, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1093, file: !454, line: 95, baseType: !126, size: 8, offset: 72)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !522, file: !523, line: 1184, baseType: !1103, size: 128, offset: 12416)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !522, file: !523, line: 1184, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1103, file: !523, line: 1185, baseType: !537, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1103, file: !523, line: 1186, baseType: !813, size: 128, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !522, file: !523, line: 1190, baseType: !1108, size: 64, offset: 12544)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !523, line: 53, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !522, file: !523, line: 1192, baseType: !1111, size: 128, offset: 12608)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !454, line: 64, size: 128, elements: !1112)
!1112 = !{!1113, !1206, !1207}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1111, file: !454, line: 65, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !350, line: 68, size: 512, align: 128, elements: !1116)
!1116 = !{!1117, !1118, !1198, !1205}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !350, line: 69, baseType: !309, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !350, line: 77, baseType: !1119, size: 320, offset: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !350, line: 77, size: 320, elements: !1120)
!1120 = !{!1121, !1130, !1135, !1163, !1171, !1177, !1190, !1197}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 78, baseType: !1122, size: 320)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 78, size: 320, elements: !1123)
!1123 = !{!1124, !1125, !1128, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1122, file: !350, line: 84, baseType: !173, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1122, file: !350, line: 86, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !350, line: 26, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1122, file: !350, line: 87, baseType: !309, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1122, file: !350, line: 94, baseType: !309, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 96, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 96, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1131, file: !350, line: 101, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !127, line: 143, baseType: !378)
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 103, baseType: !1136, size: 320)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 103, size: 320, elements: !1137)
!1137 = !{!1138, !1148, !1151, !1152}
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !350, line: 104, baseType: !1139, size: 128)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !350, line: 104, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1139, file: !350, line: 105, baseType: !173, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !350, line: 106, baseType: !1143, size: 128)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !350, line: 106, size: 128, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1143, file: !350, line: 107, baseType: !1114, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1143, file: !350, line: 109, baseType: !160, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1143, file: !350, line: 110, baseType: !160, size: 32, offset: 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1136, file: !350, line: 117, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !350, line: 117, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1136, file: !350, line: 119, baseType: !109, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !350, line: 120, baseType: !1153, size: 64, offset: 256)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !350, line: 120, size: 64, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1153, file: !350, line: 121, baseType: !109, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1153, file: !350, line: 122, baseType: !309, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !350, line: 123, baseType: !1158, size: 32)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1153, file: !350, line: 123, size: 32, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1158, file: !350, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1158, file: !350, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1158, file: !350, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 130, baseType: !1164, size: 192)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 130, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1164, file: !350, line: 131, baseType: !309, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1164, file: !350, line: 134, baseType: !136, size: 8, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1164, file: !350, line: 135, baseType: !136, size: 8, offset: 72)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1164, file: !350, line: 136, baseType: !399, size: 32, offset: 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1164, file: !350, line: 137, baseType: !7, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 139, baseType: !1172, size: 256)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 139, size: 256, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1172, file: !350, line: 140, baseType: !309, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1172, file: !350, line: 141, baseType: !399, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1172, file: !350, line: 143, baseType: !173, size: 128, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 145, baseType: !1178, size: 256)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 145, size: 256, elements: !1179)
!1179 = !{!1180, !1181, !1183, !1184, !1189}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1178, file: !350, line: 146, baseType: !309, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1178, file: !350, line: 147, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !339, line: 509, baseType: !1114)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1178, file: !350, line: 148, baseType: !309, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !350, line: 149, baseType: !1185, size: 64, offset: 192)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !350, line: 149, size: 64, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1185, file: !350, line: 150, baseType: !366, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1185, file: !350, line: 151, baseType: !399, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1178, file: !350, line: 156, baseType: !141, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !350, line: 159, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1119, file: !350, line: 159, size: 128, elements: !1192)
!1192 = !{!1193, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1191, file: !350, line: 161, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !350, line: 161, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1191, file: !350, line: 162, baseType: !109, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1119, file: !350, line: 176, baseType: !813, size: 128, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !350, line: 179, baseType: !1199, size: 32, offset: 384)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !350, line: 179, size: 32, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1199, file: !350, line: 184, baseType: !399, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1199, file: !350, line: 192, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1199, file: !350, line: 194, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1199, file: !350, line: 195, baseType: !160, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1115, file: !350, line: 199, baseType: !399, size: 32, offset: 416)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1111, file: !454, line: 67, baseType: !532, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1111, file: !454, line: 68, baseType: !532, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !522, file: !523, line: 1206, baseType: !160, size: 32, offset: 12736)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !522, file: !523, line: 1207, baseType: !160, size: 32, offset: 12768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !522, file: !523, line: 1209, baseType: !309, size: 64, offset: 12800)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !522, file: !523, line: 1219, baseType: !378, size: 64, offset: 12864)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !522, file: !523, line: 1220, baseType: !378, size: 64, offset: 12928)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !522, file: !523, line: 1317, baseType: !160, size: 32, offset: 12992)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !522, file: !523, line: 1319, baseType: !521, size: 64, offset: 13056)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !522, file: !523, line: 1322, baseType: !1216, size: 64, offset: 13120)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !523, line: 1322, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !522, file: !523, line: 1326, baseType: !537, size: 32, offset: 13184)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !522, file: !523, line: 1342, baseType: !109, size: 64, offset: 13248)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !522, file: !523, line: 1343, baseType: !380, size: 64, offset: 13312)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !522, file: !523, line: 1344, baseType: !378, size: 64, offset: 13376)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !522, file: !523, line: 1345, baseType: !380, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !522, file: !523, line: 1346, baseType: !380, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !522, file: !523, line: 1347, baseType: !380, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !522, file: !523, line: 1348, baseType: !813, size: 128, align: 64, offset: 13504)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !522, file: !523, line: 1358, baseType: !1227, size: 34816, offset: 13824)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1228, line: 485, size: 34816, elements: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1259, !1260, !1261, !1262, !1263, !1264, !1267, !1268, !1269}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1227, file: !1228, line: 487, baseType: !1231, size: 192)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 192, elements: !261)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1233, line: 16, size: 64, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1232, file: !1233, line: 17, baseType: !505, size: 16)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1232, file: !1233, line: 18, baseType: !505, size: 16, offset: 16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1232, file: !1233, line: 19, baseType: !505, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1232, file: !1233, line: 19, baseType: !505, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1232, file: !1233, line: 19, baseType: !505, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1232, file: !1233, line: 19, baseType: !505, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1232, file: !1233, line: 19, baseType: !505, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1232, file: !1233, line: 20, baseType: !505, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1232, file: !1233, line: 20, baseType: !505, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1232, file: !1233, line: 20, baseType: !505, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1232, file: !1233, line: 20, baseType: !505, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1232, file: !1233, line: 20, baseType: !505, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1232, file: !1233, line: 20, baseType: !505, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1227, file: !1228, line: 491, baseType: !309, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1227, file: !1228, line: 495, baseType: !301, size: 16, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1227, file: !1228, line: 496, baseType: !301, size: 16, offset: 272)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1227, file: !1228, line: 497, baseType: !301, size: 16, offset: 288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1227, file: !1228, line: 498, baseType: !301, size: 16, offset: 304)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1227, file: !1228, line: 502, baseType: !309, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1227, file: !1228, line: 503, baseType: !309, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1227, file: !1228, line: 514, baseType: !1256, size: 256, offset: 448)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 256, elements: !458)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1228, line: 483, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1227, file: !1228, line: 516, baseType: !309, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1227, file: !1228, line: 518, baseType: !309, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1227, file: !1228, line: 520, baseType: !309, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1227, file: !1228, line: 521, baseType: !309, size: 64, offset: 896)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1227, file: !1228, line: 522, baseType: !309, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1227, file: !1228, line: 528, baseType: !1265, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1228, line: 10, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1227, file: !1228, line: 535, baseType: !309, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1227, file: !1228, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1227, file: !1228, line: 540, baseType: !1270, size: 33280, offset: 1536)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1271, line: 317, size: 33280, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1270, file: !1271, line: 330, baseType: !7, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1270, file: !1271, line: 337, baseType: !309, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !1271, line: 348, baseType: !1276, size: 32768, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1271, line: 304, size: 32768, elements: !1277)
!1277 = !{!1278, !1293, !1330, !1380, !1397}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1276, file: !1271, line: 305, baseType: !1279, size: 896)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1271, line: 12, size: 896, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1292}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1279, file: !1271, line: 13, baseType: !531, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1279, file: !1271, line: 14, baseType: !531, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1279, file: !1271, line: 15, baseType: !531, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1279, file: !1271, line: 16, baseType: !531, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1279, file: !1271, line: 17, baseType: !531, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1279, file: !1271, line: 18, baseType: !531, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1279, file: !1271, line: 19, baseType: !531, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1279, file: !1271, line: 22, baseType: !1289, size: 640, offset: 224)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 640, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 20)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1279, file: !1271, line: 25, baseType: !531, size: 32, offset: 864)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1276, file: !1271, line: 306, baseType: !1294, size: 4096, align: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1271, line: 34, size: 4096, align: 128, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1315, !1316, !1317, !1319, !1321, !1325}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1294, file: !1271, line: 35, baseType: !505, size: 16)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1294, file: !1271, line: 36, baseType: !505, size: 16, offset: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1294, file: !1271, line: 37, baseType: !505, size: 16, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1294, file: !1271, line: 38, baseType: !505, size: 16, offset: 48)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 39, baseType: !1301, size: 128, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 39, size: 128, elements: !1302)
!1302 = !{!1303, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 40, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 40, size: 128, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1304, file: !1271, line: 41, baseType: !378, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1304, file: !1271, line: 42, baseType: !378, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 44, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 44, size: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1309, file: !1271, line: 45, baseType: !531, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1309, file: !1271, line: 46, baseType: !531, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1309, file: !1271, line: 47, baseType: !531, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1309, file: !1271, line: 48, baseType: !531, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1294, file: !1271, line: 51, baseType: !531, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1294, file: !1271, line: 52, baseType: !531, size: 32, offset: 224)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1294, file: !1271, line: 55, baseType: !1318, size: 1024, offset: 256)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 1024, elements: !118)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1294, file: !1271, line: 58, baseType: !1320, size: 2048, offset: 1280)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 2048, elements: !265)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1294, file: !1271, line: 60, baseType: !1322, size: 384, offset: 3328)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 384, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 12)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 62, baseType: !1326, size: 384, offset: 3712)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 62, size: 384, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1326, file: !1271, line: 63, baseType: !1322, size: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1326, file: !1271, line: 64, baseType: !1322, size: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1276, file: !1271, line: 307, baseType: !1331, size: 1088)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1271, line: 79, size: 1088, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1379}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1331, file: !1271, line: 80, baseType: !531, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1331, file: !1271, line: 81, baseType: !531, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1331, file: !1271, line: 82, baseType: !531, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1331, file: !1271, line: 83, baseType: !531, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1331, file: !1271, line: 84, baseType: !531, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1331, file: !1271, line: 85, baseType: !531, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1331, file: !1271, line: 86, baseType: !531, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1331, file: !1271, line: 88, baseType: !1289, size: 640, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1331, file: !1271, line: 89, baseType: !668, size: 8, offset: 864)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1331, file: !1271, line: 90, baseType: !668, size: 8, offset: 872)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1331, file: !1271, line: 91, baseType: !668, size: 8, offset: 880)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1331, file: !1271, line: 92, baseType: !668, size: 8, offset: 888)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1331, file: !1271, line: 93, baseType: !668, size: 8, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1331, file: !1271, line: 94, baseType: !668, size: 8, offset: 904)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1331, file: !1271, line: 95, baseType: !1348, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1350, line: 11, size: 128, elements: !1351)
!1350 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1349, file: !1350, line: 12, baseType: !77, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1349, file: !1350, line: 13, baseType: !1354, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1356, line: 56, size: 1344, elements: !1357)
!1356 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1355, file: !1356, line: 61, baseType: !309, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1355, file: !1356, line: 62, baseType: !309, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1355, file: !1356, line: 63, baseType: !309, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1355, file: !1356, line: 64, baseType: !309, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1355, file: !1356, line: 65, baseType: !309, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1355, file: !1356, line: 66, baseType: !309, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1355, file: !1356, line: 68, baseType: !309, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1355, file: !1356, line: 69, baseType: !309, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1355, file: !1356, line: 70, baseType: !309, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1355, file: !1356, line: 71, baseType: !309, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1355, file: !1356, line: 72, baseType: !309, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1355, file: !1356, line: 73, baseType: !309, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1355, file: !1356, line: 74, baseType: !309, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1355, file: !1356, line: 75, baseType: !309, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1355, file: !1356, line: 76, baseType: !309, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1355, file: !1356, line: 81, baseType: !309, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1355, file: !1356, line: 83, baseType: !309, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1355, file: !1356, line: 84, baseType: !309, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !1356, line: 85, baseType: !309, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1355, file: !1356, line: 86, baseType: !309, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1355, file: !1356, line: 87, baseType: !309, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1331, file: !1271, line: 96, baseType: !531, size: 32, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1276, file: !1271, line: 308, baseType: !1381, size: 4608, align: 512)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1271, line: 289, size: 4608, align: 512, elements: !1382)
!1382 = !{!1383, !1384, !1393}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1381, file: !1271, line: 290, baseType: !1294, size: 4096, align: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1381, file: !1271, line: 291, baseType: !1385, size: 512, offset: 4096)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1271, line: 268, size: 512, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1385, file: !1271, line: 269, baseType: !378, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1385, file: !1271, line: 270, baseType: !378, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1385, file: !1271, line: 271, baseType: !1390, size: 384, offset: 128)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 6)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1381, file: !1271, line: 292, baseType: !1394, offset: 4608)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 0)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1276, file: !1271, line: 309, baseType: !1398, size: 32768)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 32768, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 4096)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !350, line: 378, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !514, file: !350, line: 384, baseType: !835, size: 192, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !370, file: !350, line: 500, baseType: !141, offset: 6656)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !370, file: !350, line: 501, baseType: !1406, size: 64, offset: 6656)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !350, line: 387, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !370, file: !350, line: 516, baseType: !1409, size: 64, offset: 6720)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1411, line: 18, flags: DIFlagFwdDecl)
!1411 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !370, file: !350, line: 519, baseType: !337, size: 64, offset: 6784)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !370, file: !350, line: 521, baseType: !1414, size: 64, offset: 6848)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !350, line: 521, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !370, file: !350, line: 545, baseType: !399, size: 32, offset: 6912)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !370, file: !350, line: 548, baseType: !126, size: 8, offset: 6944)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !370, file: !350, line: 550, baseType: !1419, offset: 6952)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1420, line: 142, elements: !155)
!1420 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !370, file: !350, line: 554, baseType: !1422, size: 256, offset: 6976)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !76, line: 102, size: 256, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1422, file: !76, line: 103, baseType: !407, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1422, file: !76, line: 104, baseType: !173, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1422, file: !76, line: 105, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !76, line: 21, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !370, file: !350, line: 557, baseType: !531, size: 32, offset: 7232)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !367, file: !350, line: 565, baseType: !1434, offset: 7296)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1435)
!1435 = !{!1436}
!1436 = !DISubrange(count: -1)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !349, file: !350, line: 333, baseType: !1438, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !339, line: 284, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !339, line: 284, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1439, file: !339, line: 284, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !397, line: 19, baseType: !309)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !349, file: !350, line: 334, baseType: !309, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !349, file: !350, line: 343, baseType: !1445, size: 256, offset: 704)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !350, line: 340, size: 256, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1445, file: !350, line: 341, baseType: !357, size: 192, align: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1445, file: !350, line: 342, baseType: !309, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !349, file: !350, line: 351, baseType: !173, size: 128, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !349, file: !350, line: 353, baseType: !1451, size: 64, offset: 1088)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !350, line: 353, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !349, file: !350, line: 356, baseType: !1454, size: 64, offset: 1152)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !350, line: 356, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !349, file: !350, line: 359, baseType: !309, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !349, file: !350, line: 361, baseType: !337, size: 64, offset: 1280)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !349, file: !350, line: 362, baseType: !109, size: 64, offset: 1344)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !349, file: !350, line: 365, baseType: !407, size: 64, offset: 1408)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !349, file: !350, line: 373, baseType: !1462, offset: 1472)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !350, line: 296, elements: !155)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !316, file: !285, line: 90, baseType: !311, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !316, file: !285, line: 91, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !275, file: !222, line: 143, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1470, !227}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !24, line: 39, size: 384, elements: !1473)
!1473 = !{!1474, !1475, !1479, !1483, !1491, !1495}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1472, file: !24, line: 40, baseType: !23, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1472, file: !24, line: 41, baseType: !1476, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!126}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1472, file: !24, line: 42, baseType: !1480, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!109}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1472, file: !24, line: 43, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1487, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !24, line: 19, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1472, file: !24, line: 44, baseType: !1492, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1487}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1472, file: !24, line: 45, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !109}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !275, file: !222, line: 144, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1487, !227}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !275, file: !222, line: 145, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !227, !1507, !1513}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1411, line: 23, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1411, line: 21, size: 32, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1509, file: !1411, line: 22, baseType: !1512, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 32, baseType: !997)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1411, line: 28, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1411, line: 26, size: 32, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1515, file: !1411, line: 27, baseType: !1518, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 33, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !293, line: 50, baseType: !7)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !221, file: !222, line: 70, baseType: !1521, size: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1523, line: 123, size: 1024, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1667, !1668, !1669, !1670, !1671}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1522, file: !1523, line: 124, baseType: !399, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1522, file: !1523, line: 125, baseType: !399, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1522, file: !1523, line: 135, baseType: !1521, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1522, file: !1523, line: 136, baseType: !185, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1522, file: !1523, line: 138, baseType: !357, size: 192, align: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1522, file: !1523, line: 140, baseType: !1487, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1522, file: !1523, line: 141, baseType: !7, size: 32, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !1523, line: 142, baseType: !1533, size: 256, offset: 512)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !1523, line: 142, size: 256, elements: !1534)
!1534 = !{!1535, !1590, !1594}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1533, file: !1523, line: 143, baseType: !1536, size: 192)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1523, line: 91, size: 192, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1536, file: !1523, line: 92, baseType: !309, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1536, file: !1523, line: 94, baseType: !374, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1536, file: !1523, line: 100, baseType: !1541, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1523, line: 180, size: 704, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1560, !1561, !1562, !1588, !1589}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1542, file: !1523, line: 182, baseType: !1521, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1523, line: 183, baseType: !7, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1542, file: !1523, line: 186, baseType: !1547, size: 192, offset: 128)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1548, line: 19, size: 192, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1558, !1559}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1547, file: !1548, line: 20, baseType: !1551, size: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1552, line: 292, size: 128, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1557}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1551, file: !1552, line: 293, baseType: !141)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1551, file: !1552, line: 295, baseType: !1556, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !127, line: 148, baseType: !7)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1551, file: !1552, line: 296, baseType: !109, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1547, file: !1548, line: 21, baseType: !7, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1547, file: !1548, line: 22, baseType: !7, size: 32, offset: 160)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1542, file: !1523, line: 187, baseType: !531, size: 32, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1542, file: !1523, line: 188, baseType: !531, size: 32, offset: 352)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1542, file: !1523, line: 189, baseType: !1563, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1523, line: 168, size: 320, elements: !1565)
!1565 = !{!1566, !1572, !1576, !1580, !1584}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1564, file: !1523, line: 169, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!160, !1570, !1541}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !339, line: 539, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1564, file: !1523, line: 171, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!160, !1521, !185, !300}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1564, file: !1523, line: 173, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!160, !1521}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1564, file: !1523, line: 174, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!160, !1521, !1521, !185}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1564, file: !1523, line: 176, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!160, !1570, !1521, !1541}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1542, file: !1523, line: 192, baseType: !173, size: 128, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1542, file: !1523, line: 194, baseType: !806, size: 128, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1533, file: !1523, line: 144, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1523, line: 103, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1591, file: !1523, line: 104, baseType: !1521, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1533, file: !1523, line: 145, baseType: !1595, size: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1523, line: 107, size: 256, elements: !1596)
!1596 = !{!1597, !1662, !1665, !1666}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1595, file: !1523, line: 108, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1523, line: 217, size: 768, elements: !1601)
!1601 = !{!1602, !1622, !1626, !1630, !1635, !1639, !1643, !1647, !1648, !1649, !1650, !1658}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1600, file: !1523, line: 222, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!160, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1523, line: 197, size: 1088, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1607, file: !1523, line: 199, baseType: !1521, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1607, file: !1523, line: 200, baseType: !337, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1607, file: !1523, line: 201, baseType: !1570, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1607, file: !1523, line: 202, baseType: !109, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1607, file: !1523, line: 205, baseType: !476, size: 192, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1607, file: !1523, line: 206, baseType: !476, size: 192, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1607, file: !1523, line: 207, baseType: !160, size: 32, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1607, file: !1523, line: 208, baseType: !173, size: 128, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1607, file: !1523, line: 209, baseType: !260, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1607, file: !1523, line: 211, baseType: !306, size: 64, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1607, file: !1523, line: 212, baseType: !126, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1607, file: !1523, line: 213, baseType: !126, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1607, file: !1523, line: 214, baseType: !1454, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1600, file: !1523, line: 223, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1606}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1600, file: !1523, line: 236, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!160, !1570, !109}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1600, file: !1523, line: 238, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!109, !1570, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1600, file: !1523, line: 239, baseType: !1636, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!109, !1570, !109, !1634}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1600, file: !1523, line: 240, baseType: !1640, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1570, !109}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1600, file: !1523, line: 242, baseType: !1644, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!291, !1606, !260, !306, !340}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1600, file: !1523, line: 252, baseType: !306, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1600, file: !1523, line: 259, baseType: !126, size: 8, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1600, file: !1523, line: 260, baseType: !1644, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1600, file: !1523, line: 263, baseType: !1651, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1654, !1606, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1655, line: 52, baseType: !7)
!1655 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1523, line: 27, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1600, file: !1523, line: 266, baseType: !1659, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!160, !1606, !348}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1595, file: !1523, line: 109, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1523, line: 31, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1595, file: !1523, line: 110, baseType: !340, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1595, file: !1523, line: 111, baseType: !1521, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1522, file: !1523, line: 148, baseType: !109, size: 64, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1522, file: !1523, line: 154, baseType: !378, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1522, file: !1523, line: 156, baseType: !301, size: 16, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1522, file: !1523, line: 157, baseType: !300, size: 16, offset: 912)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1522, file: !1523, line: 158, baseType: !1672, size: 64, offset: 960)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1523, line: 32, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !221, file: !222, line: 71, baseType: !1675, size: 32, offset: 448)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1676, line: 19, size: 32, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1675, file: !1676, line: 20, baseType: !537, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !221, file: !222, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !221, file: !222, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !221, file: !222, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !221, file: !222, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !221, file: !222, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !30, line: 463, baseType: !217, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !218, file: !30, line: 465, baseType: !1686, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !218, file: !30, line: 467, baseType: !185, size: 64, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !30, line: 468, baseType: !1690, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1700, !1705, !1709}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1692, file: !30, line: 88, baseType: !185, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1692, file: !30, line: 89, baseType: !313, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1692, file: !30, line: 90, baseType: !1697, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!160, !217, !255}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1692, file: !30, line: 91, baseType: !1701, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!260, !217, !1704, !1507, !1513}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1692, file: !30, line: 93, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !217}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1692, file: !30, line: 95, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1713)
!1713 = !{!1714, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1712, file: !37, line: 279, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!160, !217}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1712, file: !37, line: 280, baseType: !1706, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1712, file: !37, line: 281, baseType: !1715, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1712, file: !37, line: 282, baseType: !1715, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1712, file: !37, line: 283, baseType: !1715, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1712, file: !37, line: 284, baseType: !1715, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1712, file: !37, line: 285, baseType: !1715, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1712, file: !37, line: 286, baseType: !1715, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1712, file: !37, line: 287, baseType: !1715, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1712, file: !37, line: 288, baseType: !1715, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1712, file: !37, line: 289, baseType: !1715, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1712, file: !37, line: 290, baseType: !1715, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1712, file: !37, line: 291, baseType: !1715, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1712, file: !37, line: 292, baseType: !1715, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1712, file: !37, line: 293, baseType: !1715, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1712, file: !37, line: 294, baseType: !1715, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1712, file: !37, line: 295, baseType: !1715, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1712, file: !37, line: 296, baseType: !1715, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1712, file: !37, line: 297, baseType: !1715, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1712, file: !37, line: 298, baseType: !1715, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1712, file: !37, line: 299, baseType: !1715, size: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1712, file: !37, line: 300, baseType: !1715, size: 64, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1712, file: !37, line: 301, baseType: !1715, size: 64, offset: 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !218, file: !30, line: 470, baseType: !210, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !218, file: !30, line: 471, baseType: !1742, size: 64, offset: 832)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !218, file: !30, line: 473, baseType: !109, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !218, file: !30, line: 475, baseType: !109, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !218, file: !30, line: 480, baseType: !476, size: 192, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !218, file: !30, line: 484, baseType: !1747, size: 576, offset: 1216)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1747, file: !30, line: 362, baseType: !173, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1747, file: !30, line: 363, baseType: !173, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1747, file: !30, line: 364, baseType: !173, size: 128, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1747, file: !30, line: 365, baseType: !173, size: 128, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1747, file: !30, line: 366, baseType: !126, size: 8, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1747, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !218, file: !30, line: 485, baseType: !1756, size: 2304, offset: 1792)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1757)
!1757 = !{!1758, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1857, !1861}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1756, file: !37, line: 566, baseType: !1759, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1760, file: !37, line: 51, baseType: !160, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1756, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1756, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1756, file: !37, line: 569, baseType: !126, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1756, file: !37, line: 570, baseType: !126, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1756, file: !37, line: 571, baseType: !126, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1756, file: !37, line: 572, baseType: !126, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1756, file: !37, line: 573, baseType: !126, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1756, file: !37, line: 574, baseType: !126, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1756, file: !37, line: 575, baseType: !126, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1756, file: !37, line: 576, baseType: !126, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1756, file: !37, line: 577, baseType: !531, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !37, line: 578, baseType: !141, offset: 96)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !37, line: 580, baseType: !173, size: 128, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1756, file: !37, line: 581, baseType: !835, size: 192, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1756, file: !37, line: 582, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1780, line: 43, size: 1472, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1789, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1779, file: !1780, line: 44, baseType: !185, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1779, file: !1780, line: 45, baseType: !160, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1779, file: !1780, line: 46, baseType: !173, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1779, file: !1780, line: 47, baseType: !141, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1779, file: !1780, line: 48, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1779, file: !1780, line: 49, baseType: !1790, size: 320, offset: 320)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1791, line: 11, size: 320, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795, !1800}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1790, file: !1791, line: 16, baseType: !799, size: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1790, file: !1791, line: 17, baseType: !309, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1790, file: !1791, line: 18, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1791, line: 19, baseType: !531, size: 32, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1779, file: !1780, line: 50, baseType: !309, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1779, file: !1780, line: 51, baseType: !607, size: 64, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1779, file: !1780, line: 52, baseType: !607, size: 64, offset: 768)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1779, file: !1780, line: 53, baseType: !607, size: 64, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1779, file: !1780, line: 54, baseType: !607, size: 64, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1779, file: !1780, line: 55, baseType: !607, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1779, file: !1780, line: 56, baseType: !309, size: 64, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1779, file: !1780, line: 57, baseType: !309, size: 64, offset: 1088)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1779, file: !1780, line: 58, baseType: !309, size: 64, offset: 1152)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1779, file: !1780, line: 59, baseType: !309, size: 64, offset: 1216)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1779, file: !1780, line: 60, baseType: !309, size: 64, offset: 1280)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1779, file: !1780, line: 61, baseType: !217, size: 64, offset: 1344)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1779, file: !1780, line: 62, baseType: !126, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1779, file: !1780, line: 63, baseType: !126, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1756, file: !37, line: 583, baseType: !126, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1756, file: !37, line: 584, baseType: !126, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1756, file: !37, line: 585, baseType: !126, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1756, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1756, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1756, file: !37, line: 592, baseType: !599, size: 512, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1756, file: !37, line: 593, baseType: !378, size: 64, offset: 1088)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1756, file: !37, line: 594, baseType: !1422, size: 256, offset: 1152)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1756, file: !37, line: 595, baseType: !806, size: 128, offset: 1408)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1756, file: !37, line: 596, baseType: !1787, size: 64, offset: 1536)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1756, file: !37, line: 597, baseType: !399, size: 32, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1756, file: !37, line: 598, baseType: !399, size: 32, offset: 1632)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1756, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1756, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1756, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1756, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1756, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1756, file: !37, line: 604, baseType: !126, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1756, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1756, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1756, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1756, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1756, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1756, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1756, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1756, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1756, file: !37, line: 613, baseType: !160, size: 32, offset: 1792)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1756, file: !37, line: 614, baseType: !160, size: 32, offset: 1824)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1756, file: !37, line: 615, baseType: !378, size: 64, offset: 1856)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1756, file: !37, line: 616, baseType: !378, size: 64, offset: 1920)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1756, file: !37, line: 617, baseType: !378, size: 64, offset: 1984)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1756, file: !37, line: 618, baseType: !378, size: 64, offset: 2048)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1756, file: !37, line: 620, baseType: !1848, size: 64, offset: 2112)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !37, line: 537, baseType: !141)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1849, file: !37, line: 538, baseType: !7, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1849, file: !37, line: 540, baseType: !173, size: 128, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1849, file: !37, line: 543, baseType: !1855, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1756, file: !37, line: 621, baseType: !1858, size: 64, offset: 2176)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !217, !759}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1756, file: !37, line: 622, baseType: !1862, size: 64, offset: 2240)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !218, file: !30, line: 486, baseType: !1865, size: 64, offset: 4096)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1874, !1875, !1876}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1866, file: !37, line: 643, baseType: !1712, size: 1472)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1866, file: !37, line: 644, baseType: !1715, size: 64, offset: 1472)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1866, file: !37, line: 645, baseType: !1871, size: 64, offset: 1536)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !217, !126}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1866, file: !37, line: 646, baseType: !1715, size: 64, offset: 1600)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1866, file: !37, line: 647, baseType: !1706, size: 64, offset: 1664)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1866, file: !37, line: 648, baseType: !1706, size: 64, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !218, file: !30, line: 493, baseType: !1878, size: 64, offset: 4160)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !218, file: !30, line: 499, baseType: !173, size: 128, offset: 4224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !218, file: !30, line: 502, baseType: !1882, size: 64, offset: 4352)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !218, file: !30, line: 504, baseType: !1886, size: 64, offset: 4416)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !218, file: !30, line: 505, baseType: !378, size: 64, offset: 4480)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !218, file: !30, line: 510, baseType: !378, size: 64, offset: 4544)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !218, file: !30, line: 511, baseType: !1890, size: 64, offset: 4608)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !218, file: !30, line: 513, baseType: !1894, size: 64, offset: 4672)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1895, file: !30, line: 293, baseType: !7, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1895, file: !30, line: 294, baseType: !309, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !218, file: !30, line: 515, baseType: !173, size: 128, offset: 4736)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !218, file: !30, line: 526, baseType: !1901, offset: 4864)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1902, line: 5, elements: !155)
!1902 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !218, file: !30, line: 528, baseType: !1904, size: 64, offset: 4864)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1906, line: 14, flags: DIFlagFwdDecl)
!1906 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !218, file: !30, line: 529, baseType: !1908, size: 64, offset: 4928)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !212, line: 22, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !218, file: !30, line: 534, baseType: !1911, size: 32, offset: 4992)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !127, line: 16, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !127, line: 13, baseType: !531)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !218, file: !30, line: 535, baseType: !531, size: 32, offset: 5024)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !218, file: !30, line: 537, baseType: !141, offset: 5056)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !218, file: !30, line: 538, baseType: !173, size: 128, offset: 5056)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !218, file: !30, line: 540, baseType: !1917, size: 64, offset: 5184)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1919, line: 54, size: 960, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922, !1926, !1927, !1928, !1929, !1930, !1934, !1938, !1939, !1940, !1941, !1945, !1949, !1950}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1918, file: !1919, line: 55, baseType: !185, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1918, file: !1919, line: 56, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1925, line: 76, flags: DIFlagFwdDecl)
!1925 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1918, file: !1919, line: 58, baseType: !313, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1918, file: !1919, line: 59, baseType: !313, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1918, file: !1919, line: 60, baseType: !227, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1918, file: !1919, line: 62, baseType: !1697, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1918, file: !1919, line: 63, baseType: !1931, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!260, !217, !1704}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1918, file: !1919, line: 65, baseType: !1935, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1917}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1918, file: !1919, line: 66, baseType: !1706, size: 64, offset: 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1918, file: !1919, line: 68, baseType: !1715, size: 64, offset: 576)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1918, file: !1919, line: 70, baseType: !1470, size: 64, offset: 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1918, file: !1919, line: 71, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1487, !217}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1918, file: !1919, line: 73, baseType: !1946, size: 64, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !217, !1507, !1513}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1918, file: !1919, line: 75, baseType: !1710, size: 64, offset: 832)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1918, file: !1919, line: 77, baseType: !1951, size: 64, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !212, line: 111, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !218, file: !30, line: 541, baseType: !313, size: 64, offset: 5248)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !218, file: !30, line: 543, baseType: !1706, size: 64, offset: 5312)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !218, file: !30, line: 544, baseType: !1956, size: 64, offset: 5376)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !218, file: !30, line: 545, baseType: !1959, size: 64, offset: 5440)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !218, file: !30, line: 547, baseType: !126, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !218, file: !30, line: 548, baseType: !126, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !218, file: !30, line: 549, baseType: !126, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !218, file: !30, line: 550, baseType: !126, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !211, file: !212, line: 86, baseType: !313, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !211, file: !212, line: 87, baseType: !313, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !211, file: !212, line: 88, baseType: !313, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !211, file: !212, line: 90, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!160, !217, !1742}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !211, file: !212, line: 91, baseType: !1697, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !211, file: !212, line: 92, baseType: !1715, size: 64, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !211, file: !212, line: 93, baseType: !1706, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !211, file: !212, line: 94, baseType: !1715, size: 64, offset: 640)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !211, file: !212, line: 95, baseType: !1706, size: 64, offset: 704)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !211, file: !212, line: 97, baseType: !1715, size: 64, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !211, file: !212, line: 98, baseType: !1715, size: 64, offset: 832)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !211, file: !212, line: 100, baseType: !1980, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!160, !217, !1759}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !211, file: !212, line: 101, baseType: !1715, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !211, file: !212, line: 103, baseType: !1715, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !211, file: !212, line: 105, baseType: !1715, size: 64, offset: 1088)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !211, file: !212, line: 107, baseType: !1710, size: 64, offset: 1152)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !211, file: !212, line: 109, baseType: !1988, size: 64, offset: 1216)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !212, line: 109, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !211, file: !212, line: 111, baseType: !1951, size: 64, offset: 1280)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !211, file: !212, line: 112, baseType: !1993, offset: 1344)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1994, line: 187, elements: !155)
!1994 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !211, file: !212, line: 114, baseType: !126, size: 8, offset: 1344)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !206, file: !51, line: 99, baseType: !1923, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !206, file: !51, line: 100, baseType: !185, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !206, file: !51, line: 102, baseType: !126, size: 8, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !206, file: !51, line: 103, baseType: !50, size: 32, offset: 288)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !206, file: !51, line: 105, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !131, line: 262, size: 1600, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2008}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2003, file: !131, line: 263, baseType: !116, size: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2003, file: !131, line: 264, baseType: !116, size: 256, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2003, file: !131, line: 265, baseType: !122, size: 1024, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2003, file: !131, line: 266, baseType: !1487, size: 64, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !206, file: !51, line: 106, baseType: !2010, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !131, line: 210, size: 256, elements: !2013)
!2013 = !{!2014, !2018, !2020, !2021}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2012, file: !131, line: 211, baseType: !2015, size: 72)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 72, elements: !2016)
!2016 = !{!2017}
!2017 = !DISubrange(count: 9)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2012, file: !131, line: 212, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !131, line: 14, baseType: !309)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2012, file: !131, line: 213, baseType: !532, size: 32, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2012, file: !131, line: 214, baseType: !532, size: 32, offset: 224)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !206, file: !51, line: 108, baseType: !1715, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !206, file: !51, line: 109, baseType: !1706, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !206, file: !51, line: 110, baseType: !1715, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !206, file: !51, line: 111, baseType: !1706, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !206, file: !51, line: 112, baseType: !1980, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !206, file: !51, line: 113, baseType: !1715, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !206, file: !51, line: 114, baseType: !313, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !206, file: !51, line: 115, baseType: !313, size: 64, offset: 896)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !206, file: !51, line: 117, baseType: !1710, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !206, file: !51, line: 118, baseType: !1706, size: 64, offset: 1024)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !206, file: !51, line: 120, baseType: !2033, size: 64, offset: 1088)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !51, line: 120, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !111, file: !112, line: 53, baseType: !476, size: 192, offset: 2432)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !111, file: !112, line: 55, baseType: !218, size: 5568, offset: 2624)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !112, line: 57, baseType: !173, size: 128, offset: 8192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !111, file: !112, line: 63, baseType: !2039, size: 64, offset: 8320)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_event", file: !3, line: 140, size: 320, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2041, file: !3, line: 141, baseType: !56, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !2041, file: !3, line: 142, baseType: !109, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2041, file: !3, line: 143, baseType: !1923, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2041, file: !3, line: 144, baseType: !173, size: 128, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2051 = !{!0, !2052, !2057, !2062, !2067, !2069, !2071, !2078, !2080, !2082, !2085, !2087, !2090, !2092, !2097, !2111, !2113, !2115, !2117, !2119, !2122, !2124, !2126, !2128, !2130, !2132, !2134, !2136, !2139, !2141, !2144, !2157, !2159, !2161}
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description162", scope: !2, file: !3, line: 25, type: !2054, isLocal: true, isDefinition: true, align: 8)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 328, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 41)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file163", scope: !2, file: !3, line: 26, type: !2059, isLocal: true, isDefinition: true, align: 8)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 296, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 37)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license164", scope: !2, file: !3, line: 26, type: !2064, isLocal: true, isDefinition: true, align: 8)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 144, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 18)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "serio_bus", scope: !2, file: !3, line: 1014, type: !211, isLocal: false, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_init208", scope: !2, file: !3, line: 1052, type: !109, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "__exitcall_serio_exit", scope: !2, file: !3, line: 1053, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2074, line: 117, baseType: !2075)
!2074 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null}
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "serio_event_lock", scope: !2, file: !3, line: 147, type: !141, isLocal: true, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "serio_event_list", scope: !2, file: !3, line: 148, type: !173, isLocal: true, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "serio_no", scope: !2084, file: !3, line: 499, type: !399, isLocal: true, isDefinition: true)
!2084 = distinct !DISubprogram(name: "serio_init_port", scope: !3, file: !3, line: 497, type: !167, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2085 = !DIGlobalVariableExpression(var: !2086, expr: !DIExpression())
!2086 = distinct !DIGlobalVariable(name: "__key", scope: !2084, file: !3, line: 507, type: !1993, isLocal: true, isDefinition: true)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(name: "serio_device_attr_groups", scope: !2, file: !3, line: 480, type: !2089, isLocal: true, isDefinition: true)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 192, elements: !261)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "serio_id_attr_group", scope: !2, file: !3, line: 456, type: !315, isLocal: true, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "serio_device_id_attrs", scope: !2, file: !3, line: 448, type: !2094, isLocal: true, isDefinition: true)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 320, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 5)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 443, type: !2099, isLocal: true, isDefinition: true)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2100)
!2100 = !{!2101, !2102, !2107}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2099, file: !30, line: 100, baseType: !296, size: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2099, file: !30, line: 101, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!291, !217, !2106, !260}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2099, file: !30, line: 103, baseType: !2108, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!291, !217, !2106, !185, !306}
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(name: "dev_attr_proto", scope: !2, file: !3, line: 444, type: !2099, isLocal: true, isDefinition: true)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 445, type: !2099, isLocal: true, isDefinition: true)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(name: "dev_attr_extra", scope: !2, file: !3, line: 446, type: !2099, isLocal: true, isDefinition: true)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(name: "serio_device_attr_group", scope: !2, file: !3, line: 476, type: !315, isLocal: true, isDefinition: true)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(name: "serio_device_attrs", scope: !2, file: !3, line: 467, type: !2121, isLocal: true, isDefinition: true)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 384, elements: !1391)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 461, type: !2099, isLocal: true, isDefinition: true)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "dev_attr_description", scope: !2, file: !3, line: 463, type: !2099, isLocal: true, isDefinition: true)
!2126 = !DIGlobalVariableExpression(var: !2127, expr: !DIExpression())
!2127 = distinct !DIGlobalVariable(name: "dev_attr_drvctl", scope: !2, file: !3, line: 462, type: !2099, isLocal: true, isDefinition: true)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "dev_attr_bind_mode", scope: !2, file: !3, line: 464, type: !2099, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "dev_attr_firmware_id", scope: !2, file: !3, line: 465, type: !2099, isLocal: true, isDefinition: true)
!2132 = !DIGlobalVariableExpression(var: !2133, expr: !DIExpression())
!2133 = distinct !DIGlobalVariable(name: "serio_mutex", scope: !2, file: !3, line: 32, type: !476, isLocal: true, isDefinition: true)
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(name: "serio_list", scope: !2, file: !3, line: 34, type: !173, isLocal: true, isDefinition: true)
!2136 = !DIGlobalVariableExpression(var: !2137, expr: !DIExpression())
!2137 = distinct !DIGlobalVariable(name: "serio_driver_groups", scope: !2, file: !3, line: 771, type: !2138, isLocal: true, isDefinition: true)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !1073)
!2139 = !DIGlobalVariableExpression(var: !2140, expr: !DIExpression())
!2140 = distinct !DIGlobalVariable(name: "serio_driver_group", scope: !2, file: !3, line: 771, type: !315, isLocal: true, isDefinition: true)
!2141 = !DIGlobalVariableExpression(var: !2142, expr: !DIExpression())
!2142 = distinct !DIGlobalVariable(name: "serio_driver_attrs", scope: !2, file: !3, line: 766, type: !2143, isLocal: true, isDefinition: true)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 192, elements: !261)
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(name: "driver_attr_description", scope: !2, file: !3, line: 740, type: !2146, isLocal: true, isDefinition: true)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !51, line: 134, size: 256, elements: !2147)
!2147 = !{!2148, !2149, !2153}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2146, file: !51, line: 135, baseType: !296, size: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2146, file: !51, line: 136, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!291, !1742, !260}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2146, file: !51, line: 137, baseType: !2154, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!291, !1742, !185, !306}
!2157 = !DIGlobalVariableExpression(var: !2158, expr: !DIExpression())
!2158 = distinct !DIGlobalVariable(name: "driver_attr_bind_mode", scope: !2, file: !3, line: 764, type: !2146, isLocal: true, isDefinition: true)
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(name: "serio_pm_ops", scope: !2, file: !3, line: 962, type: !1711, isLocal: true, isDefinition: true)
!2161 = !DIGlobalVariableExpression(var: !2162, expr: !DIExpression())
!2162 = distinct !DIGlobalVariable(name: "serio_event_work", scope: !2, file: !3, line: 238, type: !1422, isLocal: true, isDefinition: true)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 360, elements: !2164)
!2164 = !{!2165}
!2165 = !DISubrange(count: 45)
!2166 = !{!"rsp"}
!2167 = !{i32 7, !"Dwarf Version", i32 4}
!2168 = !{i32 2, !"Debug Info Version", i32 3}
!2169 = !{i32 1, !"wchar_size", i32 2}
!2170 = !{i32 1, !"Code Model", i32 2}
!2171 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2172 = distinct !DISubprogram(name: "serio_rescan", scope: !3, file: !3, line: 679, type: !167, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2173 = !DILocalVariable(name: "serio", arg: 1, scope: !2172, file: !3, line: 679, type: !110)
!2174 = !DILocation(line: 679, column: 33, scope: !2172)
!2175 = !DILocation(line: 681, column: 20, scope: !2172)
!2176 = !DILocation(line: 681, column: 2, scope: !2172)
!2177 = !DILocation(line: 682, column: 1, scope: !2172)
!2178 = distinct !DISubprogram(name: "serio_queue_event", scope: !3, file: !3, line: 240, type: !2179, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!160, !109, !1923, !56}
!2181 = !DILocalVariable(name: "s", arg: 1, scope: !2182, file: !69, line: 445, type: !1149)
!2182 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !69, file: !69, line: 445, type: !2183, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!109, !1149, !1556, !306}
!2185 = !DILocation(line: 445, column: 72, scope: !2182, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 552, column: 10, scope: !2187, inlinedAt: !2192)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !69, line: 540, column: 34)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !69, line: 540, column: 6)
!2189 = distinct !DISubprogram(name: "kmalloc", scope: !69, file: !69, line: 538, type: !2190, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!109, !306, !1556}
!2192 = distinct !DILocation(line: 264, column: 10, scope: !2178)
!2193 = !DILocalVariable(name: "flags", arg: 2, scope: !2182, file: !69, line: 446, type: !1556)
!2194 = !DILocation(line: 446, column: 9, scope: !2182, inlinedAt: !2186)
!2195 = !DILocalVariable(name: "size", arg: 3, scope: !2182, file: !69, line: 446, type: !306)
!2196 = !DILocation(line: 446, column: 23, scope: !2182, inlinedAt: !2186)
!2197 = !DILocalVariable(name: "ret", scope: !2182, file: !69, line: 448, type: !109)
!2198 = !DILocation(line: 448, column: 8, scope: !2182, inlinedAt: !2186)
!2199 = !DILocalVariable(name: "flags", arg: 1, scope: !2200, file: !69, line: 318, type: !1556)
!2200 = distinct !DISubprogram(name: "kmalloc_type", scope: !69, file: !69, line: 318, type: !2201, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!68, !1556}
!2203 = !DILocation(line: 318, column: 67, scope: !2200, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 553, column: 20, scope: !2187, inlinedAt: !2192)
!2205 = !DILocalVariable(name: "size", arg: 1, scope: !2206, file: !69, line: 346, type: !306)
!2206 = distinct !DISubprogram(name: "kmalloc_index", scope: !69, file: !69, line: 346, type: !2207, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!7, !306}
!2209 = !DILocation(line: 346, column: 58, scope: !2206, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 547, column: 11, scope: !2187, inlinedAt: !2192)
!2211 = !DILocalVariable(name: "size", arg: 1, scope: !2212, file: !69, line: 472, type: !306)
!2212 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !69, file: !69, line: 472, type: !2213, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!109, !306, !1556, !7}
!2215 = !DILocation(line: 472, column: 28, scope: !2212, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 481, column: 9, scope: !2217, inlinedAt: !2218)
!2217 = distinct !DISubprogram(name: "kmalloc_large", scope: !69, file: !69, line: 478, type: !2190, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2218 = distinct !DILocation(line: 545, column: 11, scope: !2219, inlinedAt: !2192)
!2219 = distinct !DILexicalBlock(scope: !2187, file: !69, line: 544, column: 7)
!2220 = !DILocalVariable(name: "flags", arg: 2, scope: !2212, file: !69, line: 472, type: !1556)
!2221 = !DILocation(line: 472, column: 40, scope: !2212, inlinedAt: !2216)
!2222 = !DILocalVariable(name: "order", arg: 3, scope: !2212, file: !69, line: 472, type: !7)
!2223 = !DILocation(line: 472, column: 60, scope: !2212, inlinedAt: !2216)
!2224 = !DILocalVariable(name: "size", arg: 1, scope: !2217, file: !69, line: 478, type: !306)
!2225 = !DILocation(line: 478, column: 51, scope: !2217, inlinedAt: !2218)
!2226 = !DILocalVariable(name: "flags", arg: 2, scope: !2217, file: !69, line: 478, type: !1556)
!2227 = !DILocation(line: 478, column: 63, scope: !2217, inlinedAt: !2218)
!2228 = !DILocalVariable(name: "order", scope: !2217, file: !69, line: 480, type: !7)
!2229 = !DILocation(line: 480, column: 15, scope: !2217, inlinedAt: !2218)
!2230 = !DILocalVariable(name: "size", arg: 1, scope: !2189, file: !69, line: 538, type: !306)
!2231 = !DILocation(line: 538, column: 45, scope: !2189, inlinedAt: !2192)
!2232 = !DILocalVariable(name: "flags", arg: 2, scope: !2189, file: !69, line: 538, type: !1556)
!2233 = !DILocation(line: 538, column: 57, scope: !2189, inlinedAt: !2192)
!2234 = !DILocalVariable(name: "index", scope: !2187, file: !69, line: 542, type: !7)
!2235 = !DILocation(line: 542, column: 16, scope: !2187, inlinedAt: !2192)
!2236 = !DILocalVariable(name: "lock", arg: 1, scope: !2237, file: !2238, line: 407, type: !2241)
!2237 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2238, file: !2238, line: 407, type: !2239, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2238 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2241, !309}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!2242 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 287, column: 2, scope: !2178)
!2244 = !DILocalVariable(name: "flags", arg: 2, scope: !2237, file: !2238, line: 407, type: !309)
!2245 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !2243)
!2246 = !DILocalVariable(name: "lock", arg: 1, scope: !2247, file: !2238, line: 327, type: !2241)
!2247 = distinct !DISubprogram(name: "spinlock_check", scope: !2238, file: !2238, line: 327, type: !2248, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2250, !2241}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!2251 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 247, column: 2, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 247, column: 2)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 247, column: 2)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 247, column: 2)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 247, column: 2)
!2257 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 247, column: 2)
!2258 = !DILocalVariable(name: "object", arg: 1, scope: !2178, file: !3, line: 240, type: !109)
!2259 = !DILocation(line: 240, column: 36, scope: !2178)
!2260 = !DILocalVariable(name: "owner", arg: 2, scope: !2178, file: !3, line: 240, type: !1923)
!2261 = !DILocation(line: 240, column: 59, scope: !2178)
!2262 = !DILocalVariable(name: "event_type", arg: 3, scope: !2178, file: !3, line: 241, type: !56)
!2263 = !DILocation(line: 241, column: 31, scope: !2178)
!2264 = !DILocalVariable(name: "flags", scope: !2178, file: !3, line: 243, type: !309)
!2265 = !DILocation(line: 243, column: 16, scope: !2178)
!2266 = !DILocalVariable(name: "event", scope: !2178, file: !3, line: 244, type: !2040)
!2267 = !DILocation(line: 244, column: 22, scope: !2178)
!2268 = !DILocalVariable(name: "retval", scope: !2178, file: !3, line: 245, type: !160)
!2269 = !DILocation(line: 245, column: 6, scope: !2178)
!2270 = !DILocation(line: 247, column: 2, scope: !2178)
!2271 = !DILocation(line: 247, column: 2, scope: !2257)
!2272 = !DILocalVariable(name: "__dummy", scope: !2273, file: !3, line: 247, type: !309)
!2273 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 247, column: 2)
!2274 = !DILocation(line: 247, column: 2, scope: !2273)
!2275 = !DILocalVariable(name: "__dummy2", scope: !2273, file: !3, line: 247, type: !309)
!2276 = !DILocation(line: 247, column: 2, scope: !2256)
!2277 = !DILocation(line: 247, column: 2, scope: !2255)
!2278 = !DILocation(line: 247, column: 2, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 247, column: 2)
!2280 = !DILocalVariable(name: "__dummy", scope: !2281, file: !3, line: 247, type: !309)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 247, column: 2)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 247, column: 2)
!2283 = !DILocation(line: 247, column: 2, scope: !2281)
!2284 = !DILocalVariable(name: "__dummy2", scope: !2281, file: !3, line: 247, type: !309)
!2285 = !DILocation(line: 247, column: 2, scope: !2282)
!2286 = !DILocation(line: 247, column: 2, scope: !2254)
!2287 = !{i32 -2143404557}
!2288 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !2252)
!2289 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !2252)
!2290 = !DILocation(line: 247, column: 2, scope: !2253)
!2291 = !DILocalVariable(name: "__mptr", scope: !2292, file: !3, line: 256, type: !109)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 256, column: 2)
!2293 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 256, column: 2)
!2294 = !DILocation(line: 256, column: 2, scope: !2292)
!2295 = !DILocation(line: 256, column: 2, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 256, column: 2)
!2297 = !DILocation(line: 256, column: 2, scope: !2293)
!2298 = !DILocation(line: 256, column: 2, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 256, column: 2)
!2300 = !DILocation(line: 257, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 257, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 256, column: 62)
!2303 = !DILocation(line: 257, column: 14, scope: !2301)
!2304 = !DILocation(line: 257, column: 24, scope: !2301)
!2305 = !DILocation(line: 257, column: 21, scope: !2301)
!2306 = !DILocation(line: 257, column: 7, scope: !2302)
!2307 = !DILocation(line: 258, column: 8, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 258, column: 8)
!2309 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 257, column: 32)
!2310 = !DILocation(line: 258, column: 15, scope: !2308)
!2311 = !DILocation(line: 258, column: 23, scope: !2308)
!2312 = !DILocation(line: 258, column: 20, scope: !2308)
!2313 = !DILocation(line: 258, column: 8, scope: !2309)
!2314 = !DILocation(line: 259, column: 5, scope: !2308)
!2315 = !DILocation(line: 260, column: 4, scope: !2309)
!2316 = !DILocation(line: 262, column: 2, scope: !2302)
!2317 = !DILocalVariable(name: "__mptr", scope: !2318, file: !3, line: 256, type: !109)
!2318 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 256, column: 2)
!2319 = !DILocation(line: 256, column: 2, scope: !2318)
!2320 = !DILocation(line: 256, column: 2, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 256, column: 2)
!2322 = distinct !{!2322, !2297, !2323}
!2323 = !DILocation(line: 262, column: 2, scope: !2293)
!2324 = !DILocation(line: 540, column: 27, scope: !2188, inlinedAt: !2192)
!2325 = !DILocation(line: 540, column: 6, scope: !2188, inlinedAt: !2192)
!2326 = !DILocation(line: 540, column: 6, scope: !2189, inlinedAt: !2192)
!2327 = !DILocation(line: 544, column: 7, scope: !2219, inlinedAt: !2192)
!2328 = !DILocation(line: 544, column: 12, scope: !2219, inlinedAt: !2192)
!2329 = !DILocation(line: 544, column: 7, scope: !2187, inlinedAt: !2192)
!2330 = !DILocation(line: 545, column: 25, scope: !2219, inlinedAt: !2192)
!2331 = !DILocation(line: 545, column: 31, scope: !2219, inlinedAt: !2192)
!2332 = !DILocation(line: 480, column: 33, scope: !2217, inlinedAt: !2218)
!2333 = !DILocation(line: 480, column: 23, scope: !2217, inlinedAt: !2218)
!2334 = !DILocation(line: 481, column: 29, scope: !2217, inlinedAt: !2218)
!2335 = !DILocation(line: 481, column: 35, scope: !2217, inlinedAt: !2218)
!2336 = !DILocation(line: 481, column: 42, scope: !2217, inlinedAt: !2218)
!2337 = !DILocation(line: 474, column: 23, scope: !2212, inlinedAt: !2216)
!2338 = !DILocation(line: 474, column: 29, scope: !2212, inlinedAt: !2216)
!2339 = !DILocation(line: 474, column: 36, scope: !2212, inlinedAt: !2216)
!2340 = !DILocation(line: 474, column: 9, scope: !2212, inlinedAt: !2216)
!2341 = !DILocation(line: 545, column: 4, scope: !2219, inlinedAt: !2192)
!2342 = !DILocation(line: 547, column: 25, scope: !2187, inlinedAt: !2192)
!2343 = !DILocation(line: 348, column: 7, scope: !2344, inlinedAt: !2210)
!2344 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 348, column: 6)
!2345 = !DILocation(line: 348, column: 6, scope: !2206, inlinedAt: !2210)
!2346 = !DILocation(line: 349, column: 3, scope: !2344, inlinedAt: !2210)
!2347 = !DILocation(line: 351, column: 6, scope: !2348, inlinedAt: !2210)
!2348 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 351, column: 6)
!2349 = !DILocation(line: 351, column: 11, scope: !2348, inlinedAt: !2210)
!2350 = !DILocation(line: 351, column: 6, scope: !2206, inlinedAt: !2210)
!2351 = !DILocation(line: 352, column: 3, scope: !2348, inlinedAt: !2210)
!2352 = !DILocation(line: 354, column: 32, scope: !2353, inlinedAt: !2210)
!2353 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 354, column: 6)
!2354 = !DILocation(line: 354, column: 37, scope: !2353, inlinedAt: !2210)
!2355 = !DILocation(line: 354, column: 42, scope: !2353, inlinedAt: !2210)
!2356 = !DILocation(line: 354, column: 45, scope: !2353, inlinedAt: !2210)
!2357 = !DILocation(line: 354, column: 50, scope: !2353, inlinedAt: !2210)
!2358 = !DILocation(line: 354, column: 6, scope: !2206, inlinedAt: !2210)
!2359 = !DILocation(line: 355, column: 3, scope: !2353, inlinedAt: !2210)
!2360 = !DILocation(line: 356, column: 32, scope: !2361, inlinedAt: !2210)
!2361 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 356, column: 6)
!2362 = !DILocation(line: 356, column: 37, scope: !2361, inlinedAt: !2210)
!2363 = !DILocation(line: 356, column: 43, scope: !2361, inlinedAt: !2210)
!2364 = !DILocation(line: 356, column: 46, scope: !2361, inlinedAt: !2210)
!2365 = !DILocation(line: 356, column: 51, scope: !2361, inlinedAt: !2210)
!2366 = !DILocation(line: 356, column: 6, scope: !2206, inlinedAt: !2210)
!2367 = !DILocation(line: 357, column: 3, scope: !2361, inlinedAt: !2210)
!2368 = !DILocation(line: 358, column: 6, scope: !2369, inlinedAt: !2210)
!2369 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 358, column: 6)
!2370 = !DILocation(line: 358, column: 11, scope: !2369, inlinedAt: !2210)
!2371 = !DILocation(line: 358, column: 6, scope: !2206, inlinedAt: !2210)
!2372 = !DILocation(line: 358, column: 26, scope: !2369, inlinedAt: !2210)
!2373 = !DILocation(line: 359, column: 6, scope: !2374, inlinedAt: !2210)
!2374 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 359, column: 6)
!2375 = !DILocation(line: 359, column: 11, scope: !2374, inlinedAt: !2210)
!2376 = !DILocation(line: 359, column: 6, scope: !2206, inlinedAt: !2210)
!2377 = !DILocation(line: 359, column: 26, scope: !2374, inlinedAt: !2210)
!2378 = !DILocation(line: 360, column: 6, scope: !2379, inlinedAt: !2210)
!2379 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 360, column: 6)
!2380 = !DILocation(line: 360, column: 11, scope: !2379, inlinedAt: !2210)
!2381 = !DILocation(line: 360, column: 6, scope: !2206, inlinedAt: !2210)
!2382 = !DILocation(line: 360, column: 26, scope: !2379, inlinedAt: !2210)
!2383 = !DILocation(line: 361, column: 6, scope: !2384, inlinedAt: !2210)
!2384 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 361, column: 6)
!2385 = !DILocation(line: 361, column: 11, scope: !2384, inlinedAt: !2210)
!2386 = !DILocation(line: 361, column: 6, scope: !2206, inlinedAt: !2210)
!2387 = !DILocation(line: 361, column: 26, scope: !2384, inlinedAt: !2210)
!2388 = !DILocation(line: 362, column: 6, scope: !2389, inlinedAt: !2210)
!2389 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 362, column: 6)
!2390 = !DILocation(line: 362, column: 11, scope: !2389, inlinedAt: !2210)
!2391 = !DILocation(line: 362, column: 6, scope: !2206, inlinedAt: !2210)
!2392 = !DILocation(line: 362, column: 26, scope: !2389, inlinedAt: !2210)
!2393 = !DILocation(line: 363, column: 6, scope: !2394, inlinedAt: !2210)
!2394 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 363, column: 6)
!2395 = !DILocation(line: 363, column: 11, scope: !2394, inlinedAt: !2210)
!2396 = !DILocation(line: 363, column: 6, scope: !2206, inlinedAt: !2210)
!2397 = !DILocation(line: 363, column: 26, scope: !2394, inlinedAt: !2210)
!2398 = !DILocation(line: 364, column: 6, scope: !2399, inlinedAt: !2210)
!2399 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 364, column: 6)
!2400 = !DILocation(line: 364, column: 11, scope: !2399, inlinedAt: !2210)
!2401 = !DILocation(line: 364, column: 6, scope: !2206, inlinedAt: !2210)
!2402 = !DILocation(line: 364, column: 26, scope: !2399, inlinedAt: !2210)
!2403 = !DILocation(line: 365, column: 6, scope: !2404, inlinedAt: !2210)
!2404 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 365, column: 6)
!2405 = !DILocation(line: 365, column: 11, scope: !2404, inlinedAt: !2210)
!2406 = !DILocation(line: 365, column: 6, scope: !2206, inlinedAt: !2210)
!2407 = !DILocation(line: 365, column: 26, scope: !2404, inlinedAt: !2210)
!2408 = !DILocation(line: 366, column: 6, scope: !2409, inlinedAt: !2210)
!2409 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 366, column: 6)
!2410 = !DILocation(line: 366, column: 11, scope: !2409, inlinedAt: !2210)
!2411 = !DILocation(line: 366, column: 6, scope: !2206, inlinedAt: !2210)
!2412 = !DILocation(line: 366, column: 26, scope: !2409, inlinedAt: !2210)
!2413 = !DILocation(line: 367, column: 6, scope: !2414, inlinedAt: !2210)
!2414 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 367, column: 6)
!2415 = !DILocation(line: 367, column: 11, scope: !2414, inlinedAt: !2210)
!2416 = !DILocation(line: 367, column: 6, scope: !2206, inlinedAt: !2210)
!2417 = !DILocation(line: 367, column: 26, scope: !2414, inlinedAt: !2210)
!2418 = !DILocation(line: 368, column: 6, scope: !2419, inlinedAt: !2210)
!2419 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 368, column: 6)
!2420 = !DILocation(line: 368, column: 11, scope: !2419, inlinedAt: !2210)
!2421 = !DILocation(line: 368, column: 6, scope: !2206, inlinedAt: !2210)
!2422 = !DILocation(line: 368, column: 26, scope: !2419, inlinedAt: !2210)
!2423 = !DILocation(line: 369, column: 6, scope: !2424, inlinedAt: !2210)
!2424 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 369, column: 6)
!2425 = !DILocation(line: 369, column: 11, scope: !2424, inlinedAt: !2210)
!2426 = !DILocation(line: 369, column: 6, scope: !2206, inlinedAt: !2210)
!2427 = !DILocation(line: 369, column: 26, scope: !2424, inlinedAt: !2210)
!2428 = !DILocation(line: 370, column: 6, scope: !2429, inlinedAt: !2210)
!2429 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 370, column: 6)
!2430 = !DILocation(line: 370, column: 11, scope: !2429, inlinedAt: !2210)
!2431 = !DILocation(line: 370, column: 6, scope: !2206, inlinedAt: !2210)
!2432 = !DILocation(line: 370, column: 26, scope: !2429, inlinedAt: !2210)
!2433 = !DILocation(line: 371, column: 6, scope: !2434, inlinedAt: !2210)
!2434 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 371, column: 6)
!2435 = !DILocation(line: 371, column: 11, scope: !2434, inlinedAt: !2210)
!2436 = !DILocation(line: 371, column: 6, scope: !2206, inlinedAt: !2210)
!2437 = !DILocation(line: 371, column: 26, scope: !2434, inlinedAt: !2210)
!2438 = !DILocation(line: 372, column: 6, scope: !2439, inlinedAt: !2210)
!2439 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 372, column: 6)
!2440 = !DILocation(line: 372, column: 11, scope: !2439, inlinedAt: !2210)
!2441 = !DILocation(line: 372, column: 6, scope: !2206, inlinedAt: !2210)
!2442 = !DILocation(line: 372, column: 26, scope: !2439, inlinedAt: !2210)
!2443 = !DILocation(line: 373, column: 6, scope: !2444, inlinedAt: !2210)
!2444 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 373, column: 6)
!2445 = !DILocation(line: 373, column: 11, scope: !2444, inlinedAt: !2210)
!2446 = !DILocation(line: 373, column: 6, scope: !2206, inlinedAt: !2210)
!2447 = !DILocation(line: 373, column: 26, scope: !2444, inlinedAt: !2210)
!2448 = !DILocation(line: 374, column: 6, scope: !2449, inlinedAt: !2210)
!2449 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 374, column: 6)
!2450 = !DILocation(line: 374, column: 11, scope: !2449, inlinedAt: !2210)
!2451 = !DILocation(line: 374, column: 6, scope: !2206, inlinedAt: !2210)
!2452 = !DILocation(line: 374, column: 26, scope: !2449, inlinedAt: !2210)
!2453 = !DILocation(line: 375, column: 6, scope: !2454, inlinedAt: !2210)
!2454 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 375, column: 6)
!2455 = !DILocation(line: 375, column: 11, scope: !2454, inlinedAt: !2210)
!2456 = !DILocation(line: 375, column: 6, scope: !2206, inlinedAt: !2210)
!2457 = !DILocation(line: 375, column: 27, scope: !2454, inlinedAt: !2210)
!2458 = !DILocation(line: 376, column: 6, scope: !2459, inlinedAt: !2210)
!2459 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 376, column: 6)
!2460 = !DILocation(line: 376, column: 11, scope: !2459, inlinedAt: !2210)
!2461 = !DILocation(line: 376, column: 6, scope: !2206, inlinedAt: !2210)
!2462 = !DILocation(line: 376, column: 32, scope: !2459, inlinedAt: !2210)
!2463 = !DILocation(line: 377, column: 6, scope: !2464, inlinedAt: !2210)
!2464 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 377, column: 6)
!2465 = !DILocation(line: 377, column: 11, scope: !2464, inlinedAt: !2210)
!2466 = !DILocation(line: 377, column: 6, scope: !2206, inlinedAt: !2210)
!2467 = !DILocation(line: 377, column: 32, scope: !2464, inlinedAt: !2210)
!2468 = !DILocation(line: 378, column: 6, scope: !2469, inlinedAt: !2210)
!2469 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 378, column: 6)
!2470 = !DILocation(line: 378, column: 11, scope: !2469, inlinedAt: !2210)
!2471 = !DILocation(line: 378, column: 6, scope: !2206, inlinedAt: !2210)
!2472 = !DILocation(line: 378, column: 32, scope: !2469, inlinedAt: !2210)
!2473 = !DILocation(line: 379, column: 6, scope: !2474, inlinedAt: !2210)
!2474 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 379, column: 6)
!2475 = !DILocation(line: 379, column: 11, scope: !2474, inlinedAt: !2210)
!2476 = !DILocation(line: 379, column: 6, scope: !2206, inlinedAt: !2210)
!2477 = !DILocation(line: 379, column: 33, scope: !2474, inlinedAt: !2210)
!2478 = !DILocation(line: 380, column: 6, scope: !2479, inlinedAt: !2210)
!2479 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 380, column: 6)
!2480 = !DILocation(line: 380, column: 11, scope: !2479, inlinedAt: !2210)
!2481 = !DILocation(line: 380, column: 6, scope: !2206, inlinedAt: !2210)
!2482 = !DILocation(line: 380, column: 33, scope: !2479, inlinedAt: !2210)
!2483 = !DILocation(line: 381, column: 6, scope: !2484, inlinedAt: !2210)
!2484 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 381, column: 6)
!2485 = !DILocation(line: 381, column: 11, scope: !2484, inlinedAt: !2210)
!2486 = !DILocation(line: 381, column: 6, scope: !2206, inlinedAt: !2210)
!2487 = !DILocation(line: 381, column: 33, scope: !2484, inlinedAt: !2210)
!2488 = !DILocation(line: 382, column: 2, scope: !2489, inlinedAt: !2210)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !69, line: 382, column: 2)
!2490 = distinct !DILexicalBlock(scope: !2206, file: !69, line: 382, column: 2)
!2491 = !{i32 -2143430424, i32 -2143430395, i32 -2143430349, i32 -2143430291, i32 -2143430237, i32 -2143430183, i32 -2143430128, i32 -2143430097}
!2492 = !DILocation(line: 382, column: 2, scope: !2493, inlinedAt: !2210)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !69, line: 382, column: 2)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !69, line: 382, column: 2)
!2495 = !{i32 -2143429654, i32 -2143429647, i32 -2143429593, i32 -2143429562, i32 -2143429532}
!2496 = !DILocation(line: 382, column: 2, scope: !2494, inlinedAt: !2210)
!2497 = !DILocation(line: 386, column: 1, scope: !2206, inlinedAt: !2210)
!2498 = !DILocation(line: 547, column: 9, scope: !2187, inlinedAt: !2192)
!2499 = !DILocation(line: 549, column: 8, scope: !2500, inlinedAt: !2192)
!2500 = distinct !DILexicalBlock(scope: !2187, file: !69, line: 549, column: 7)
!2501 = !DILocation(line: 549, column: 7, scope: !2187, inlinedAt: !2192)
!2502 = !DILocation(line: 550, column: 4, scope: !2500, inlinedAt: !2192)
!2503 = !DILocation(line: 553, column: 33, scope: !2187, inlinedAt: !2192)
!2504 = !DILocation(line: 325, column: 6, scope: !2505, inlinedAt: !2204)
!2505 = distinct !DILexicalBlock(scope: !2200, file: !69, line: 325, column: 6)
!2506 = !DILocation(line: 325, column: 6, scope: !2200, inlinedAt: !2204)
!2507 = !DILocation(line: 326, column: 3, scope: !2505, inlinedAt: !2204)
!2508 = !DILocation(line: 332, column: 9, scope: !2200, inlinedAt: !2204)
!2509 = !DILocation(line: 332, column: 15, scope: !2200, inlinedAt: !2204)
!2510 = !DILocation(line: 332, column: 2, scope: !2200, inlinedAt: !2204)
!2511 = !DILocation(line: 336, column: 1, scope: !2200, inlinedAt: !2204)
!2512 = !DILocation(line: 553, column: 5, scope: !2187, inlinedAt: !2192)
!2513 = !DILocation(line: 553, column: 41, scope: !2187, inlinedAt: !2192)
!2514 = !DILocation(line: 554, column: 5, scope: !2187, inlinedAt: !2192)
!2515 = !DILocation(line: 554, column: 12, scope: !2187, inlinedAt: !2192)
!2516 = !DILocation(line: 448, column: 31, scope: !2182, inlinedAt: !2186)
!2517 = !DILocation(line: 448, column: 34, scope: !2182, inlinedAt: !2186)
!2518 = !DILocation(line: 448, column: 14, scope: !2182, inlinedAt: !2186)
!2519 = !DILocation(line: 450, column: 22, scope: !2182, inlinedAt: !2186)
!2520 = !DILocation(line: 450, column: 25, scope: !2182, inlinedAt: !2186)
!2521 = !DILocation(line: 450, column: 30, scope: !2182, inlinedAt: !2186)
!2522 = !DILocation(line: 450, column: 36, scope: !2182, inlinedAt: !2186)
!2523 = !DILocation(line: 450, column: 8, scope: !2182, inlinedAt: !2186)
!2524 = !DILocation(line: 450, column: 6, scope: !2182, inlinedAt: !2186)
!2525 = !DILocation(line: 451, column: 9, scope: !2182, inlinedAt: !2186)
!2526 = !DILocation(line: 552, column: 3, scope: !2187, inlinedAt: !2192)
!2527 = !DILocation(line: 557, column: 19, scope: !2189, inlinedAt: !2192)
!2528 = !DILocation(line: 557, column: 25, scope: !2189, inlinedAt: !2192)
!2529 = !DILocation(line: 557, column: 9, scope: !2189, inlinedAt: !2192)
!2530 = !DILocation(line: 557, column: 2, scope: !2189, inlinedAt: !2192)
!2531 = !DILocation(line: 558, column: 1, scope: !2189, inlinedAt: !2192)
!2532 = !DILocation(line: 264, column: 10, scope: !2178)
!2533 = !DILocation(line: 264, column: 8, scope: !2178)
!2534 = !DILocation(line: 265, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 265, column: 6)
!2536 = !DILocation(line: 265, column: 6, scope: !2178)
!2537 = !DILocation(line: 266, column: 3, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 265, column: 14)
!2539 = !DILocation(line: 267, column: 10, scope: !2538)
!2540 = !DILocation(line: 268, column: 3, scope: !2538)
!2541 = !DILocation(line: 271, column: 22, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 271, column: 6)
!2543 = !DILocation(line: 271, column: 7, scope: !2542)
!2544 = !DILocation(line: 271, column: 6, scope: !2178)
!2545 = !DILocation(line: 272, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 271, column: 30)
!2547 = !DILocation(line: 274, column: 9, scope: !2546)
!2548 = !DILocation(line: 274, column: 3, scope: !2546)
!2549 = !DILocation(line: 275, column: 10, scope: !2546)
!2550 = !DILocation(line: 276, column: 3, scope: !2546)
!2551 = !DILocation(line: 279, column: 16, scope: !2178)
!2552 = !DILocation(line: 279, column: 2, scope: !2178)
!2553 = !DILocation(line: 279, column: 9, scope: !2178)
!2554 = !DILocation(line: 279, column: 14, scope: !2178)
!2555 = !DILocation(line: 280, column: 18, scope: !2178)
!2556 = !DILocation(line: 280, column: 2, scope: !2178)
!2557 = !DILocation(line: 280, column: 9, scope: !2178)
!2558 = !DILocation(line: 280, column: 16, scope: !2178)
!2559 = !DILocation(line: 281, column: 17, scope: !2178)
!2560 = !DILocation(line: 281, column: 2, scope: !2178)
!2561 = !DILocation(line: 281, column: 9, scope: !2178)
!2562 = !DILocation(line: 281, column: 15, scope: !2178)
!2563 = !DILocation(line: 283, column: 17, scope: !2178)
!2564 = !DILocation(line: 283, column: 24, scope: !2178)
!2565 = !DILocation(line: 283, column: 2, scope: !2178)
!2566 = !DILocation(line: 284, column: 13, scope: !2178)
!2567 = !DILocation(line: 284, column: 2, scope: !2178)
!2568 = !DILabel(scope: !2178, name: "out", file: !3, line: 286)
!2569 = !DILocation(line: 286, column: 1, scope: !2178)
!2570 = !DILocation(line: 287, column: 44, scope: !2178)
!2571 = !DILocalVariable(name: "__dummy", scope: !2572, file: !2238, line: 409, type: !309)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !2238, line: 409, column: 2)
!2573 = distinct !DILexicalBlock(scope: !2237, file: !2238, line: 409, column: 2)
!2574 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !2243)
!2575 = !DILocalVariable(name: "__dummy2", scope: !2572, file: !2238, line: 409, type: !309)
!2576 = !DILocalVariable(name: "__dummy", scope: !2577, file: !2238, line: 409, type: !309)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !2238, line: 409, column: 2)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !2238, line: 409, column: 2)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !2238, line: 409, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2573, file: !2238, line: 409, column: 2)
!2581 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !2243)
!2582 = !DILocalVariable(name: "__dummy2", scope: !2577, file: !2238, line: 409, type: !309)
!2583 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !2243)
!2584 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !2243)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !2238, line: 409, column: 2)
!2586 = !{i32 -2145453250}
!2587 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !2243)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !2238, line: 409, column: 2)
!2589 = !DILocation(line: 288, column: 9, scope: !2178)
!2590 = !DILocation(line: 288, column: 2, scope: !2178)
!2591 = distinct !DISubprogram(name: "serio_reconnect", scope: !3, file: !3, line: 685, type: !167, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2592 = !DILocalVariable(name: "serio", arg: 1, scope: !2591, file: !3, line: 685, type: !110)
!2593 = !DILocation(line: 685, column: 36, scope: !2591)
!2594 = !DILocation(line: 687, column: 20, scope: !2591)
!2595 = !DILocation(line: 687, column: 2, scope: !2591)
!2596 = !DILocation(line: 688, column: 1, scope: !2591)
!2597 = distinct !DISubprogram(name: "__serio_register_port", scope: !3, file: !3, line: 695, type: !2598, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !110, !1923}
!2600 = !DILocalVariable(name: "serio", arg: 1, scope: !2597, file: !3, line: 695, type: !110)
!2601 = !DILocation(line: 695, column: 42, scope: !2597)
!2602 = !DILocalVariable(name: "owner", arg: 2, scope: !2597, file: !3, line: 695, type: !1923)
!2603 = !DILocation(line: 695, column: 64, scope: !2597)
!2604 = !DILocation(line: 697, column: 18, scope: !2597)
!2605 = !DILocation(line: 697, column: 2, scope: !2597)
!2606 = !DILocation(line: 698, column: 20, scope: !2597)
!2607 = !DILocation(line: 698, column: 27, scope: !2597)
!2608 = !DILocation(line: 698, column: 2, scope: !2597)
!2609 = !DILocation(line: 699, column: 1, scope: !2597)
!2610 = !DILocalVariable(name: "i", arg: 1, scope: !2611, file: !2612, line: 163, type: !160)
!2611 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !2612, file: !2612, line: 163, type: !2613, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2612 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!160, !160, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2616 = !DILocation(line: 163, column: 55, scope: !2611, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 286, column: 9, scope: !2618, inlinedAt: !2622)
!2618 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !2619, file: !2619, line: 284, type: !2620, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2619 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!160, !2615}
!2622 = distinct !DILocation(line: 251, column: 9, scope: !2623, inlinedAt: !2625)
!2623 = distinct !DISubprogram(name: "atomic_inc_return", scope: !2624, file: !2624, line: 248, type: !2620, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2624 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2625 = distinct !DILocation(line: 510, column: 23, scope: !2084)
!2626 = !DILocalVariable(name: "v", arg: 2, scope: !2611, file: !2612, line: 163, type: !2615)
!2627 = !DILocation(line: 163, column: 68, scope: !2611, inlinedAt: !2617)
!2628 = !DILocalVariable(name: "__ret", scope: !2629, file: !2612, line: 165, type: !160)
!2629 = distinct !DILexicalBlock(scope: !2611, file: !2612, line: 165, column: 13)
!2630 = !DILocation(line: 165, column: 13, scope: !2629, inlinedAt: !2617)
!2631 = !DILocalVariable(name: "v", arg: 1, scope: !2618, file: !2619, line: 284, type: !2615)
!2632 = !DILocation(line: 284, column: 34, scope: !2618, inlinedAt: !2622)
!2633 = !DILocalVariable(name: "v", arg: 1, scope: !2634, file: !2635, line: 99, type: !2638)
!2634 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2635, file: !2635, line: 99, type: !2636, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2635 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !2638, !306}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2641 = !DILocation(line: 99, column: 79, scope: !2634, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 250, column: 2, scope: !2623, inlinedAt: !2625)
!2643 = !DILocalVariable(name: "size", arg: 2, scope: !2634, file: !2635, line: 99, type: !306)
!2644 = !DILocation(line: 99, column: 89, scope: !2634, inlinedAt: !2642)
!2645 = !DILocalVariable(name: "v", arg: 1, scope: !2623, file: !2624, line: 248, type: !2615)
!2646 = !DILocation(line: 248, column: 29, scope: !2623, inlinedAt: !2625)
!2647 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 506, column: 2, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 506, column: 2)
!2650 = !DILocalVariable(name: "serio", arg: 1, scope: !2084, file: !3, line: 497, type: !110)
!2651 = !DILocation(line: 497, column: 43, scope: !2084)
!2652 = !DILocation(line: 501, column: 2, scope: !2084)
!2653 = !DILocation(line: 503, column: 18, scope: !2084)
!2654 = !DILocation(line: 503, column: 25, scope: !2084)
!2655 = !DILocation(line: 503, column: 2, scope: !2084)
!2656 = !DILocation(line: 504, column: 18, scope: !2084)
!2657 = !DILocation(line: 504, column: 25, scope: !2084)
!2658 = !DILocation(line: 504, column: 2, scope: !2084)
!2659 = !DILocation(line: 505, column: 18, scope: !2084)
!2660 = !DILocation(line: 505, column: 25, scope: !2084)
!2661 = !DILocation(line: 505, column: 2, scope: !2084)
!2662 = !DILocation(line: 506, column: 2, scope: !2084)
!2663 = !DILocation(line: 506, column: 2, scope: !2649)
!2664 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !2648)
!2665 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !2648)
!2666 = !DILocation(line: 507, column: 2, scope: !2084)
!2667 = !DILocation(line: 507, column: 2, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 507, column: 2)
!2669 = !DILocation(line: 508, column: 21, scope: !2084)
!2670 = !DILocation(line: 508, column: 28, scope: !2084)
!2671 = !DILocation(line: 508, column: 2, scope: !2084)
!2672 = !DILocation(line: 509, column: 16, scope: !2084)
!2673 = !DILocation(line: 509, column: 23, scope: !2084)
!2674 = !DILocation(line: 250, column: 31, scope: !2623, inlinedAt: !2625)
!2675 = !DILocation(line: 101, column: 20, scope: !2634, inlinedAt: !2642)
!2676 = !DILocation(line: 101, column: 23, scope: !2634, inlinedAt: !2642)
!2677 = !DILocation(line: 101, column: 2, scope: !2634, inlinedAt: !2642)
!2678 = !DILocation(line: 102, column: 2, scope: !2634, inlinedAt: !2642)
!2679 = !DILocation(line: 251, column: 32, scope: !2623, inlinedAt: !2625)
!2680 = !DILocation(line: 286, column: 35, scope: !2618, inlinedAt: !2622)
!2681 = !DILocation(line: 165, column: 9, scope: !2611, inlinedAt: !2617)
!2682 = !{i32 -2146602604}
!2683 = !DILocation(line: 165, column: 11, scope: !2611, inlinedAt: !2617)
!2684 = !DILocation(line: 510, column: 8, scope: !2084)
!2685 = !DILocation(line: 509, column: 2, scope: !2084)
!2686 = !DILocation(line: 511, column: 2, scope: !2084)
!2687 = !DILocation(line: 511, column: 9, scope: !2084)
!2688 = !DILocation(line: 511, column: 13, scope: !2084)
!2689 = !DILocation(line: 511, column: 17, scope: !2084)
!2690 = !DILocation(line: 512, column: 2, scope: !2084)
!2691 = !DILocation(line: 512, column: 9, scope: !2084)
!2692 = !DILocation(line: 512, column: 13, scope: !2084)
!2693 = !DILocation(line: 512, column: 21, scope: !2084)
!2694 = !DILocation(line: 513, column: 2, scope: !2084)
!2695 = !DILocation(line: 513, column: 9, scope: !2084)
!2696 = !DILocation(line: 513, column: 13, scope: !2084)
!2697 = !DILocation(line: 513, column: 20, scope: !2084)
!2698 = !DILocation(line: 514, column: 6, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 514, column: 6)
!2700 = !DILocation(line: 514, column: 13, scope: !2699)
!2701 = !DILocation(line: 514, column: 6, scope: !2084)
!2702 = !DILocation(line: 515, column: 24, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 514, column: 21)
!2704 = !DILocation(line: 515, column: 31, scope: !2703)
!2705 = !DILocation(line: 515, column: 39, scope: !2703)
!2706 = !DILocation(line: 515, column: 3, scope: !2703)
!2707 = !DILocation(line: 515, column: 10, scope: !2703)
!2708 = !DILocation(line: 515, column: 14, scope: !2703)
!2709 = !DILocation(line: 515, column: 21, scope: !2703)
!2710 = !DILocation(line: 516, column: 18, scope: !2703)
!2711 = !DILocation(line: 516, column: 25, scope: !2703)
!2712 = !DILocation(line: 516, column: 33, scope: !2703)
!2713 = !DILocation(line: 516, column: 39, scope: !2703)
!2714 = !DILocation(line: 516, column: 3, scope: !2703)
!2715 = !DILocation(line: 516, column: 10, scope: !2703)
!2716 = !DILocation(line: 516, column: 16, scope: !2703)
!2717 = !DILocation(line: 517, column: 2, scope: !2703)
!2718 = !DILocation(line: 518, column: 3, scope: !2699)
!2719 = !DILocation(line: 518, column: 10, scope: !2699)
!2720 = !DILocation(line: 518, column: 16, scope: !2699)
!2721 = !DILocation(line: 519, column: 2, scope: !2084)
!2722 = !DILocation(line: 519, column: 2, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 519, column: 2)
!2724 = !DILocation(line: 520, column: 1, scope: !2084)
!2725 = distinct !DISubprogram(name: "serio_unregister_port", scope: !3, file: !3, line: 705, type: !167, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2726 = !DILocalVariable(name: "serio", arg: 1, scope: !2725, file: !3, line: 705, type: !110)
!2727 = !DILocation(line: 705, column: 42, scope: !2725)
!2728 = !DILocation(line: 707, column: 2, scope: !2725)
!2729 = !DILocation(line: 708, column: 24, scope: !2725)
!2730 = !DILocation(line: 708, column: 2, scope: !2725)
!2731 = !DILocation(line: 709, column: 21, scope: !2725)
!2732 = !DILocation(line: 709, column: 2, scope: !2725)
!2733 = !DILocation(line: 710, column: 2, scope: !2725)
!2734 = !DILocation(line: 711, column: 1, scope: !2725)
!2735 = distinct !DISubprogram(name: "serio_disconnect_port", scope: !3, file: !3, line: 644, type: !167, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2736 = !DILocalVariable(name: "serio", arg: 1, scope: !2735, file: !3, line: 644, type: !110)
!2737 = !DILocation(line: 644, column: 49, scope: !2735)
!2738 = !DILocalVariable(name: "s", scope: !2735, file: !3, line: 646, type: !110)
!2739 = !DILocation(line: 646, column: 16, scope: !2735)
!2740 = !DILocation(line: 646, column: 20, scope: !2735)
!2741 = !DILocation(line: 652, column: 2, scope: !2735)
!2742 = !DILocation(line: 652, column: 22, scope: !2735)
!2743 = !DILocation(line: 652, column: 29, scope: !2735)
!2744 = !DILocation(line: 652, column: 10, scope: !2735)
!2745 = !DILocation(line: 652, column: 9, scope: !2735)
!2746 = !DILocation(line: 655, column: 3, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 652, column: 40)
!2748 = !DILocation(line: 655, column: 23, scope: !2747)
!2749 = !DILocation(line: 655, column: 26, scope: !2747)
!2750 = !DILocation(line: 655, column: 11, scope: !2747)
!2751 = !DILocation(line: 655, column: 10, scope: !2747)
!2752 = !DILocalVariable(name: "__mptr", scope: !2753, file: !3, line: 656, type: !109)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 656, column: 8)
!2754 = !DILocation(line: 656, column: 8, scope: !2753)
!2755 = !DILocation(line: 656, column: 8, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 656, column: 8)
!2757 = !DILocation(line: 656, column: 6, scope: !2747)
!2758 = distinct !{!2758, !2746, !2759}
!2759 = !DILocation(line: 656, column: 8, scope: !2747)
!2760 = !DILocation(line: 663, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 663, column: 7)
!2762 = !DILocation(line: 663, column: 12, scope: !2761)
!2763 = !DILocation(line: 663, column: 9, scope: !2761)
!2764 = !DILocation(line: 663, column: 7, scope: !2747)
!2765 = !DILocalVariable(name: "parent", scope: !2766, file: !3, line: 664, type: !110)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 663, column: 19)
!2767 = !DILocation(line: 664, column: 18, scope: !2766)
!2768 = !DILocation(line: 664, column: 27, scope: !2766)
!2769 = !DILocation(line: 664, column: 30, scope: !2766)
!2770 = !DILocation(line: 666, column: 27, scope: !2766)
!2771 = !DILocation(line: 666, column: 30, scope: !2766)
!2772 = !DILocation(line: 666, column: 4, scope: !2766)
!2773 = !DILocation(line: 667, column: 23, scope: !2766)
!2774 = !DILocation(line: 667, column: 4, scope: !2766)
!2775 = !DILocation(line: 669, column: 8, scope: !2766)
!2776 = !DILocation(line: 669, column: 6, scope: !2766)
!2777 = !DILocation(line: 670, column: 3, scope: !2766)
!2778 = distinct !{!2778, !2741, !2779}
!2779 = !DILocation(line: 671, column: 2, scope: !2735)
!2780 = !DILocation(line: 676, column: 25, scope: !2735)
!2781 = !DILocation(line: 676, column: 32, scope: !2735)
!2782 = !DILocation(line: 676, column: 2, scope: !2735)
!2783 = !DILocation(line: 677, column: 1, scope: !2735)
!2784 = distinct !DISubprogram(name: "serio_destroy_port", scope: !3, file: !3, line: 553, type: !167, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2785 = !DILocalVariable(name: "serio", arg: 1, scope: !2784, file: !3, line: 553, type: !110)
!2786 = !DILocation(line: 553, column: 46, scope: !2784)
!2787 = !DILocalVariable(name: "child", scope: !2784, file: !3, line: 555, type: !110)
!2788 = !DILocation(line: 555, column: 16, scope: !2784)
!2789 = !DILocation(line: 557, column: 2, scope: !2784)
!2790 = !DILocation(line: 557, column: 42, scope: !2784)
!2791 = !DILocation(line: 557, column: 18, scope: !2784)
!2792 = !DILocation(line: 557, column: 16, scope: !2784)
!2793 = !DILocation(line: 557, column: 50, scope: !2784)
!2794 = !DILocation(line: 558, column: 31, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 557, column: 59)
!2796 = !DILocation(line: 558, column: 3, scope: !2795)
!2797 = !DILocation(line: 559, column: 15, scope: !2795)
!2798 = !DILocation(line: 559, column: 22, scope: !2795)
!2799 = !DILocation(line: 559, column: 3, scope: !2795)
!2800 = distinct !{!2800, !2789, !2801}
!2801 = !DILocation(line: 560, column: 2, scope: !2784)
!2802 = !DILocation(line: 562, column: 6, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 562, column: 6)
!2804 = !DILocation(line: 562, column: 13, scope: !2803)
!2805 = !DILocation(line: 562, column: 6, scope: !2784)
!2806 = !DILocation(line: 563, column: 3, scope: !2803)
!2807 = !DILocation(line: 563, column: 10, scope: !2803)
!2808 = !DILocation(line: 563, column: 15, scope: !2803)
!2809 = !DILocation(line: 565, column: 6, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 565, column: 6)
!2811 = !DILocation(line: 565, column: 13, scope: !2810)
!2812 = !DILocation(line: 565, column: 6, scope: !2784)
!2813 = !DILocation(line: 566, column: 18, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 565, column: 21)
!2815 = !DILocation(line: 566, column: 25, scope: !2814)
!2816 = !DILocation(line: 566, column: 3, scope: !2814)
!2817 = !DILocation(line: 567, column: 18, scope: !2814)
!2818 = !DILocation(line: 567, column: 25, scope: !2814)
!2819 = !DILocation(line: 567, column: 3, scope: !2814)
!2820 = !DILocation(line: 568, column: 21, scope: !2814)
!2821 = !DILocation(line: 568, column: 28, scope: !2814)
!2822 = !DILocation(line: 568, column: 3, scope: !2814)
!2823 = !DILocation(line: 569, column: 3, scope: !2814)
!2824 = !DILocation(line: 569, column: 10, scope: !2814)
!2825 = !DILocation(line: 569, column: 17, scope: !2814)
!2826 = !DILocation(line: 570, column: 2, scope: !2814)
!2827 = !DILocation(line: 572, column: 28, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 572, column: 6)
!2829 = !DILocation(line: 572, column: 35, scope: !2828)
!2830 = !DILocation(line: 572, column: 6, scope: !2828)
!2831 = !DILocation(line: 572, column: 6, scope: !2784)
!2832 = !DILocation(line: 573, column: 15, scope: !2828)
!2833 = !DILocation(line: 573, column: 22, scope: !2828)
!2834 = !DILocation(line: 573, column: 3, scope: !2828)
!2835 = !DILocation(line: 575, column: 17, scope: !2784)
!2836 = !DILocation(line: 575, column: 24, scope: !2784)
!2837 = !DILocation(line: 575, column: 2, scope: !2784)
!2838 = !DILocation(line: 576, column: 30, scope: !2784)
!2839 = !DILocation(line: 576, column: 2, scope: !2784)
!2840 = !DILocation(line: 577, column: 14, scope: !2784)
!2841 = !DILocation(line: 577, column: 21, scope: !2784)
!2842 = !DILocation(line: 577, column: 2, scope: !2784)
!2843 = !DILocation(line: 578, column: 1, scope: !2784)
!2844 = distinct !DISubprogram(name: "serio_unregister_child_port", scope: !3, file: !3, line: 717, type: !167, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2845 = !DILocalVariable(name: "serio", arg: 1, scope: !2844, file: !3, line: 717, type: !110)
!2846 = !DILocation(line: 717, column: 48, scope: !2844)
!2847 = !DILocalVariable(name: "s", scope: !2844, file: !3, line: 719, type: !110)
!2848 = !DILocation(line: 719, column: 16, scope: !2844)
!2849 = !DILocalVariable(name: "next", scope: !2844, file: !3, line: 719, type: !110)
!2850 = !DILocation(line: 719, column: 20, scope: !2844)
!2851 = !DILocation(line: 721, column: 2, scope: !2844)
!2852 = !DILocalVariable(name: "__mptr", scope: !2853, file: !3, line: 722, type: !109)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 722, column: 2)
!2854 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 722, column: 2)
!2855 = !DILocation(line: 722, column: 2, scope: !2853)
!2856 = !DILocation(line: 722, column: 2, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 722, column: 2)
!2858 = !DILocation(line: 722, column: 2, scope: !2854)
!2859 = !DILocalVariable(name: "__mptr", scope: !2860, file: !3, line: 722, type: !109)
!2860 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 722, column: 2)
!2861 = !DILocation(line: 722, column: 2, scope: !2860)
!2862 = !DILocation(line: 722, column: 2, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 722, column: 2)
!2864 = !DILocation(line: 722, column: 2, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 722, column: 2)
!2866 = !DILocation(line: 723, column: 25, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 722, column: 66)
!2868 = !DILocation(line: 723, column: 3, scope: !2867)
!2869 = !DILocation(line: 724, column: 22, scope: !2867)
!2870 = !DILocation(line: 724, column: 3, scope: !2867)
!2871 = !DILocation(line: 725, column: 2, scope: !2867)
!2872 = !DILocalVariable(name: "__mptr", scope: !2873, file: !3, line: 722, type: !109)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 722, column: 2)
!2874 = !DILocation(line: 722, column: 2, scope: !2873)
!2875 = !DILocation(line: 722, column: 2, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 722, column: 2)
!2877 = distinct !{!2877, !2858, !2878}
!2878 = !DILocation(line: 725, column: 2, scope: !2854)
!2879 = !DILocation(line: 726, column: 2, scope: !2844)
!2880 = !DILocation(line: 727, column: 1, scope: !2844)
!2881 = distinct !DISubprogram(name: "__serio_register_driver", scope: !3, file: !3, line: 814, type: !2882, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!160, !181, !1923, !185}
!2884 = !DILocalVariable(name: "drv", arg: 1, scope: !2881, file: !3, line: 814, type: !181)
!2885 = !DILocation(line: 814, column: 50, scope: !2881)
!2886 = !DILocalVariable(name: "owner", arg: 2, scope: !2881, file: !3, line: 814, type: !1923)
!2887 = !DILocation(line: 814, column: 70, scope: !2881)
!2888 = !DILocalVariable(name: "mod_name", arg: 3, scope: !2881, file: !3, line: 814, type: !185)
!2889 = !DILocation(line: 814, column: 89, scope: !2881)
!2890 = !DILocalVariable(name: "manual_bind", scope: !2881, file: !3, line: 816, type: !126)
!2891 = !DILocation(line: 816, column: 7, scope: !2881)
!2892 = !DILocation(line: 816, column: 21, scope: !2881)
!2893 = !DILocation(line: 816, column: 26, scope: !2881)
!2894 = !DILocalVariable(name: "error", scope: !2881, file: !3, line: 817, type: !160)
!2895 = !DILocation(line: 817, column: 6, scope: !2881)
!2896 = !DILocation(line: 819, column: 2, scope: !2881)
!2897 = !DILocation(line: 819, column: 7, scope: !2881)
!2898 = !DILocation(line: 819, column: 14, scope: !2881)
!2899 = !DILocation(line: 819, column: 18, scope: !2881)
!2900 = !DILocation(line: 820, column: 22, scope: !2881)
!2901 = !DILocation(line: 820, column: 2, scope: !2881)
!2902 = !DILocation(line: 820, column: 7, scope: !2881)
!2903 = !DILocation(line: 820, column: 14, scope: !2881)
!2904 = !DILocation(line: 820, column: 20, scope: !2881)
!2905 = !DILocation(line: 821, column: 25, scope: !2881)
!2906 = !DILocation(line: 821, column: 2, scope: !2881)
!2907 = !DILocation(line: 821, column: 7, scope: !2881)
!2908 = !DILocation(line: 821, column: 14, scope: !2881)
!2909 = !DILocation(line: 821, column: 23, scope: !2881)
!2910 = !DILocation(line: 827, column: 2, scope: !2881)
!2911 = !DILocation(line: 827, column: 7, scope: !2881)
!2912 = !DILocation(line: 827, column: 19, scope: !2881)
!2913 = !DILocation(line: 829, column: 27, scope: !2881)
!2914 = !DILocation(line: 829, column: 32, scope: !2881)
!2915 = !DILocation(line: 829, column: 10, scope: !2881)
!2916 = !DILocation(line: 829, column: 8, scope: !2881)
!2917 = !DILocation(line: 830, column: 6, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 830, column: 6)
!2919 = !DILocation(line: 830, column: 6, scope: !2881)
!2920 = !DILocation(line: 831, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 830, column: 13)
!2922 = !DILocation(line: 833, column: 10, scope: !2921)
!2923 = !DILocation(line: 833, column: 3, scope: !2921)
!2924 = !DILocation(line: 840, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 840, column: 6)
!2926 = !DILocation(line: 840, column: 6, scope: !2881)
!2927 = !DILocation(line: 841, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 840, column: 20)
!2929 = !DILocation(line: 841, column: 8, scope: !2928)
!2930 = !DILocation(line: 841, column: 20, scope: !2928)
!2931 = !DILocation(line: 842, column: 29, scope: !2928)
!2932 = !DILocation(line: 842, column: 11, scope: !2928)
!2933 = !DILocation(line: 842, column: 9, scope: !2928)
!2934 = !DILocation(line: 843, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 843, column: 7)
!2936 = !DILocation(line: 843, column: 7, scope: !2928)
!2937 = !DILocation(line: 844, column: 23, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 843, column: 14)
!2939 = !DILocation(line: 844, column: 28, scope: !2938)
!2940 = !DILocation(line: 844, column: 4, scope: !2938)
!2941 = !DILocation(line: 845, column: 11, scope: !2938)
!2942 = !DILocation(line: 845, column: 4, scope: !2938)
!2943 = !DILocation(line: 847, column: 2, scope: !2928)
!2944 = !DILocation(line: 849, column: 2, scope: !2881)
!2945 = !DILocation(line: 850, column: 1, scope: !2881)
!2946 = distinct !DISubprogram(name: "serio_unregister_driver", scope: !3, file: !3, line: 853, type: !2947, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !181}
!2949 = !DILocalVariable(name: "drv", arg: 1, scope: !2946, file: !3, line: 853, type: !181)
!2950 = !DILocation(line: 853, column: 51, scope: !2946)
!2951 = !DILocalVariable(name: "serio", scope: !2946, file: !3, line: 855, type: !110)
!2952 = !DILocation(line: 855, column: 16, scope: !2946)
!2953 = !DILocation(line: 857, column: 2, scope: !2946)
!2954 = !DILocation(line: 859, column: 2, scope: !2946)
!2955 = !DILocation(line: 859, column: 7, scope: !2946)
!2956 = !DILocation(line: 859, column: 19, scope: !2946)
!2957 = !DILocation(line: 860, column: 30, scope: !2946)
!2958 = !DILocation(line: 860, column: 2, scope: !2946)
!2959 = !DILabel(scope: !2946, name: "start_over", file: !3, line: 862)
!2960 = !DILocation(line: 862, column: 1, scope: !2946)
!2961 = !DILocalVariable(name: "__mptr", scope: !2962, file: !3, line: 863, type: !109)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 863, column: 2)
!2963 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 863, column: 2)
!2964 = !DILocation(line: 863, column: 2, scope: !2962)
!2965 = !DILocation(line: 863, column: 2, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 863, column: 2)
!2967 = !DILocation(line: 863, column: 2, scope: !2963)
!2968 = !DILocation(line: 863, column: 2, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 863, column: 2)
!2970 = !DILocation(line: 864, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 864, column: 7)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 863, column: 48)
!2973 = !DILocation(line: 864, column: 14, scope: !2971)
!2974 = !DILocation(line: 864, column: 21, scope: !2971)
!2975 = !DILocation(line: 864, column: 18, scope: !2971)
!2976 = !DILocation(line: 864, column: 7, scope: !2972)
!2977 = !DILocation(line: 865, column: 26, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 864, column: 26)
!2979 = !DILocation(line: 865, column: 4, scope: !2978)
!2980 = !DILocation(line: 866, column: 22, scope: !2978)
!2981 = !DILocation(line: 866, column: 4, scope: !2978)
!2982 = !DILocation(line: 868, column: 4, scope: !2978)
!2983 = !DILocation(line: 870, column: 2, scope: !2972)
!2984 = !DILocalVariable(name: "__mptr", scope: !2985, file: !3, line: 863, type: !109)
!2985 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 863, column: 2)
!2986 = !DILocation(line: 863, column: 2, scope: !2985)
!2987 = !DILocation(line: 863, column: 2, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 863, column: 2)
!2989 = distinct !{!2989, !2967, !2990}
!2990 = !DILocation(line: 870, column: 2, scope: !2963)
!2991 = !DILocation(line: 872, column: 21, scope: !2946)
!2992 = !DILocation(line: 872, column: 26, scope: !2946)
!2993 = !DILocation(line: 872, column: 2, scope: !2946)
!2994 = !DILocation(line: 873, column: 2, scope: !2946)
!2995 = !DILocation(line: 874, column: 1, scope: !2946)
!2996 = distinct !DISubprogram(name: "serio_remove_pending_events", scope: !3, file: !3, line: 295, type: !1497, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!2997 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 309, column: 2, scope: !2996)
!2999 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !2998)
!3000 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 300, column: 2, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 300, column: 2)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 300, column: 2)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 300, column: 2)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 300, column: 2)
!3006 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 300, column: 2)
!3007 = !DILocalVariable(name: "object", arg: 1, scope: !2996, file: !3, line: 295, type: !109)
!3008 = !DILocation(line: 295, column: 47, scope: !2996)
!3009 = !DILocalVariable(name: "event", scope: !2996, file: !3, line: 297, type: !2040)
!3010 = !DILocation(line: 297, column: 22, scope: !2996)
!3011 = !DILocalVariable(name: "next", scope: !2996, file: !3, line: 297, type: !2040)
!3012 = !DILocation(line: 297, column: 30, scope: !2996)
!3013 = !DILocalVariable(name: "flags", scope: !2996, file: !3, line: 298, type: !309)
!3014 = !DILocation(line: 298, column: 16, scope: !2996)
!3015 = !DILocation(line: 300, column: 2, scope: !2996)
!3016 = !DILocation(line: 300, column: 2, scope: !3006)
!3017 = !DILocalVariable(name: "__dummy", scope: !3018, file: !3, line: 300, type: !309)
!3018 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 300, column: 2)
!3019 = !DILocation(line: 300, column: 2, scope: !3018)
!3020 = !DILocalVariable(name: "__dummy2", scope: !3018, file: !3, line: 300, type: !309)
!3021 = !DILocation(line: 300, column: 2, scope: !3005)
!3022 = !DILocation(line: 300, column: 2, scope: !3004)
!3023 = !DILocation(line: 300, column: 2, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 300, column: 2)
!3025 = !DILocalVariable(name: "__dummy", scope: !3026, file: !3, line: 300, type: !309)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 300, column: 2)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 300, column: 2)
!3028 = !DILocation(line: 300, column: 2, scope: !3026)
!3029 = !DILocalVariable(name: "__dummy2", scope: !3026, file: !3, line: 300, type: !309)
!3030 = !DILocation(line: 300, column: 2, scope: !3027)
!3031 = !DILocation(line: 300, column: 2, scope: !3003)
!3032 = !{i32 -2143398974}
!3033 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !3001)
!3034 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !3001)
!3035 = !DILocation(line: 300, column: 2, scope: !3002)
!3036 = !DILocalVariable(name: "__mptr", scope: !3037, file: !3, line: 302, type: !109)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 302, column: 2)
!3038 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 302, column: 2)
!3039 = !DILocation(line: 302, column: 2, scope: !3037)
!3040 = !DILocation(line: 302, column: 2, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 302, column: 2)
!3042 = !DILocation(line: 302, column: 2, scope: !3038)
!3043 = !DILocalVariable(name: "__mptr", scope: !3044, file: !3, line: 302, type: !109)
!3044 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 302, column: 2)
!3045 = !DILocation(line: 302, column: 2, scope: !3044)
!3046 = !DILocation(line: 302, column: 2, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 302, column: 2)
!3048 = !DILocation(line: 302, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 302, column: 2)
!3050 = !DILocation(line: 303, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 303, column: 7)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 302, column: 65)
!3053 = !DILocation(line: 303, column: 14, scope: !3051)
!3054 = !DILocation(line: 303, column: 24, scope: !3051)
!3055 = !DILocation(line: 303, column: 21, scope: !3051)
!3056 = !DILocation(line: 303, column: 7, scope: !3052)
!3057 = !DILocation(line: 304, column: 19, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 303, column: 32)
!3059 = !DILocation(line: 304, column: 26, scope: !3058)
!3060 = !DILocation(line: 304, column: 4, scope: !3058)
!3061 = !DILocation(line: 305, column: 21, scope: !3058)
!3062 = !DILocation(line: 305, column: 4, scope: !3058)
!3063 = !DILocation(line: 306, column: 3, scope: !3058)
!3064 = !DILocation(line: 307, column: 2, scope: !3052)
!3065 = !DILocalVariable(name: "__mptr", scope: !3066, file: !3, line: 302, type: !109)
!3066 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 302, column: 2)
!3067 = !DILocation(line: 302, column: 2, scope: !3066)
!3068 = !DILocation(line: 302, column: 2, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 302, column: 2)
!3070 = distinct !{!3070, !3042, !3071}
!3071 = !DILocation(line: 307, column: 2, scope: !3038)
!3072 = !DILocation(line: 309, column: 44, scope: !2996)
!3073 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !2998)
!3074 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !2998)
!3075 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !2998)
!3076 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !2998)
!3077 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !2998)
!3078 = !DILocation(line: 310, column: 1, scope: !2996)
!3079 = distinct !DISubprogram(name: "serio_find_driver", scope: !3, file: !3, line: 116, type: !167, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3080 = !DILocalVariable(name: "serio", arg: 1, scope: !3079, file: !3, line: 116, type: !110)
!3081 = !DILocation(line: 116, column: 45, scope: !3079)
!3082 = !DILocalVariable(name: "error", scope: !3079, file: !3, line: 118, type: !160)
!3083 = !DILocation(line: 118, column: 6, scope: !3079)
!3084 = !DILocation(line: 120, column: 25, scope: !3079)
!3085 = !DILocation(line: 120, column: 32, scope: !3079)
!3086 = !DILocation(line: 120, column: 10, scope: !3079)
!3087 = !DILocation(line: 120, column: 8, scope: !3079)
!3088 = !DILocation(line: 121, column: 6, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 121, column: 6)
!3090 = !DILocation(line: 121, column: 12, scope: !3089)
!3091 = !DILocation(line: 121, column: 16, scope: !3089)
!3092 = !DILocation(line: 121, column: 19, scope: !3089)
!3093 = !DILocation(line: 121, column: 25, scope: !3089)
!3094 = !DILocation(line: 121, column: 6, scope: !3079)
!3095 = !DILocation(line: 122, column: 3, scope: !3089)
!3096 = !DILocation(line: 125, column: 1, scope: !3079)
!3097 = distinct !DISubprogram(name: "serio_open", scope: !3, file: !3, line: 971, type: !199, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3098 = !DILocalVariable(name: "serio", arg: 1, scope: !3097, file: !3, line: 971, type: !110)
!3099 = !DILocation(line: 971, column: 30, scope: !3097)
!3100 = !DILocalVariable(name: "drv", arg: 2, scope: !3097, file: !3, line: 971, type: !181)
!3101 = !DILocation(line: 971, column: 58, scope: !3097)
!3102 = !DILocation(line: 973, column: 16, scope: !3097)
!3103 = !DILocation(line: 973, column: 23, scope: !3097)
!3104 = !DILocation(line: 973, column: 2, scope: !3097)
!3105 = !DILocation(line: 975, column: 6, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 975, column: 6)
!3107 = !DILocation(line: 975, column: 13, scope: !3106)
!3108 = !DILocation(line: 975, column: 18, scope: !3106)
!3109 = !DILocation(line: 975, column: 21, scope: !3106)
!3110 = !DILocation(line: 975, column: 28, scope: !3106)
!3111 = !DILocation(line: 975, column: 33, scope: !3106)
!3112 = !DILocation(line: 975, column: 6, scope: !3097)
!3113 = !DILocation(line: 976, column: 17, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 975, column: 41)
!3115 = !DILocation(line: 976, column: 3, scope: !3114)
!3116 = !DILocation(line: 977, column: 3, scope: !3114)
!3117 = !DILocation(line: 979, column: 2, scope: !3097)
!3118 = !DILocation(line: 980, column: 1, scope: !3097)
!3119 = distinct !DISubprogram(name: "serio_set_drv", scope: !3, file: !3, line: 877, type: !3120, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !110, !181}
!3122 = !DILocalVariable(name: "serio", arg: 1, scope: !3119, file: !3, line: 877, type: !110)
!3123 = !DILocation(line: 877, column: 41, scope: !3119)
!3124 = !DILocalVariable(name: "drv", arg: 2, scope: !3119, file: !3, line: 877, type: !181)
!3125 = !DILocation(line: 877, column: 69, scope: !3119)
!3126 = !DILocation(line: 879, column: 17, scope: !3119)
!3127 = !DILocation(line: 879, column: 2, scope: !3119)
!3128 = !DILocation(line: 880, column: 15, scope: !3119)
!3129 = !DILocation(line: 880, column: 2, scope: !3119)
!3130 = !DILocation(line: 880, column: 9, scope: !3119)
!3131 = !DILocation(line: 880, column: 13, scope: !3119)
!3132 = !DILocation(line: 881, column: 20, scope: !3119)
!3133 = !DILocation(line: 881, column: 2, scope: !3119)
!3134 = !DILocation(line: 882, column: 1, scope: !3119)
!3135 = distinct !DISubprogram(name: "serio_close", scope: !3, file: !3, line: 984, type: !167, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3136 = !DILocalVariable(name: "serio", arg: 1, scope: !3135, file: !3, line: 984, type: !110)
!3137 = !DILocation(line: 984, column: 32, scope: !3135)
!3138 = !DILocation(line: 986, column: 6, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 986, column: 6)
!3140 = !DILocation(line: 986, column: 13, scope: !3139)
!3141 = !DILocation(line: 986, column: 6, scope: !3135)
!3142 = !DILocation(line: 987, column: 3, scope: !3139)
!3143 = !DILocation(line: 987, column: 10, scope: !3139)
!3144 = !DILocation(line: 987, column: 16, scope: !3139)
!3145 = !DILocation(line: 989, column: 16, scope: !3135)
!3146 = !DILocation(line: 989, column: 2, scope: !3135)
!3147 = !DILocation(line: 990, column: 1, scope: !3135)
!3148 = distinct !DISubprogram(name: "serio_interrupt", scope: !3, file: !3, line: 993, type: !194, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3149 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1008, column: 2, scope: !3148)
!3151 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !3150)
!3152 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 999, column: 2, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 999, column: 2)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 999, column: 2)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 999, column: 2)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 999, column: 2)
!3158 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 999, column: 2)
!3159 = !DILocalVariable(name: "serio", arg: 1, scope: !3148, file: !3, line: 993, type: !110)
!3160 = !DILocation(line: 993, column: 43, scope: !3148)
!3161 = !DILocalVariable(name: "data", arg: 2, scope: !3148, file: !3, line: 994, type: !136)
!3162 = !DILocation(line: 994, column: 17, scope: !3148)
!3163 = !DILocalVariable(name: "dfl", arg: 3, scope: !3148, file: !3, line: 994, type: !7)
!3164 = !DILocation(line: 994, column: 36, scope: !3148)
!3165 = !DILocalVariable(name: "flags", scope: !3148, file: !3, line: 996, type: !309)
!3166 = !DILocation(line: 996, column: 16, scope: !3148)
!3167 = !DILocalVariable(name: "ret", scope: !3148, file: !3, line: 997, type: !196)
!3168 = !DILocation(line: 997, column: 14, scope: !3148)
!3169 = !DILocation(line: 999, column: 2, scope: !3148)
!3170 = !DILocation(line: 999, column: 2, scope: !3158)
!3171 = !DILocalVariable(name: "__dummy", scope: !3172, file: !3, line: 999, type: !309)
!3172 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 999, column: 2)
!3173 = !DILocation(line: 999, column: 2, scope: !3172)
!3174 = !DILocalVariable(name: "__dummy2", scope: !3172, file: !3, line: 999, type: !309)
!3175 = !DILocation(line: 999, column: 2, scope: !3157)
!3176 = !DILocation(line: 999, column: 2, scope: !3156)
!3177 = !DILocation(line: 999, column: 2, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 999, column: 2)
!3179 = !DILocalVariable(name: "__dummy", scope: !3180, file: !3, line: 999, type: !309)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 999, column: 2)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 999, column: 2)
!3182 = !DILocation(line: 999, column: 2, scope: !3180)
!3183 = !DILocalVariable(name: "__dummy2", scope: !3180, file: !3, line: 999, type: !309)
!3184 = !DILocation(line: 999, column: 2, scope: !3181)
!3185 = !DILocation(line: 999, column: 2, scope: !3155)
!3186 = !{i32 -2143325915}
!3187 = !DILocation(line: 999, column: 2, scope: !3154)
!3188 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !3153)
!3189 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !3153)
!3190 = !DILocation(line: 1001, column: 13, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1001, column: 13)
!3192 = !DILocation(line: 1001, column: 13, scope: !3148)
!3193 = !DILocation(line: 1002, column: 23, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1001, column: 33)
!3195 = !DILocation(line: 1002, column: 30, scope: !3194)
!3196 = !DILocation(line: 1002, column: 35, scope: !3194)
!3197 = !DILocation(line: 1002, column: 45, scope: !3194)
!3198 = !DILocation(line: 1002, column: 52, scope: !3194)
!3199 = !DILocation(line: 1002, column: 58, scope: !3194)
!3200 = !DILocation(line: 1002, column: 21, scope: !3194)
!3201 = !DILocation(line: 1003, column: 2, scope: !3194)
!3202 = !DILocation(line: 1003, column: 14, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1003, column: 13)
!3204 = !DILocation(line: 1003, column: 18, scope: !3203)
!3205 = !DILocation(line: 1003, column: 43, scope: !3203)
!3206 = !DILocation(line: 1003, column: 50, scope: !3203)
!3207 = !DILocation(line: 1003, column: 21, scope: !3203)
!3208 = !DILocation(line: 1003, column: 13, scope: !3191)
!3209 = !DILocation(line: 1004, column: 16, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1003, column: 56)
!3211 = !DILocation(line: 1004, column: 3, scope: !3210)
!3212 = !DILocation(line: 1005, column: 7, scope: !3210)
!3213 = !DILocation(line: 1006, column: 2, scope: !3210)
!3214 = !DILocation(line: 1008, column: 26, scope: !3148)
!3215 = !DILocation(line: 1008, column: 33, scope: !3148)
!3216 = !DILocation(line: 1008, column: 39, scope: !3148)
!3217 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !3150)
!3218 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !3150)
!3219 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !3150)
!3220 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !3150)
!3221 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !3150)
!3222 = !DILocation(line: 1010, column: 9, scope: !3148)
!3223 = !DILocation(line: 1010, column: 2, scope: !3148)
!3224 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3225, file: !3225, line: 666, type: !3226, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3225 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!309}
!3228 = !DILocalVariable(name: "f", scope: !3224, file: !3225, line: 668, type: !309)
!3229 = !DILocation(line: 668, column: 16, scope: !3224)
!3230 = !DILocation(line: 670, column: 6, scope: !3224)
!3231 = !DILocation(line: 670, column: 4, scope: !3224)
!3232 = !DILocation(line: 671, column: 2, scope: !3224)
!3233 = !DILocation(line: 672, column: 9, scope: !3224)
!3234 = !DILocation(line: 672, column: 2, scope: !3224)
!3235 = distinct !DISubprogram(name: "device_is_registered", scope: !30, file: !30, line: 680, type: !1716, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3236 = !DILocalVariable(name: "dev", arg: 1, scope: !3235, file: !30, line: 680, type: !217)
!3237 = !DILocation(line: 680, column: 55, scope: !3235)
!3238 = !DILocation(line: 682, column: 9, scope: !3235)
!3239 = !DILocation(line: 682, column: 14, scope: !3235)
!3240 = !DILocation(line: 682, column: 19, scope: !3235)
!3241 = !DILocation(line: 682, column: 2, scope: !3235)
!3242 = distinct !DISubprogram(name: "serio_bus_match", scope: !3, file: !3, line: 884, type: !1970, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3243 = !DILocalVariable(name: "dev", arg: 1, scope: !3242, file: !3, line: 884, type: !217)
!3244 = !DILocation(line: 884, column: 43, scope: !3242)
!3245 = !DILocalVariable(name: "drv", arg: 2, scope: !3242, file: !3, line: 884, type: !1742)
!3246 = !DILocation(line: 884, column: 70, scope: !3242)
!3247 = !DILocalVariable(name: "serio", scope: !3242, file: !3, line: 886, type: !110)
!3248 = !DILocation(line: 886, column: 16, scope: !3242)
!3249 = !DILocalVariable(name: "__mptr", scope: !3250, file: !3, line: 886, type: !109)
!3250 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 886, column: 24)
!3251 = !DILocation(line: 886, column: 24, scope: !3250)
!3252 = !DILocation(line: 886, column: 24, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 886, column: 24)
!3254 = !DILocalVariable(name: "serio_drv", scope: !3242, file: !3, line: 887, type: !181)
!3255 = !DILocation(line: 887, column: 23, scope: !3242)
!3256 = !DILocalVariable(name: "__mptr", scope: !3257, file: !3, line: 887, type: !109)
!3257 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 887, column: 35)
!3258 = !DILocation(line: 887, column: 35, scope: !3257)
!3259 = !DILocation(line: 887, column: 35, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 887, column: 35)
!3261 = !DILocation(line: 889, column: 6, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 889, column: 6)
!3263 = !DILocation(line: 889, column: 13, scope: !3262)
!3264 = !DILocation(line: 889, column: 25, scope: !3262)
!3265 = !DILocation(line: 889, column: 28, scope: !3262)
!3266 = !DILocation(line: 889, column: 39, scope: !3262)
!3267 = !DILocation(line: 889, column: 6, scope: !3242)
!3268 = !DILocation(line: 890, column: 3, scope: !3262)
!3269 = !DILocation(line: 892, column: 26, scope: !3242)
!3270 = !DILocation(line: 892, column: 37, scope: !3242)
!3271 = !DILocation(line: 892, column: 47, scope: !3242)
!3272 = !DILocation(line: 892, column: 9, scope: !3242)
!3273 = !DILocation(line: 892, column: 2, scope: !3242)
!3274 = !DILocation(line: 893, column: 1, scope: !3242)
!3275 = distinct !DISubprogram(name: "serio_uevent", scope: !3, file: !3, line: 902, type: !1698, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3276 = !DILocalVariable(name: "dev", arg: 1, scope: !3275, file: !3, line: 902, type: !217)
!3277 = !DILocation(line: 902, column: 40, scope: !3275)
!3278 = !DILocalVariable(name: "env", arg: 2, scope: !3275, file: !3, line: 902, type: !255)
!3279 = !DILocation(line: 902, column: 69, scope: !3275)
!3280 = !DILocalVariable(name: "serio", scope: !3275, file: !3, line: 904, type: !110)
!3281 = !DILocation(line: 904, column: 16, scope: !3275)
!3282 = !DILocation(line: 906, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 906, column: 6)
!3284 = !DILocation(line: 906, column: 6, scope: !3275)
!3285 = !DILocation(line: 907, column: 3, scope: !3283)
!3286 = !DILocalVariable(name: "__mptr", scope: !3287, file: !3, line: 909, type: !109)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 909, column: 10)
!3288 = !DILocation(line: 909, column: 10, scope: !3287)
!3289 = !DILocation(line: 909, column: 10, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 909, column: 10)
!3291 = !DILocation(line: 909, column: 8, scope: !3275)
!3292 = !DILocation(line: 911, column: 2, scope: !3275)
!3293 = !DILocalVariable(name: "err", scope: !3294, file: !3, line: 911, type: !160)
!3294 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 911, column: 2)
!3295 = !DILocation(line: 911, column: 2, scope: !3294)
!3296 = !DILocation(line: 911, column: 2, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 911, column: 2)
!3298 = !DILocation(line: 912, column: 2, scope: !3275)
!3299 = !DILocalVariable(name: "err", scope: !3300, file: !3, line: 912, type: !160)
!3300 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 912, column: 2)
!3301 = !DILocation(line: 912, column: 2, scope: !3300)
!3302 = !DILocation(line: 912, column: 2, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 912, column: 2)
!3304 = !DILocation(line: 913, column: 2, scope: !3275)
!3305 = !DILocalVariable(name: "err", scope: !3306, file: !3, line: 913, type: !160)
!3306 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 913, column: 2)
!3307 = !DILocation(line: 913, column: 2, scope: !3306)
!3308 = !DILocation(line: 913, column: 2, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 913, column: 2)
!3310 = !DILocation(line: 914, column: 2, scope: !3275)
!3311 = !DILocalVariable(name: "err", scope: !3312, file: !3, line: 914, type: !160)
!3312 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 914, column: 2)
!3313 = !DILocation(line: 914, column: 2, scope: !3312)
!3314 = !DILocation(line: 914, column: 2, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 914, column: 2)
!3316 = !DILocation(line: 916, column: 2, scope: !3275)
!3317 = !DILocalVariable(name: "err", scope: !3318, file: !3, line: 916, type: !160)
!3318 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 916, column: 2)
!3319 = !DILocation(line: 916, column: 2, scope: !3318)
!3320 = !DILocation(line: 916, column: 2, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 916, column: 2)
!3322 = !DILocation(line: 919, column: 6, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 919, column: 6)
!3324 = !DILocation(line: 919, column: 13, scope: !3323)
!3325 = !DILocation(line: 919, column: 6, scope: !3275)
!3326 = !DILocation(line: 920, column: 3, scope: !3323)
!3327 = !DILocalVariable(name: "err", scope: !3328, file: !3, line: 920, type: !160)
!3328 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 920, column: 3)
!3329 = !DILocation(line: 920, column: 3, scope: !3328)
!3330 = !DILocation(line: 920, column: 3, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 920, column: 3)
!3332 = !DILocation(line: 923, column: 2, scope: !3275)
!3333 = !DILocation(line: 924, column: 1, scope: !3275)
!3334 = distinct !DISubprogram(name: "serio_driver_probe", scope: !3, file: !3, line: 773, type: !1716, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3335 = !DILocalVariable(name: "dev", arg: 1, scope: !3334, file: !3, line: 773, type: !217)
!3336 = !DILocation(line: 773, column: 46, scope: !3334)
!3337 = !DILocalVariable(name: "serio", scope: !3334, file: !3, line: 775, type: !110)
!3338 = !DILocation(line: 775, column: 16, scope: !3334)
!3339 = !DILocalVariable(name: "__mptr", scope: !3340, file: !3, line: 775, type: !109)
!3340 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 775, column: 24)
!3341 = !DILocation(line: 775, column: 24, scope: !3340)
!3342 = !DILocation(line: 775, column: 24, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 775, column: 24)
!3344 = !DILocalVariable(name: "drv", scope: !3334, file: !3, line: 776, type: !181)
!3345 = !DILocation(line: 776, column: 23, scope: !3334)
!3346 = !DILocalVariable(name: "__mptr", scope: !3347, file: !3, line: 776, type: !109)
!3347 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 776, column: 29)
!3348 = !DILocation(line: 776, column: 29, scope: !3347)
!3349 = !DILocation(line: 776, column: 29, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 776, column: 29)
!3351 = !DILocation(line: 778, column: 30, scope: !3334)
!3352 = !DILocation(line: 778, column: 37, scope: !3334)
!3353 = !DILocation(line: 778, column: 9, scope: !3334)
!3354 = !DILocation(line: 778, column: 2, scope: !3334)
!3355 = distinct !DISubprogram(name: "serio_driver_remove", scope: !3, file: !3, line: 781, type: !1716, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3356 = !DILocalVariable(name: "dev", arg: 1, scope: !3355, file: !3, line: 781, type: !217)
!3357 = !DILocation(line: 781, column: 47, scope: !3355)
!3358 = !DILocalVariable(name: "serio", scope: !3355, file: !3, line: 783, type: !110)
!3359 = !DILocation(line: 783, column: 16, scope: !3355)
!3360 = !DILocalVariable(name: "__mptr", scope: !3361, file: !3, line: 783, type: !109)
!3361 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 783, column: 24)
!3362 = !DILocation(line: 783, column: 24, scope: !3361)
!3363 = !DILocation(line: 783, column: 24, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 783, column: 24)
!3365 = !DILocation(line: 785, column: 26, scope: !3355)
!3366 = !DILocation(line: 785, column: 2, scope: !3355)
!3367 = !DILocation(line: 786, column: 2, scope: !3355)
!3368 = distinct !DISubprogram(name: "serio_shutdown", scope: !3, file: !3, line: 797, type: !1707, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3369 = !DILocalVariable(name: "dev", arg: 1, scope: !3368, file: !3, line: 797, type: !217)
!3370 = !DILocation(line: 797, column: 43, scope: !3368)
!3371 = !DILocalVariable(name: "serio", scope: !3368, file: !3, line: 799, type: !110)
!3372 = !DILocation(line: 799, column: 16, scope: !3368)
!3373 = !DILocalVariable(name: "__mptr", scope: !3374, file: !3, line: 799, type: !109)
!3374 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 799, column: 24)
!3375 = !DILocation(line: 799, column: 24, scope: !3374)
!3376 = !DILocation(line: 799, column: 24, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 799, column: 24)
!3378 = !DILocation(line: 801, column: 16, scope: !3368)
!3379 = !DILocation(line: 801, column: 2, scope: !3368)
!3380 = !DILocation(line: 802, column: 1, scope: !3368)
!3381 = distinct !DISubprogram(name: "serio_exit", scope: !3, file: !3, line: 1041, type: !2076, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3382 = !DILocation(line: 1043, column: 2, scope: !3381)
!3383 = !DILocation(line: 1049, column: 2, scope: !3381)
!3384 = !DILocation(line: 1050, column: 1, scope: !3381)
!3385 = distinct !DISubprogram(name: "serio_init", scope: !3, file: !3, line: 1028, type: !3386, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!160}
!3388 = !DILocalVariable(name: "error", scope: !3385, file: !3, line: 1030, type: !160)
!3389 = !DILocation(line: 1030, column: 6, scope: !3385)
!3390 = !DILocation(line: 1032, column: 10, scope: !3385)
!3391 = !DILocation(line: 1032, column: 8, scope: !3385)
!3392 = !DILocation(line: 1033, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1033, column: 6)
!3394 = !DILocation(line: 1033, column: 6, scope: !3385)
!3395 = !DILocation(line: 1034, column: 3, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1033, column: 13)
!3397 = !DILocation(line: 1035, column: 10, scope: !3396)
!3398 = !DILocation(line: 1035, column: 3, scope: !3396)
!3399 = !DILocation(line: 1038, column: 2, scope: !3385)
!3400 = !DILocation(line: 1039, column: 1, scope: !3385)
!3401 = distinct !DISubprogram(name: "try_module_get", scope: !3402, file: !3402, line: 751, type: !3403, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3402 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!126, !1923}
!3405 = !DILocalVariable(name: "module", arg: 1, scope: !3401, file: !3402, line: 751, type: !1923)
!3406 = !DILocation(line: 751, column: 50, scope: !3401)
!3407 = !DILocation(line: 753, column: 2, scope: !3401)
!3408 = distinct !DISubprogram(name: "list_add_tail", scope: !3409, file: !3409, line: 98, type: !3410, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3409 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !176, !176}
!3412 = !DILocalVariable(name: "new", arg: 1, scope: !3408, file: !3409, line: 98, type: !176)
!3413 = !DILocation(line: 98, column: 52, scope: !3408)
!3414 = !DILocalVariable(name: "head", arg: 2, scope: !3408, file: !3409, line: 98, type: !176)
!3415 = !DILocation(line: 98, column: 75, scope: !3408)
!3416 = !DILocation(line: 100, column: 13, scope: !3408)
!3417 = !DILocation(line: 100, column: 18, scope: !3408)
!3418 = !DILocation(line: 100, column: 24, scope: !3408)
!3419 = !DILocation(line: 100, column: 30, scope: !3408)
!3420 = !DILocation(line: 100, column: 2, scope: !3408)
!3421 = !DILocation(line: 101, column: 1, scope: !3408)
!3422 = distinct !DISubprogram(name: "queue_work", scope: !76, file: !76, line: 504, type: !3423, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!126, !3425, !1431}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !76, line: 18, flags: DIFlagFwdDecl)
!3427 = !DILocalVariable(name: "wq", arg: 1, scope: !3422, file: !76, line: 504, type: !3425)
!3428 = !DILocation(line: 504, column: 56, scope: !3422)
!3429 = !DILocalVariable(name: "work", arg: 2, scope: !3422, file: !76, line: 505, type: !1431)
!3430 = !DILocation(line: 505, column: 30, scope: !3422)
!3431 = !DILocation(line: 507, column: 41, scope: !3422)
!3432 = !DILocation(line: 507, column: 45, scope: !3422)
!3433 = !DILocation(line: 507, column: 9, scope: !3422)
!3434 = !DILocation(line: 507, column: 2, scope: !3422)
!3435 = distinct !DISubprogram(name: "get_order", scope: !3436, file: !3436, line: 29, type: !3437, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3436 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!160, !309}
!3439 = !DILocalVariable(name: "x", arg: 1, scope: !3440, file: !3441, line: 366, type: !380)
!3440 = distinct !DISubprogram(name: "fls64", scope: !3441, file: !3441, line: 366, type: !3442, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3441 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!160, !380}
!3444 = !DILocation(line: 366, column: 40, scope: !3440, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 46, column: 9, scope: !3435)
!3446 = !DILocalVariable(name: "bitpos", scope: !3440, file: !3441, line: 368, type: !160)
!3447 = !DILocation(line: 368, column: 6, scope: !3440, inlinedAt: !3445)
!3448 = !DILocalVariable(name: "size", arg: 1, scope: !3435, file: !3436, line: 29, type: !309)
!3449 = !DILocation(line: 29, column: 63, scope: !3435)
!3450 = !DILocation(line: 31, column: 27, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3435, file: !3436, line: 31, column: 6)
!3452 = !DILocation(line: 31, column: 6, scope: !3451)
!3453 = !DILocation(line: 31, column: 6, scope: !3435)
!3454 = !DILocation(line: 32, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !3436, line: 32, column: 7)
!3456 = distinct !DILexicalBlock(scope: !3451, file: !3436, line: 31, column: 34)
!3457 = !DILocation(line: 32, column: 7, scope: !3456)
!3458 = !DILocation(line: 33, column: 4, scope: !3455)
!3459 = !DILocation(line: 35, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !3436, line: 35, column: 7)
!3461 = !DILocation(line: 35, column: 12, scope: !3460)
!3462 = !DILocation(line: 35, column: 7, scope: !3456)
!3463 = !DILocation(line: 36, column: 4, scope: !3460)
!3464 = !DILocation(line: 38, column: 10, scope: !3456)
!3465 = !DILocation(line: 38, column: 28, scope: !3456)
!3466 = !DILocation(line: 38, column: 41, scope: !3456)
!3467 = !DILocation(line: 38, column: 3, scope: !3456)
!3468 = !DILocation(line: 41, column: 6, scope: !3435)
!3469 = !DILocation(line: 42, column: 7, scope: !3435)
!3470 = !DILocation(line: 46, column: 15, scope: !3435)
!3471 = !DILocation(line: 374, column: 2, scope: !3440, inlinedAt: !3445)
!3472 = !DILocation(line: 376, column: 14, scope: !3440, inlinedAt: !3445)
!3473 = !{i32 321140}
!3474 = !DILocation(line: 377, column: 9, scope: !3440, inlinedAt: !3445)
!3475 = !DILocation(line: 377, column: 16, scope: !3440, inlinedAt: !3445)
!3476 = !DILocation(line: 46, column: 2, scope: !3435)
!3477 = !DILocation(line: 48, column: 1, scope: !3435)
!3478 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3479, file: !3479, line: 30, type: !3480, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3479 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!160, !378}
!3482 = !DILocation(line: 366, column: 40, scope: !3440, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 32, column: 9, scope: !3478)
!3484 = !DILocation(line: 368, column: 6, scope: !3440, inlinedAt: !3483)
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !3479, line: 30, type: !378)
!3486 = !DILocation(line: 30, column: 21, scope: !3478)
!3487 = !DILocation(line: 32, column: 15, scope: !3478)
!3488 = !DILocation(line: 374, column: 2, scope: !3440, inlinedAt: !3483)
!3489 = !DILocation(line: 376, column: 14, scope: !3440, inlinedAt: !3483)
!3490 = !DILocation(line: 377, column: 9, scope: !3440, inlinedAt: !3483)
!3491 = !DILocation(line: 377, column: 16, scope: !3440, inlinedAt: !3483)
!3492 = !DILocation(line: 32, column: 18, scope: !3478)
!3493 = !DILocation(line: 32, column: 2, scope: !3478)
!3494 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3495, file: !3495, line: 137, type: !3496, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3495 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!109, !1149, !1487, !306, !1556}
!3498 = !DILocalVariable(name: "s", arg: 1, scope: !3494, file: !3495, line: 137, type: !1149)
!3499 = !DILocation(line: 137, column: 54, scope: !3494)
!3500 = !DILocalVariable(name: "object", arg: 2, scope: !3494, file: !3495, line: 137, type: !1487)
!3501 = !DILocation(line: 137, column: 69, scope: !3494)
!3502 = !DILocalVariable(name: "size", arg: 3, scope: !3494, file: !3495, line: 138, type: !306)
!3503 = !DILocation(line: 138, column: 12, scope: !3494)
!3504 = !DILocalVariable(name: "flags", arg: 4, scope: !3494, file: !3495, line: 138, type: !1556)
!3505 = !DILocation(line: 138, column: 24, scope: !3494)
!3506 = !DILocation(line: 140, column: 17, scope: !3494)
!3507 = !DILocation(line: 140, column: 2, scope: !3494)
!3508 = distinct !DISubprogram(name: "__list_add", scope: !3409, file: !3409, line: 63, type: !3509, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !176, !176, !176}
!3511 = !DILocalVariable(name: "new", arg: 1, scope: !3508, file: !3409, line: 63, type: !176)
!3512 = !DILocation(line: 63, column: 49, scope: !3508)
!3513 = !DILocalVariable(name: "prev", arg: 2, scope: !3508, file: !3409, line: 64, type: !176)
!3514 = !DILocation(line: 64, column: 28, scope: !3508)
!3515 = !DILocalVariable(name: "next", arg: 3, scope: !3508, file: !3409, line: 65, type: !176)
!3516 = !DILocation(line: 65, column: 28, scope: !3508)
!3517 = !DILocation(line: 67, column: 24, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3508, file: !3409, line: 67, column: 6)
!3519 = !DILocation(line: 67, column: 29, scope: !3518)
!3520 = !DILocation(line: 67, column: 35, scope: !3518)
!3521 = !DILocation(line: 67, column: 7, scope: !3518)
!3522 = !DILocation(line: 67, column: 6, scope: !3508)
!3523 = !DILocation(line: 68, column: 3, scope: !3518)
!3524 = !DILocation(line: 70, column: 15, scope: !3508)
!3525 = !DILocation(line: 70, column: 2, scope: !3508)
!3526 = !DILocation(line: 70, column: 8, scope: !3508)
!3527 = !DILocation(line: 70, column: 13, scope: !3508)
!3528 = !DILocation(line: 71, column: 14, scope: !3508)
!3529 = !DILocation(line: 71, column: 2, scope: !3508)
!3530 = !DILocation(line: 71, column: 7, scope: !3508)
!3531 = !DILocation(line: 71, column: 12, scope: !3508)
!3532 = !DILocation(line: 72, column: 14, scope: !3508)
!3533 = !DILocation(line: 72, column: 2, scope: !3508)
!3534 = !DILocation(line: 72, column: 7, scope: !3508)
!3535 = !DILocation(line: 72, column: 12, scope: !3508)
!3536 = !DILocation(line: 73, column: 2, scope: !3508)
!3537 = !DILocation(line: 73, column: 2, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3508, file: !3409, line: 73, column: 2)
!3539 = !DILocation(line: 73, column: 2, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !3409, line: 73, column: 2)
!3541 = !DILocation(line: 73, column: 2, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !3409, line: 73, column: 2)
!3543 = !DILocation(line: 74, column: 1, scope: !3508)
!3544 = distinct !DISubprogram(name: "__list_add_valid", scope: !3409, file: !3409, line: 45, type: !3545, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!126, !176, !176, !176}
!3547 = !DILocalVariable(name: "new", arg: 1, scope: !3544, file: !3409, line: 45, type: !176)
!3548 = !DILocation(line: 45, column: 55, scope: !3544)
!3549 = !DILocalVariable(name: "prev", arg: 2, scope: !3544, file: !3409, line: 46, type: !176)
!3550 = !DILocation(line: 46, column: 23, scope: !3544)
!3551 = !DILocalVariable(name: "next", arg: 3, scope: !3544, file: !3409, line: 47, type: !176)
!3552 = !DILocation(line: 47, column: 23, scope: !3544)
!3553 = !DILocation(line: 49, column: 2, scope: !3544)
!3554 = distinct !DISubprogram(name: "__module_get", scope: !3402, file: !3402, line: 747, type: !3555, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !1923}
!3557 = !DILocalVariable(name: "module", arg: 1, scope: !3554, file: !3402, line: 747, type: !1923)
!3558 = !DILocation(line: 747, column: 48, scope: !3554)
!3559 = !DILocation(line: 749, column: 1, scope: !3554)
!3560 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3409, file: !3409, line: 33, type: !3561, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !176}
!3563 = !DILocalVariable(name: "list", arg: 1, scope: !3560, file: !3409, line: 33, type: !176)
!3564 = !DILocation(line: 33, column: 53, scope: !3560)
!3565 = !DILocation(line: 35, column: 2, scope: !3560)
!3566 = !DILocation(line: 35, column: 2, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !3409, line: 35, column: 2)
!3568 = !DILocation(line: 35, column: 2, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3567, file: !3409, line: 35, column: 2)
!3570 = !DILocation(line: 35, column: 2, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !3409, line: 35, column: 2)
!3572 = !DILocation(line: 36, column: 15, scope: !3560)
!3573 = !DILocation(line: 36, column: 2, scope: !3560)
!3574 = !DILocation(line: 36, column: 8, scope: !3560)
!3575 = !DILocation(line: 36, column: 13, scope: !3560)
!3576 = !DILocation(line: 37, column: 1, scope: !3560)
!3577 = distinct !DISubprogram(name: "serio_release_port", scope: !3, file: !3, line: 486, type: !1707, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3578 = !DILocalVariable(name: "dev", arg: 1, scope: !3577, file: !3, line: 486, type: !217)
!3579 = !DILocation(line: 486, column: 47, scope: !3577)
!3580 = !DILocalVariable(name: "serio", scope: !3577, file: !3, line: 488, type: !110)
!3581 = !DILocation(line: 488, column: 16, scope: !3577)
!3582 = !DILocalVariable(name: "__mptr", scope: !3583, file: !3, line: 488, type: !109)
!3583 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 488, column: 24)
!3584 = !DILocation(line: 488, column: 24, scope: !3583)
!3585 = !DILocation(line: 488, column: 24, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 488, column: 24)
!3587 = !DILocation(line: 490, column: 8, scope: !3577)
!3588 = !DILocation(line: 490, column: 2, scope: !3577)
!3589 = !DILocation(line: 491, column: 2, scope: !3577)
!3590 = !DILocation(line: 492, column: 1, scope: !3577)
!3591 = distinct !DISubprogram(name: "kasan_check_write", scope: !3592, file: !3592, line: 38, type: !3593, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3592 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!126, !2638, !7}
!3595 = !DILocalVariable(name: "p", arg: 1, scope: !3591, file: !3592, line: 38, type: !2638)
!3596 = !DILocation(line: 38, column: 59, scope: !3591)
!3597 = !DILocalVariable(name: "size", arg: 2, scope: !3591, file: !3592, line: 38, type: !7)
!3598 = !DILocation(line: 38, column: 75, scope: !3591)
!3599 = !DILocation(line: 40, column: 2, scope: !3591)
!3600 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3601, file: !3601, line: 178, type: !3602, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3601 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !2638, !306, !160}
!3604 = !DILocalVariable(name: "ptr", arg: 1, scope: !3600, file: !3601, line: 178, type: !2638)
!3605 = !DILocation(line: 178, column: 60, scope: !3600)
!3606 = !DILocalVariable(name: "size", arg: 2, scope: !3600, file: !3601, line: 178, type: !306)
!3607 = !DILocation(line: 178, column: 72, scope: !3600)
!3608 = !DILocalVariable(name: "type", arg: 3, scope: !3600, file: !3601, line: 179, type: !160)
!3609 = !DILocation(line: 179, column: 15, scope: !3600)
!3610 = !DILocation(line: 179, column: 23, scope: !3600)
!3611 = distinct !DISubprogram(name: "module_put", scope: !3402, file: !3402, line: 756, type: !3555, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3612 = !DILocalVariable(name: "module", arg: 1, scope: !3611, file: !3402, line: 756, type: !1923)
!3613 = !DILocation(line: 756, column: 46, scope: !3611)
!3614 = !DILocation(line: 758, column: 1, scope: !3611)
!3615 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 358, type: !2104, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3616 = !DILocalVariable(name: "dev", arg: 1, scope: !3615, file: !3, line: 358, type: !217)
!3617 = !DILocation(line: 358, column: 41, scope: !3615)
!3618 = !DILocalVariable(name: "attr", arg: 2, scope: !3615, file: !3, line: 358, type: !2106)
!3619 = !DILocation(line: 358, column: 71, scope: !3615)
!3620 = !DILocalVariable(name: "buf", arg: 3, scope: !3615, file: !3, line: 358, type: !260)
!3621 = !DILocation(line: 358, column: 83, scope: !3615)
!3622 = !DILocalVariable(name: "serio", scope: !3615, file: !3, line: 360, type: !110)
!3623 = !DILocation(line: 360, column: 16, scope: !3615)
!3624 = !DILocalVariable(name: "__mptr", scope: !3625, file: !3, line: 360, type: !109)
!3625 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 360, column: 24)
!3626 = !DILocation(line: 360, column: 24, scope: !3625)
!3627 = !DILocation(line: 360, column: 24, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 360, column: 24)
!3629 = !DILocation(line: 361, column: 17, scope: !3615)
!3630 = !DILocation(line: 361, column: 32, scope: !3615)
!3631 = !DILocation(line: 361, column: 39, scope: !3615)
!3632 = !DILocation(line: 361, column: 42, scope: !3615)
!3633 = !DILocation(line: 361, column: 9, scope: !3615)
!3634 = !DILocation(line: 361, column: 2, scope: !3615)
!3635 = distinct !DISubprogram(name: "proto_show", scope: !3, file: !3, line: 364, type: !2104, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3636 = !DILocalVariable(name: "dev", arg: 1, scope: !3635, file: !3, line: 364, type: !217)
!3637 = !DILocation(line: 364, column: 42, scope: !3635)
!3638 = !DILocalVariable(name: "attr", arg: 2, scope: !3635, file: !3, line: 364, type: !2106)
!3639 = !DILocation(line: 364, column: 72, scope: !3635)
!3640 = !DILocalVariable(name: "buf", arg: 3, scope: !3635, file: !3, line: 364, type: !260)
!3641 = !DILocation(line: 364, column: 84, scope: !3635)
!3642 = !DILocalVariable(name: "serio", scope: !3635, file: !3, line: 366, type: !110)
!3643 = !DILocation(line: 366, column: 16, scope: !3635)
!3644 = !DILocalVariable(name: "__mptr", scope: !3645, file: !3, line: 366, type: !109)
!3645 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 366, column: 24)
!3646 = !DILocation(line: 366, column: 24, scope: !3645)
!3647 = !DILocation(line: 366, column: 24, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 366, column: 24)
!3649 = !DILocation(line: 367, column: 17, scope: !3635)
!3650 = !DILocation(line: 367, column: 32, scope: !3635)
!3651 = !DILocation(line: 367, column: 39, scope: !3635)
!3652 = !DILocation(line: 367, column: 42, scope: !3635)
!3653 = !DILocation(line: 367, column: 9, scope: !3635)
!3654 = !DILocation(line: 367, column: 2, scope: !3635)
!3655 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 370, type: !2104, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3656 = !DILocalVariable(name: "dev", arg: 1, scope: !3655, file: !3, line: 370, type: !217)
!3657 = !DILocation(line: 370, column: 39, scope: !3655)
!3658 = !DILocalVariable(name: "attr", arg: 2, scope: !3655, file: !3, line: 370, type: !2106)
!3659 = !DILocation(line: 370, column: 69, scope: !3655)
!3660 = !DILocalVariable(name: "buf", arg: 3, scope: !3655, file: !3, line: 370, type: !260)
!3661 = !DILocation(line: 370, column: 81, scope: !3655)
!3662 = !DILocalVariable(name: "serio", scope: !3655, file: !3, line: 372, type: !110)
!3663 = !DILocation(line: 372, column: 16, scope: !3655)
!3664 = !DILocalVariable(name: "__mptr", scope: !3665, file: !3, line: 372, type: !109)
!3665 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 372, column: 24)
!3666 = !DILocation(line: 372, column: 24, scope: !3665)
!3667 = !DILocation(line: 372, column: 24, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 372, column: 24)
!3669 = !DILocation(line: 373, column: 17, scope: !3655)
!3670 = !DILocation(line: 373, column: 32, scope: !3655)
!3671 = !DILocation(line: 373, column: 39, scope: !3655)
!3672 = !DILocation(line: 373, column: 42, scope: !3655)
!3673 = !DILocation(line: 373, column: 9, scope: !3655)
!3674 = !DILocation(line: 373, column: 2, scope: !3655)
!3675 = distinct !DISubprogram(name: "extra_show", scope: !3, file: !3, line: 376, type: !2104, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3676 = !DILocalVariable(name: "dev", arg: 1, scope: !3675, file: !3, line: 376, type: !217)
!3677 = !DILocation(line: 376, column: 42, scope: !3675)
!3678 = !DILocalVariable(name: "attr", arg: 2, scope: !3675, file: !3, line: 376, type: !2106)
!3679 = !DILocation(line: 376, column: 72, scope: !3675)
!3680 = !DILocalVariable(name: "buf", arg: 3, scope: !3675, file: !3, line: 376, type: !260)
!3681 = !DILocation(line: 376, column: 84, scope: !3675)
!3682 = !DILocalVariable(name: "serio", scope: !3675, file: !3, line: 378, type: !110)
!3683 = !DILocation(line: 378, column: 16, scope: !3675)
!3684 = !DILocalVariable(name: "__mptr", scope: !3685, file: !3, line: 378, type: !109)
!3685 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 378, column: 24)
!3686 = !DILocation(line: 378, column: 24, scope: !3685)
!3687 = !DILocation(line: 378, column: 24, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 378, column: 24)
!3689 = !DILocation(line: 379, column: 17, scope: !3675)
!3690 = !DILocation(line: 379, column: 32, scope: !3675)
!3691 = !DILocation(line: 379, column: 39, scope: !3675)
!3692 = !DILocation(line: 379, column: 42, scope: !3675)
!3693 = !DILocation(line: 379, column: 9, scope: !3675)
!3694 = !DILocation(line: 379, column: 2, scope: !3675)
!3695 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 350, type: !2104, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3696 = !DILocalVariable(name: "dev", arg: 1, scope: !3695, file: !3, line: 350, type: !217)
!3697 = !DILocation(line: 350, column: 45, scope: !3695)
!3698 = !DILocalVariable(name: "attr", arg: 2, scope: !3695, file: !3, line: 350, type: !2106)
!3699 = !DILocation(line: 350, column: 75, scope: !3695)
!3700 = !DILocalVariable(name: "buf", arg: 3, scope: !3695, file: !3, line: 350, type: !260)
!3701 = !DILocation(line: 350, column: 87, scope: !3695)
!3702 = !DILocalVariable(name: "serio", scope: !3695, file: !3, line: 352, type: !110)
!3703 = !DILocation(line: 352, column: 16, scope: !3695)
!3704 = !DILocalVariable(name: "__mptr", scope: !3705, file: !3, line: 352, type: !109)
!3705 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 352, column: 24)
!3706 = !DILocation(line: 352, column: 24, scope: !3705)
!3707 = !DILocation(line: 352, column: 24, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 352, column: 24)
!3709 = !DILocation(line: 354, column: 17, scope: !3695)
!3710 = !DILocation(line: 355, column: 4, scope: !3695)
!3711 = !DILocation(line: 355, column: 11, scope: !3695)
!3712 = !DILocation(line: 355, column: 14, scope: !3695)
!3713 = !DILocation(line: 355, column: 20, scope: !3695)
!3714 = !DILocation(line: 355, column: 27, scope: !3695)
!3715 = !DILocation(line: 355, column: 30, scope: !3695)
!3716 = !DILocation(line: 355, column: 37, scope: !3695)
!3717 = !DILocation(line: 355, column: 44, scope: !3695)
!3718 = !DILocation(line: 355, column: 47, scope: !3695)
!3719 = !DILocation(line: 355, column: 51, scope: !3695)
!3720 = !DILocation(line: 355, column: 58, scope: !3695)
!3721 = !DILocation(line: 355, column: 61, scope: !3695)
!3722 = !DILocation(line: 354, column: 9, scope: !3695)
!3723 = !DILocation(line: 354, column: 2, scope: !3695)
!3724 = distinct !DISubprogram(name: "serio_show_description", scope: !3, file: !3, line: 344, type: !2104, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3725 = !DILocalVariable(name: "dev", arg: 1, scope: !3724, file: !3, line: 344, type: !217)
!3726 = !DILocation(line: 344, column: 54, scope: !3724)
!3727 = !DILocalVariable(name: "attr", arg: 2, scope: !3724, file: !3, line: 344, type: !2106)
!3728 = !DILocation(line: 344, column: 84, scope: !3724)
!3729 = !DILocalVariable(name: "buf", arg: 3, scope: !3724, file: !3, line: 344, type: !260)
!3730 = !DILocation(line: 344, column: 96, scope: !3724)
!3731 = !DILocalVariable(name: "serio", scope: !3724, file: !3, line: 346, type: !110)
!3732 = !DILocation(line: 346, column: 16, scope: !3724)
!3733 = !DILocalVariable(name: "__mptr", scope: !3734, file: !3, line: 346, type: !109)
!3734 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 346, column: 24)
!3735 = !DILocation(line: 346, column: 24, scope: !3734)
!3736 = !DILocation(line: 346, column: 24, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 346, column: 24)
!3738 = !DILocation(line: 347, column: 17, scope: !3724)
!3739 = !DILocation(line: 347, column: 30, scope: !3724)
!3740 = !DILocation(line: 347, column: 37, scope: !3724)
!3741 = !DILocation(line: 347, column: 9, scope: !3724)
!3742 = !DILocation(line: 347, column: 2, scope: !3724)
!3743 = distinct !DISubprogram(name: "drvctl_store", scope: !3, file: !3, line: 382, type: !2109, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3744 = !DILocalVariable(name: "dev", arg: 1, scope: !3743, file: !3, line: 382, type: !217)
!3745 = !DILocation(line: 382, column: 44, scope: !3743)
!3746 = !DILocalVariable(name: "attr", arg: 2, scope: !3743, file: !3, line: 382, type: !2106)
!3747 = !DILocation(line: 382, column: 74, scope: !3743)
!3748 = !DILocalVariable(name: "buf", arg: 3, scope: !3743, file: !3, line: 382, type: !185)
!3749 = !DILocation(line: 382, column: 92, scope: !3743)
!3750 = !DILocalVariable(name: "count", arg: 4, scope: !3743, file: !3, line: 382, type: !306)
!3751 = !DILocation(line: 382, column: 104, scope: !3743)
!3752 = !DILocalVariable(name: "serio", scope: !3743, file: !3, line: 384, type: !110)
!3753 = !DILocation(line: 384, column: 16, scope: !3743)
!3754 = !DILocalVariable(name: "__mptr", scope: !3755, file: !3, line: 384, type: !109)
!3755 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 384, column: 24)
!3756 = !DILocation(line: 384, column: 24, scope: !3755)
!3757 = !DILocation(line: 384, column: 24, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 384, column: 24)
!3759 = !DILocalVariable(name: "drv", scope: !3743, file: !3, line: 385, type: !1742)
!3760 = !DILocation(line: 385, column: 24, scope: !3743)
!3761 = !DILocalVariable(name: "error", scope: !3743, file: !3, line: 386, type: !160)
!3762 = !DILocation(line: 386, column: 6, scope: !3743)
!3763 = !DILocation(line: 388, column: 10, scope: !3743)
!3764 = !DILocation(line: 388, column: 8, scope: !3743)
!3765 = !DILocation(line: 389, column: 6, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 389, column: 6)
!3767 = !DILocation(line: 389, column: 6, scope: !3743)
!3768 = !DILocation(line: 390, column: 10, scope: !3766)
!3769 = !DILocation(line: 390, column: 3, scope: !3766)
!3770 = !DILocation(line: 392, column: 15, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 392, column: 6)
!3772 = !DILocation(line: 392, column: 28, scope: !3771)
!3773 = !DILocation(line: 392, column: 7, scope: !3771)
!3774 = !DILocation(line: 392, column: 6, scope: !3743)
!3775 = !DILocation(line: 393, column: 25, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 392, column: 36)
!3777 = !DILocation(line: 393, column: 3, scope: !3776)
!3778 = !DILocation(line: 394, column: 2, scope: !3776)
!3779 = !DILocation(line: 394, column: 22, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 394, column: 13)
!3781 = !DILocation(line: 394, column: 40, scope: !3780)
!3782 = !DILocation(line: 394, column: 14, scope: !3780)
!3783 = !DILocation(line: 394, column: 13, scope: !3771)
!3784 = !DILocation(line: 395, column: 27, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 394, column: 48)
!3786 = !DILocation(line: 395, column: 3, scope: !3785)
!3787 = !DILocation(line: 396, column: 2, scope: !3785)
!3788 = !DILocation(line: 396, column: 22, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 396, column: 13)
!3790 = !DILocation(line: 396, column: 37, scope: !3789)
!3791 = !DILocation(line: 396, column: 14, scope: !3789)
!3792 = !DILocation(line: 396, column: 13, scope: !3780)
!3793 = !DILocation(line: 397, column: 25, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 396, column: 45)
!3795 = !DILocation(line: 397, column: 3, scope: !3794)
!3796 = !DILocation(line: 398, column: 21, scope: !3794)
!3797 = !DILocation(line: 398, column: 3, scope: !3794)
!3798 = !DILocation(line: 399, column: 33, scope: !3794)
!3799 = !DILocation(line: 399, column: 3, scope: !3794)
!3800 = !DILocation(line: 400, column: 2, scope: !3794)
!3801 = !DILocation(line: 400, column: 32, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 400, column: 13)
!3803 = !DILocation(line: 400, column: 20, scope: !3802)
!3804 = !DILocation(line: 400, column: 18, scope: !3802)
!3805 = !DILocation(line: 400, column: 50, scope: !3802)
!3806 = !DILocation(line: 400, column: 13, scope: !3789)
!3807 = !DILocation(line: 401, column: 25, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 400, column: 59)
!3809 = !DILocation(line: 401, column: 3, scope: !3808)
!3810 = !DILocation(line: 402, column: 29, scope: !3808)
!3811 = !DILocalVariable(name: "__mptr", scope: !3812, file: !3, line: 402, type: !109)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 402, column: 36)
!3813 = !DILocation(line: 402, column: 36, scope: !3812)
!3814 = !DILocation(line: 402, column: 36, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 402, column: 36)
!3816 = !DILocation(line: 402, column: 11, scope: !3808)
!3817 = !DILocation(line: 402, column: 9, scope: !3808)
!3818 = !DILocation(line: 403, column: 33, scope: !3808)
!3819 = !DILocation(line: 403, column: 3, scope: !3808)
!3820 = !DILocation(line: 404, column: 2, scope: !3808)
!3821 = !DILocation(line: 405, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 404, column: 9)
!3823 = !DILocation(line: 408, column: 2, scope: !3743)
!3824 = !DILocation(line: 410, column: 9, scope: !3743)
!3825 = !DILocation(line: 410, column: 17, scope: !3743)
!3826 = !DILocation(line: 410, column: 25, scope: !3743)
!3827 = !DILocation(line: 410, column: 2, scope: !3743)
!3828 = !DILocation(line: 411, column: 1, scope: !3743)
!3829 = distinct !DISubprogram(name: "serio_reconnect_subtree", scope: !3, file: !3, line: 602, type: !167, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3830 = !DILocalVariable(name: "root", arg: 1, scope: !3829, file: !3, line: 602, type: !110)
!3831 = !DILocation(line: 602, column: 51, scope: !3829)
!3832 = !DILocalVariable(name: "s", scope: !3829, file: !3, line: 604, type: !110)
!3833 = !DILocation(line: 604, column: 16, scope: !3829)
!3834 = !DILocation(line: 604, column: 20, scope: !3829)
!3835 = !DILocalVariable(name: "error", scope: !3829, file: !3, line: 605, type: !160)
!3836 = !DILocation(line: 605, column: 6, scope: !3829)
!3837 = !DILocation(line: 607, column: 2, scope: !3829)
!3838 = !DILocation(line: 608, column: 32, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 607, column: 5)
!3840 = !DILocation(line: 608, column: 11, scope: !3839)
!3841 = !DILocation(line: 608, column: 9, scope: !3839)
!3842 = !DILocation(line: 609, column: 8, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 609, column: 7)
!3844 = !DILocation(line: 609, column: 7, scope: !3839)
!3845 = !DILocation(line: 614, column: 21, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 614, column: 8)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 609, column: 15)
!3848 = !DILocation(line: 614, column: 24, scope: !3846)
!3849 = !DILocation(line: 614, column: 9, scope: !3846)
!3850 = !DILocation(line: 614, column: 8, scope: !3847)
!3851 = !DILocalVariable(name: "__mptr", scope: !3852, file: !3, line: 615, type: !109)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 615, column: 9)
!3853 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 614, column: 35)
!3854 = !DILocation(line: 615, column: 9, scope: !3852)
!3855 = !DILocation(line: 615, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 615, column: 9)
!3857 = !DILocation(line: 615, column: 7, scope: !3853)
!3858 = !DILocation(line: 617, column: 5, scope: !3853)
!3859 = !DILocation(line: 619, column: 3, scope: !3847)
!3860 = !DILocation(line: 626, column: 3, scope: !3839)
!3861 = !DILocation(line: 626, column: 10, scope: !3839)
!3862 = !DILocation(line: 626, column: 15, scope: !3839)
!3863 = !DILocation(line: 626, column: 12, scope: !3839)
!3864 = !DILocalVariable(name: "parent", scope: !3865, file: !3, line: 627, type: !110)
!3865 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 626, column: 21)
!3866 = !DILocation(line: 627, column: 18, scope: !3865)
!3867 = !DILocation(line: 627, column: 27, scope: !3865)
!3868 = !DILocation(line: 627, column: 30, scope: !3865)
!3869 = !DILocation(line: 629, column: 23, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 629, column: 8)
!3871 = !DILocation(line: 629, column: 26, scope: !3870)
!3872 = !DILocation(line: 629, column: 39, scope: !3870)
!3873 = !DILocation(line: 629, column: 47, scope: !3870)
!3874 = !DILocation(line: 629, column: 9, scope: !3870)
!3875 = !DILocation(line: 629, column: 8, scope: !3865)
!3876 = !DILocalVariable(name: "__mptr", scope: !3877, file: !3, line: 630, type: !109)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 630, column: 9)
!3878 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 629, column: 58)
!3879 = !DILocation(line: 630, column: 9, scope: !3877)
!3880 = !DILocation(line: 630, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 630, column: 9)
!3882 = !DILocation(line: 630, column: 7, scope: !3878)
!3883 = !DILocation(line: 632, column: 5, scope: !3878)
!3884 = !DILocation(line: 635, column: 8, scope: !3865)
!3885 = !DILocation(line: 635, column: 6, scope: !3865)
!3886 = distinct !{!3886, !3860, !3887}
!3887 = !DILocation(line: 636, column: 3, scope: !3839)
!3888 = !DILocation(line: 637, column: 2, scope: !3839)
!3889 = !DILocation(line: 637, column: 11, scope: !3829)
!3890 = !DILocation(line: 637, column: 16, scope: !3829)
!3891 = !DILocation(line: 637, column: 13, scope: !3829)
!3892 = distinct !{!3892, !3837, !3893}
!3893 = !DILocation(line: 637, column: 20, scope: !3829)
!3894 = !DILocation(line: 638, column: 1, scope: !3829)
!3895 = distinct !DISubprogram(name: "serio_remove_duplicate_events", scope: !3, file: !3, line: 173, type: !3896, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !109, !56}
!3898 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 196, column: 2, scope: !3895)
!3900 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !3899)
!3901 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 179, column: 2, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 179, column: 2)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 179, column: 2)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 179, column: 2)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 179, column: 2)
!3907 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 179, column: 2)
!3908 = !DILocalVariable(name: "object", arg: 1, scope: !3895, file: !3, line: 173, type: !109)
!3909 = !DILocation(line: 173, column: 49, scope: !3895)
!3910 = !DILocalVariable(name: "type", arg: 2, scope: !3895, file: !3, line: 174, type: !56)
!3911 = !DILocation(line: 174, column: 30, scope: !3895)
!3912 = !DILocalVariable(name: "e", scope: !3895, file: !3, line: 176, type: !2040)
!3913 = !DILocation(line: 176, column: 22, scope: !3895)
!3914 = !DILocalVariable(name: "next", scope: !3895, file: !3, line: 176, type: !2040)
!3915 = !DILocation(line: 176, column: 26, scope: !3895)
!3916 = !DILocalVariable(name: "flags", scope: !3895, file: !3, line: 177, type: !309)
!3917 = !DILocation(line: 177, column: 16, scope: !3895)
!3918 = !DILocation(line: 179, column: 2, scope: !3895)
!3919 = !DILocation(line: 179, column: 2, scope: !3907)
!3920 = !DILocalVariable(name: "__dummy", scope: !3921, file: !3, line: 179, type: !309)
!3921 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 179, column: 2)
!3922 = !DILocation(line: 179, column: 2, scope: !3921)
!3923 = !DILocalVariable(name: "__dummy2", scope: !3921, file: !3, line: 179, type: !309)
!3924 = !DILocation(line: 179, column: 2, scope: !3906)
!3925 = !DILocation(line: 179, column: 2, scope: !3905)
!3926 = !DILocation(line: 179, column: 2, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 179, column: 2)
!3928 = !DILocalVariable(name: "__dummy", scope: !3929, file: !3, line: 179, type: !309)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 179, column: 2)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 179, column: 2)
!3931 = !DILocation(line: 179, column: 2, scope: !3929)
!3932 = !DILocalVariable(name: "__dummy2", scope: !3929, file: !3, line: 179, type: !309)
!3933 = !DILocation(line: 179, column: 2, scope: !3930)
!3934 = !DILocation(line: 179, column: 2, scope: !3904)
!3935 = !{i32 -2143411826}
!3936 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !3902)
!3937 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !3902)
!3938 = !DILocation(line: 179, column: 2, scope: !3903)
!3939 = !DILocalVariable(name: "__mptr", scope: !3940, file: !3, line: 181, type: !109)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 181, column: 2)
!3941 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 181, column: 2)
!3942 = !DILocation(line: 181, column: 2, scope: !3940)
!3943 = !DILocation(line: 181, column: 2, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 181, column: 2)
!3945 = !DILocation(line: 181, column: 2, scope: !3941)
!3946 = !DILocalVariable(name: "__mptr", scope: !3947, file: !3, line: 181, type: !109)
!3947 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 181, column: 2)
!3948 = !DILocation(line: 181, column: 2, scope: !3947)
!3949 = !DILocation(line: 181, column: 2, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 181, column: 2)
!3951 = !DILocation(line: 181, column: 2, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 181, column: 2)
!3953 = !DILocation(line: 182, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 182, column: 7)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 181, column: 61)
!3956 = !DILocation(line: 182, column: 17, scope: !3954)
!3957 = !DILocation(line: 182, column: 20, scope: !3954)
!3958 = !DILocation(line: 182, column: 14, scope: !3954)
!3959 = !DILocation(line: 182, column: 7, scope: !3955)
!3960 = !DILocation(line: 188, column: 8, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 188, column: 8)
!3962 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 182, column: 28)
!3963 = !DILocation(line: 188, column: 16, scope: !3961)
!3964 = !DILocation(line: 188, column: 19, scope: !3961)
!3965 = !DILocation(line: 188, column: 13, scope: !3961)
!3966 = !DILocation(line: 188, column: 8, scope: !3962)
!3967 = !DILocation(line: 189, column: 5, scope: !3961)
!3968 = !DILocation(line: 191, column: 19, scope: !3962)
!3969 = !DILocation(line: 191, column: 22, scope: !3962)
!3970 = !DILocation(line: 191, column: 4, scope: !3962)
!3971 = !DILocation(line: 192, column: 21, scope: !3962)
!3972 = !DILocation(line: 192, column: 4, scope: !3962)
!3973 = !DILocation(line: 193, column: 3, scope: !3962)
!3974 = !DILocation(line: 194, column: 2, scope: !3955)
!3975 = !DILocalVariable(name: "__mptr", scope: !3976, file: !3, line: 181, type: !109)
!3976 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 181, column: 2)
!3977 = !DILocation(line: 181, column: 2, scope: !3976)
!3978 = !DILocation(line: 181, column: 2, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 181, column: 2)
!3980 = distinct !{!3980, !3945, !3981}
!3981 = !DILocation(line: 194, column: 2, scope: !3941)
!3982 = !DILocation(line: 196, column: 44, scope: !3895)
!3983 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !3899)
!3984 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !3899)
!3985 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !3899)
!3986 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !3899)
!3987 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !3899)
!3988 = !DILocation(line: 197, column: 1, scope: !3895)
!3989 = distinct !DISubprogram(name: "serio_bind_driver", scope: !3, file: !3, line: 90, type: !199, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!3990 = !DILocalVariable(name: "serio", arg: 1, scope: !3989, file: !3, line: 90, type: !110)
!3991 = !DILocation(line: 90, column: 44, scope: !3989)
!3992 = !DILocalVariable(name: "drv", arg: 2, scope: !3989, file: !3, line: 90, type: !181)
!3993 = !DILocation(line: 90, column: 72, scope: !3989)
!3994 = !DILocalVariable(name: "error", scope: !3989, file: !3, line: 92, type: !160)
!3995 = !DILocation(line: 92, column: 6, scope: !3989)
!3996 = !DILocation(line: 94, column: 23, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 94, column: 6)
!3998 = !DILocation(line: 94, column: 28, scope: !3997)
!3999 = !DILocation(line: 94, column: 38, scope: !3997)
!4000 = !DILocation(line: 94, column: 6, scope: !3997)
!4001 = !DILocation(line: 94, column: 6, scope: !3989)
!4002 = !DILocation(line: 96, column: 24, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 94, column: 46)
!4004 = !DILocation(line: 96, column: 29, scope: !4003)
!4005 = !DILocation(line: 96, column: 3, scope: !4003)
!4006 = !DILocation(line: 96, column: 10, scope: !4003)
!4007 = !DILocation(line: 96, column: 14, scope: !4003)
!4008 = !DILocation(line: 96, column: 21, scope: !4003)
!4009 = !DILocation(line: 97, column: 28, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 97, column: 7)
!4011 = !DILocation(line: 97, column: 35, scope: !4010)
!4012 = !DILocation(line: 97, column: 7, scope: !4010)
!4013 = !DILocation(line: 97, column: 7, scope: !4003)
!4014 = !DILocation(line: 98, column: 4, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 97, column: 41)
!4016 = !DILocation(line: 98, column: 11, scope: !4015)
!4017 = !DILocation(line: 98, column: 15, scope: !4015)
!4018 = !DILocation(line: 98, column: 22, scope: !4015)
!4019 = !DILocation(line: 99, column: 4, scope: !4015)
!4020 = !DILocation(line: 102, column: 31, scope: !4003)
!4021 = !DILocation(line: 102, column: 38, scope: !4003)
!4022 = !DILocation(line: 102, column: 11, scope: !4003)
!4023 = !DILocation(line: 102, column: 9, scope: !4003)
!4024 = !DILocation(line: 103, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 103, column: 7)
!4026 = !DILocation(line: 103, column: 7, scope: !4003)
!4027 = !DILocation(line: 104, column: 4, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 103, column: 14)
!4029 = !DILocation(line: 108, column: 28, scope: !4028)
!4030 = !DILocation(line: 108, column: 4, scope: !4028)
!4031 = !DILocation(line: 109, column: 4, scope: !4028)
!4032 = !DILocation(line: 109, column: 11, scope: !4028)
!4033 = !DILocation(line: 109, column: 15, scope: !4028)
!4034 = !DILocation(line: 109, column: 22, scope: !4028)
!4035 = !DILocation(line: 110, column: 11, scope: !4028)
!4036 = !DILocation(line: 110, column: 4, scope: !4028)
!4037 = !DILocation(line: 112, column: 2, scope: !4003)
!4038 = !DILocation(line: 113, column: 2, scope: !3989)
!4039 = !DILocation(line: 114, column: 1, scope: !3989)
!4040 = distinct !DISubprogram(name: "serio_reconnect_port", scope: !3, file: !3, line: 586, type: !163, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4041 = !DILocalVariable(name: "serio", arg: 1, scope: !4040, file: !3, line: 586, type: !110)
!4042 = !DILocation(line: 586, column: 47, scope: !4040)
!4043 = !DILocalVariable(name: "error", scope: !4040, file: !3, line: 588, type: !160)
!4044 = !DILocation(line: 588, column: 6, scope: !4040)
!4045 = !DILocation(line: 588, column: 37, scope: !4040)
!4046 = !DILocation(line: 588, column: 14, scope: !4040)
!4047 = !DILocation(line: 590, column: 6, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 590, column: 6)
!4049 = !DILocation(line: 590, column: 6, scope: !4040)
!4050 = !DILocation(line: 591, column: 25, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 590, column: 13)
!4052 = !DILocation(line: 591, column: 3, scope: !4051)
!4053 = !DILocation(line: 592, column: 21, scope: !4051)
!4054 = !DILocation(line: 592, column: 3, scope: !4051)
!4055 = !DILocation(line: 593, column: 2, scope: !4051)
!4056 = !DILocation(line: 595, column: 9, scope: !4040)
!4057 = !DILocation(line: 595, column: 2, scope: !4040)
!4058 = distinct !DISubprogram(name: "list_empty", scope: !3409, file: !3409, line: 280, type: !4059, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!160, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!4063 = !DILocalVariable(name: "head", arg: 1, scope: !4058, file: !3409, line: 280, type: !4061)
!4064 = !DILocation(line: 280, column: 54, scope: !4058)
!4065 = !DILocation(line: 282, column: 9, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !3409, line: 282, column: 9)
!4067 = !DILocation(line: 282, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4066, file: !3409, line: 282, column: 9)
!4069 = !DILocation(line: 282, column: 34, scope: !4058)
!4070 = !DILocation(line: 282, column: 31, scope: !4058)
!4071 = !DILocation(line: 282, column: 2, scope: !4058)
!4072 = distinct !DISubprogram(name: "list_is_last", scope: !3409, file: !3409, line: 270, type: !4073, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!160, !4061, !4061}
!4075 = !DILocalVariable(name: "list", arg: 1, scope: !4072, file: !3409, line: 270, type: !4061)
!4076 = !DILocation(line: 270, column: 56, scope: !4072)
!4077 = !DILocalVariable(name: "head", arg: 2, scope: !4072, file: !3409, line: 271, type: !4061)
!4078 = !DILocation(line: 271, column: 29, scope: !4072)
!4079 = !DILocation(line: 273, column: 9, scope: !4072)
!4080 = !DILocation(line: 273, column: 15, scope: !4072)
!4081 = !DILocation(line: 273, column: 23, scope: !4072)
!4082 = !DILocation(line: 273, column: 20, scope: !4072)
!4083 = !DILocation(line: 273, column: 2, scope: !4072)
!4084 = distinct !DISubprogram(name: "serio_reconnect_driver", scope: !3, file: !3, line: 53, type: !163, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4085 = !DILocalVariable(name: "serio", arg: 1, scope: !4084, file: !3, line: 53, type: !110)
!4086 = !DILocation(line: 53, column: 49, scope: !4084)
!4087 = !DILocalVariable(name: "retval", scope: !4084, file: !3, line: 55, type: !160)
!4088 = !DILocation(line: 55, column: 6, scope: !4084)
!4089 = !DILocation(line: 57, column: 14, scope: !4084)
!4090 = !DILocation(line: 57, column: 21, scope: !4084)
!4091 = !DILocation(line: 57, column: 2, scope: !4084)
!4092 = !DILocation(line: 58, column: 6, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 58, column: 6)
!4094 = !DILocation(line: 58, column: 13, scope: !4093)
!4095 = !DILocation(line: 58, column: 17, scope: !4093)
!4096 = !DILocation(line: 58, column: 20, scope: !4093)
!4097 = !DILocation(line: 58, column: 27, scope: !4093)
!4098 = !DILocation(line: 58, column: 32, scope: !4093)
!4099 = !DILocation(line: 58, column: 6, scope: !4084)
!4100 = !DILocation(line: 59, column: 12, scope: !4093)
!4101 = !DILocation(line: 59, column: 19, scope: !4093)
!4102 = !DILocation(line: 59, column: 24, scope: !4093)
!4103 = !DILocation(line: 59, column: 34, scope: !4093)
!4104 = !DILocation(line: 59, column: 10, scope: !4093)
!4105 = !DILocation(line: 59, column: 3, scope: !4093)
!4106 = !DILocation(line: 60, column: 16, scope: !4084)
!4107 = !DILocation(line: 60, column: 23, scope: !4084)
!4108 = !DILocation(line: 60, column: 2, scope: !4084)
!4109 = !DILocation(line: 62, column: 9, scope: !4084)
!4110 = !DILocation(line: 62, column: 2, scope: !4084)
!4111 = distinct !DISubprogram(name: "list_del_init", scope: !3409, file: !3409, line: 202, type: !3561, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4112 = !DILocalVariable(name: "entry", arg: 1, scope: !4111, file: !3409, line: 202, type: !176)
!4113 = !DILocation(line: 202, column: 52, scope: !4111)
!4114 = !DILocation(line: 204, column: 19, scope: !4111)
!4115 = !DILocation(line: 204, column: 2, scope: !4111)
!4116 = !DILocation(line: 205, column: 17, scope: !4111)
!4117 = !DILocation(line: 205, column: 2, scope: !4111)
!4118 = !DILocation(line: 206, column: 1, scope: !4111)
!4119 = distinct !DISubprogram(name: "serio_free_event", scope: !3, file: !3, line: 167, type: !4120, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !2040}
!4122 = !DILocalVariable(name: "event", arg: 1, scope: !4119, file: !3, line: 167, type: !2040)
!4123 = !DILocation(line: 167, column: 50, scope: !4119)
!4124 = !DILocation(line: 169, column: 13, scope: !4119)
!4125 = !DILocation(line: 169, column: 20, scope: !4119)
!4126 = !DILocation(line: 169, column: 2, scope: !4119)
!4127 = !DILocation(line: 170, column: 8, scope: !4119)
!4128 = !DILocation(line: 170, column: 2, scope: !4119)
!4129 = !DILocation(line: 171, column: 1, scope: !4119)
!4130 = distinct !DISubprogram(name: "__list_del_entry", scope: !3409, file: !3409, line: 130, type: !3561, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4131 = !DILocalVariable(name: "entry", arg: 1, scope: !4130, file: !3409, line: 130, type: !176)
!4132 = !DILocation(line: 130, column: 55, scope: !4130)
!4133 = !DILocation(line: 132, column: 30, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3409, line: 132, column: 6)
!4135 = !DILocation(line: 132, column: 7, scope: !4134)
!4136 = !DILocation(line: 132, column: 6, scope: !4130)
!4137 = !DILocation(line: 133, column: 3, scope: !4134)
!4138 = !DILocation(line: 135, column: 13, scope: !4130)
!4139 = !DILocation(line: 135, column: 20, scope: !4130)
!4140 = !DILocation(line: 135, column: 26, scope: !4130)
!4141 = !DILocation(line: 135, column: 33, scope: !4130)
!4142 = !DILocation(line: 135, column: 2, scope: !4130)
!4143 = !DILocation(line: 136, column: 1, scope: !4130)
!4144 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3409, file: !3409, line: 51, type: !4145, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!126, !176}
!4147 = !DILocalVariable(name: "entry", arg: 1, scope: !4144, file: !3409, line: 51, type: !176)
!4148 = !DILocation(line: 51, column: 61, scope: !4144)
!4149 = !DILocation(line: 53, column: 2, scope: !4144)
!4150 = distinct !DISubprogram(name: "__list_del", scope: !3409, file: !3409, line: 110, type: !3410, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4151 = !DILocalVariable(name: "prev", arg: 1, scope: !4150, file: !3409, line: 110, type: !176)
!4152 = !DILocation(line: 110, column: 50, scope: !4150)
!4153 = !DILocalVariable(name: "next", arg: 2, scope: !4150, file: !3409, line: 110, type: !176)
!4154 = !DILocation(line: 110, column: 75, scope: !4150)
!4155 = !DILocation(line: 112, column: 15, scope: !4150)
!4156 = !DILocation(line: 112, column: 2, scope: !4150)
!4157 = !DILocation(line: 112, column: 8, scope: !4150)
!4158 = !DILocation(line: 112, column: 13, scope: !4150)
!4159 = !DILocation(line: 113, column: 2, scope: !4150)
!4160 = !DILocation(line: 113, column: 2, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4150, file: !3409, line: 113, column: 2)
!4162 = !DILocation(line: 113, column: 2, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4161, file: !3409, line: 113, column: 2)
!4164 = !DILocation(line: 113, column: 2, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !3409, line: 113, column: 2)
!4166 = !DILocation(line: 114, column: 1, scope: !4150)
!4167 = distinct !DISubprogram(name: "serio_match_port", scope: !3, file: !3, line: 73, type: !4168, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!160, !188, !110}
!4170 = !DILocalVariable(name: "ids", arg: 1, scope: !4167, file: !3, line: 73, type: !188)
!4171 = !DILocation(line: 73, column: 59, scope: !4167)
!4172 = !DILocalVariable(name: "serio", arg: 2, scope: !4167, file: !3, line: 73, type: !110)
!4173 = !DILocation(line: 73, column: 78, scope: !4167)
!4174 = !DILocation(line: 75, column: 2, scope: !4167)
!4175 = !DILocation(line: 75, column: 9, scope: !4167)
!4176 = !DILocation(line: 75, column: 14, scope: !4167)
!4177 = !DILocation(line: 75, column: 19, scope: !4167)
!4178 = !DILocation(line: 75, column: 22, scope: !4167)
!4179 = !DILocation(line: 75, column: 27, scope: !4167)
!4180 = !DILocation(line: 76, column: 8, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 76, column: 7)
!4182 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 75, column: 34)
!4183 = !DILocation(line: 76, column: 13, scope: !4181)
!4184 = !DILocation(line: 76, column: 18, scope: !4181)
!4185 = !DILocation(line: 76, column: 31, scope: !4181)
!4186 = !DILocation(line: 76, column: 34, scope: !4181)
!4187 = !DILocation(line: 76, column: 39, scope: !4181)
!4188 = !DILocation(line: 76, column: 47, scope: !4181)
!4189 = !DILocation(line: 76, column: 54, scope: !4181)
!4190 = !DILocation(line: 76, column: 57, scope: !4181)
!4191 = !DILocation(line: 76, column: 44, scope: !4181)
!4192 = !DILocation(line: 76, column: 63, scope: !4181)
!4193 = !DILocation(line: 77, column: 8, scope: !4181)
!4194 = !DILocation(line: 77, column: 13, scope: !4181)
!4195 = !DILocation(line: 77, column: 19, scope: !4181)
!4196 = !DILocation(line: 77, column: 32, scope: !4181)
!4197 = !DILocation(line: 77, column: 35, scope: !4181)
!4198 = !DILocation(line: 77, column: 40, scope: !4181)
!4199 = !DILocation(line: 77, column: 49, scope: !4181)
!4200 = !DILocation(line: 77, column: 56, scope: !4181)
!4201 = !DILocation(line: 77, column: 59, scope: !4181)
!4202 = !DILocation(line: 77, column: 46, scope: !4181)
!4203 = !DILocation(line: 77, column: 66, scope: !4181)
!4204 = !DILocation(line: 78, column: 8, scope: !4181)
!4205 = !DILocation(line: 78, column: 13, scope: !4181)
!4206 = !DILocation(line: 78, column: 19, scope: !4181)
!4207 = !DILocation(line: 78, column: 32, scope: !4181)
!4208 = !DILocation(line: 78, column: 35, scope: !4181)
!4209 = !DILocation(line: 78, column: 40, scope: !4181)
!4210 = !DILocation(line: 78, column: 49, scope: !4181)
!4211 = !DILocation(line: 78, column: 56, scope: !4181)
!4212 = !DILocation(line: 78, column: 59, scope: !4181)
!4213 = !DILocation(line: 78, column: 46, scope: !4181)
!4214 = !DILocation(line: 78, column: 66, scope: !4181)
!4215 = !DILocation(line: 79, column: 8, scope: !4181)
!4216 = !DILocation(line: 79, column: 13, scope: !4181)
!4217 = !DILocation(line: 79, column: 16, scope: !4181)
!4218 = !DILocation(line: 79, column: 29, scope: !4181)
!4219 = !DILocation(line: 79, column: 32, scope: !4181)
!4220 = !DILocation(line: 79, column: 37, scope: !4181)
!4221 = !DILocation(line: 79, column: 43, scope: !4181)
!4222 = !DILocation(line: 79, column: 50, scope: !4181)
!4223 = !DILocation(line: 79, column: 53, scope: !4181)
!4224 = !DILocation(line: 79, column: 40, scope: !4181)
!4225 = !DILocation(line: 76, column: 7, scope: !4182)
!4226 = !DILocation(line: 80, column: 4, scope: !4181)
!4227 = !DILocation(line: 81, column: 6, scope: !4182)
!4228 = distinct !{!4228, !4174, !4229}
!4229 = !DILocation(line: 82, column: 2, scope: !4167)
!4230 = !DILocation(line: 83, column: 2, scope: !4167)
!4231 = !DILocation(line: 84, column: 1, scope: !4167)
!4232 = distinct !DISubprogram(name: "serio_connect_driver", scope: !3, file: !3, line: 42, type: !199, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4233 = !DILocalVariable(name: "serio", arg: 1, scope: !4232, file: !3, line: 42, type: !110)
!4234 = !DILocation(line: 42, column: 47, scope: !4232)
!4235 = !DILocalVariable(name: "drv", arg: 2, scope: !4232, file: !3, line: 42, type: !181)
!4236 = !DILocation(line: 42, column: 75, scope: !4232)
!4237 = !DILocalVariable(name: "retval", scope: !4232, file: !3, line: 44, type: !160)
!4238 = !DILocation(line: 44, column: 6, scope: !4232)
!4239 = !DILocation(line: 46, column: 14, scope: !4232)
!4240 = !DILocation(line: 46, column: 21, scope: !4232)
!4241 = !DILocation(line: 46, column: 2, scope: !4232)
!4242 = !DILocation(line: 47, column: 11, scope: !4232)
!4243 = !DILocation(line: 47, column: 16, scope: !4232)
!4244 = !DILocation(line: 47, column: 24, scope: !4232)
!4245 = !DILocation(line: 47, column: 31, scope: !4232)
!4246 = !DILocation(line: 47, column: 9, scope: !4232)
!4247 = !DILocation(line: 48, column: 16, scope: !4232)
!4248 = !DILocation(line: 48, column: 23, scope: !4232)
!4249 = !DILocation(line: 48, column: 2, scope: !4232)
!4250 = !DILocation(line: 50, column: 9, scope: !4232)
!4251 = !DILocation(line: 50, column: 2, scope: !4232)
!4252 = distinct !DISubprogram(name: "serio_disconnect_driver", scope: !3, file: !3, line: 65, type: !167, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4253 = !DILocalVariable(name: "serio", arg: 1, scope: !4252, file: !3, line: 65, type: !110)
!4254 = !DILocation(line: 65, column: 51, scope: !4252)
!4255 = !DILocation(line: 67, column: 14, scope: !4252)
!4256 = !DILocation(line: 67, column: 21, scope: !4252)
!4257 = !DILocation(line: 67, column: 2, scope: !4252)
!4258 = !DILocation(line: 68, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 68, column: 6)
!4260 = !DILocation(line: 68, column: 13, scope: !4259)
!4261 = !DILocation(line: 68, column: 6, scope: !4252)
!4262 = !DILocation(line: 69, column: 3, scope: !4259)
!4263 = !DILocation(line: 69, column: 10, scope: !4259)
!4264 = !DILocation(line: 69, column: 15, scope: !4259)
!4265 = !DILocation(line: 69, column: 26, scope: !4259)
!4266 = !DILocation(line: 70, column: 16, scope: !4252)
!4267 = !DILocation(line: 70, column: 23, scope: !4252)
!4268 = !DILocation(line: 70, column: 2, scope: !4252)
!4269 = !DILocation(line: 71, column: 1, scope: !4252)
!4270 = distinct !DISubprogram(name: "serio_show_bind_mode", scope: !3, file: !3, line: 413, type: !2104, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4271 = !DILocalVariable(name: "dev", arg: 1, scope: !4270, file: !3, line: 413, type: !217)
!4272 = !DILocation(line: 413, column: 52, scope: !4270)
!4273 = !DILocalVariable(name: "attr", arg: 2, scope: !4270, file: !3, line: 413, type: !2106)
!4274 = !DILocation(line: 413, column: 82, scope: !4270)
!4275 = !DILocalVariable(name: "buf", arg: 3, scope: !4270, file: !3, line: 413, type: !260)
!4276 = !DILocation(line: 413, column: 94, scope: !4270)
!4277 = !DILocalVariable(name: "serio", scope: !4270, file: !3, line: 415, type: !110)
!4278 = !DILocation(line: 415, column: 16, scope: !4270)
!4279 = !DILocalVariable(name: "__mptr", scope: !4280, file: !3, line: 415, type: !109)
!4280 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 415, column: 24)
!4281 = !DILocation(line: 415, column: 24, scope: !4280)
!4282 = !DILocation(line: 415, column: 24, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 415, column: 24)
!4284 = !DILocation(line: 416, column: 17, scope: !4270)
!4285 = !DILocation(line: 416, column: 30, scope: !4270)
!4286 = !DILocation(line: 416, column: 37, scope: !4270)
!4287 = !DILocation(line: 416, column: 9, scope: !4270)
!4288 = !DILocation(line: 416, column: 2, scope: !4270)
!4289 = distinct !DISubprogram(name: "serio_set_bind_mode", scope: !3, file: !3, line: 419, type: !2109, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4290 = !DILocalVariable(name: "dev", arg: 1, scope: !4289, file: !3, line: 419, type: !217)
!4291 = !DILocation(line: 419, column: 51, scope: !4289)
!4292 = !DILocalVariable(name: "attr", arg: 2, scope: !4289, file: !3, line: 419, type: !2106)
!4293 = !DILocation(line: 419, column: 81, scope: !4289)
!4294 = !DILocalVariable(name: "buf", arg: 3, scope: !4289, file: !3, line: 419, type: !185)
!4295 = !DILocation(line: 419, column: 99, scope: !4289)
!4296 = !DILocalVariable(name: "count", arg: 4, scope: !4289, file: !3, line: 419, type: !306)
!4297 = !DILocation(line: 419, column: 111, scope: !4289)
!4298 = !DILocalVariable(name: "serio", scope: !4289, file: !3, line: 421, type: !110)
!4299 = !DILocation(line: 421, column: 16, scope: !4289)
!4300 = !DILocalVariable(name: "__mptr", scope: !4301, file: !3, line: 421, type: !109)
!4301 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 421, column: 24)
!4302 = !DILocation(line: 421, column: 24, scope: !4301)
!4303 = !DILocation(line: 421, column: 24, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 421, column: 24)
!4305 = !DILocalVariable(name: "retval", scope: !4289, file: !3, line: 422, type: !160)
!4306 = !DILocation(line: 422, column: 6, scope: !4289)
!4307 = !DILocation(line: 424, column: 11, scope: !4289)
!4308 = !DILocation(line: 424, column: 9, scope: !4289)
!4309 = !DILocation(line: 425, column: 15, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 425, column: 6)
!4311 = !DILocation(line: 425, column: 30, scope: !4310)
!4312 = !DILocation(line: 425, column: 7, scope: !4310)
!4313 = !DILocation(line: 425, column: 6, scope: !4289)
!4314 = !DILocation(line: 426, column: 3, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 425, column: 38)
!4316 = !DILocation(line: 426, column: 10, scope: !4315)
!4317 = !DILocation(line: 426, column: 22, scope: !4315)
!4318 = !DILocation(line: 427, column: 2, scope: !4315)
!4319 = !DILocation(line: 427, column: 22, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 427, column: 13)
!4321 = !DILocation(line: 427, column: 35, scope: !4320)
!4322 = !DILocation(line: 427, column: 14, scope: !4320)
!4323 = !DILocation(line: 427, column: 13, scope: !4310)
!4324 = !DILocation(line: 428, column: 3, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 427, column: 43)
!4326 = !DILocation(line: 428, column: 10, scope: !4325)
!4327 = !DILocation(line: 428, column: 22, scope: !4325)
!4328 = !DILocation(line: 429, column: 2, scope: !4325)
!4329 = !DILocation(line: 430, column: 10, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 429, column: 9)
!4331 = !DILocation(line: 433, column: 9, scope: !4289)
!4332 = !DILocation(line: 433, column: 2, scope: !4289)
!4333 = distinct !DISubprogram(name: "firmware_id_show", scope: !3, file: !3, line: 436, type: !2104, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4334 = !DILocalVariable(name: "dev", arg: 1, scope: !4333, file: !3, line: 436, type: !217)
!4335 = !DILocation(line: 436, column: 48, scope: !4333)
!4336 = !DILocalVariable(name: "attr", arg: 2, scope: !4333, file: !3, line: 436, type: !2106)
!4337 = !DILocation(line: 436, column: 78, scope: !4333)
!4338 = !DILocalVariable(name: "buf", arg: 3, scope: !4333, file: !3, line: 436, type: !260)
!4339 = !DILocation(line: 436, column: 90, scope: !4333)
!4340 = !DILocalVariable(name: "serio", scope: !4333, file: !3, line: 438, type: !110)
!4341 = !DILocation(line: 438, column: 16, scope: !4333)
!4342 = !DILocalVariable(name: "__mptr", scope: !4343, file: !3, line: 438, type: !109)
!4343 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 438, column: 24)
!4344 = !DILocation(line: 438, column: 24, scope: !4343)
!4345 = !DILocation(line: 438, column: 24, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 438, column: 24)
!4347 = !DILocation(line: 440, column: 17, scope: !4333)
!4348 = !DILocation(line: 440, column: 30, scope: !4333)
!4349 = !DILocation(line: 440, column: 37, scope: !4333)
!4350 = !DILocation(line: 440, column: 9, scope: !4333)
!4351 = !DILocation(line: 440, column: 2, scope: !4333)
!4352 = distinct !DISubprogram(name: "serio_get_pending_child", scope: !3, file: !3, line: 318, type: !4353, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!110, !110}
!4355 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 336, column: 2, scope: !4352)
!4357 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !4356)
!4358 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 324, column: 2, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 324, column: 2)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 324, column: 2)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 324, column: 2)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 324, column: 2)
!4364 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 324, column: 2)
!4365 = !DILocalVariable(name: "parent", arg: 1, scope: !4352, file: !3, line: 318, type: !110)
!4366 = !DILocation(line: 318, column: 60, scope: !4352)
!4367 = !DILocalVariable(name: "event", scope: !4352, file: !3, line: 320, type: !2040)
!4368 = !DILocation(line: 320, column: 22, scope: !4352)
!4369 = !DILocalVariable(name: "serio", scope: !4352, file: !3, line: 321, type: !110)
!4370 = !DILocation(line: 321, column: 16, scope: !4352)
!4371 = !DILocalVariable(name: "child", scope: !4352, file: !3, line: 321, type: !110)
!4372 = !DILocation(line: 321, column: 24, scope: !4352)
!4373 = !DILocalVariable(name: "flags", scope: !4352, file: !3, line: 322, type: !309)
!4374 = !DILocation(line: 322, column: 16, scope: !4352)
!4375 = !DILocation(line: 324, column: 2, scope: !4352)
!4376 = !DILocation(line: 324, column: 2, scope: !4364)
!4377 = !DILocalVariable(name: "__dummy", scope: !4378, file: !3, line: 324, type: !309)
!4378 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 324, column: 2)
!4379 = !DILocation(line: 324, column: 2, scope: !4378)
!4380 = !DILocalVariable(name: "__dummy2", scope: !4378, file: !3, line: 324, type: !309)
!4381 = !DILocation(line: 324, column: 2, scope: !4363)
!4382 = !DILocation(line: 324, column: 2, scope: !4362)
!4383 = !DILocation(line: 324, column: 2, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 324, column: 2)
!4385 = !DILocalVariable(name: "__dummy", scope: !4386, file: !3, line: 324, type: !309)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 324, column: 2)
!4387 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 324, column: 2)
!4388 = !DILocation(line: 324, column: 2, scope: !4386)
!4389 = !DILocalVariable(name: "__dummy2", scope: !4386, file: !3, line: 324, type: !309)
!4390 = !DILocation(line: 324, column: 2, scope: !4387)
!4391 = !DILocation(line: 324, column: 2, scope: !4361)
!4392 = !{i32 -2143392091}
!4393 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !4359)
!4394 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !4359)
!4395 = !DILocation(line: 324, column: 2, scope: !4360)
!4396 = !DILocalVariable(name: "__mptr", scope: !4397, file: !3, line: 326, type: !109)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 326, column: 2)
!4398 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 326, column: 2)
!4399 = !DILocation(line: 326, column: 2, scope: !4397)
!4400 = !DILocation(line: 326, column: 2, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 326, column: 2)
!4402 = !DILocation(line: 326, column: 2, scope: !4398)
!4403 = !DILocation(line: 326, column: 2, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 326, column: 2)
!4405 = !DILocation(line: 327, column: 7, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 327, column: 7)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 326, column: 54)
!4408 = !DILocation(line: 327, column: 14, scope: !4406)
!4409 = !DILocation(line: 327, column: 19, scope: !4406)
!4410 = !DILocation(line: 327, column: 7, scope: !4407)
!4411 = !DILocation(line: 328, column: 12, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 327, column: 43)
!4413 = !DILocation(line: 328, column: 19, scope: !4412)
!4414 = !DILocation(line: 328, column: 10, scope: !4412)
!4415 = !DILocation(line: 329, column: 8, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 329, column: 8)
!4417 = !DILocation(line: 329, column: 15, scope: !4416)
!4418 = !DILocation(line: 329, column: 25, scope: !4416)
!4419 = !DILocation(line: 329, column: 22, scope: !4416)
!4420 = !DILocation(line: 329, column: 8, scope: !4412)
!4421 = !DILocation(line: 330, column: 13, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 329, column: 33)
!4423 = !DILocation(line: 330, column: 11, scope: !4422)
!4424 = !DILocation(line: 331, column: 5, scope: !4422)
!4425 = !DILocation(line: 333, column: 3, scope: !4412)
!4426 = !DILocation(line: 334, column: 2, scope: !4407)
!4427 = !DILocalVariable(name: "__mptr", scope: !4428, file: !3, line: 326, type: !109)
!4428 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 326, column: 2)
!4429 = !DILocation(line: 326, column: 2, scope: !4428)
!4430 = !DILocation(line: 326, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 326, column: 2)
!4432 = distinct !{!4432, !4402, !4433}
!4433 = !DILocation(line: 334, column: 2, scope: !4398)
!4434 = !DILocation(line: 336, column: 44, scope: !4352)
!4435 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !4356)
!4436 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !4356)
!4437 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !4356)
!4438 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !4356)
!4439 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !4356)
!4440 = !DILocation(line: 337, column: 9, scope: !4352)
!4441 = !DILocation(line: 337, column: 2, scope: !4352)
!4442 = distinct !DISubprogram(name: "serio_pause_rx", scope: !112, file: !112, line: 154, type: !167, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4443 = !DILocalVariable(name: "lock", arg: 1, scope: !4444, file: !2238, line: 377, type: !2241)
!4444 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2238, file: !2238, line: 377, type: !4445, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !2241}
!4447 = !DILocation(line: 377, column: 55, scope: !4444, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 156, column: 2, scope: !4442)
!4449 = !DILocalVariable(name: "serio", arg: 1, scope: !4442, file: !112, line: 154, type: !110)
!4450 = !DILocation(line: 154, column: 49, scope: !4442)
!4451 = !DILocation(line: 156, column: 17, scope: !4442)
!4452 = !DILocation(line: 156, column: 24, scope: !4442)
!4453 = !DILocation(line: 379, column: 2, scope: !4454, inlinedAt: !4448)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !2238, line: 379, column: 2)
!4455 = distinct !DILexicalBlock(scope: !4444, file: !2238, line: 379, column: 2)
!4456 = !DILocation(line: 379, column: 2, scope: !4457, inlinedAt: !4448)
!4457 = distinct !DILexicalBlock(scope: !4455, file: !2238, line: 379, column: 2)
!4458 = !{i32 -2145456042}
!4459 = !DILocation(line: 379, column: 2, scope: !4460, inlinedAt: !4448)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !2238, line: 379, column: 2)
!4461 = !DILocation(line: 157, column: 1, scope: !4442)
!4462 = distinct !DISubprogram(name: "serio_continue_rx", scope: !112, file: !112, line: 159, type: !167, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4463 = !DILocalVariable(name: "lock", arg: 1, scope: !4464, file: !2238, line: 402, type: !2241)
!4464 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2238, file: !2238, line: 402, type: !4445, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4465 = !DILocation(line: 402, column: 57, scope: !4464, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 161, column: 2, scope: !4462)
!4467 = !DILocalVariable(name: "serio", arg: 1, scope: !4462, file: !112, line: 159, type: !110)
!4468 = !DILocation(line: 159, column: 52, scope: !4462)
!4469 = !DILocation(line: 161, column: 19, scope: !4462)
!4470 = !DILocation(line: 161, column: 26, scope: !4462)
!4471 = !DILocation(line: 404, column: 2, scope: !4472, inlinedAt: !4466)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !2238, line: 404, column: 2)
!4473 = distinct !DILexicalBlock(scope: !4464, file: !2238, line: 404, column: 2)
!4474 = !DILocation(line: 404, column: 2, scope: !4475, inlinedAt: !4466)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !2238, line: 404, column: 2)
!4476 = !{i32 -2145454294}
!4477 = !DILocation(line: 404, column: 2, scope: !4478, inlinedAt: !4466)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !2238, line: 404, column: 2)
!4479 = !DILocation(line: 162, column: 1, scope: !4462)
!4480 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3225, file: !3225, line: 656, type: !2076, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4481 = !DILocalVariable(name: "__edi", scope: !4482, file: !3225, line: 658, type: !309)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !3225, line: 658, column: 2)
!4483 = !DILocation(line: 658, column: 2, scope: !4482)
!4484 = !DILocalVariable(name: "__esi", scope: !4482, file: !3225, line: 658, type: !309)
!4485 = !DILocalVariable(name: "__edx", scope: !4482, file: !3225, line: 658, type: !309)
!4486 = !DILocalVariable(name: "__ecx", scope: !4482, file: !3225, line: 658, type: !309)
!4487 = !DILocalVariable(name: "__eax", scope: !4482, file: !3225, line: 658, type: !309)
!4488 = !{i32 -2145759725, i32 -2145758993, i32 -2145758759, i32 -2145758708, i32 -2145758680, i32 -2145758655, i32 -2145758971, i32 -2145758958, i32 -2145758520, i32 -2145758401, i32 -2145758866, i32 -2145758839, i32 -2145758811, i32 -2145758781}
!4489 = !DILocation(line: 659, column: 1, scope: !4480)
!4490 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3225, file: !3225, line: 661, type: !2076, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4491 = !DILocalVariable(name: "__edi", scope: !4492, file: !3225, line: 663, type: !309)
!4492 = distinct !DILexicalBlock(scope: !4490, file: !3225, line: 663, column: 2)
!4493 = !DILocation(line: 663, column: 2, scope: !4492)
!4494 = !DILocalVariable(name: "__esi", scope: !4492, file: !3225, line: 663, type: !309)
!4495 = !DILocalVariable(name: "__edx", scope: !4492, file: !3225, line: 663, type: !309)
!4496 = !DILocalVariable(name: "__ecx", scope: !4492, file: !3225, line: 663, type: !309)
!4497 = !DILocalVariable(name: "__eax", scope: !4492, file: !3225, line: 663, type: !309)
!4498 = !{i32 -2145757141, i32 -2145756411, i32 -2145756177, i32 -2145756126, i32 -2145756098, i32 -2145756073, i32 -2145756389, i32 -2145756376, i32 -2145755938, i32 -2145755819, i32 -2145756284, i32 -2145756257, i32 -2145756229, i32 -2145756199}
!4499 = !DILocation(line: 664, column: 1, scope: !4490)
!4500 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3225, file: !3225, line: 646, type: !3226, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4501 = !DILocalVariable(name: "__ret", scope: !4502, file: !3225, line: 648, type: !309)
!4502 = distinct !DILexicalBlock(scope: !4500, file: !3225, line: 648, column: 9)
!4503 = !DILocation(line: 648, column: 9, scope: !4502)
!4504 = !DILocalVariable(name: "__edi", scope: !4502, file: !3225, line: 648, type: !309)
!4505 = !DILocalVariable(name: "__esi", scope: !4502, file: !3225, line: 648, type: !309)
!4506 = !DILocalVariable(name: "__edx", scope: !4502, file: !3225, line: 648, type: !309)
!4507 = !DILocalVariable(name: "__ecx", scope: !4502, file: !3225, line: 648, type: !309)
!4508 = !DILocalVariable(name: "__eax", scope: !4502, file: !3225, line: 648, type: !309)
!4509 = !DILocation(line: 648, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !3225, line: 648, column: 9)
!4511 = distinct !DILexicalBlock(scope: !4502, file: !3225, line: 648, column: 9)
!4512 = !{i32 -2145766819, i32 -2145764504, i32 -2145764270, i32 -2145764219, i32 -2145764191, i32 -2145764166, i32 -2145764482, i32 -2145764469, i32 -2145764031, i32 -2145763912, i32 -2145764377, i32 -2145764350, i32 -2145764322, i32 -2145764292}
!4513 = !DILocalVariable(name: "__mask", scope: !4514, file: !3225, line: 648, type: !309)
!4514 = distinct !DILexicalBlock(scope: !4510, file: !3225, line: 648, column: 9)
!4515 = !DILocation(line: 648, column: 9, scope: !4514)
!4516 = !DILocation(line: 648, column: 9, scope: !4511)
!4517 = !DILocation(line: 648, column: 2, scope: !4500)
!4518 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3225, file: !3225, line: 651, type: !4519, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{null, !309}
!4521 = !DILocalVariable(name: "f", arg: 1, scope: !4518, file: !3225, line: 651, type: !309)
!4522 = !DILocation(line: 651, column: 65, scope: !4518)
!4523 = !DILocalVariable(name: "__edi", scope: !4524, file: !3225, line: 653, type: !309)
!4524 = distinct !DILexicalBlock(scope: !4518, file: !3225, line: 653, column: 2)
!4525 = !DILocation(line: 653, column: 2, scope: !4524)
!4526 = !DILocalVariable(name: "__esi", scope: !4524, file: !3225, line: 653, type: !309)
!4527 = !DILocalVariable(name: "__edx", scope: !4524, file: !3225, line: 653, type: !309)
!4528 = !DILocalVariable(name: "__ecx", scope: !4524, file: !3225, line: 653, type: !309)
!4529 = !DILocalVariable(name: "__eax", scope: !4524, file: !3225, line: 653, type: !309)
!4530 = !{i32 -2145762352, i32 -2145761602, i32 -2145761368, i32 -2145761317, i32 -2145761289, i32 -2145761264, i32 -2145761580, i32 -2145761567, i32 -2145761129, i32 -2145761010, i32 -2145761475, i32 -2145761448, i32 -2145761420, i32 -2145761390}
!4531 = !DILocation(line: 654, column: 1, scope: !4518)
!4532 = distinct !DISubprogram(name: "description_show", scope: !3, file: !3, line: 735, type: !2151, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4533 = !DILocalVariable(name: "drv", arg: 1, scope: !4532, file: !3, line: 735, type: !1742)
!4534 = !DILocation(line: 735, column: 55, scope: !4532)
!4535 = !DILocalVariable(name: "buf", arg: 2, scope: !4532, file: !3, line: 735, type: !260)
!4536 = !DILocation(line: 735, column: 66, scope: !4532)
!4537 = !DILocalVariable(name: "driver", scope: !4532, file: !3, line: 737, type: !181)
!4538 = !DILocation(line: 737, column: 23, scope: !4532)
!4539 = !DILocalVariable(name: "__mptr", scope: !4540, file: !3, line: 737, type: !109)
!4540 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 737, column: 32)
!4541 = !DILocation(line: 737, column: 32, scope: !4540)
!4542 = !DILocation(line: 737, column: 32, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 737, column: 32)
!4544 = !DILocation(line: 738, column: 17, scope: !4532)
!4545 = !DILocation(line: 738, column: 30, scope: !4532)
!4546 = !DILocation(line: 738, column: 38, scope: !4532)
!4547 = !DILocation(line: 738, column: 52, scope: !4532)
!4548 = !DILocation(line: 738, column: 60, scope: !4532)
!4549 = !DILocation(line: 738, column: 9, scope: !4532)
!4550 = !DILocation(line: 738, column: 2, scope: !4532)
!4551 = distinct !DISubprogram(name: "bind_mode_show", scope: !3, file: !3, line: 742, type: !2151, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4552 = !DILocalVariable(name: "drv", arg: 1, scope: !4551, file: !3, line: 742, type: !1742)
!4553 = !DILocation(line: 742, column: 53, scope: !4551)
!4554 = !DILocalVariable(name: "buf", arg: 2, scope: !4551, file: !3, line: 742, type: !260)
!4555 = !DILocation(line: 742, column: 64, scope: !4551)
!4556 = !DILocalVariable(name: "serio_drv", scope: !4551, file: !3, line: 744, type: !181)
!4557 = !DILocation(line: 744, column: 23, scope: !4551)
!4558 = !DILocalVariable(name: "__mptr", scope: !4559, file: !3, line: 744, type: !109)
!4559 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 744, column: 35)
!4560 = !DILocation(line: 744, column: 35, scope: !4559)
!4561 = !DILocation(line: 744, column: 35, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 744, column: 35)
!4563 = !DILocation(line: 745, column: 17, scope: !4551)
!4564 = !DILocation(line: 745, column: 30, scope: !4551)
!4565 = !DILocation(line: 745, column: 41, scope: !4551)
!4566 = !DILocation(line: 745, column: 9, scope: !4551)
!4567 = !DILocation(line: 745, column: 2, scope: !4551)
!4568 = distinct !DISubprogram(name: "bind_mode_store", scope: !3, file: !3, line: 748, type: !2155, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4569 = !DILocalVariable(name: "drv", arg: 1, scope: !4568, file: !3, line: 748, type: !1742)
!4570 = !DILocation(line: 748, column: 54, scope: !4568)
!4571 = !DILocalVariable(name: "buf", arg: 2, scope: !4568, file: !3, line: 748, type: !185)
!4572 = !DILocation(line: 748, column: 71, scope: !4568)
!4573 = !DILocalVariable(name: "count", arg: 3, scope: !4568, file: !3, line: 748, type: !306)
!4574 = !DILocation(line: 748, column: 83, scope: !4568)
!4575 = !DILocalVariable(name: "serio_drv", scope: !4568, file: !3, line: 750, type: !181)
!4576 = !DILocation(line: 750, column: 23, scope: !4568)
!4577 = !DILocalVariable(name: "__mptr", scope: !4578, file: !3, line: 750, type: !109)
!4578 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 750, column: 35)
!4579 = !DILocation(line: 750, column: 35, scope: !4578)
!4580 = !DILocation(line: 750, column: 35, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 750, column: 35)
!4582 = !DILocalVariable(name: "retval", scope: !4568, file: !3, line: 751, type: !160)
!4583 = !DILocation(line: 751, column: 6, scope: !4568)
!4584 = !DILocation(line: 753, column: 11, scope: !4568)
!4585 = !DILocation(line: 753, column: 9, scope: !4568)
!4586 = !DILocation(line: 754, column: 15, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 754, column: 6)
!4588 = !DILocation(line: 754, column: 30, scope: !4587)
!4589 = !DILocation(line: 754, column: 7, scope: !4587)
!4590 = !DILocation(line: 754, column: 6, scope: !4568)
!4591 = !DILocation(line: 755, column: 3, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 754, column: 38)
!4593 = !DILocation(line: 755, column: 14, scope: !4592)
!4594 = !DILocation(line: 755, column: 26, scope: !4592)
!4595 = !DILocation(line: 756, column: 2, scope: !4592)
!4596 = !DILocation(line: 756, column: 22, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 756, column: 13)
!4598 = !DILocation(line: 756, column: 35, scope: !4597)
!4599 = !DILocation(line: 756, column: 14, scope: !4597)
!4600 = !DILocation(line: 756, column: 13, scope: !4587)
!4601 = !DILocation(line: 757, column: 3, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 756, column: 43)
!4603 = !DILocation(line: 757, column: 14, scope: !4602)
!4604 = !DILocation(line: 757, column: 26, scope: !4602)
!4605 = !DILocation(line: 758, column: 2, scope: !4602)
!4606 = !DILocation(line: 759, column: 10, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 758, column: 9)
!4608 = !DILocation(line: 762, column: 9, scope: !4568)
!4609 = !DILocation(line: 762, column: 2, scope: !4568)
!4610 = distinct !DISubprogram(name: "serio_cleanup", scope: !3, file: !3, line: 789, type: !167, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4611 = !DILocalVariable(name: "serio", arg: 1, scope: !4610, file: !3, line: 789, type: !110)
!4612 = !DILocation(line: 789, column: 41, scope: !4610)
!4613 = !DILocation(line: 791, column: 14, scope: !4610)
!4614 = !DILocation(line: 791, column: 21, scope: !4610)
!4615 = !DILocation(line: 791, column: 2, scope: !4610)
!4616 = !DILocation(line: 792, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 792, column: 6)
!4618 = !DILocation(line: 792, column: 13, scope: !4617)
!4619 = !DILocation(line: 792, column: 17, scope: !4617)
!4620 = !DILocation(line: 792, column: 20, scope: !4617)
!4621 = !DILocation(line: 792, column: 27, scope: !4617)
!4622 = !DILocation(line: 792, column: 32, scope: !4617)
!4623 = !DILocation(line: 792, column: 6, scope: !4610)
!4624 = !DILocation(line: 793, column: 3, scope: !4617)
!4625 = !DILocation(line: 793, column: 10, scope: !4617)
!4626 = !DILocation(line: 793, column: 15, scope: !4617)
!4627 = !DILocation(line: 793, column: 23, scope: !4617)
!4628 = !DILocation(line: 794, column: 16, scope: !4610)
!4629 = !DILocation(line: 794, column: 23, scope: !4610)
!4630 = !DILocation(line: 794, column: 2, scope: !4610)
!4631 = !DILocation(line: 795, column: 1, scope: !4610)
!4632 = distinct !DISubprogram(name: "serio_suspend", scope: !3, file: !3, line: 928, type: !1716, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4633 = !DILocalVariable(name: "dev", arg: 1, scope: !4632, file: !3, line: 928, type: !217)
!4634 = !DILocation(line: 928, column: 41, scope: !4632)
!4635 = !DILocalVariable(name: "serio", scope: !4632, file: !3, line: 930, type: !110)
!4636 = !DILocation(line: 930, column: 16, scope: !4632)
!4637 = !DILocalVariable(name: "__mptr", scope: !4638, file: !3, line: 930, type: !109)
!4638 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 930, column: 24)
!4639 = !DILocation(line: 930, column: 24, scope: !4638)
!4640 = !DILocation(line: 930, column: 24, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 930, column: 24)
!4642 = !DILocation(line: 932, column: 16, scope: !4632)
!4643 = !DILocation(line: 932, column: 2, scope: !4632)
!4644 = !DILocation(line: 934, column: 2, scope: !4632)
!4645 = distinct !DISubprogram(name: "serio_resume", scope: !3, file: !3, line: 937, type: !1716, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4646 = !DILocalVariable(name: "dev", arg: 1, scope: !4645, file: !3, line: 937, type: !217)
!4647 = !DILocation(line: 937, column: 40, scope: !4645)
!4648 = !DILocalVariable(name: "serio", scope: !4645, file: !3, line: 939, type: !110)
!4649 = !DILocation(line: 939, column: 16, scope: !4645)
!4650 = !DILocalVariable(name: "__mptr", scope: !4651, file: !3, line: 939, type: !109)
!4651 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 939, column: 24)
!4652 = !DILocation(line: 939, column: 24, scope: !4651)
!4653 = !DILocation(line: 939, column: 24, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 939, column: 24)
!4655 = !DILocalVariable(name: "error", scope: !4645, file: !3, line: 940, type: !160)
!4656 = !DILocation(line: 940, column: 6, scope: !4645)
!4657 = !DILocation(line: 942, column: 14, scope: !4645)
!4658 = !DILocation(line: 942, column: 21, scope: !4645)
!4659 = !DILocation(line: 942, column: 2, scope: !4645)
!4660 = !DILocation(line: 943, column: 6, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 943, column: 6)
!4662 = !DILocation(line: 943, column: 13, scope: !4661)
!4663 = !DILocation(line: 943, column: 17, scope: !4661)
!4664 = !DILocation(line: 943, column: 20, scope: !4661)
!4665 = !DILocation(line: 943, column: 27, scope: !4661)
!4666 = !DILocation(line: 943, column: 32, scope: !4661)
!4667 = !DILocation(line: 943, column: 6, scope: !4645)
!4668 = !DILocation(line: 944, column: 11, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 943, column: 48)
!4670 = !DILocation(line: 944, column: 18, scope: !4669)
!4671 = !DILocation(line: 944, column: 23, scope: !4669)
!4672 = !DILocation(line: 944, column: 38, scope: !4669)
!4673 = !DILocation(line: 944, column: 9, scope: !4669)
!4674 = !DILocation(line: 945, column: 7, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 945, column: 7)
!4676 = !DILocation(line: 945, column: 13, scope: !4675)
!4677 = !DILocation(line: 945, column: 16, scope: !4675)
!4678 = !DILocation(line: 945, column: 22, scope: !4675)
!4679 = !DILocation(line: 945, column: 7, scope: !4669)
!4680 = !DILocation(line: 946, column: 4, scope: !4675)
!4681 = !DILocation(line: 948, column: 2, scope: !4669)
!4682 = !DILocation(line: 949, column: 16, scope: !4645)
!4683 = !DILocation(line: 949, column: 23, scope: !4645)
!4684 = !DILocation(line: 949, column: 2, scope: !4645)
!4685 = !DILocation(line: 951, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 951, column: 6)
!4687 = !DILocation(line: 951, column: 6, scope: !4645)
!4688 = !DILocation(line: 956, column: 21, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 951, column: 13)
!4690 = !DILocation(line: 956, column: 3, scope: !4689)
!4691 = !DILocation(line: 957, column: 2, scope: !4689)
!4692 = !DILocation(line: 959, column: 2, scope: !4645)
!4693 = distinct !DISubprogram(name: "serio_handle_event", scope: !3, file: !3, line: 199, type: !1429, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4694 = !DILocalVariable(name: "work", arg: 1, scope: !4693, file: !3, line: 199, type: !1431)
!4695 = !DILocation(line: 199, column: 52, scope: !4693)
!4696 = !DILocalVariable(name: "event", scope: !4693, file: !3, line: 201, type: !2040)
!4697 = !DILocation(line: 201, column: 22, scope: !4693)
!4698 = !DILocation(line: 203, column: 2, scope: !4693)
!4699 = !DILocation(line: 205, column: 2, scope: !4693)
!4700 = !DILocation(line: 205, column: 18, scope: !4693)
!4701 = !DILocation(line: 205, column: 16, scope: !4693)
!4702 = !DILocation(line: 207, column: 11, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 205, column: 38)
!4704 = !DILocation(line: 207, column: 18, scope: !4703)
!4705 = !DILocation(line: 207, column: 3, scope: !4703)
!4706 = !DILocation(line: 210, column: 19, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 207, column: 24)
!4708 = !DILocation(line: 210, column: 26, scope: !4707)
!4709 = !DILocation(line: 210, column: 4, scope: !4707)
!4710 = !DILocation(line: 211, column: 4, scope: !4707)
!4711 = !DILocation(line: 214, column: 25, scope: !4707)
!4712 = !DILocation(line: 214, column: 32, scope: !4707)
!4713 = !DILocation(line: 214, column: 4, scope: !4707)
!4714 = !DILocation(line: 215, column: 4, scope: !4707)
!4715 = !DILocation(line: 218, column: 26, scope: !4707)
!4716 = !DILocation(line: 218, column: 33, scope: !4707)
!4717 = !DILocation(line: 218, column: 4, scope: !4707)
!4718 = !DILocation(line: 219, column: 22, scope: !4707)
!4719 = !DILocation(line: 219, column: 29, scope: !4707)
!4720 = !DILocation(line: 219, column: 4, scope: !4707)
!4721 = !DILocation(line: 220, column: 4, scope: !4707)
!4722 = !DILocation(line: 223, column: 28, scope: !4707)
!4723 = !DILocation(line: 223, column: 35, scope: !4707)
!4724 = !DILocation(line: 223, column: 4, scope: !4707)
!4725 = !DILocation(line: 224, column: 4, scope: !4707)
!4726 = !DILocation(line: 227, column: 24, scope: !4707)
!4727 = !DILocation(line: 227, column: 31, scope: !4707)
!4728 = !DILocation(line: 227, column: 4, scope: !4707)
!4729 = !DILocation(line: 228, column: 4, scope: !4707)
!4730 = !DILocation(line: 231, column: 33, scope: !4703)
!4731 = !DILocation(line: 231, column: 40, scope: !4703)
!4732 = !DILocation(line: 231, column: 48, scope: !4703)
!4733 = !DILocation(line: 231, column: 55, scope: !4703)
!4734 = !DILocation(line: 231, column: 3, scope: !4703)
!4735 = !DILocation(line: 232, column: 20, scope: !4703)
!4736 = !DILocation(line: 232, column: 3, scope: !4703)
!4737 = distinct !{!4737, !4699, !4738}
!4738 = !DILocation(line: 233, column: 2, scope: !4693)
!4739 = !DILocation(line: 235, column: 2, scope: !4693)
!4740 = !DILocation(line: 236, column: 1, scope: !4693)
!4741 = distinct !DISubprogram(name: "serio_get_event", scope: !3, file: !3, line: 150, type: !4742, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!2040}
!4744 = !DILocation(line: 407, column: 64, scope: !2237, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 163, column: 2, scope: !4741)
!4746 = !DILocation(line: 407, column: 84, scope: !2237, inlinedAt: !4745)
!4747 = !DILocation(line: 327, column: 67, scope: !2247, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 155, column: 2, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 155, column: 2)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 155, column: 2)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 155, column: 2)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 155, column: 2)
!4753 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 155, column: 2)
!4754 = !DILocalVariable(name: "event", scope: !4741, file: !3, line: 152, type: !2040)
!4755 = !DILocation(line: 152, column: 22, scope: !4741)
!4756 = !DILocalVariable(name: "flags", scope: !4741, file: !3, line: 153, type: !309)
!4757 = !DILocation(line: 153, column: 16, scope: !4741)
!4758 = !DILocation(line: 155, column: 2, scope: !4741)
!4759 = !DILocation(line: 155, column: 2, scope: !4753)
!4760 = !DILocalVariable(name: "__dummy", scope: !4761, file: !3, line: 155, type: !309)
!4761 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 155, column: 2)
!4762 = !DILocation(line: 155, column: 2, scope: !4761)
!4763 = !DILocalVariable(name: "__dummy2", scope: !4761, file: !3, line: 155, type: !309)
!4764 = !DILocation(line: 155, column: 2, scope: !4752)
!4765 = !DILocation(line: 155, column: 2, scope: !4751)
!4766 = !DILocation(line: 155, column: 2, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 155, column: 2)
!4768 = !DILocalVariable(name: "__dummy", scope: !4769, file: !3, line: 155, type: !309)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 155, column: 2)
!4770 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 155, column: 2)
!4771 = !DILocation(line: 155, column: 2, scope: !4769)
!4772 = !DILocalVariable(name: "__dummy2", scope: !4769, file: !3, line: 155, type: !309)
!4773 = !DILocation(line: 155, column: 2, scope: !4770)
!4774 = !DILocation(line: 155, column: 2, scope: !4750)
!4775 = !{i32 -2143414762}
!4776 = !DILocation(line: 329, column: 10, scope: !2247, inlinedAt: !4748)
!4777 = !DILocation(line: 329, column: 16, scope: !2247, inlinedAt: !4748)
!4778 = !DILocation(line: 155, column: 2, scope: !4749)
!4779 = !DILocation(line: 157, column: 7, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 157, column: 6)
!4781 = !DILocation(line: 157, column: 6, scope: !4741)
!4782 = !DILocalVariable(name: "__mptr", scope: !4783, file: !3, line: 158, type: !109)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 158, column: 11)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 157, column: 38)
!4785 = !DILocation(line: 158, column: 11, scope: !4783)
!4786 = !DILocation(line: 158, column: 11, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 158, column: 11)
!4788 = !DILocation(line: 158, column: 9, scope: !4784)
!4789 = !DILocation(line: 160, column: 18, scope: !4784)
!4790 = !DILocation(line: 160, column: 25, scope: !4784)
!4791 = !DILocation(line: 160, column: 3, scope: !4784)
!4792 = !DILocation(line: 161, column: 2, scope: !4784)
!4793 = !DILocation(line: 163, column: 44, scope: !4741)
!4794 = !DILocation(line: 409, column: 2, scope: !2572, inlinedAt: !4745)
!4795 = !DILocation(line: 409, column: 2, scope: !2577, inlinedAt: !4745)
!4796 = !DILocation(line: 409, column: 2, scope: !2578, inlinedAt: !4745)
!4797 = !DILocation(line: 409, column: 2, scope: !2585, inlinedAt: !4745)
!4798 = !DILocation(line: 409, column: 2, scope: !2588, inlinedAt: !4745)
!4799 = !DILocation(line: 164, column: 9, scope: !4741)
!4800 = !DILocation(line: 164, column: 2, scope: !4741)
!4801 = distinct !DISubprogram(name: "serio_add_port", scope: !3, file: !3, line: 526, type: !167, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4802 = !DILocalVariable(name: "serio", arg: 1, scope: !4801, file: !3, line: 526, type: !110)
!4803 = !DILocation(line: 526, column: 42, scope: !4801)
!4804 = !DILocalVariable(name: "parent", scope: !4801, file: !3, line: 528, type: !110)
!4805 = !DILocation(line: 528, column: 16, scope: !4801)
!4806 = !DILocation(line: 528, column: 25, scope: !4801)
!4807 = !DILocation(line: 528, column: 32, scope: !4801)
!4808 = !DILocalVariable(name: "error", scope: !4801, file: !3, line: 529, type: !160)
!4809 = !DILocation(line: 529, column: 6, scope: !4801)
!4810 = !DILocation(line: 531, column: 6, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 531, column: 6)
!4812 = !DILocation(line: 531, column: 6, scope: !4801)
!4813 = !DILocation(line: 532, column: 18, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 531, column: 14)
!4815 = !DILocation(line: 532, column: 3, scope: !4814)
!4816 = !DILocation(line: 533, column: 18, scope: !4814)
!4817 = !DILocation(line: 533, column: 25, scope: !4814)
!4818 = !DILocation(line: 533, column: 38, scope: !4814)
!4819 = !DILocation(line: 533, column: 46, scope: !4814)
!4820 = !DILocation(line: 533, column: 3, scope: !4814)
!4821 = !DILocation(line: 534, column: 21, scope: !4814)
!4822 = !DILocation(line: 534, column: 3, scope: !4814)
!4823 = !DILocation(line: 535, column: 2, scope: !4814)
!4824 = !DILocation(line: 537, column: 17, scope: !4801)
!4825 = !DILocation(line: 537, column: 24, scope: !4801)
!4826 = !DILocation(line: 537, column: 2, scope: !4801)
!4827 = !DILocation(line: 539, column: 6, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 539, column: 6)
!4829 = !DILocation(line: 539, column: 13, scope: !4828)
!4830 = !DILocation(line: 539, column: 6, scope: !4801)
!4831 = !DILocation(line: 540, column: 3, scope: !4828)
!4832 = !DILocation(line: 540, column: 10, scope: !4828)
!4833 = !DILocation(line: 540, column: 16, scope: !4828)
!4834 = !DILocation(line: 542, column: 22, scope: !4801)
!4835 = !DILocation(line: 542, column: 29, scope: !4801)
!4836 = !DILocation(line: 542, column: 10, scope: !4801)
!4837 = !DILocation(line: 542, column: 8, scope: !4801)
!4838 = !DILocation(line: 543, column: 6, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 543, column: 6)
!4840 = !DILocation(line: 543, column: 6, scope: !4801)
!4841 = !DILocation(line: 544, column: 3, scope: !4839)
!4842 = !DILocation(line: 547, column: 1, scope: !4801)
!4843 = distinct !DISubprogram(name: "serio_attach_driver", scope: !3, file: !3, line: 804, type: !2947, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !155)
!4844 = !DILocalVariable(name: "drv", arg: 1, scope: !4843, file: !3, line: 804, type: !181)
!4845 = !DILocation(line: 804, column: 54, scope: !4843)
!4846 = !DILocalVariable(name: "error", scope: !4843, file: !3, line: 806, type: !160)
!4847 = !DILocation(line: 806, column: 6, scope: !4843)
!4848 = !DILocation(line: 808, column: 25, scope: !4843)
!4849 = !DILocation(line: 808, column: 30, scope: !4843)
!4850 = !DILocation(line: 808, column: 10, scope: !4843)
!4851 = !DILocation(line: 808, column: 8, scope: !4843)
!4852 = !DILocation(line: 809, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 809, column: 6)
!4854 = !DILocation(line: 809, column: 6, scope: !4843)
!4855 = !DILocation(line: 810, column: 3, scope: !4853)
!4856 = !DILocation(line: 812, column: 1, scope: !4843)
