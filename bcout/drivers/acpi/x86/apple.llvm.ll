; ModuleID = '../bcout/drivers/acpi/x86/apple.llvm.bc'
source_filename = "drivers/acpi/x86/apple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.guid_t = type { [16 x i8] }
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
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, {}* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.45, i32, i32, %struct.list_head }
%struct.anon.45 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wake_irq = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.46, i8, i8, i32 }
%struct.anon.46 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, {}*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, {}*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, {}* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.module = type opaque
%struct.acpi_gpio_mapping = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
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
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.anon.40 = type { i32, i32, i8* }
%struct.anon.41 = type { i32, i32, %union.acpi_object* }
%struct.anon.39 = type { i32, i32, i8* }
%struct.anon.38 = type { i32, i64 }
%struct.acpi_device_properties = type { %struct.guid_t*, %union.acpi_object*, %struct.list_head }

@x86_apple_machine = external dso_local global i8, align 1
@apple_prp_guid = internal constant %struct.guid_t { [16 x i8] c"\C6\B7\B5\A0\18\13\1CD\B0\C9\FEi^\AF\94\9B" }, align 1, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"[Firmware Info]: unsupported properties version %*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"[Firmware Info]: skipped %u properties: wrong type\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"drivers/acpi/x86/apple.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_extract_apple_properties(%struct.acpi_device* %adev) #0 !dbg !109 {
entry:
  %w.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %w.addr.i.i.i, metadata !2443, metadata !DIExpression()), !dbg !2448
  %res.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %res.i.i.i, metadata !2463, metadata !DIExpression()), !dbg !2464
  %w.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %w.addr.i.i, metadata !2465, metadata !DIExpression()), !dbg !2466
  %retval.i = alloca i32, align 4
  %src.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr.i, metadata !2467, metadata !DIExpression()), !dbg !2468
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !2469, metadata !DIExpression()), !dbg !2470
  %adev.addr = alloca %struct.acpi_device*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %newsize = alloca i32, align 4
  %numprops = alloca i32, align 4
  %numvalid = alloca i32, align 4
  %props = alloca %union.acpi_object*, align 8
  %newprops = alloca %union.acpi_object*, align 8
  %valid = alloca i64*, align 8
  %free_space = alloca i8*, align 8
  %key = alloca %union.acpi_object*, align 8
  %val = alloca %union.acpi_object*, align 8
  %key98 = alloca %union.acpi_object*, align 8
  %val104 = alloca %union.acpi_object*, align 8
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2475, metadata !DIExpression()), !dbg !2476
  store i32 0, i32* %j, align 4, !dbg !2476
  call void @llvm.dbg.declare(metadata i32* %newsize, metadata !2477, metadata !DIExpression()), !dbg !2478
  store i32 0, i32* %newsize, align 4, !dbg !2478
  call void @llvm.dbg.declare(metadata i32* %numprops, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata i32* %numvalid, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.declare(metadata %union.acpi_object** %props, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata %union.acpi_object** %newprops, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.declare(metadata i64** %valid, metadata !2487, metadata !DIExpression()), !dbg !2488
  store i64* null, i64** %valid, align 8, !dbg !2488
  call void @llvm.dbg.declare(metadata i8** %free_space, metadata !2489, metadata !DIExpression()), !dbg !2490
  %0 = load i8, i8* @x86_apple_machine, align 1, !dbg !2491
  %tobool = trunc i8 %0 to i1, !dbg !2491
  br i1 %tobool, label %if.end, label %if.then, !dbg !2493

if.then:                                          ; preds = %entry
  br label %return, !dbg !2494

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2495
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !2496
  %2 = load i8*, i8** %handle, align 8, !dbg !2496
  %call = call %union.acpi_object* @acpi_evaluate_dsm_typed(i8* %2, %struct.guid_t* @apple_prp_guid, i64 1, i64 0, %union.acpi_object* null, i32 3) #9, !dbg !2497
  store %union.acpi_object* %call, %union.acpi_object** %props, align 8, !dbg !2498
  %3 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2499
  %tobool1 = icmp ne %union.acpi_object* %3, null, !dbg !2499
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2501

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2502

if.end3:                                          ; preds = %if.end
  %4 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2503
  %buffer = bitcast %union.acpi_object* %4 to %struct.anon.40*, !dbg !2505
  %length = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer, i32 0, i32 1, !dbg !2506
  %5 = load i32, i32* %length, align 4, !dbg !2506
  %tobool4 = icmp ne i32 %5, 0, !dbg !2503
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2507

if.then5:                                         ; preds = %if.end3
  br label %out_free, !dbg !2508

if.end6:                                          ; preds = %if.end3
  %6 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2509
  %buffer7 = bitcast %union.acpi_object* %6 to %struct.anon.40*, !dbg !2511
  %pointer = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer7, i32 0, i32 2, !dbg !2512
  %7 = load i8*, i8** %pointer, align 8, !dbg !2512
  %arrayidx = getelementptr i8, i8* %7, i64 0, !dbg !2509
  %8 = load i8, i8* %arrayidx, align 1, !dbg !2509
  %conv = zext i8 %8 to i32, !dbg !2509
  %cmp = icmp ne i32 %conv, 3, !dbg !2513
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !2514

if.then9:                                         ; preds = %if.end6
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2515
  %handle10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !2515
  %10 = load i8*, i8** %handle10, align 8, !dbg !2515
  %11 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2515
  %buffer11 = bitcast %union.acpi_object* %11 to %struct.anon.40*, !dbg !2515
  %length12 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer11, i32 0, i32 1, !dbg !2515
  %12 = load i32, i32* %length12, align 4, !dbg !2515
  %13 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2515
  %buffer13 = bitcast %union.acpi_object* %13 to %struct.anon.40*, !dbg !2515
  %pointer14 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer13, i32 0, i32 2, !dbg !2515
  %14 = load i8*, i8** %pointer14, align 8, !dbg !2515
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %12, i8* %14) #9, !dbg !2515
  br label %out_free, !dbg !2517

if.end15:                                         ; preds = %if.end6
  %15 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2518
  %16 = bitcast %union.acpi_object* %15 to i8*, !dbg !2518
  call void @acpi_os_free(i8* %16) #9, !dbg !2518
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2519
  %handle16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 1, !dbg !2520
  %18 = load i8*, i8** %handle16, align 8, !dbg !2520
  %call17 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i8* %18, %struct.guid_t* @apple_prp_guid, i64 1, i64 1, %union.acpi_object* null, i32 4) #9, !dbg !2521
  store %union.acpi_object* %call17, %union.acpi_object** %props, align 8, !dbg !2522
  %19 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2523
  %tobool18 = icmp ne %union.acpi_object* %19, null, !dbg !2523
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2525

if.then19:                                        ; preds = %if.end15
  br label %return, !dbg !2526

if.end20:                                         ; preds = %if.end15
  %20 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2527
  %package = bitcast %union.acpi_object* %20 to %struct.anon.41*, !dbg !2528
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !2529
  %21 = load i32, i32* %count, align 4, !dbg !2529
  %div = udiv i32 %21, 2, !dbg !2530
  store i32 %div, i32* %numprops, align 4, !dbg !2531
  %22 = load i32, i32* %numprops, align 4, !dbg !2532
  %tobool21 = icmp ne i32 %22, 0, !dbg !2532
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2534

if.then22:                                        ; preds = %if.end20
  br label %out_free, !dbg !2535

if.end23:                                         ; preds = %if.end20
  %23 = load i32, i32* %numprops, align 4, !dbg !2536
  %call24 = call i64* @bitmap_zalloc(i32 %23, i32 3264) #9, !dbg !2537
  store i64* %call24, i64** %valid, align 8, !dbg !2538
  %24 = load i64*, i64** %valid, align 8, !dbg !2539
  %tobool25 = icmp ne i64* %24, null, !dbg !2539
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2541

if.then26:                                        ; preds = %if.end23
  br label %out_free, !dbg !2542

if.end27:                                         ; preds = %if.end23
  store i32 0, i32* %i, align 4, !dbg !2543
  br label %for.cond, !dbg !2545

for.cond:                                         ; preds = %for.inc, %if.end27
  %25 = load i32, i32* %i, align 4, !dbg !2546
  %26 = load i32, i32* %numprops, align 4, !dbg !2548
  %cmp28 = icmp ult i32 %25, %26, !dbg !2549
  br i1 %cmp28, label %for.body, label %for.end, !dbg !2550

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %key, metadata !2551, metadata !DIExpression()), !dbg !2553
  %27 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2554
  %package30 = bitcast %union.acpi_object* %27 to %struct.anon.41*, !dbg !2555
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package30, i32 0, i32 2, !dbg !2556
  %28 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2556
  %29 = load i32, i32* %i, align 4, !dbg !2557
  %mul = mul i32 %29, 2, !dbg !2558
  %idxprom = zext i32 %mul to i64, !dbg !2554
  %arrayidx31 = getelementptr %union.acpi_object, %union.acpi_object* %28, i64 %idxprom, !dbg !2554
  store %union.acpi_object* %arrayidx31, %union.acpi_object** %key, align 8, !dbg !2553
  call void @llvm.dbg.declare(metadata %union.acpi_object** %val, metadata !2559, metadata !DIExpression()), !dbg !2560
  %30 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2561
  %package32 = bitcast %union.acpi_object* %30 to %struct.anon.41*, !dbg !2562
  %elements33 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package32, i32 0, i32 2, !dbg !2563
  %31 = load %union.acpi_object*, %union.acpi_object** %elements33, align 8, !dbg !2563
  %32 = load i32, i32* %i, align 4, !dbg !2564
  %mul34 = mul i32 %32, 2, !dbg !2565
  %add = add i32 %mul34, 1, !dbg !2566
  %idxprom35 = zext i32 %add to i64, !dbg !2561
  %arrayidx36 = getelementptr %union.acpi_object, %union.acpi_object* %31, i64 %idxprom35, !dbg !2561
  store %union.acpi_object* %arrayidx36, %union.acpi_object** %val, align 8, !dbg !2560
  %33 = load %union.acpi_object*, %union.acpi_object** %key, align 8, !dbg !2567
  %type = bitcast %union.acpi_object* %33 to i32*, !dbg !2569
  %34 = load i32, i32* %type, align 8, !dbg !2569
  %cmp37 = icmp ne i32 %34, 2, !dbg !2570
  br i1 %cmp37, label %if.then45, label %lor.lhs.false, !dbg !2571

lor.lhs.false:                                    ; preds = %for.body
  %35 = load %union.acpi_object*, %union.acpi_object** %val, align 8, !dbg !2572
  %type39 = bitcast %union.acpi_object* %35 to i32*, !dbg !2573
  %36 = load i32, i32* %type39, align 8, !dbg !2573
  %cmp40 = icmp ne i32 %36, 1, !dbg !2574
  br i1 %cmp40, label %land.lhs.true, label %if.end46, !dbg !2575

land.lhs.true:                                    ; preds = %lor.lhs.false
  %37 = load %union.acpi_object*, %union.acpi_object** %val, align 8, !dbg !2576
  %type42 = bitcast %union.acpi_object* %37 to i32*, !dbg !2577
  %38 = load i32, i32* %type42, align 8, !dbg !2577
  %cmp43 = icmp ne i32 %38, 3, !dbg !2578
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2579

if.then45:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2580

if.end46:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %39 = load i32, i32* %i, align 4, !dbg !2581
  %conv47 = zext i32 %39 to i64, !dbg !2581
  %40 = load i64*, i64** %valid, align 8, !dbg !2582
  call void @__set_bit(i64 %conv47, i64* %40) #9, !dbg !2583
  %41 = load %union.acpi_object*, %union.acpi_object** %key, align 8, !dbg !2584
  %string = bitcast %union.acpi_object* %41 to %struct.anon.39*, !dbg !2585
  %length48 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string, i32 0, i32 1, !dbg !2586
  %42 = load i32, i32* %length48, align 4, !dbg !2586
  %add49 = add i32 %42, 1, !dbg !2587
  %43 = load i32, i32* %newsize, align 4, !dbg !2588
  %add50 = add i32 %43, %add49, !dbg !2588
  store i32 %add50, i32* %newsize, align 4, !dbg !2588
  %44 = load %union.acpi_object*, %union.acpi_object** %val, align 8, !dbg !2589
  %type51 = bitcast %union.acpi_object* %44 to i32*, !dbg !2591
  %45 = load i32, i32* %type51, align 8, !dbg !2591
  %cmp52 = icmp eq i32 %45, 3, !dbg !2592
  br i1 %cmp52, label %if.then54, label %if.end58, !dbg !2593

if.then54:                                        ; preds = %if.end46
  %46 = load %union.acpi_object*, %union.acpi_object** %val, align 8, !dbg !2594
  %buffer55 = bitcast %union.acpi_object* %46 to %struct.anon.40*, !dbg !2595
  %length56 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer55, i32 0, i32 1, !dbg !2596
  %47 = load i32, i32* %length56, align 4, !dbg !2596
  %48 = load i32, i32* %newsize, align 4, !dbg !2597
  %add57 = add i32 %48, %47, !dbg !2597
  store i32 %add57, i32* %newsize, align 4, !dbg !2597
  br label %if.end58, !dbg !2598

if.end58:                                         ; preds = %if.then54, %if.end46
  br label %for.inc, !dbg !2599

for.inc:                                          ; preds = %if.end58, %if.then45
  %49 = load i32, i32* %i, align 4, !dbg !2600
  %inc = add i32 %49, 1, !dbg !2600
  store i32 %inc, i32* %i, align 4, !dbg !2600
  br label %for.cond, !dbg !2601, !llvm.loop !2602

for.end:                                          ; preds = %for.cond
  %50 = load i64*, i64** %valid, align 8, !dbg !2604
  %51 = load i32, i32* %numprops, align 4, !dbg !2605
  store i64* %50, i64** %src.addr.i, align 8
  store i32 %51, i32* %nbits.addr.i, align 4
  %52 = load i32, i32* %nbits.addr.i, align 4, !dbg !2606
  %53 = call i1 @llvm.is.constant.i32(i32 %52) #8, !dbg !2606
  br i1 %53, label %land.lhs.true.i, label %if.end.i, !dbg !2606

land.lhs.true.i:                                  ; preds = %for.end
  %54 = load i32, i32* %nbits.addr.i, align 4, !dbg !2606
  %cmp.i = icmp ule i32 %54, 64, !dbg !2606
  br i1 %cmp.i, label %land.lhs.true1.i, label %if.end.i, !dbg !2606

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %55 = load i32, i32* %nbits.addr.i, align 4, !dbg !2606
  %cmp2.i = icmp ugt i32 %55, 0, !dbg !2606
  br i1 %cmp2.i, label %if.then.i, label %if.end.i, !dbg !2607

if.then.i:                                        ; preds = %land.lhs.true1.i
  %56 = load i64*, i64** %src.addr.i, align 8, !dbg !2608
  %57 = load i64, i64* %56, align 8, !dbg !2609
  %58 = load i32, i32* %nbits.addr.i, align 4, !dbg !2610
  %sub.i = sub i32 0, %58, !dbg !2610
  %and.i = and i32 %sub.i, 63, !dbg !2610
  %sh_prom.i = zext i32 %and.i to i64, !dbg !2610
  %shr.i = lshr i64 -1, %sh_prom.i, !dbg !2610
  %and3.i = and i64 %57, %shr.i, !dbg !2611
  store i64 %and3.i, i64* %w.addr.i.i, align 8
  %59 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %60 = call i1 @llvm.is.constant.i64(i64 %59) #8, !dbg !2612
  br i1 %60, label %cond.true.i.i, label %cond.false.i.i, !dbg !2612

cond.true.i.i:                                    ; preds = %if.then.i
  %61 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and.i.i = and i64 %61, 1, !dbg !2612
  %tobool.i.i = icmp ne i64 %and.i.i, 0, !dbg !2612
  %lnot.i.i = xor i1 %tobool.i.i, true, !dbg !2612
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32, !dbg !2612
  %62 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and2.i.i = and i64 %62, 2, !dbg !2612
  %tobool3.i.i = icmp ne i64 %and2.i.i, 0, !dbg !2612
  %lnot4.i.i = xor i1 %tobool3.i.i, true, !dbg !2612
  %lnot.ext7.i.i = zext i1 %tobool3.i.i to i32, !dbg !2612
  %add.i.i = add i32 %lnot.ext.i.i, %lnot.ext7.i.i, !dbg !2612
  %63 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and8.i.i = and i64 %63, 4, !dbg !2612
  %tobool9.i.i = icmp ne i64 %and8.i.i, 0, !dbg !2612
  %lnot10.i.i = xor i1 %tobool9.i.i, true, !dbg !2612
  %lnot.ext13.i.i = zext i1 %tobool9.i.i to i32, !dbg !2612
  %add14.i.i = add i32 %add.i.i, %lnot.ext13.i.i, !dbg !2612
  %64 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and15.i.i = and i64 %64, 8, !dbg !2612
  %tobool16.i.i = icmp ne i64 %and15.i.i, 0, !dbg !2612
  %lnot17.i.i = xor i1 %tobool16.i.i, true, !dbg !2612
  %lnot.ext20.i.i = zext i1 %tobool16.i.i to i32, !dbg !2612
  %add21.i.i = add i32 %add14.i.i, %lnot.ext20.i.i, !dbg !2612
  %65 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and22.i.i = and i64 %65, 16, !dbg !2612
  %tobool23.i.i = icmp ne i64 %and22.i.i, 0, !dbg !2612
  %lnot24.i.i = xor i1 %tobool23.i.i, true, !dbg !2612
  %lnot.ext27.i.i = zext i1 %tobool23.i.i to i32, !dbg !2612
  %add28.i.i = add i32 %add21.i.i, %lnot.ext27.i.i, !dbg !2612
  %66 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and29.i.i = and i64 %66, 32, !dbg !2612
  %tobool30.i.i = icmp ne i64 %and29.i.i, 0, !dbg !2612
  %lnot31.i.i = xor i1 %tobool30.i.i, true, !dbg !2612
  %lnot.ext34.i.i = zext i1 %tobool30.i.i to i32, !dbg !2612
  %add35.i.i = add i32 %add28.i.i, %lnot.ext34.i.i, !dbg !2612
  %67 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and36.i.i = and i64 %67, 64, !dbg !2612
  %tobool37.i.i = icmp ne i64 %and36.i.i, 0, !dbg !2612
  %lnot38.i.i = xor i1 %tobool37.i.i, true, !dbg !2612
  %lnot.ext41.i.i = zext i1 %tobool37.i.i to i32, !dbg !2612
  %add42.i.i = add i32 %add35.i.i, %lnot.ext41.i.i, !dbg !2612
  %68 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %and43.i.i = and i64 %68, 128, !dbg !2612
  %tobool44.i.i = icmp ne i64 %and43.i.i, 0, !dbg !2612
  %lnot45.i.i = xor i1 %tobool44.i.i, true, !dbg !2612
  %lnot.ext48.i.i = zext i1 %tobool44.i.i to i32, !dbg !2612
  %add49.i.i = add i32 %add42.i.i, %lnot.ext48.i.i, !dbg !2612
  %69 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr.i.i = lshr i64 %69, 8, !dbg !2612
  %and50.i.i = and i64 %shr.i.i, 1, !dbg !2612
  %tobool51.i.i = icmp ne i64 %and50.i.i, 0, !dbg !2612
  %lnot52.i.i = xor i1 %tobool51.i.i, true, !dbg !2612
  %lnot.ext55.i.i = zext i1 %tobool51.i.i to i32, !dbg !2612
  %70 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr56.i.i = lshr i64 %70, 8, !dbg !2612
  %and57.i.i = and i64 %shr56.i.i, 2, !dbg !2612
  %tobool58.i.i = icmp ne i64 %and57.i.i, 0, !dbg !2612
  %lnot59.i.i = xor i1 %tobool58.i.i, true, !dbg !2612
  %lnot.ext62.i.i = zext i1 %tobool58.i.i to i32, !dbg !2612
  %add63.i.i = add i32 %lnot.ext55.i.i, %lnot.ext62.i.i, !dbg !2612
  %71 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr64.i.i = lshr i64 %71, 8, !dbg !2612
  %and65.i.i = and i64 %shr64.i.i, 4, !dbg !2612
  %tobool66.i.i = icmp ne i64 %and65.i.i, 0, !dbg !2612
  %lnot67.i.i = xor i1 %tobool66.i.i, true, !dbg !2612
  %lnot.ext70.i.i = zext i1 %tobool66.i.i to i32, !dbg !2612
  %add71.i.i = add i32 %add63.i.i, %lnot.ext70.i.i, !dbg !2612
  %72 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr72.i.i = lshr i64 %72, 8, !dbg !2612
  %and73.i.i = and i64 %shr72.i.i, 8, !dbg !2612
  %tobool74.i.i = icmp ne i64 %and73.i.i, 0, !dbg !2612
  %lnot75.i.i = xor i1 %tobool74.i.i, true, !dbg !2612
  %lnot.ext78.i.i = zext i1 %tobool74.i.i to i32, !dbg !2612
  %add79.i.i = add i32 %add71.i.i, %lnot.ext78.i.i, !dbg !2612
  %73 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr80.i.i = lshr i64 %73, 8, !dbg !2612
  %and81.i.i = and i64 %shr80.i.i, 16, !dbg !2612
  %tobool82.i.i = icmp ne i64 %and81.i.i, 0, !dbg !2612
  %lnot83.i.i = xor i1 %tobool82.i.i, true, !dbg !2612
  %lnot.ext86.i.i = zext i1 %tobool82.i.i to i32, !dbg !2612
  %add87.i.i = add i32 %add79.i.i, %lnot.ext86.i.i, !dbg !2612
  %74 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr88.i.i = lshr i64 %74, 8, !dbg !2612
  %and89.i.i = and i64 %shr88.i.i, 32, !dbg !2612
  %tobool90.i.i = icmp ne i64 %and89.i.i, 0, !dbg !2612
  %lnot91.i.i = xor i1 %tobool90.i.i, true, !dbg !2612
  %lnot.ext94.i.i = zext i1 %tobool90.i.i to i32, !dbg !2612
  %add95.i.i = add i32 %add87.i.i, %lnot.ext94.i.i, !dbg !2612
  %75 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr96.i.i = lshr i64 %75, 8, !dbg !2612
  %and97.i.i = and i64 %shr96.i.i, 64, !dbg !2612
  %tobool98.i.i = icmp ne i64 %and97.i.i, 0, !dbg !2612
  %lnot99.i.i = xor i1 %tobool98.i.i, true, !dbg !2612
  %lnot.ext102.i.i = zext i1 %tobool98.i.i to i32, !dbg !2612
  %add103.i.i = add i32 %add95.i.i, %lnot.ext102.i.i, !dbg !2612
  %76 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr104.i.i = lshr i64 %76, 8, !dbg !2612
  %and105.i.i = and i64 %shr104.i.i, 128, !dbg !2612
  %tobool106.i.i = icmp ne i64 %and105.i.i, 0, !dbg !2612
  %lnot107.i.i = xor i1 %tobool106.i.i, true, !dbg !2612
  %lnot.ext110.i.i = zext i1 %tobool106.i.i to i32, !dbg !2612
  %add111.i.i = add i32 %add103.i.i, %lnot.ext110.i.i, !dbg !2612
  %add112.i.i = add i32 %add49.i.i, %add111.i.i, !dbg !2612
  %77 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr113.i.i = lshr i64 %77, 16, !dbg !2612
  %and114.i.i = and i64 %shr113.i.i, 1, !dbg !2612
  %tobool115.i.i = icmp ne i64 %and114.i.i, 0, !dbg !2612
  %lnot116.i.i = xor i1 %tobool115.i.i, true, !dbg !2612
  %lnot.ext119.i.i = zext i1 %tobool115.i.i to i32, !dbg !2612
  %78 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr120.i.i = lshr i64 %78, 16, !dbg !2612
  %and121.i.i = and i64 %shr120.i.i, 2, !dbg !2612
  %tobool122.i.i = icmp ne i64 %and121.i.i, 0, !dbg !2612
  %lnot123.i.i = xor i1 %tobool122.i.i, true, !dbg !2612
  %lnot.ext126.i.i = zext i1 %tobool122.i.i to i32, !dbg !2612
  %add127.i.i = add i32 %lnot.ext119.i.i, %lnot.ext126.i.i, !dbg !2612
  %79 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr128.i.i = lshr i64 %79, 16, !dbg !2612
  %and129.i.i = and i64 %shr128.i.i, 4, !dbg !2612
  %tobool130.i.i = icmp ne i64 %and129.i.i, 0, !dbg !2612
  %lnot131.i.i = xor i1 %tobool130.i.i, true, !dbg !2612
  %lnot.ext134.i.i = zext i1 %tobool130.i.i to i32, !dbg !2612
  %add135.i.i = add i32 %add127.i.i, %lnot.ext134.i.i, !dbg !2612
  %80 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr136.i.i = lshr i64 %80, 16, !dbg !2612
  %and137.i.i = and i64 %shr136.i.i, 8, !dbg !2612
  %tobool138.i.i = icmp ne i64 %and137.i.i, 0, !dbg !2612
  %lnot139.i.i = xor i1 %tobool138.i.i, true, !dbg !2612
  %lnot.ext142.i.i = zext i1 %tobool138.i.i to i32, !dbg !2612
  %add143.i.i = add i32 %add135.i.i, %lnot.ext142.i.i, !dbg !2612
  %81 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr144.i.i = lshr i64 %81, 16, !dbg !2612
  %and145.i.i = and i64 %shr144.i.i, 16, !dbg !2612
  %tobool146.i.i = icmp ne i64 %and145.i.i, 0, !dbg !2612
  %lnot147.i.i = xor i1 %tobool146.i.i, true, !dbg !2612
  %lnot.ext150.i.i = zext i1 %tobool146.i.i to i32, !dbg !2612
  %add151.i.i = add i32 %add143.i.i, %lnot.ext150.i.i, !dbg !2612
  %82 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr152.i.i = lshr i64 %82, 16, !dbg !2612
  %and153.i.i = and i64 %shr152.i.i, 32, !dbg !2612
  %tobool154.i.i = icmp ne i64 %and153.i.i, 0, !dbg !2612
  %lnot155.i.i = xor i1 %tobool154.i.i, true, !dbg !2612
  %lnot.ext158.i.i = zext i1 %tobool154.i.i to i32, !dbg !2612
  %add159.i.i = add i32 %add151.i.i, %lnot.ext158.i.i, !dbg !2612
  %83 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr160.i.i = lshr i64 %83, 16, !dbg !2612
  %and161.i.i = and i64 %shr160.i.i, 64, !dbg !2612
  %tobool162.i.i = icmp ne i64 %and161.i.i, 0, !dbg !2612
  %lnot163.i.i = xor i1 %tobool162.i.i, true, !dbg !2612
  %lnot.ext166.i.i = zext i1 %tobool162.i.i to i32, !dbg !2612
  %add167.i.i = add i32 %add159.i.i, %lnot.ext166.i.i, !dbg !2612
  %84 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr168.i.i = lshr i64 %84, 16, !dbg !2612
  %and169.i.i = and i64 %shr168.i.i, 128, !dbg !2612
  %tobool170.i.i = icmp ne i64 %and169.i.i, 0, !dbg !2612
  %lnot171.i.i = xor i1 %tobool170.i.i, true, !dbg !2612
  %lnot.ext174.i.i = zext i1 %tobool170.i.i to i32, !dbg !2612
  %add175.i.i = add i32 %add167.i.i, %lnot.ext174.i.i, !dbg !2612
  %85 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr176.i.i = lshr i64 %85, 16, !dbg !2612
  %shr177.i.i = lshr i64 %shr176.i.i, 8, !dbg !2612
  %and178.i.i = and i64 %shr177.i.i, 1, !dbg !2612
  %tobool179.i.i = icmp ne i64 %and178.i.i, 0, !dbg !2612
  %lnot180.i.i = xor i1 %tobool179.i.i, true, !dbg !2612
  %lnot.ext183.i.i = zext i1 %tobool179.i.i to i32, !dbg !2612
  %86 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr184.i.i = lshr i64 %86, 16, !dbg !2612
  %shr185.i.i = lshr i64 %shr184.i.i, 8, !dbg !2612
  %and186.i.i = and i64 %shr185.i.i, 2, !dbg !2612
  %tobool187.i.i = icmp ne i64 %and186.i.i, 0, !dbg !2612
  %lnot188.i.i = xor i1 %tobool187.i.i, true, !dbg !2612
  %lnot.ext191.i.i = zext i1 %tobool187.i.i to i32, !dbg !2612
  %add192.i.i = add i32 %lnot.ext183.i.i, %lnot.ext191.i.i, !dbg !2612
  %87 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr193.i.i = lshr i64 %87, 16, !dbg !2612
  %shr194.i.i = lshr i64 %shr193.i.i, 8, !dbg !2612
  %and195.i.i = and i64 %shr194.i.i, 4, !dbg !2612
  %tobool196.i.i = icmp ne i64 %and195.i.i, 0, !dbg !2612
  %lnot197.i.i = xor i1 %tobool196.i.i, true, !dbg !2612
  %lnot.ext200.i.i = zext i1 %tobool196.i.i to i32, !dbg !2612
  %add201.i.i = add i32 %add192.i.i, %lnot.ext200.i.i, !dbg !2612
  %88 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr202.i.i = lshr i64 %88, 16, !dbg !2612
  %shr203.i.i = lshr i64 %shr202.i.i, 8, !dbg !2612
  %and204.i.i = and i64 %shr203.i.i, 8, !dbg !2612
  %tobool205.i.i = icmp ne i64 %and204.i.i, 0, !dbg !2612
  %lnot206.i.i = xor i1 %tobool205.i.i, true, !dbg !2612
  %lnot.ext209.i.i = zext i1 %tobool205.i.i to i32, !dbg !2612
  %add210.i.i = add i32 %add201.i.i, %lnot.ext209.i.i, !dbg !2612
  %89 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr211.i.i = lshr i64 %89, 16, !dbg !2612
  %shr212.i.i = lshr i64 %shr211.i.i, 8, !dbg !2612
  %and213.i.i = and i64 %shr212.i.i, 16, !dbg !2612
  %tobool214.i.i = icmp ne i64 %and213.i.i, 0, !dbg !2612
  %lnot215.i.i = xor i1 %tobool214.i.i, true, !dbg !2612
  %lnot.ext218.i.i = zext i1 %tobool214.i.i to i32, !dbg !2612
  %add219.i.i = add i32 %add210.i.i, %lnot.ext218.i.i, !dbg !2612
  %90 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr220.i.i = lshr i64 %90, 16, !dbg !2612
  %shr221.i.i = lshr i64 %shr220.i.i, 8, !dbg !2612
  %and222.i.i = and i64 %shr221.i.i, 32, !dbg !2612
  %tobool223.i.i = icmp ne i64 %and222.i.i, 0, !dbg !2612
  %lnot224.i.i = xor i1 %tobool223.i.i, true, !dbg !2612
  %lnot.ext227.i.i = zext i1 %tobool223.i.i to i32, !dbg !2612
  %add228.i.i = add i32 %add219.i.i, %lnot.ext227.i.i, !dbg !2612
  %91 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr229.i.i = lshr i64 %91, 16, !dbg !2612
  %shr230.i.i = lshr i64 %shr229.i.i, 8, !dbg !2612
  %and231.i.i = and i64 %shr230.i.i, 64, !dbg !2612
  %tobool232.i.i = icmp ne i64 %and231.i.i, 0, !dbg !2612
  %lnot233.i.i = xor i1 %tobool232.i.i, true, !dbg !2612
  %lnot.ext236.i.i = zext i1 %tobool232.i.i to i32, !dbg !2612
  %add237.i.i = add i32 %add228.i.i, %lnot.ext236.i.i, !dbg !2612
  %92 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr238.i.i = lshr i64 %92, 16, !dbg !2612
  %shr239.i.i = lshr i64 %shr238.i.i, 8, !dbg !2612
  %and240.i.i = and i64 %shr239.i.i, 128, !dbg !2612
  %tobool241.i.i = icmp ne i64 %and240.i.i, 0, !dbg !2612
  %lnot242.i.i = xor i1 %tobool241.i.i, true, !dbg !2612
  %lnot.ext245.i.i = zext i1 %tobool241.i.i to i32, !dbg !2612
  %add246.i.i = add i32 %add237.i.i, %lnot.ext245.i.i, !dbg !2612
  %add247.i.i = add i32 %add175.i.i, %add246.i.i, !dbg !2612
  %add248.i.i = add i32 %add112.i.i, %add247.i.i, !dbg !2612
  %93 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr249.i.i = lshr i64 %93, 32, !dbg !2612
  %and250.i.i = and i64 %shr249.i.i, 1, !dbg !2612
  %tobool251.i.i = icmp ne i64 %and250.i.i, 0, !dbg !2612
  %lnot252.i.i = xor i1 %tobool251.i.i, true, !dbg !2612
  %lnot.ext255.i.i = zext i1 %tobool251.i.i to i32, !dbg !2612
  %94 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr256.i.i = lshr i64 %94, 32, !dbg !2612
  %and257.i.i = and i64 %shr256.i.i, 2, !dbg !2612
  %tobool258.i.i = icmp ne i64 %and257.i.i, 0, !dbg !2612
  %lnot259.i.i = xor i1 %tobool258.i.i, true, !dbg !2612
  %lnot.ext262.i.i = zext i1 %tobool258.i.i to i32, !dbg !2612
  %add263.i.i = add i32 %lnot.ext255.i.i, %lnot.ext262.i.i, !dbg !2612
  %95 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr264.i.i = lshr i64 %95, 32, !dbg !2612
  %and265.i.i = and i64 %shr264.i.i, 4, !dbg !2612
  %tobool266.i.i = icmp ne i64 %and265.i.i, 0, !dbg !2612
  %lnot267.i.i = xor i1 %tobool266.i.i, true, !dbg !2612
  %lnot.ext270.i.i = zext i1 %tobool266.i.i to i32, !dbg !2612
  %add271.i.i = add i32 %add263.i.i, %lnot.ext270.i.i, !dbg !2612
  %96 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr272.i.i = lshr i64 %96, 32, !dbg !2612
  %and273.i.i = and i64 %shr272.i.i, 8, !dbg !2612
  %tobool274.i.i = icmp ne i64 %and273.i.i, 0, !dbg !2612
  %lnot275.i.i = xor i1 %tobool274.i.i, true, !dbg !2612
  %lnot.ext278.i.i = zext i1 %tobool274.i.i to i32, !dbg !2612
  %add279.i.i = add i32 %add271.i.i, %lnot.ext278.i.i, !dbg !2612
  %97 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr280.i.i = lshr i64 %97, 32, !dbg !2612
  %and281.i.i = and i64 %shr280.i.i, 16, !dbg !2612
  %tobool282.i.i = icmp ne i64 %and281.i.i, 0, !dbg !2612
  %lnot283.i.i = xor i1 %tobool282.i.i, true, !dbg !2612
  %lnot.ext286.i.i = zext i1 %tobool282.i.i to i32, !dbg !2612
  %add287.i.i = add i32 %add279.i.i, %lnot.ext286.i.i, !dbg !2612
  %98 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr288.i.i = lshr i64 %98, 32, !dbg !2612
  %and289.i.i = and i64 %shr288.i.i, 32, !dbg !2612
  %tobool290.i.i = icmp ne i64 %and289.i.i, 0, !dbg !2612
  %lnot291.i.i = xor i1 %tobool290.i.i, true, !dbg !2612
  %lnot.ext294.i.i = zext i1 %tobool290.i.i to i32, !dbg !2612
  %add295.i.i = add i32 %add287.i.i, %lnot.ext294.i.i, !dbg !2612
  %99 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr296.i.i = lshr i64 %99, 32, !dbg !2612
  %and297.i.i = and i64 %shr296.i.i, 64, !dbg !2612
  %tobool298.i.i = icmp ne i64 %and297.i.i, 0, !dbg !2612
  %lnot299.i.i = xor i1 %tobool298.i.i, true, !dbg !2612
  %lnot.ext302.i.i = zext i1 %tobool298.i.i to i32, !dbg !2612
  %add303.i.i = add i32 %add295.i.i, %lnot.ext302.i.i, !dbg !2612
  %100 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr304.i.i = lshr i64 %100, 32, !dbg !2612
  %and305.i.i = and i64 %shr304.i.i, 128, !dbg !2612
  %tobool306.i.i = icmp ne i64 %and305.i.i, 0, !dbg !2612
  %lnot307.i.i = xor i1 %tobool306.i.i, true, !dbg !2612
  %lnot.ext310.i.i = zext i1 %tobool306.i.i to i32, !dbg !2612
  %add311.i.i = add i32 %add303.i.i, %lnot.ext310.i.i, !dbg !2612
  %101 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr312.i.i = lshr i64 %101, 32, !dbg !2612
  %shr313.i.i = lshr i64 %shr312.i.i, 8, !dbg !2612
  %and314.i.i = and i64 %shr313.i.i, 1, !dbg !2612
  %tobool315.i.i = icmp ne i64 %and314.i.i, 0, !dbg !2612
  %lnot316.i.i = xor i1 %tobool315.i.i, true, !dbg !2612
  %lnot.ext319.i.i = zext i1 %tobool315.i.i to i32, !dbg !2612
  %102 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr320.i.i = lshr i64 %102, 32, !dbg !2612
  %shr321.i.i = lshr i64 %shr320.i.i, 8, !dbg !2612
  %and322.i.i = and i64 %shr321.i.i, 2, !dbg !2612
  %tobool323.i.i = icmp ne i64 %and322.i.i, 0, !dbg !2612
  %lnot324.i.i = xor i1 %tobool323.i.i, true, !dbg !2612
  %lnot.ext327.i.i = zext i1 %tobool323.i.i to i32, !dbg !2612
  %add328.i.i = add i32 %lnot.ext319.i.i, %lnot.ext327.i.i, !dbg !2612
  %103 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr329.i.i = lshr i64 %103, 32, !dbg !2612
  %shr330.i.i = lshr i64 %shr329.i.i, 8, !dbg !2612
  %and331.i.i = and i64 %shr330.i.i, 4, !dbg !2612
  %tobool332.i.i = icmp ne i64 %and331.i.i, 0, !dbg !2612
  %lnot333.i.i = xor i1 %tobool332.i.i, true, !dbg !2612
  %lnot.ext336.i.i = zext i1 %tobool332.i.i to i32, !dbg !2612
  %add337.i.i = add i32 %add328.i.i, %lnot.ext336.i.i, !dbg !2612
  %104 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr338.i.i = lshr i64 %104, 32, !dbg !2612
  %shr339.i.i = lshr i64 %shr338.i.i, 8, !dbg !2612
  %and340.i.i = and i64 %shr339.i.i, 8, !dbg !2612
  %tobool341.i.i = icmp ne i64 %and340.i.i, 0, !dbg !2612
  %lnot342.i.i = xor i1 %tobool341.i.i, true, !dbg !2612
  %lnot.ext345.i.i = zext i1 %tobool341.i.i to i32, !dbg !2612
  %add346.i.i = add i32 %add337.i.i, %lnot.ext345.i.i, !dbg !2612
  %105 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr347.i.i = lshr i64 %105, 32, !dbg !2612
  %shr348.i.i = lshr i64 %shr347.i.i, 8, !dbg !2612
  %and349.i.i = and i64 %shr348.i.i, 16, !dbg !2612
  %tobool350.i.i = icmp ne i64 %and349.i.i, 0, !dbg !2612
  %lnot351.i.i = xor i1 %tobool350.i.i, true, !dbg !2612
  %lnot.ext354.i.i = zext i1 %tobool350.i.i to i32, !dbg !2612
  %add355.i.i = add i32 %add346.i.i, %lnot.ext354.i.i, !dbg !2612
  %106 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr356.i.i = lshr i64 %106, 32, !dbg !2612
  %shr357.i.i = lshr i64 %shr356.i.i, 8, !dbg !2612
  %and358.i.i = and i64 %shr357.i.i, 32, !dbg !2612
  %tobool359.i.i = icmp ne i64 %and358.i.i, 0, !dbg !2612
  %lnot360.i.i = xor i1 %tobool359.i.i, true, !dbg !2612
  %lnot.ext363.i.i = zext i1 %tobool359.i.i to i32, !dbg !2612
  %add364.i.i = add i32 %add355.i.i, %lnot.ext363.i.i, !dbg !2612
  %107 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr365.i.i = lshr i64 %107, 32, !dbg !2612
  %shr366.i.i = lshr i64 %shr365.i.i, 8, !dbg !2612
  %and367.i.i = and i64 %shr366.i.i, 64, !dbg !2612
  %tobool368.i.i = icmp ne i64 %and367.i.i, 0, !dbg !2612
  %lnot369.i.i = xor i1 %tobool368.i.i, true, !dbg !2612
  %lnot.ext372.i.i = zext i1 %tobool368.i.i to i32, !dbg !2612
  %add373.i.i = add i32 %add364.i.i, %lnot.ext372.i.i, !dbg !2612
  %108 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr374.i.i = lshr i64 %108, 32, !dbg !2612
  %shr375.i.i = lshr i64 %shr374.i.i, 8, !dbg !2612
  %and376.i.i = and i64 %shr375.i.i, 128, !dbg !2612
  %tobool377.i.i = icmp ne i64 %and376.i.i, 0, !dbg !2612
  %lnot378.i.i = xor i1 %tobool377.i.i, true, !dbg !2612
  %lnot.ext381.i.i = zext i1 %tobool377.i.i to i32, !dbg !2612
  %add382.i.i = add i32 %add373.i.i, %lnot.ext381.i.i, !dbg !2612
  %add383.i.i = add i32 %add311.i.i, %add382.i.i, !dbg !2612
  %109 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr384.i.i = lshr i64 %109, 32, !dbg !2612
  %shr385.i.i = lshr i64 %shr384.i.i, 16, !dbg !2612
  %and386.i.i = and i64 %shr385.i.i, 1, !dbg !2612
  %tobool387.i.i = icmp ne i64 %and386.i.i, 0, !dbg !2612
  %lnot388.i.i = xor i1 %tobool387.i.i, true, !dbg !2612
  %lnot.ext391.i.i = zext i1 %tobool387.i.i to i32, !dbg !2612
  %110 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr392.i.i = lshr i64 %110, 32, !dbg !2612
  %shr393.i.i = lshr i64 %shr392.i.i, 16, !dbg !2612
  %and394.i.i = and i64 %shr393.i.i, 2, !dbg !2612
  %tobool395.i.i = icmp ne i64 %and394.i.i, 0, !dbg !2612
  %lnot396.i.i = xor i1 %tobool395.i.i, true, !dbg !2612
  %lnot.ext399.i.i = zext i1 %tobool395.i.i to i32, !dbg !2612
  %add400.i.i = add i32 %lnot.ext391.i.i, %lnot.ext399.i.i, !dbg !2612
  %111 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr401.i.i = lshr i64 %111, 32, !dbg !2612
  %shr402.i.i = lshr i64 %shr401.i.i, 16, !dbg !2612
  %and403.i.i = and i64 %shr402.i.i, 4, !dbg !2612
  %tobool404.i.i = icmp ne i64 %and403.i.i, 0, !dbg !2612
  %lnot405.i.i = xor i1 %tobool404.i.i, true, !dbg !2612
  %lnot.ext408.i.i = zext i1 %tobool404.i.i to i32, !dbg !2612
  %add409.i.i = add i32 %add400.i.i, %lnot.ext408.i.i, !dbg !2612
  %112 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr410.i.i = lshr i64 %112, 32, !dbg !2612
  %shr411.i.i = lshr i64 %shr410.i.i, 16, !dbg !2612
  %and412.i.i = and i64 %shr411.i.i, 8, !dbg !2612
  %tobool413.i.i = icmp ne i64 %and412.i.i, 0, !dbg !2612
  %lnot414.i.i = xor i1 %tobool413.i.i, true, !dbg !2612
  %lnot.ext417.i.i = zext i1 %tobool413.i.i to i32, !dbg !2612
  %add418.i.i = add i32 %add409.i.i, %lnot.ext417.i.i, !dbg !2612
  %113 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr419.i.i = lshr i64 %113, 32, !dbg !2612
  %shr420.i.i = lshr i64 %shr419.i.i, 16, !dbg !2612
  %and421.i.i = and i64 %shr420.i.i, 16, !dbg !2612
  %tobool422.i.i = icmp ne i64 %and421.i.i, 0, !dbg !2612
  %lnot423.i.i = xor i1 %tobool422.i.i, true, !dbg !2612
  %lnot.ext426.i.i = zext i1 %tobool422.i.i to i32, !dbg !2612
  %add427.i.i = add i32 %add418.i.i, %lnot.ext426.i.i, !dbg !2612
  %114 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr428.i.i = lshr i64 %114, 32, !dbg !2612
  %shr429.i.i = lshr i64 %shr428.i.i, 16, !dbg !2612
  %and430.i.i = and i64 %shr429.i.i, 32, !dbg !2612
  %tobool431.i.i = icmp ne i64 %and430.i.i, 0, !dbg !2612
  %lnot432.i.i = xor i1 %tobool431.i.i, true, !dbg !2612
  %lnot.ext435.i.i = zext i1 %tobool431.i.i to i32, !dbg !2612
  %add436.i.i = add i32 %add427.i.i, %lnot.ext435.i.i, !dbg !2612
  %115 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr437.i.i = lshr i64 %115, 32, !dbg !2612
  %shr438.i.i = lshr i64 %shr437.i.i, 16, !dbg !2612
  %and439.i.i = and i64 %shr438.i.i, 64, !dbg !2612
  %tobool440.i.i = icmp ne i64 %and439.i.i, 0, !dbg !2612
  %lnot441.i.i = xor i1 %tobool440.i.i, true, !dbg !2612
  %lnot.ext444.i.i = zext i1 %tobool440.i.i to i32, !dbg !2612
  %add445.i.i = add i32 %add436.i.i, %lnot.ext444.i.i, !dbg !2612
  %116 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr446.i.i = lshr i64 %116, 32, !dbg !2612
  %shr447.i.i = lshr i64 %shr446.i.i, 16, !dbg !2612
  %and448.i.i = and i64 %shr447.i.i, 128, !dbg !2612
  %tobool449.i.i = icmp ne i64 %and448.i.i, 0, !dbg !2612
  %lnot450.i.i = xor i1 %tobool449.i.i, true, !dbg !2612
  %lnot.ext453.i.i = zext i1 %tobool449.i.i to i32, !dbg !2612
  %add454.i.i = add i32 %add445.i.i, %lnot.ext453.i.i, !dbg !2612
  %117 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr455.i.i = lshr i64 %117, 32, !dbg !2612
  %shr456.i.i = lshr i64 %shr455.i.i, 16, !dbg !2612
  %shr457.i.i = lshr i64 %shr456.i.i, 8, !dbg !2612
  %and458.i.i = and i64 %shr457.i.i, 1, !dbg !2612
  %tobool459.i.i = icmp ne i64 %and458.i.i, 0, !dbg !2612
  %lnot460.i.i = xor i1 %tobool459.i.i, true, !dbg !2612
  %lnot.ext463.i.i = zext i1 %tobool459.i.i to i32, !dbg !2612
  %118 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr464.i.i = lshr i64 %118, 32, !dbg !2612
  %shr465.i.i = lshr i64 %shr464.i.i, 16, !dbg !2612
  %shr466.i.i = lshr i64 %shr465.i.i, 8, !dbg !2612
  %and467.i.i = and i64 %shr466.i.i, 2, !dbg !2612
  %tobool468.i.i = icmp ne i64 %and467.i.i, 0, !dbg !2612
  %lnot469.i.i = xor i1 %tobool468.i.i, true, !dbg !2612
  %lnot.ext472.i.i = zext i1 %tobool468.i.i to i32, !dbg !2612
  %add473.i.i = add i32 %lnot.ext463.i.i, %lnot.ext472.i.i, !dbg !2612
  %119 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr474.i.i = lshr i64 %119, 32, !dbg !2612
  %shr475.i.i = lshr i64 %shr474.i.i, 16, !dbg !2612
  %shr476.i.i = lshr i64 %shr475.i.i, 8, !dbg !2612
  %and477.i.i = and i64 %shr476.i.i, 4, !dbg !2612
  %tobool478.i.i = icmp ne i64 %and477.i.i, 0, !dbg !2612
  %lnot479.i.i = xor i1 %tobool478.i.i, true, !dbg !2612
  %lnot.ext482.i.i = zext i1 %tobool478.i.i to i32, !dbg !2612
  %add483.i.i = add i32 %add473.i.i, %lnot.ext482.i.i, !dbg !2612
  %120 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr484.i.i = lshr i64 %120, 32, !dbg !2612
  %shr485.i.i = lshr i64 %shr484.i.i, 16, !dbg !2612
  %shr486.i.i = lshr i64 %shr485.i.i, 8, !dbg !2612
  %and487.i.i = and i64 %shr486.i.i, 8, !dbg !2612
  %tobool488.i.i = icmp ne i64 %and487.i.i, 0, !dbg !2612
  %lnot489.i.i = xor i1 %tobool488.i.i, true, !dbg !2612
  %lnot.ext492.i.i = zext i1 %tobool488.i.i to i32, !dbg !2612
  %add493.i.i = add i32 %add483.i.i, %lnot.ext492.i.i, !dbg !2612
  %121 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr494.i.i = lshr i64 %121, 32, !dbg !2612
  %shr495.i.i = lshr i64 %shr494.i.i, 16, !dbg !2612
  %shr496.i.i = lshr i64 %shr495.i.i, 8, !dbg !2612
  %and497.i.i = and i64 %shr496.i.i, 16, !dbg !2612
  %tobool498.i.i = icmp ne i64 %and497.i.i, 0, !dbg !2612
  %lnot499.i.i = xor i1 %tobool498.i.i, true, !dbg !2612
  %lnot.ext502.i.i = zext i1 %tobool498.i.i to i32, !dbg !2612
  %add503.i.i = add i32 %add493.i.i, %lnot.ext502.i.i, !dbg !2612
  %122 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr504.i.i = lshr i64 %122, 32, !dbg !2612
  %shr505.i.i = lshr i64 %shr504.i.i, 16, !dbg !2612
  %shr506.i.i = lshr i64 %shr505.i.i, 8, !dbg !2612
  %and507.i.i = and i64 %shr506.i.i, 32, !dbg !2612
  %tobool508.i.i = icmp ne i64 %and507.i.i, 0, !dbg !2612
  %lnot509.i.i = xor i1 %tobool508.i.i, true, !dbg !2612
  %lnot.ext512.i.i = zext i1 %tobool508.i.i to i32, !dbg !2612
  %add513.i.i = add i32 %add503.i.i, %lnot.ext512.i.i, !dbg !2612
  %123 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr514.i.i = lshr i64 %123, 32, !dbg !2612
  %shr515.i.i = lshr i64 %shr514.i.i, 16, !dbg !2612
  %shr516.i.i = lshr i64 %shr515.i.i, 8, !dbg !2612
  %and517.i.i = and i64 %shr516.i.i, 64, !dbg !2612
  %tobool518.i.i = icmp ne i64 %and517.i.i, 0, !dbg !2612
  %lnot519.i.i = xor i1 %tobool518.i.i, true, !dbg !2612
  %lnot.ext522.i.i = zext i1 %tobool518.i.i to i32, !dbg !2612
  %add523.i.i = add i32 %add513.i.i, %lnot.ext522.i.i, !dbg !2612
  %124 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  %shr524.i.i = lshr i64 %124, 32, !dbg !2612
  %shr525.i.i = lshr i64 %shr524.i.i, 16, !dbg !2612
  %shr526.i.i = lshr i64 %shr525.i.i, 8, !dbg !2612
  %and527.i.i = and i64 %shr526.i.i, 128, !dbg !2612
  %tobool528.i.i = icmp ne i64 %and527.i.i, 0, !dbg !2612
  %lnot529.i.i = xor i1 %tobool528.i.i, true, !dbg !2612
  %lnot.ext532.i.i = zext i1 %tobool528.i.i to i32, !dbg !2612
  %add533.i.i = add i32 %add523.i.i, %lnot.ext532.i.i, !dbg !2612
  %add534.i.i = add i32 %add454.i.i, %add533.i.i, !dbg !2612
  %add535.i.i = add i32 %add383.i.i, %add534.i.i, !dbg !2612
  %add536.i.i = add i32 %add248.i.i, %add535.i.i, !dbg !2612
  %conv.i.i = zext i32 %add536.i.i to i64, !dbg !2612
  br label %hweight_long.exit.i, !dbg !2612

cond.false.i.i:                                   ; preds = %if.then.i
  %125 = load i64, i64* %w.addr.i.i, align 8, !dbg !2612
  store i64 %125, i64* %w.addr.i.i.i, align 8
  %126 = load i64, i64* %w.addr.i.i.i, align 8, !dbg !2613
  %127 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %126) #10, !dbg !2614, !srcloc !2615
  store i64 %127, i64* %res.i.i.i, align 8, !dbg !2614
  %128 = load i64, i64* %res.i.i.i, align 8, !dbg !2616
  br label %hweight_long.exit.i, !dbg !2612

hweight_long.exit.i:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %128, %cond.false.i.i ], !dbg !2612
  %conv.i = trunc i64 %cond.i.i to i32, !dbg !2617
  store i32 %conv.i, i32* %retval.i, align 4, !dbg !2618
  br label %bitmap_weight.exit, !dbg !2618

if.end.i:                                         ; preds = %land.lhs.true1.i, %land.lhs.true.i, %for.end
  %129 = load i64*, i64** %src.addr.i, align 8, !dbg !2619
  %130 = load i32, i32* %nbits.addr.i, align 4, !dbg !2620
  %call4.i = call i32 @__bitmap_weight(i64* %129, i32 %130) #11, !dbg !2621
  store i32 %call4.i, i32* %retval.i, align 4, !dbg !2622
  br label %bitmap_weight.exit, !dbg !2622

bitmap_weight.exit:                               ; preds = %hweight_long.exit.i, %if.end.i
  %131 = load i32, i32* %retval.i, align 4, !dbg !2623
  store i32 %131, i32* %numvalid, align 4, !dbg !2624
  %132 = load i32, i32* %numprops, align 4, !dbg !2625
  %133 = load i32, i32* %numvalid, align 4, !dbg !2627
  %cmp60 = icmp ugt i32 %132, %133, !dbg !2628
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !2629

if.then62:                                        ; preds = %bitmap_weight.exit
  %134 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2630
  %handle63 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %134, i32 0, i32 1, !dbg !2630
  %135 = load i8*, i8** %handle63, align 8, !dbg !2630
  %136 = load i32, i32* %numprops, align 4, !dbg !2630
  %137 = load i32, i32* %numvalid, align 4, !dbg !2630
  %sub = sub i32 %136, %137, !dbg !2630
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %135, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %sub) #9, !dbg !2630
  br label %if.end64, !dbg !2630

if.end64:                                         ; preds = %if.then62, %bitmap_weight.exit
  %138 = load i32, i32* %numvalid, align 4, !dbg !2631
  %cmp65 = icmp eq i32 %138, 0, !dbg !2633
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2634

if.then67:                                        ; preds = %if.end64
  br label %out_free, !dbg !2635

if.end68:                                         ; preds = %if.end64
  %139 = load i32, i32* %numvalid, align 4, !dbg !2636
  %mul69 = mul i32 3, %139, !dbg !2637
  %add70 = add i32 1, %mul69, !dbg !2638
  %conv71 = zext i32 %add70 to i64, !dbg !2639
  %mul72 = mul i64 %conv71, 24, !dbg !2640
  %140 = load i32, i32* %newsize, align 4, !dbg !2641
  %conv73 = zext i32 %140 to i64, !dbg !2641
  %add74 = add i64 %conv73, %mul72, !dbg !2641
  %conv75 = trunc i64 %add74 to i32, !dbg !2641
  store i32 %conv75, i32* %newsize, align 4, !dbg !2641
  %141 = load i32, i32* %newsize, align 4, !dbg !2642
  %conv76 = zext i32 %141 to i64, !dbg !2642
  %call77 = call i8* @acpi_os_allocate_zeroed(i64 %conv76) #9, !dbg !2642
  %142 = bitcast i8* %call77 to %union.acpi_object*, !dbg !2642
  store %union.acpi_object* %142, %union.acpi_object** %newprops, align 8, !dbg !2643
  %143 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2644
  %tobool78 = icmp ne %union.acpi_object* %143, null, !dbg !2644
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !2646

if.then79:                                        ; preds = %if.end68
  br label %out_free, !dbg !2647

if.end80:                                         ; preds = %if.end68
  %144 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2648
  %type81 = bitcast %union.acpi_object* %144 to i32*, !dbg !2649
  store i32 4, i32* %type81, align 8, !dbg !2650
  %145 = load i32, i32* %numvalid, align 4, !dbg !2651
  %146 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2652
  %package82 = bitcast %union.acpi_object* %146 to %struct.anon.41*, !dbg !2653
  %count83 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package82, i32 0, i32 1, !dbg !2654
  store i32 %145, i32* %count83, align 4, !dbg !2655
  %147 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2656
  %arrayidx84 = getelementptr %union.acpi_object, %union.acpi_object* %147, i64 1, !dbg !2656
  %148 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2657
  %package85 = bitcast %union.acpi_object* %148 to %struct.anon.41*, !dbg !2658
  %elements86 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package85, i32 0, i32 2, !dbg !2659
  store %union.acpi_object* %arrayidx84, %union.acpi_object** %elements86, align 8, !dbg !2660
  %149 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2661
  %150 = load i32, i32* %numvalid, align 4, !dbg !2662
  %mul87 = mul i32 3, %150, !dbg !2663
  %add88 = add i32 1, %mul87, !dbg !2664
  %idxprom89 = zext i32 %add88 to i64, !dbg !2661
  %arrayidx90 = getelementptr %union.acpi_object, %union.acpi_object* %149, i64 %idxprom89, !dbg !2661
  %151 = bitcast %union.acpi_object* %arrayidx90 to i8*, !dbg !2665
  store i8* %151, i8** %free_space, align 8, !dbg !2666
  %152 = load i64*, i64** %valid, align 8, !dbg !2667
  %153 = load i32, i32* %numprops, align 4, !dbg !2667
  %conv91 = zext i32 %153 to i64, !dbg !2667
  %call92 = call i64 @find_first_bit(i64* %152, i64 %conv91) #9, !dbg !2667
  %conv93 = trunc i64 %call92 to i32, !dbg !2667
  store i32 %conv93, i32* %i, align 4, !dbg !2667
  br label %for.cond94, !dbg !2667

for.cond94:                                       ; preds = %for.inc185, %if.end80
  %154 = load i32, i32* %i, align 4, !dbg !2669
  %155 = load i32, i32* %numprops, align 4, !dbg !2669
  %cmp95 = icmp ult i32 %154, %155, !dbg !2669
  br i1 %cmp95, label %for.body97, label %for.end191, !dbg !2667

for.body97:                                       ; preds = %for.cond94
  call void @llvm.dbg.declare(metadata %union.acpi_object** %key98, metadata !2671, metadata !DIExpression()), !dbg !2673
  %156 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2674
  %package99 = bitcast %union.acpi_object* %156 to %struct.anon.41*, !dbg !2675
  %elements100 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package99, i32 0, i32 2, !dbg !2676
  %157 = load %union.acpi_object*, %union.acpi_object** %elements100, align 8, !dbg !2676
  %158 = load i32, i32* %i, align 4, !dbg !2677
  %mul101 = mul i32 %158, 2, !dbg !2678
  %idxprom102 = zext i32 %mul101 to i64, !dbg !2674
  %arrayidx103 = getelementptr %union.acpi_object, %union.acpi_object* %157, i64 %idxprom102, !dbg !2674
  store %union.acpi_object* %arrayidx103, %union.acpi_object** %key98, align 8, !dbg !2673
  call void @llvm.dbg.declare(metadata %union.acpi_object** %val104, metadata !2679, metadata !DIExpression()), !dbg !2680
  %159 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2681
  %package105 = bitcast %union.acpi_object* %159 to %struct.anon.41*, !dbg !2682
  %elements106 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package105, i32 0, i32 2, !dbg !2683
  %160 = load %union.acpi_object*, %union.acpi_object** %elements106, align 8, !dbg !2683
  %161 = load i32, i32* %i, align 4, !dbg !2684
  %mul107 = mul i32 %161, 2, !dbg !2685
  %add108 = add i32 %mul107, 1, !dbg !2686
  %idxprom109 = zext i32 %add108 to i64, !dbg !2681
  %arrayidx110 = getelementptr %union.acpi_object, %union.acpi_object* %160, i64 %idxprom109, !dbg !2681
  store %union.acpi_object* %arrayidx110, %union.acpi_object** %val104, align 8, !dbg !2680
  call void @llvm.dbg.declare(metadata i32* %k, metadata !2687, metadata !DIExpression()), !dbg !2688
  %162 = load i32, i32* %numvalid, align 4, !dbg !2689
  %add111 = add i32 1, %162, !dbg !2690
  %163 = load i32, i32* %j, align 4, !dbg !2691
  %mul112 = mul i32 %163, 2, !dbg !2692
  %add113 = add i32 %add111, %mul112, !dbg !2693
  store i32 %add113, i32* %k, align 4, !dbg !2688
  call void @llvm.dbg.declare(metadata i32* %v, metadata !2694, metadata !DIExpression()), !dbg !2695
  %164 = load i32, i32* %k, align 4, !dbg !2696
  %add114 = add i32 %164, 1, !dbg !2697
  store i32 %add114, i32* %v, align 4, !dbg !2695
  %165 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2698
  %166 = load i32, i32* %j, align 4, !dbg !2699
  %add115 = add i32 1, %166, !dbg !2700
  %idxprom116 = zext i32 %add115 to i64, !dbg !2698
  %arrayidx117 = getelementptr %union.acpi_object, %union.acpi_object* %165, i64 %idxprom116, !dbg !2698
  %type118 = bitcast %union.acpi_object* %arrayidx117 to i32*, !dbg !2701
  store i32 4, i32* %type118, align 8, !dbg !2702
  %167 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2703
  %168 = load i32, i32* %j, align 4, !dbg !2704
  %add119 = add i32 1, %168, !dbg !2705
  %idxprom120 = zext i32 %add119 to i64, !dbg !2703
  %arrayidx121 = getelementptr %union.acpi_object, %union.acpi_object* %167, i64 %idxprom120, !dbg !2703
  %package122 = bitcast %union.acpi_object* %arrayidx121 to %struct.anon.41*, !dbg !2706
  %count123 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package122, i32 0, i32 1, !dbg !2707
  store i32 2, i32* %count123, align 4, !dbg !2708
  %169 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2709
  %170 = load i32, i32* %k, align 4, !dbg !2710
  %idxprom124 = zext i32 %170 to i64, !dbg !2709
  %arrayidx125 = getelementptr %union.acpi_object, %union.acpi_object* %169, i64 %idxprom124, !dbg !2709
  %171 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2711
  %172 = load i32, i32* %j, align 4, !dbg !2712
  %add126 = add i32 1, %172, !dbg !2713
  %idxprom127 = zext i32 %add126 to i64, !dbg !2711
  %arrayidx128 = getelementptr %union.acpi_object, %union.acpi_object* %171, i64 %idxprom127, !dbg !2711
  %package129 = bitcast %union.acpi_object* %arrayidx128 to %struct.anon.41*, !dbg !2714
  %elements130 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package129, i32 0, i32 2, !dbg !2715
  store %union.acpi_object* %arrayidx125, %union.acpi_object** %elements130, align 8, !dbg !2716
  %173 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2717
  %174 = load i32, i32* %k, align 4, !dbg !2718
  %idxprom131 = zext i32 %174 to i64, !dbg !2717
  %arrayidx132 = getelementptr %union.acpi_object, %union.acpi_object* %173, i64 %idxprom131, !dbg !2717
  %type133 = bitcast %union.acpi_object* %arrayidx132 to i32*, !dbg !2719
  store i32 2, i32* %type133, align 8, !dbg !2720
  %175 = load %union.acpi_object*, %union.acpi_object** %key98, align 8, !dbg !2721
  %string134 = bitcast %union.acpi_object* %175 to %struct.anon.39*, !dbg !2722
  %length135 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string134, i32 0, i32 1, !dbg !2723
  %176 = load i32, i32* %length135, align 4, !dbg !2723
  %177 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2724
  %178 = load i32, i32* %k, align 4, !dbg !2725
  %idxprom136 = zext i32 %178 to i64, !dbg !2724
  %arrayidx137 = getelementptr %union.acpi_object, %union.acpi_object* %177, i64 %idxprom136, !dbg !2724
  %string138 = bitcast %union.acpi_object* %arrayidx137 to %struct.anon.39*, !dbg !2726
  %length139 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string138, i32 0, i32 1, !dbg !2727
  store i32 %176, i32* %length139, align 4, !dbg !2728
  %179 = load i8*, i8** %free_space, align 8, !dbg !2729
  %180 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2730
  %181 = load i32, i32* %k, align 4, !dbg !2731
  %idxprom140 = zext i32 %181 to i64, !dbg !2730
  %arrayidx141 = getelementptr %union.acpi_object, %union.acpi_object* %180, i64 %idxprom140, !dbg !2730
  %string142 = bitcast %union.acpi_object* %arrayidx141 to %struct.anon.39*, !dbg !2732
  %pointer143 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string142, i32 0, i32 2, !dbg !2733
  store i8* %179, i8** %pointer143, align 8, !dbg !2734
  %182 = load i8*, i8** %free_space, align 8, !dbg !2735
  %183 = load %union.acpi_object*, %union.acpi_object** %key98, align 8, !dbg !2736
  %string144 = bitcast %union.acpi_object* %183 to %struct.anon.39*, !dbg !2737
  %pointer145 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string144, i32 0, i32 2, !dbg !2738
  %184 = load i8*, i8** %pointer145, align 8, !dbg !2738
  %185 = load %union.acpi_object*, %union.acpi_object** %key98, align 8, !dbg !2739
  %string146 = bitcast %union.acpi_object* %185 to %struct.anon.39*, !dbg !2740
  %length147 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string146, i32 0, i32 1, !dbg !2741
  %186 = load i32, i32* %length147, align 4, !dbg !2741
  %conv148 = zext i32 %186 to i64, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %182, i8* align 1 %184, i64 %conv148, i1 false), !dbg !2742
  %187 = load %union.acpi_object*, %union.acpi_object** %key98, align 8, !dbg !2743
  %string149 = bitcast %union.acpi_object* %187 to %struct.anon.39*, !dbg !2744
  %length150 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string149, i32 0, i32 1, !dbg !2745
  %188 = load i32, i32* %length150, align 4, !dbg !2745
  %add151 = add i32 %188, 1, !dbg !2746
  %189 = load i8*, i8** %free_space, align 8, !dbg !2747
  %idx.ext = zext i32 %add151 to i64, !dbg !2747
  %add.ptr = getelementptr i8, i8* %189, i64 %idx.ext, !dbg !2747
  store i8* %add.ptr, i8** %free_space, align 8, !dbg !2747
  %190 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2748
  %type152 = bitcast %union.acpi_object* %190 to i32*, !dbg !2749
  %191 = load i32, i32* %type152, align 8, !dbg !2749
  %192 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2750
  %193 = load i32, i32* %v, align 4, !dbg !2751
  %idxprom153 = zext i32 %193 to i64, !dbg !2750
  %arrayidx154 = getelementptr %union.acpi_object, %union.acpi_object* %192, i64 %idxprom153, !dbg !2750
  %type155 = bitcast %union.acpi_object* %arrayidx154 to i32*, !dbg !2752
  store i32 %191, i32* %type155, align 8, !dbg !2753
  %194 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2754
  %type156 = bitcast %union.acpi_object* %194 to i32*, !dbg !2756
  %195 = load i32, i32* %type156, align 8, !dbg !2756
  %cmp157 = icmp eq i32 %195, 1, !dbg !2757
  br i1 %cmp157, label %if.then159, label %if.else, !dbg !2758

if.then159:                                       ; preds = %for.body97
  %196 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2759
  %integer = bitcast %union.acpi_object* %196 to %struct.anon.38*, !dbg !2761
  %value = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer, i32 0, i32 1, !dbg !2762
  %197 = load i64, i64* %value, align 8, !dbg !2762
  %198 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2763
  %199 = load i32, i32* %v, align 4, !dbg !2764
  %idxprom160 = zext i32 %199 to i64, !dbg !2763
  %arrayidx161 = getelementptr %union.acpi_object, %union.acpi_object* %198, i64 %idxprom160, !dbg !2763
  %integer162 = bitcast %union.acpi_object* %arrayidx161 to %struct.anon.38*, !dbg !2765
  %value163 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer162, i32 0, i32 1, !dbg !2766
  store i64 %197, i64* %value163, align 8, !dbg !2767
  br label %if.end183, !dbg !2768

if.else:                                          ; preds = %for.body97
  %200 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2769
  %buffer164 = bitcast %union.acpi_object* %200 to %struct.anon.40*, !dbg !2771
  %length165 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer164, i32 0, i32 1, !dbg !2772
  %201 = load i32, i32* %length165, align 4, !dbg !2772
  %202 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2773
  %203 = load i32, i32* %v, align 4, !dbg !2774
  %idxprom166 = zext i32 %203 to i64, !dbg !2773
  %arrayidx167 = getelementptr %union.acpi_object, %union.acpi_object* %202, i64 %idxprom166, !dbg !2773
  %buffer168 = bitcast %union.acpi_object* %arrayidx167 to %struct.anon.40*, !dbg !2775
  %length169 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer168, i32 0, i32 1, !dbg !2776
  store i32 %201, i32* %length169, align 4, !dbg !2777
  %204 = load i8*, i8** %free_space, align 8, !dbg !2778
  %205 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2779
  %206 = load i32, i32* %v, align 4, !dbg !2780
  %idxprom170 = zext i32 %206 to i64, !dbg !2779
  %arrayidx171 = getelementptr %union.acpi_object, %union.acpi_object* %205, i64 %idxprom170, !dbg !2779
  %buffer172 = bitcast %union.acpi_object* %arrayidx171 to %struct.anon.40*, !dbg !2781
  %pointer173 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer172, i32 0, i32 2, !dbg !2782
  store i8* %204, i8** %pointer173, align 8, !dbg !2783
  %207 = load i8*, i8** %free_space, align 8, !dbg !2784
  %208 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2785
  %buffer174 = bitcast %union.acpi_object* %208 to %struct.anon.40*, !dbg !2786
  %pointer175 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer174, i32 0, i32 2, !dbg !2787
  %209 = load i8*, i8** %pointer175, align 8, !dbg !2787
  %210 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2788
  %buffer176 = bitcast %union.acpi_object* %210 to %struct.anon.40*, !dbg !2789
  %length177 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer176, i32 0, i32 1, !dbg !2790
  %211 = load i32, i32* %length177, align 4, !dbg !2790
  %conv178 = zext i32 %211 to i64, !dbg !2788
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %207, i8* align 1 %209, i64 %conv178, i1 false), !dbg !2791
  %212 = load %union.acpi_object*, %union.acpi_object** %val104, align 8, !dbg !2792
  %buffer179 = bitcast %union.acpi_object* %212 to %struct.anon.40*, !dbg !2793
  %length180 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer179, i32 0, i32 1, !dbg !2794
  %213 = load i32, i32* %length180, align 4, !dbg !2794
  %214 = load i8*, i8** %free_space, align 8, !dbg !2795
  %idx.ext181 = zext i32 %213 to i64, !dbg !2795
  %add.ptr182 = getelementptr i8, i8* %214, i64 %idx.ext181, !dbg !2795
  store i8* %add.ptr182, i8** %free_space, align 8, !dbg !2795
  br label %if.end183

if.end183:                                        ; preds = %if.else, %if.then159
  %215 = load i32, i32* %j, align 4, !dbg !2796
  %inc184 = add i32 %215, 1, !dbg !2796
  store i32 %inc184, i32* %j, align 4, !dbg !2796
  br label %for.inc185, !dbg !2797

for.inc185:                                       ; preds = %if.end183
  %216 = load i64*, i64** %valid, align 8, !dbg !2669
  %217 = load i32, i32* %numprops, align 4, !dbg !2669
  %conv186 = zext i32 %217 to i64, !dbg !2669
  %218 = load i32, i32* %i, align 4, !dbg !2669
  %add187 = add i32 %218, 1, !dbg !2669
  %conv188 = zext i32 %add187 to i64, !dbg !2669
  %call189 = call i64 @find_next_bit(i64* %216, i64 %conv186, i64 %conv188) #9, !dbg !2669
  %conv190 = trunc i64 %call189 to i32, !dbg !2669
  store i32 %conv190, i32* %i, align 4, !dbg !2669
  br label %for.cond94, !dbg !2669, !llvm.loop !2798

for.end191:                                       ; preds = %for.cond94
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2800, metadata !DIExpression()), !dbg !2802
  %219 = load i8*, i8** %free_space, align 8, !dbg !2802
  %220 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2802
  %221 = bitcast %union.acpi_object* %220 to i8*, !dbg !2802
  %222 = load i32, i32* %newsize, align 4, !dbg !2802
  %idx.ext192 = zext i32 %222 to i64, !dbg !2802
  %add.ptr193 = getelementptr i8, i8* %221, i64 %idx.ext192, !dbg !2802
  %cmp194 = icmp ne i8* %219, %add.ptr193, !dbg !2802
  %lnot = xor i1 %cmp194, true, !dbg !2802
  %lnot196 = xor i1 %lnot, true, !dbg !2802
  %lnot.ext = zext i1 %lnot196 to i32, !dbg !2802
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2802
  %223 = load i32, i32* %__ret_warn_on, align 4, !dbg !2803
  %tobool197 = icmp ne i32 %223, 0, !dbg !2803
  %lnot198 = xor i1 %tobool197, true, !dbg !2803
  %lnot200 = xor i1 %lnot198, true, !dbg !2803
  %lnot.ext201 = zext i1 %lnot200 to i32, !dbg !2803
  %conv202 = sext i32 %lnot.ext201 to i64, !dbg !2803
  %tobool203 = icmp ne i64 %conv202, 0, !dbg !2803
  br i1 %tobool203, label %if.then204, label %if.end211, !dbg !2802

if.then204:                                       ; preds = %for.end191
  br label %do.body, !dbg !2803

do.body:                                          ; preds = %if.then204
  br label %do.body205, !dbg !2805

do.body205:                                       ; preds = %do.body
  br label %do.end, !dbg !2807

do.end:                                           ; preds = %do.body205
  br label %do.body206, !dbg !2805

do.body206:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 130, i32 2305, i64 12) #8, !dbg !2809, !srcloc !2811
  br label %do.end207, !dbg !2809

do.end207:                                        ; preds = %do.body206
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #8, !dbg !2812, !srcloc !2814
  br label %do.body208, !dbg !2805

do.body208:                                       ; preds = %do.end207
  br label %do.end209, !dbg !2815

do.end209:                                        ; preds = %do.body208
  br label %do.end210, !dbg !2805

do.end210:                                        ; preds = %do.end209
  br label %if.end211, !dbg !2805

if.end211:                                        ; preds = %do.end210, %for.end191
  %224 = load i32, i32* %__ret_warn_on, align 4, !dbg !2802
  %tobool212 = icmp ne i32 %224, 0, !dbg !2802
  %lnot213 = xor i1 %tobool212, true, !dbg !2802
  %lnot215 = xor i1 %lnot213, true, !dbg !2802
  %lnot.ext216 = zext i1 %lnot215 to i32, !dbg !2802
  %conv217 = sext i32 %lnot.ext216 to i64, !dbg !2802
  store i64 %conv217, i64* %tmp, align 8, !dbg !2803
  %225 = load i64, i64* %tmp, align 8, !dbg !2802
  %226 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2817
  %227 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2818
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %227, i32 0, i32 15, !dbg !2819
  %pointer218 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 0, !dbg !2820
  store %union.acpi_object* %226, %union.acpi_object** %pointer218, align 8, !dbg !2821
  %228 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2822
  %data219 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %228, i32 0, i32 15, !dbg !2823
  %229 = load %union.acpi_object*, %union.acpi_object** %newprops, align 8, !dbg !2824
  %call220 = call %struct.acpi_device_properties* @acpi_data_add_props(%struct.acpi_device_data* %data219, %struct.guid_t* @apple_prp_guid, %union.acpi_object* %229) #9, !dbg !2825
  br label %out_free, !dbg !2825

out_free:                                         ; preds = %if.end211, %if.then79, %if.then67, %if.then26, %if.then22, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !2826), !dbg !2827
  %230 = load %union.acpi_object*, %union.acpi_object** %props, align 8, !dbg !2828
  %231 = bitcast %union.acpi_object* %230 to i8*, !dbg !2828
  call void @acpi_os_free(i8* %231) #9, !dbg !2828
  %232 = load i64*, i64** %valid, align 8, !dbg !2829
  call void @bitmap_free(i64* %232) #9, !dbg !2830
  br label %return, !dbg !2831

return:                                           ; preds = %out_free, %if.then19, %if.then2, %if.then
  ret void, !dbg !2831
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %union.acpi_object* @acpi_evaluate_dsm_typed(i8* %handle, %struct.guid_t* %guid, i64 %rev, i64 %func, %union.acpi_object* %argv4, i32 %type) #0 !dbg !2832 {
entry:
  %handle.addr = alloca i8*, align 8
  %guid.addr = alloca %struct.guid_t*, align 8
  %rev.addr = alloca i64, align 8
  %func.addr = alloca i64, align 8
  %argv4.addr = alloca %union.acpi_object*, align 8
  %type.addr = alloca i32, align 4
  %obj = alloca %union.acpi_object*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2836, metadata !DIExpression()), !dbg !2837
  store %struct.guid_t* %guid, %struct.guid_t** %guid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %guid.addr, metadata !2838, metadata !DIExpression()), !dbg !2839
  store i64 %rev, i64* %rev.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rev.addr, metadata !2840, metadata !DIExpression()), !dbg !2841
  store i64 %func, i64* %func.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %func.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  store %union.acpi_object* %argv4, %union.acpi_object** %argv4.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %argv4.addr, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !2848, metadata !DIExpression()), !dbg !2849
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !2850
  %1 = load %struct.guid_t*, %struct.guid_t** %guid.addr, align 8, !dbg !2851
  %2 = load i64, i64* %rev.addr, align 8, !dbg !2852
  %3 = load i64, i64* %func.addr, align 8, !dbg !2853
  %4 = load %union.acpi_object*, %union.acpi_object** %argv4.addr, align 8, !dbg !2854
  %call = call %union.acpi_object* @acpi_evaluate_dsm(i8* %0, %struct.guid_t* %1, i64 %2, i64 %3, %union.acpi_object* %4) #9, !dbg !2855
  store %union.acpi_object* %call, %union.acpi_object** %obj, align 8, !dbg !2856
  %5 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2857
  %tobool = icmp ne %union.acpi_object* %5, null, !dbg !2857
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2859

land.lhs.true:                                    ; preds = %entry
  %6 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2860
  %type1 = bitcast %union.acpi_object* %6 to i32*, !dbg !2861
  %7 = load i32, i32* %type1, align 8, !dbg !2861
  %8 = load i32, i32* %type.addr, align 4, !dbg !2862
  %cmp = icmp ne i32 %7, %8, !dbg !2863
  br i1 %cmp, label %if.then, label %if.end, !dbg !2864

if.then:                                          ; preds = %land.lhs.true
  %9 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2865
  %10 = bitcast %union.acpi_object* %9 to i8*, !dbg !2865
  call void @acpi_os_free(i8* %10) #9, !dbg !2865
  store %union.acpi_object* null, %union.acpi_object** %obj, align 8, !dbg !2867
  br label %if.end, !dbg !2868

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2869
  ret %union.acpi_object* %11, !dbg !2870
}

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !2871 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !2873, metadata !DIExpression()), !dbg !2874
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !2875
  call void @kfree(i8* %0) #9, !dbg !2876
  ret void, !dbg !2877
}

; Function Attrs: noredzone
declare dso_local i64* @bitmap_zalloc(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !2878 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2884, metadata !DIExpression()), !dbg !2887
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2889, metadata !DIExpression()), !dbg !2890
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2891, metadata !DIExpression()), !dbg !2899
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2901, metadata !DIExpression()), !dbg !2902
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2907
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2908
  %div = sdiv i64 %1, 64, !dbg !2908
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2909
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2907
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2910
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2911
  %conv.i = trunc i64 %4 to i32, !dbg !2911
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !2912
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2913
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2913
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !2913
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2914
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !2915
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !2916
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !2917
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !2918, !srcloc !2919
  ret void, !dbg !2920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !2921 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2924, metadata !DIExpression()), !dbg !2929
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2933, metadata !DIExpression()), !dbg !2934
  %0 = load i64, i64* %size.addr, align 8, !dbg !2935
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2936, metadata !DIExpression()), !dbg !2937
  br label %do.body, !dbg !2937

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2942, metadata !DIExpression()), !dbg !2941
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2941
  %conv = zext i1 %cmp to i32, !dbg !2941
  store i32 1, i32* %tmp, align 4, !dbg !2941
  %1 = load i32, i32* %tmp, align 4, !dbg !2941
  %call = call i64 @arch_local_save_flags() #9, !dbg !2943
  store i64 %call, i64* %_flags, align 8, !dbg !2943
  br label %do.end, !dbg !2943

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2947, metadata !DIExpression()), !dbg !2946
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2946
  %conv6 = zext i1 %cmp5 to i32, !dbg !2946
  store i32 1, i32* %tmp7, align 4, !dbg !2946
  %2 = load i32, i32* %tmp7, align 4, !dbg !2946
  %3 = load i64, i64* %_flags, align 8, !dbg !2948
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2949
  %and.i = and i64 %4, 512, !dbg !2950
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2951
  %lnot.i = xor i1 %tobool.i, true, !dbg !2951
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2951
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2948
  %5 = load i32, i32* %tmp8, align 4, !dbg !2948
  store i32 %5, i32* %tmp1, align 4, !dbg !2943
  %6 = load i32, i32* %tmp1, align 4, !dbg !2937
  %tobool = icmp ne i32 %6, 0, !dbg !2952
  %7 = zext i1 %tobool to i64, !dbg !2952
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !2952
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !2953
  ret i8* %call10, !dbg !2954
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_device_properties* @acpi_data_add_props(%struct.acpi_device_data*, %struct.guid_t*, %union.acpi_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @bitmap_free(i64*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i8*, %struct.guid_t*, i64, i64, %union.acpi_object*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2955 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  ret i1 true, !dbg !2963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2964 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone
declare dso_local i32 @__bitmap_weight(i64*, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2975 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2978, metadata !DIExpression()), !dbg !2982
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2988, metadata !DIExpression()), !dbg !2989
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2990, metadata !DIExpression()), !dbg !2991
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2992, metadata !DIExpression()), !dbg !2993
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2994, metadata !DIExpression()), !dbg !2998
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3000, metadata !DIExpression()), !dbg !3004
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3006, metadata !DIExpression()), !dbg !3010
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3015, metadata !DIExpression()), !dbg !3016
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3017, metadata !DIExpression()), !dbg !3018
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3019, metadata !DIExpression()), !dbg !3020
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3021, metadata !DIExpression()), !dbg !3022
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3023, metadata !DIExpression()), !dbg !3024
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3025, metadata !DIExpression()), !dbg !3026
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3027, metadata !DIExpression()), !dbg !3028
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3029, metadata !DIExpression()), !dbg !3030
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3031, metadata !DIExpression()), !dbg !3032
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3033, metadata !DIExpression()), !dbg !3034
  %0 = load i64, i64* %size.addr, align 8, !dbg !3035
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3036
  %or = or i32 %1, 256, !dbg !3037
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3038
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !3039
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3040

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3041
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3042
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3043

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3044
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3045
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3046
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3047
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3024
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3048
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3049
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3050
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3051
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3052
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3053
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3054
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3054
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3054
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3054
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !3054
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3055
  br label %kmalloc.exit, !dbg !3055

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3056
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3057
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3057
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3059

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3060
  br label %kmalloc_index.exit.i, !dbg !3060

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3061
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3063
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3064

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3065
  br label %kmalloc_index.exit.i, !dbg !3065

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3066
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3068
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3069

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3070
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3071
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3072

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3073
  br label %kmalloc_index.exit.i, !dbg !3073

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3074
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3076
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3077

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3079
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3080

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3081
  br label %kmalloc_index.exit.i, !dbg !3081

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3082
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3084
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3085

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3086
  br label %kmalloc_index.exit.i, !dbg !3086

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3087
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3089
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3090

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3091
  br label %kmalloc_index.exit.i, !dbg !3091

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3092
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3094
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3095

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3096
  br label %kmalloc_index.exit.i, !dbg !3096

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3097
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3099
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3100

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3101
  br label %kmalloc_index.exit.i, !dbg !3101

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3102
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3104
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3105

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3106
  br label %kmalloc_index.exit.i, !dbg !3106

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3107
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3109
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3110

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3111
  br label %kmalloc_index.exit.i, !dbg !3111

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3112
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3114
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3115

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3116
  br label %kmalloc_index.exit.i, !dbg !3116

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3117
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3119
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3120

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3121
  br label %kmalloc_index.exit.i, !dbg !3121

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3122
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3124
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3125

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3126
  br label %kmalloc_index.exit.i, !dbg !3126

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3127
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3129
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3130

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3131
  br label %kmalloc_index.exit.i, !dbg !3131

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3132
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3134
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3135

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3136
  br label %kmalloc_index.exit.i, !dbg !3136

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3137
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3139
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3140

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3141
  br label %kmalloc_index.exit.i, !dbg !3141

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3142
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3144
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3145

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3146
  br label %kmalloc_index.exit.i, !dbg !3146

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3147
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3149
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3150

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3151
  br label %kmalloc_index.exit.i, !dbg !3151

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3152
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3154
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3155

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3156
  br label %kmalloc_index.exit.i, !dbg !3156

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3157
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3159
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3160

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3161
  br label %kmalloc_index.exit.i, !dbg !3161

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3162
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3164
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3165

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3166
  br label %kmalloc_index.exit.i, !dbg !3166

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3167
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3169
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3170

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3171
  br label %kmalloc_index.exit.i, !dbg !3171

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3172
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3174
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3175

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3176
  br label %kmalloc_index.exit.i, !dbg !3176

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3177
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3179
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3180

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3181
  br label %kmalloc_index.exit.i, !dbg !3181

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3182
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3184
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3185

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3186
  br label %kmalloc_index.exit.i, !dbg !3186

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3187
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3189
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3190

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3191
  br label %kmalloc_index.exit.i, !dbg !3191

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3192
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3194
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3195

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3196
  br label %kmalloc_index.exit.i, !dbg !3196

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3197
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3199
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3200

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3201
  br label %kmalloc_index.exit.i, !dbg !3201

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !3202, !srcloc !3205
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #8, !dbg !3206, !srcloc !3209
  unreachable, !dbg !3210

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3211
  store i32 %45, i32* %index.i, align 4, !dbg !3212
  %46 = load i32, i32* %index.i, align 4, !dbg !3213
  %tobool.i = icmp ne i32 %46, 0, !dbg !3213
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3215

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3216
  br label %kmalloc.exit, !dbg !3216

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3217
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3218
  %and.i.i = and i32 %48, 17, !dbg !3218
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3218
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3218
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3218
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3218
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3220

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3221
  br label %kmalloc_type.exit.i, !dbg !3221

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3222
  %and2.i.i = and i32 %49, 1, !dbg !3223
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3222
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3222
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3222
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3224
  br label %kmalloc_type.exit.i, !dbg !3224

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3225
  %idxprom.i = zext i32 %51 to i64, !dbg !3226
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3226
  %52 = load i32, i32* %index.i, align 4, !dbg !3227
  %idxprom6.i = zext i32 %52 to i64, !dbg !3226
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3226
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3226
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3228
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3229
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3230
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3231
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3232
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3232
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3232
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3232
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !3232
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2993
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3233
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3234
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3235
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3236
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3237
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3238
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3239
  store i8* %62, i8** %retval.i, align 8, !dbg !3240
  br label %kmalloc.exit, !dbg !3240

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3241
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3242
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3243
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3243
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3243
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3243
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !3243
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3244
  br label %kmalloc.exit, !dbg !3244

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3245
  ret i8* %65, !dbg !3246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3247 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3254, metadata !DIExpression()), !dbg !3253
  %0 = load i64, i64* %__edi, align 8, !dbg !3253
  store i64 %0, i64* %__edi, align 8, !dbg !3253
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3255, metadata !DIExpression()), !dbg !3253
  %1 = load i64, i64* %__esi, align 8, !dbg !3253
  store i64 %1, i64* %__esi, align 8, !dbg !3253
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3256, metadata !DIExpression()), !dbg !3253
  %2 = load i64, i64* %__edx, align 8, !dbg !3253
  store i64 %2, i64* %__edx, align 8, !dbg !3253
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3257, metadata !DIExpression()), !dbg !3253
  %3 = load i64, i64* %__ecx, align 8, !dbg !3253
  store i64 %3, i64* %__ecx, align 8, !dbg !3253
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3258, metadata !DIExpression()), !dbg !3253
  %4 = load i64, i64* %__eax, align 8, !dbg !3253
  store i64 %4, i64* %__eax, align 8, !dbg !3253
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3253
  %6 = call i64 @llvm.read_register.i64(metadata !103), !dbg !3259
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !3259, !srcloc !3262
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3259
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3259
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3259
  call void @llvm.write_register.i64(metadata !103, i64 %asmresult1), !dbg !3259
  %8 = load i64, i64* %__eax, align 8, !dbg !3259
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3263, metadata !DIExpression()), !dbg !3265
  store i64 -1, i64* %__mask, align 8, !dbg !3265
  %9 = load i64, i64* %__mask, align 8, !dbg !3265
  store i64 %9, i64* %tmp, align 8, !dbg !3265
  %10 = load i64, i64* %tmp, align 8, !dbg !3265
  %and = and i64 %8, %10, !dbg !3259
  store i64 %and, i64* %__ret, align 8, !dbg !3259
  %11 = load i64, i64* %__ret, align 8, !dbg !3253
  store i64 %11, i64* %tmp2, align 8, !dbg !3266
  %12 = load i64, i64* %tmp2, align 8, !dbg !3253
  ret i64 %12, !dbg !3267
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3268 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3270, metadata !DIExpression()), !dbg !3274
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3276, metadata !DIExpression()), !dbg !3277
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  %0 = load i64, i64* %size.addr, align 8, !dbg !3280
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3282
  br i1 %1, label %if.then, label %if.end447, !dbg !3283

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3284
  %tobool = icmp ne i64 %2, 0, !dbg !3284
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3287

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3288
  br label %return, !dbg !3288

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3289
  %cmp = icmp ult i64 %3, 4096, !dbg !3291
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3292

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3293
  br label %return, !dbg !3293

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub = sub i64 %4, 1, !dbg !3294
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3294
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3294

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub4 = sub i64 %6, 1, !dbg !3294
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3294
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3294

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub6 = sub i64 %8, 1, !dbg !3294
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3294
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3294

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3294

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub9 = sub i64 %9, 1, !dbg !3294
  %and = and i64 %sub9, -9223372036854775808, !dbg !3294
  %tobool10 = icmp ne i64 %and, 0, !dbg !3294
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3294

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3294

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub13 = sub i64 %10, 1, !dbg !3294
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3294
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3294
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3294

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3294

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub18 = sub i64 %11, 1, !dbg !3294
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3294
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3294
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3294

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3294

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub23 = sub i64 %12, 1, !dbg !3294
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3294
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3294
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3294

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3294

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub28 = sub i64 %13, 1, !dbg !3294
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3294
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3294
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3294

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3294

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub33 = sub i64 %14, 1, !dbg !3294
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3294
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3294
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3294

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3294

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub38 = sub i64 %15, 1, !dbg !3294
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3294
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3294
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3294

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3294

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub43 = sub i64 %16, 1, !dbg !3294
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3294
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3294
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3294

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3294

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub48 = sub i64 %17, 1, !dbg !3294
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3294
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3294
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3294

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3294

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub53 = sub i64 %18, 1, !dbg !3294
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3294
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3294
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3294

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3294

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub58 = sub i64 %19, 1, !dbg !3294
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3294
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3294
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3294

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3294

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub63 = sub i64 %20, 1, !dbg !3294
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3294
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3294
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3294

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3294

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub68 = sub i64 %21, 1, !dbg !3294
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3294
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3294
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3294

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3294

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub73 = sub i64 %22, 1, !dbg !3294
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3294
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3294
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3294

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3294

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub78 = sub i64 %23, 1, !dbg !3294
  %and79 = and i64 %sub78, 562949953421312, !dbg !3294
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3294
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3294

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3294

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub83 = sub i64 %24, 1, !dbg !3294
  %and84 = and i64 %sub83, 281474976710656, !dbg !3294
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3294
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3294

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3294

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub88 = sub i64 %25, 1, !dbg !3294
  %and89 = and i64 %sub88, 140737488355328, !dbg !3294
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3294
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3294

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3294

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub93 = sub i64 %26, 1, !dbg !3294
  %and94 = and i64 %sub93, 70368744177664, !dbg !3294
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3294
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3294

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3294

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub98 = sub i64 %27, 1, !dbg !3294
  %and99 = and i64 %sub98, 35184372088832, !dbg !3294
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3294
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3294

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3294

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub103 = sub i64 %28, 1, !dbg !3294
  %and104 = and i64 %sub103, 17592186044416, !dbg !3294
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3294
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3294

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3294

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub108 = sub i64 %29, 1, !dbg !3294
  %and109 = and i64 %sub108, 8796093022208, !dbg !3294
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3294
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3294

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3294

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub113 = sub i64 %30, 1, !dbg !3294
  %and114 = and i64 %sub113, 4398046511104, !dbg !3294
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3294
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3294

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3294

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub118 = sub i64 %31, 1, !dbg !3294
  %and119 = and i64 %sub118, 2199023255552, !dbg !3294
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3294
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3294

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3294

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub123 = sub i64 %32, 1, !dbg !3294
  %and124 = and i64 %sub123, 1099511627776, !dbg !3294
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3294
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3294

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3294

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub128 = sub i64 %33, 1, !dbg !3294
  %and129 = and i64 %sub128, 549755813888, !dbg !3294
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3294
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3294

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3294

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub133 = sub i64 %34, 1, !dbg !3294
  %and134 = and i64 %sub133, 274877906944, !dbg !3294
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3294
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3294

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3294

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub138 = sub i64 %35, 1, !dbg !3294
  %and139 = and i64 %sub138, 137438953472, !dbg !3294
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3294
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3294

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3294

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub143 = sub i64 %36, 1, !dbg !3294
  %and144 = and i64 %sub143, 68719476736, !dbg !3294
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3294
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3294

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3294

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub148 = sub i64 %37, 1, !dbg !3294
  %and149 = and i64 %sub148, 34359738368, !dbg !3294
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3294
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3294

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3294

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub153 = sub i64 %38, 1, !dbg !3294
  %and154 = and i64 %sub153, 17179869184, !dbg !3294
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3294
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3294

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3294

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub158 = sub i64 %39, 1, !dbg !3294
  %and159 = and i64 %sub158, 8589934592, !dbg !3294
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3294
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3294

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3294

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub163 = sub i64 %40, 1, !dbg !3294
  %and164 = and i64 %sub163, 4294967296, !dbg !3294
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3294
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3294

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3294

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub168 = sub i64 %41, 1, !dbg !3294
  %and169 = and i64 %sub168, 2147483648, !dbg !3294
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3294
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3294

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3294

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub173 = sub i64 %42, 1, !dbg !3294
  %and174 = and i64 %sub173, 1073741824, !dbg !3294
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3294
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3294

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3294

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub178 = sub i64 %43, 1, !dbg !3294
  %and179 = and i64 %sub178, 536870912, !dbg !3294
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3294
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3294

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3294

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub183 = sub i64 %44, 1, !dbg !3294
  %and184 = and i64 %sub183, 268435456, !dbg !3294
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3294
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3294

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3294

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub188 = sub i64 %45, 1, !dbg !3294
  %and189 = and i64 %sub188, 134217728, !dbg !3294
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3294
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3294

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3294

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub193 = sub i64 %46, 1, !dbg !3294
  %and194 = and i64 %sub193, 67108864, !dbg !3294
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3294
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3294

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3294

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub198 = sub i64 %47, 1, !dbg !3294
  %and199 = and i64 %sub198, 33554432, !dbg !3294
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3294
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3294

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3294

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub203 = sub i64 %48, 1, !dbg !3294
  %and204 = and i64 %sub203, 16777216, !dbg !3294
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3294
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3294

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3294

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub208 = sub i64 %49, 1, !dbg !3294
  %and209 = and i64 %sub208, 8388608, !dbg !3294
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3294
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3294

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3294

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub213 = sub i64 %50, 1, !dbg !3294
  %and214 = and i64 %sub213, 4194304, !dbg !3294
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3294
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3294

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3294

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub218 = sub i64 %51, 1, !dbg !3294
  %and219 = and i64 %sub218, 2097152, !dbg !3294
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3294
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3294

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3294

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub223 = sub i64 %52, 1, !dbg !3294
  %and224 = and i64 %sub223, 1048576, !dbg !3294
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3294
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3294

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3294

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub228 = sub i64 %53, 1, !dbg !3294
  %and229 = and i64 %sub228, 524288, !dbg !3294
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3294
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3294

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3294

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub233 = sub i64 %54, 1, !dbg !3294
  %and234 = and i64 %sub233, 262144, !dbg !3294
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3294
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3294

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3294

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub238 = sub i64 %55, 1, !dbg !3294
  %and239 = and i64 %sub238, 131072, !dbg !3294
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3294
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3294

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3294

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub243 = sub i64 %56, 1, !dbg !3294
  %and244 = and i64 %sub243, 65536, !dbg !3294
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3294
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3294

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3294

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub248 = sub i64 %57, 1, !dbg !3294
  %and249 = and i64 %sub248, 32768, !dbg !3294
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3294
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3294

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3294

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub253 = sub i64 %58, 1, !dbg !3294
  %and254 = and i64 %sub253, 16384, !dbg !3294
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3294
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3294

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3294

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub258 = sub i64 %59, 1, !dbg !3294
  %and259 = and i64 %sub258, 8192, !dbg !3294
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3294
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3294

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3294

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub263 = sub i64 %60, 1, !dbg !3294
  %and264 = and i64 %sub263, 4096, !dbg !3294
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3294
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3294

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3294

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub268 = sub i64 %61, 1, !dbg !3294
  %and269 = and i64 %sub268, 2048, !dbg !3294
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3294
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3294

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3294

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub273 = sub i64 %62, 1, !dbg !3294
  %and274 = and i64 %sub273, 1024, !dbg !3294
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3294
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3294

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3294

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub278 = sub i64 %63, 1, !dbg !3294
  %and279 = and i64 %sub278, 512, !dbg !3294
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3294
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3294

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3294

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub283 = sub i64 %64, 1, !dbg !3294
  %and284 = and i64 %sub283, 256, !dbg !3294
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3294
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3294

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3294

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub288 = sub i64 %65, 1, !dbg !3294
  %and289 = and i64 %sub288, 128, !dbg !3294
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3294
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3294

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3294

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub293 = sub i64 %66, 1, !dbg !3294
  %and294 = and i64 %sub293, 64, !dbg !3294
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3294
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3294

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3294

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub298 = sub i64 %67, 1, !dbg !3294
  %and299 = and i64 %sub298, 32, !dbg !3294
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3294
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3294

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3294

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub303 = sub i64 %68, 1, !dbg !3294
  %and304 = and i64 %sub303, 16, !dbg !3294
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3294
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3294

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3294

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub308 = sub i64 %69, 1, !dbg !3294
  %and309 = and i64 %sub308, 8, !dbg !3294
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3294
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3294

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3294

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub313 = sub i64 %70, 1, !dbg !3294
  %and314 = and i64 %sub313, 4, !dbg !3294
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3294
  %71 = zext i1 %tobool315 to i64, !dbg !3294
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3294
  br label %cond.end, !dbg !3294

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3294
  br label %cond.end317, !dbg !3294

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3294
  br label %cond.end319, !dbg !3294

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3294
  br label %cond.end321, !dbg !3294

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3294
  br label %cond.end323, !dbg !3294

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3294
  br label %cond.end325, !dbg !3294

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3294
  br label %cond.end327, !dbg !3294

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3294
  br label %cond.end329, !dbg !3294

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3294
  br label %cond.end331, !dbg !3294

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3294
  br label %cond.end333, !dbg !3294

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3294
  br label %cond.end335, !dbg !3294

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3294
  br label %cond.end337, !dbg !3294

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3294
  br label %cond.end339, !dbg !3294

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3294
  br label %cond.end341, !dbg !3294

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3294
  br label %cond.end343, !dbg !3294

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3294
  br label %cond.end345, !dbg !3294

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3294
  br label %cond.end347, !dbg !3294

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3294
  br label %cond.end349, !dbg !3294

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3294
  br label %cond.end351, !dbg !3294

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3294
  br label %cond.end353, !dbg !3294

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3294
  br label %cond.end355, !dbg !3294

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3294
  br label %cond.end357, !dbg !3294

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3294
  br label %cond.end359, !dbg !3294

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3294
  br label %cond.end361, !dbg !3294

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3294
  br label %cond.end363, !dbg !3294

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3294
  br label %cond.end365, !dbg !3294

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3294
  br label %cond.end367, !dbg !3294

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3294
  br label %cond.end369, !dbg !3294

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3294
  br label %cond.end371, !dbg !3294

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3294
  br label %cond.end373, !dbg !3294

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3294
  br label %cond.end375, !dbg !3294

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3294
  br label %cond.end377, !dbg !3294

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3294
  br label %cond.end379, !dbg !3294

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3294
  br label %cond.end381, !dbg !3294

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3294
  br label %cond.end383, !dbg !3294

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3294
  br label %cond.end385, !dbg !3294

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3294
  br label %cond.end387, !dbg !3294

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3294
  br label %cond.end389, !dbg !3294

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3294
  br label %cond.end391, !dbg !3294

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3294
  br label %cond.end393, !dbg !3294

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3294
  br label %cond.end395, !dbg !3294

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3294
  br label %cond.end397, !dbg !3294

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3294
  br label %cond.end399, !dbg !3294

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3294
  br label %cond.end401, !dbg !3294

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3294
  br label %cond.end403, !dbg !3294

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3294
  br label %cond.end405, !dbg !3294

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3294
  br label %cond.end407, !dbg !3294

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3294
  br label %cond.end409, !dbg !3294

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3294
  br label %cond.end411, !dbg !3294

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3294
  br label %cond.end413, !dbg !3294

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3294
  br label %cond.end415, !dbg !3294

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3294
  br label %cond.end417, !dbg !3294

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3294
  br label %cond.end419, !dbg !3294

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3294
  br label %cond.end421, !dbg !3294

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3294
  br label %cond.end423, !dbg !3294

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3294
  br label %cond.end425, !dbg !3294

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3294
  br label %cond.end427, !dbg !3294

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3294
  br label %cond.end429, !dbg !3294

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3294
  br label %cond.end431, !dbg !3294

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3294
  br label %cond.end433, !dbg !3294

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3294
  br label %cond.end435, !dbg !3294

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3294
  br label %cond.end437, !dbg !3294

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3294
  br label %cond.end440, !dbg !3294

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3294

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3294
  br label %cond.end444, !dbg !3294

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3294
  %sub443 = sub i64 %72, 1, !dbg !3294
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3294
  br label %cond.end444, !dbg !3294

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3294
  %sub446 = sub i32 %cond445, 12, !dbg !3295
  %add = add i32 %sub446, 1, !dbg !3296
  store i32 %add, i32* %retval, align 4, !dbg !3297
  br label %return, !dbg !3297

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3298
  %dec = add i64 %73, -1, !dbg !3298
  store i64 %dec, i64* %size.addr, align 8, !dbg !3298
  %74 = load i64, i64* %size.addr, align 8, !dbg !3299
  %shr = lshr i64 %74, 12, !dbg !3299
  store i64 %shr, i64* %size.addr, align 8, !dbg !3299
  %75 = load i64, i64* %size.addr, align 8, !dbg !3300
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3277
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3301
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3302
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !3301, !srcloc !3303
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3301
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3304
  %add.i = add i32 %79, 1, !dbg !3305
  store i32 %add.i, i32* %retval, align 4, !dbg !3306
  br label %return, !dbg !3306

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3307
  ret i32 %80, !dbg !3307
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3308 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3270, metadata !DIExpression()), !dbg !3312
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3276, metadata !DIExpression()), !dbg !3314
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3315, metadata !DIExpression()), !dbg !3316
  %0 = load i64, i64* %n.addr, align 8, !dbg !3317
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3314
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3318
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3319
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !3318, !srcloc !3303
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3318
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3320
  %add.i = add i32 %4, 1, !dbg !3321
  %sub = sub i32 %add.i, 1, !dbg !3322
  ret i32 %sub, !dbg !3323
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3324 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3330, metadata !DIExpression()), !dbg !3331
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3332, metadata !DIExpression()), !dbg !3333
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3334, metadata !DIExpression()), !dbg !3335
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3336
  ret i8* %0, !dbg !3337
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apple_prp_guid", scope: !2, file: !3, line: 13, type: !92, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/x86/apple.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69}
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
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !70, line: 305, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!76 = !{!77, !79, !86, !87, !83, !7, !90}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !78, line: 148, baseType: !7)
!78 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !80, line: 127, baseType: !81)
!80 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !82, line: 23, baseType: !83)
!82 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !84, line: 31, baseType: !85)
!84 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!85 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !{!0}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 23, size: 128, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !95, file: !94, line: 24, baseType: !98, size: 128)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !101)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !84, line: 21, baseType: !100)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!102}
!102 = !DISubrange(count: 16)
!103 = !{!"rsp"}
!104 = !{i32 7, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"Code Model", i32 2}
!108 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!109 = distinct !DISubprogram(name: "acpi_extract_apple_properties", scope: !3, file: !3, line: 27, type: !110, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !193)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !114, line: 351, size: 10880, elements: !115)
!114 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !118, !120, !2172, !2173, !2174, !2175, !2176, !2177, !2186, !2203, !2277, !2306, !2330, !2351, !2357, !2366, !2396, !2410, !2432, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !113, file: !114, line: 352, baseType: !117, size: 32)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !113, file: !114, line: 353, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !80, line: 424, baseType: !86)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !113, file: !114, line: 354, baseType: !121, size: 192, offset: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !122, line: 17, size: 192, elements: !123)
!122 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !126, !2171}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !121, file: !122, line: 18, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !121, file: !122, line: 19, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !122, line: 110, size: 1152, elements: !130)
!130 = !{!131, !135, !139, !147, !2113, !2117, !2121, !2126, !2130, !2131, !2135, !2139, !2143, !2154, !2155, !2156, !2157, !2167}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !129, file: !122, line: 111, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!125, !125}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !129, file: !122, line: 112, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !125}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !129, file: !122, line: 113, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !78, line: 30, baseType: !144)
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !129, file: !122, line: 114, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !145, !153}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !156)
!156 = !{!157, !1646, !1648, !1651, !1652, !1703, !1800, !1801, !1802, !1803, !1804, !1813, !1918, !1931, !2038, !2039, !2043, !2045, !2046, !2047, !2051, !2057, !2058, !2061, !2062, !2063, !2066, !2067, !2068, !2069, !2101, !2102, !2103, !2106, !2109, !2110, !2111, !2112}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !155, file: !30, line: 462, baseType: !158, size: 512)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !159, line: 64, size: 512, elements: !160)
!159 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !165, !171, !173, !233, !1483, !1636, !1641, !1642, !1643, !1644, !1645}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !159, line: 65, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !158, file: !159, line: 66, baseType: !166, size: 128, offset: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !78, line: 178, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !78, line: 179, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !78, line: 179, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !159, line: 67, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !158, file: !159, line: 68, baseType: !174, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !159, line: 192, size: 704, elements: !176)
!176 = !{!177, !178, !194, !195}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !159, line: 193, baseType: !166, size: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !175, file: !159, line: 194, baseType: !179, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !180, line: 83, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !180, line: 71, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !180, line: 72, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !180, line: 72, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !184, file: !180, line: 73, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 20, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !187, file: !180, line: 21, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !191, line: 25, baseType: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 25, elements: !193)
!193 = !{}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !159, line: 195, baseType: !158, size: 512, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !175, file: !159, line: 196, baseType: !196, size: 64, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !159, line: 156, size: 192, elements: !199)
!199 = !{!200, !205, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !198, file: !159, line: 157, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!117, !174, !172}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !159, line: 158, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!162, !174, !172}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !198, file: !159, line: 159, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!117, !174, !172, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !159, line: 148, size: 20736, elements: !217)
!217 = !{!218, !223, !227, !228, !232}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !216, file: !159, line: 149, baseType: !219, size: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !221)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!221 = !{!222}
!222 = !DISubrange(count: 3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !216, file: !159, line: 150, baseType: !224, size: 4096, offset: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 4096, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !216, file: !159, line: 151, baseType: !117, size: 32, offset: 4288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !216, file: !159, line: 152, baseType: !229, size: 16384, offset: 4320)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16384, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !216, file: !159, line: 153, baseType: !117, size: 32, offset: 20704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !158, file: !159, line: 69, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !159, line: 138, size: 448, elements: !236)
!236 = !{!237, !241, !269, !271, !1430, !1461, !1465}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !235, file: !159, line: 139, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !172}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !235, file: !159, line: 140, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !245, line: 230, size: 128, elements: !246)
!245 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !262}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !244, file: !245, line: 231, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !172, !255, !220}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !78, line: 60, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !253, line: 73, baseType: !254)
!253 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !253, line: 15, baseType: !89)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !245, line: 30, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !245, line: 31, baseType: !162, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !256, file: !245, line: 32, baseType: !260, size: 16, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !78, line: 19, baseType: !261)
!261 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !244, file: !245, line: 232, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!251, !172, !255, !162, !266}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 55, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !253, line: 72, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !253, line: 16, baseType: !90)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !235, file: !159, line: 141, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !235, file: !159, line: 142, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !245, line: 84, size: 320, elements: !276)
!276 = !{!277, !278, !282, !1427, !1428}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !245, line: 85, baseType: !162, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !275, file: !245, line: 86, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!260, !172, !255, !117}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !275, file: !245, line: 88, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!260, !172, !286, !117}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !245, line: 168, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !302, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !287, file: !245, line: 169, baseType: !256, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !245, line: 170, baseType: !266, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !287, file: !245, line: 171, baseType: !86, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !287, file: !245, line: 172, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!251, !296, !172, !286, !220, !299, !266}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !298, line: 526, flags: DIFlagFwdDecl)
!298 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !78, line: 46, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !253, line: 88, baseType: !301)
!301 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !287, file: !245, line: 174, baseType: !293, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !287, file: !245, line: 176, baseType: !304, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!117, !296, !172, !286, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !309, line: 305, size: 1472, elements: !310)
!309 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !312, !313, !314, !315, !323, !324, !1401, !1407, !1408, !1413, !1414, !1417, !1421, !1422, !1423, !1424, !1425}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !308, file: !309, line: 308, baseType: !90, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !308, file: !309, line: 309, baseType: !90, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !308, file: !309, line: 313, baseType: !307, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !308, file: !309, line: 313, baseType: !307, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !308, file: !309, line: 315, baseType: !316, size: 192, align: 64, offset: 256)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !317, line: 24, size: 192, align: 64, elements: !318)
!317 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !320, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !316, file: !317, line: 25, baseType: !90, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !316, file: !317, line: 26, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !316, file: !317, line: 27, baseType: !321, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !308, file: !309, line: 323, baseType: !90, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !308, file: !309, line: 327, baseType: !325, size: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !309, line: 388, size: 7296, elements: !327)
!327 = !{!328, !1397}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !309, line: 389, baseType: !329, size: 7296)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !309, line: 389, size: 7296, elements: !330)
!330 = !{!331, !332, !336, !337, !341, !342, !343, !344, !345, !353, !358, !359, !360, !361, !370, !371, !372, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !407, !415, !418, !466, !467, !1368, !1369, !1372, !1375, !1376, !1379, !1380, !1381, !1384, !1396}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !329, file: !309, line: 390, baseType: !307, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !329, file: !309, line: 391, baseType: !333, size: 64, offset: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !317, line: 31, size: 64, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !333, file: !317, line: 32, baseType: !321, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !329, file: !309, line: 392, baseType: !81, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !329, file: !309, line: 394, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!90, !296, !90, !90, !90, !90}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !329, file: !309, line: 398, baseType: !90, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !329, file: !309, line: 399, baseType: !90, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !329, file: !309, line: 405, baseType: !90, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !329, file: !309, line: 406, baseType: !90, size: 64, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !329, file: !309, line: 407, baseType: !346, size: 64, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !298, line: 286, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 286, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !348, file: !298, line: 286, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !352, line: 18, baseType: !90)
!352 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !329, file: !309, line: 416, baseType: !354, size: 32, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !78, line: 168, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 166, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !355, file: !78, line: 167, baseType: !117, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !329, file: !309, line: 428, baseType: !354, size: 32, offset: 608)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !329, file: !309, line: 437, baseType: !354, size: 32, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !329, file: !309, line: 447, baseType: !354, size: 32, offset: 672)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !329, file: !309, line: 450, baseType: !362, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !363, line: 13, baseType: !364)
!363 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !78, line: 175, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 173, size: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !365, file: !78, line: 174, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !82, line: 22, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !84, line: 30, baseType: !301)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !329, file: !309, line: 452, baseType: !117, size: 32, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !329, file: !309, line: 454, baseType: !179, offset: 800)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !329, file: !309, line: 457, baseType: !373, size: 256, offset: 832)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !374, line: 35, size: 256, elements: !375)
!374 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !377, !378, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !373, file: !374, line: 36, baseType: !362, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !373, file: !374, line: 42, baseType: !362, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !373, file: !374, line: 46, baseType: !379, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 29, baseType: !187)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !373, file: !374, line: 47, baseType: !166, size: 128, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !329, file: !309, line: 459, baseType: !166, size: 128, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !329, file: !309, line: 466, baseType: !90, size: 64, offset: 1216)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !329, file: !309, line: 467, baseType: !90, size: 64, offset: 1280)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !329, file: !309, line: 469, baseType: !90, size: 64, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !329, file: !309, line: 470, baseType: !90, size: 64, offset: 1408)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !329, file: !309, line: 471, baseType: !364, size: 64, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !329, file: !309, line: 472, baseType: !90, size: 64, offset: 1536)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !329, file: !309, line: 473, baseType: !90, size: 64, offset: 1600)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !329, file: !309, line: 474, baseType: !90, size: 64, offset: 1664)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !329, file: !309, line: 475, baseType: !90, size: 64, offset: 1728)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !329, file: !309, line: 477, baseType: !179, offset: 1792)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !329, file: !309, line: 478, baseType: !90, size: 64, offset: 1792)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !329, file: !309, line: 478, baseType: !90, size: 64, offset: 1856)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !329, file: !309, line: 478, baseType: !90, size: 64, offset: 1920)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !329, file: !309, line: 478, baseType: !90, size: 64, offset: 1984)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !329, file: !309, line: 479, baseType: !90, size: 64, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !329, file: !309, line: 479, baseType: !90, size: 64, offset: 2112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !329, file: !309, line: 479, baseType: !90, size: 64, offset: 2176)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !329, file: !309, line: 480, baseType: !90, size: 64, offset: 2240)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !329, file: !309, line: 480, baseType: !90, size: 64, offset: 2304)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !329, file: !309, line: 480, baseType: !90, size: 64, offset: 2368)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !329, file: !309, line: 480, baseType: !90, size: 64, offset: 2432)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !329, file: !309, line: 482, baseType: !404, size: 2816, offset: 2496)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2816, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 44)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !329, file: !309, line: 488, baseType: !408, size: 256, offset: 5312)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !409, line: 60, size: 256, elements: !410)
!409 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !408, file: !409, line: 61, baseType: !412, size: 256)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 256, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 4)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !329, file: !309, line: 490, baseType: !416, size: 64, offset: 5568)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !309, line: 490, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !329, file: !309, line: 493, baseType: !419, size: 896, offset: 5632)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !420, line: 53, baseType: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 896, elements: !422)
!422 = !{!423, !424, !425, !426, !429, !430, !437, !438, !458, !459, !462}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !421, file: !420, line: 18, baseType: !81, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !421, file: !420, line: 28, baseType: !364, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !421, file: !420, line: 31, baseType: !373, size: 256, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !421, file: !420, line: 32, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !420, line: 32, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !421, file: !420, line: 37, baseType: !261, size: 16, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !421, file: !420, line: 40, baseType: !431, size: 192, offset: 512)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !432, line: 53, size: 192, elements: !433)
!432 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !431, file: !432, line: 54, baseType: !362, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !431, file: !432, line: 55, baseType: !179, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !431, file: !432, line: 59, baseType: !166, size: 128, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !421, file: !420, line: 41, baseType: !86, size: 64, offset: 704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !421, file: !420, line: 42, baseType: !439, size: 64, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !442, line: 13, size: 896, elements: !443)
!442 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !442, line: 14, baseType: !86, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !441, file: !442, line: 15, baseType: !90, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !441, file: !442, line: 17, baseType: !90, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !441, file: !442, line: 17, baseType: !90, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !441, file: !442, line: 19, baseType: !89, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !441, file: !442, line: 21, baseType: !89, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !441, file: !442, line: 22, baseType: !89, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !441, file: !442, line: 23, baseType: !89, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !441, file: !442, line: 24, baseType: !89, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !441, file: !442, line: 25, baseType: !89, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !441, file: !442, line: 26, baseType: !89, size: 64, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !441, file: !442, line: 27, baseType: !89, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !441, file: !442, line: 28, baseType: !89, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !441, file: !442, line: 29, baseType: !89, size: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !421, file: !420, line: 44, baseType: !354, size: 32, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !421, file: !420, line: 50, baseType: !460, size: 16, offset: 864)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !82, line: 19, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !84, line: 24, baseType: !261)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !421, file: !420, line: 51, baseType: !463, size: 16, offset: 880)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !82, line: 18, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !84, line: 23, baseType: !465)
!465 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !309, line: 495, baseType: !90, size: 64, offset: 6528)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !329, file: !309, line: 497, baseType: !468, size: 64, offset: 6592)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !309, line: 381, size: 384, elements: !470)
!470 = !{!471, !472, !1367}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !469, file: !309, line: 382, baseType: !354, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !469, file: !309, line: 383, baseType: !473, size: 128, offset: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !309, line: 376, size: 128, elements: !474)
!474 = !{!475, !1365}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !473, file: !309, line: 377, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !478, line: 640, size: 48640, elements: !479)
!478 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !488, !489, !490, !496, !497, !498, !499, !500, !501, !502, !503, !507, !525, !536, !629, !630, !631, !642, !643, !645, !646, !647, !648, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !727, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !783, !785, !786, !787, !799, !801, !802, !803, !804, !805, !811, !812, !813, !814, !815, !816, !817, !829, !834, !838, !839, !840, !843, !845, !848, !851, !854, !857, !860, !863, !866, !872, !873, !874, !880, !881, !882, !883, !884, !893, !894, !895, !896, !897, !902, !903, !904, !907, !908, !911, !914, !917, !920, !923, !926, !927, !1007, !1010, !1013, !1014, !1017, !1018, !1019, !1025, !1026, !1027, !1040, !1041, !1042, !1052, !1057, !1060, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !477, file: !478, line: 646, baseType: !481, size: 128)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !482, line: 56, size: 128, elements: !483)
!482 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !482, line: 57, baseType: !90, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !481, file: !482, line: 58, baseType: !486, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !82, line: 21, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !84, line: 27, baseType: !7)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !477, file: !478, line: 649, baseType: !88, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !477, file: !478, line: 657, baseType: !86, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !477, file: !478, line: 658, baseType: !491, size: 32, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !492, line: 113, baseType: !493)
!492 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !492, line: 111, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !493, file: !492, line: 112, baseType: !354, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !478, line: 660, baseType: !7, size: 32, offset: 288)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !477, file: !478, line: 661, baseType: !7, size: 32, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !477, file: !478, line: 684, baseType: !117, size: 32, offset: 352)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !477, file: !478, line: 686, baseType: !117, size: 32, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !477, file: !478, line: 687, baseType: !117, size: 32, offset: 416)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !477, file: !478, line: 688, baseType: !117, size: 32, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !477, file: !478, line: 689, baseType: !7, size: 32, offset: 480)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !477, file: !478, line: 691, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !478, line: 691, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !477, file: !478, line: 692, baseType: !508, size: 832, offset: 576)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !478, line: 451, size: 832, elements: !509)
!509 = !{!510, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !508, file: !478, line: 453, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !478, line: 325, size: 128, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !511, file: !478, line: 326, baseType: !90, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !511, file: !478, line: 327, baseType: !486, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !508, file: !478, line: 454, baseType: !316, size: 192, align: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !508, file: !478, line: 455, baseType: !166, size: 128, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !508, file: !478, line: 456, baseType: !7, size: 32, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !508, file: !478, line: 458, baseType: !81, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !508, file: !478, line: 459, baseType: !81, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !508, file: !478, line: 460, baseType: !81, size: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !508, file: !478, line: 461, baseType: !81, size: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !508, file: !478, line: 463, baseType: !81, size: 64, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !508, file: !478, line: 465, baseType: !524, offset: 832)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !478, line: 415, elements: !193)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !477, file: !478, line: 693, baseType: !526, size: 384, offset: 1408)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !478, line: 489, size: 384, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !526, file: !478, line: 490, baseType: !166, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !526, file: !478, line: 491, baseType: !90, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !526, file: !478, line: 492, baseType: !90, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !526, file: !478, line: 493, baseType: !7, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !526, file: !478, line: 494, baseType: !261, size: 16, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !526, file: !478, line: 495, baseType: !261, size: 16, offset: 304)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !526, file: !478, line: 497, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !477, file: !478, line: 697, baseType: !537, size: 1792, offset: 1792)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !478, line: 507, size: 1792, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !626, !627}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !537, file: !478, line: 508, baseType: !316, size: 192, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !537, file: !478, line: 515, baseType: !81, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !537, file: !478, line: 516, baseType: !81, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !537, file: !478, line: 517, baseType: !81, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !537, file: !478, line: 518, baseType: !81, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !537, file: !478, line: 519, baseType: !81, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !537, file: !478, line: 526, baseType: !368, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !537, file: !478, line: 527, baseType: !81, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !478, line: 528, baseType: !7, size: 32, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !537, file: !478, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !537, file: !478, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !537, file: !478, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !537, file: !478, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !537, file: !478, line: 563, baseType: !553, size: 512, offset: 704)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !554)
!554 = !{!555, !563, !564, !569, !621, !623, !624, !625}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !6, line: 119, baseType: !556, size: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !557, line: 9, size: 256, elements: !558)
!557 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !557, line: 10, baseType: !316, size: 192, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !556, file: !557, line: 11, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !562, line: 29, baseType: !368)
!562 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !553, file: !6, line: 120, baseType: !561, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !553, file: !6, line: 121, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!5, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !553, file: !6, line: 122, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !572)
!572 = !{!573, !593, !594, !597, !607, !608, !616, !620}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !571, file: !6, line: 160, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !575, file: !6, line: 215, baseType: !379)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !575, file: !6, line: 216, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !575, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !575, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !575, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !575, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !575, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !575, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !575, file: !6, line: 233, baseType: !561, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !575, file: !6, line: 234, baseType: !568, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !575, file: !6, line: 235, baseType: !561, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !575, file: !6, line: 236, baseType: !568, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !575, file: !6, line: 237, baseType: !590, size: 4096, offset: 512)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 4096, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 8)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !571, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !571, file: !6, line: 162, baseType: !595, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !78, line: 27, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !253, line: 96, baseType: !117)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !571, file: !6, line: 163, baseType: !598, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !599, line: 276, baseType: !600)
!599 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !599, line: 276, size: 32, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !600, file: !599, line: 276, baseType: !603, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !599, line: 70, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !599, line: 65, size: 32, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !604, file: !599, line: 66, baseType: !7, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !571, file: !6, line: 164, baseType: !568, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !571, file: !6, line: 165, baseType: !609, size: 128, offset: 256)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !557, line: 14, size: 128, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !609, file: !557, line: 15, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !317, line: 125, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !612, file: !317, line: 126, baseType: !333, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !612, file: !317, line: 127, baseType: !321, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !571, file: !6, line: 166, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!561}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !571, file: !6, line: 167, baseType: !561, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !553, file: !6, line: 123, baseType: !622, size: 8, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !82, line: 17, baseType: !99)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !553, file: !6, line: 124, baseType: !622, size: 8, offset: 456)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !553, file: !6, line: 125, baseType: !622, size: 8, offset: 464)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !553, file: !6, line: 126, baseType: !622, size: 8, offset: 472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !537, file: !478, line: 572, baseType: !553, size: 512, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !537, file: !478, line: 580, baseType: !628, size: 64, offset: 1728)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !477, file: !478, line: 721, baseType: !7, size: 32, offset: 3584)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !477, file: !478, line: 722, baseType: !117, size: 32, offset: 3616)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !477, file: !478, line: 723, baseType: !632, size: 64, offset: 3648)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !635, line: 17, baseType: !636)
!635 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !635, line: 17, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !636, file: !635, line: 17, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 1)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !477, file: !478, line: 724, baseType: !634, size: 64, offset: 3712)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !477, file: !478, line: 749, baseType: !644, offset: 3776)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !478, line: 290, elements: !193)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !477, file: !478, line: 751, baseType: !166, size: 128, offset: 3776)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !477, file: !478, line: 757, baseType: !325, size: 64, offset: 3904)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !477, file: !478, line: 758, baseType: !325, size: 64, offset: 3968)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !477, file: !478, line: 761, baseType: !649, size: 320, offset: 4032)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !409, line: 34, size: 320, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !649, file: !409, line: 35, baseType: !81, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !649, file: !409, line: 36, baseType: !653, size: 256, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !413)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !477, file: !478, line: 766, baseType: !117, size: 32, offset: 4352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !477, file: !478, line: 767, baseType: !117, size: 32, offset: 4384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !477, file: !478, line: 768, baseType: !117, size: 32, offset: 4416)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !477, file: !478, line: 770, baseType: !117, size: 32, offset: 4448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !477, file: !478, line: 772, baseType: !90, size: 64, offset: 4480)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !477, file: !478, line: 775, baseType: !7, size: 32, offset: 4544)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !477, file: !478, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !477, file: !478, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !477, file: !478, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !477, file: !478, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !477, file: !478, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !477, file: !478, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !477, file: !478, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !477, file: !478, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !477, file: !478, line: 831, baseType: !90, size: 64, offset: 4672)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !477, file: !478, line: 833, baseType: !670, size: 384, offset: 4736)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !671)
!671 = !{!672, !677}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !670, file: !12, line: 26, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!89, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !12, line: 27, baseType: !678, size: 320, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !12, line: 27, size: 320, elements: !679)
!679 = !{!680, !690, !717}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !678, file: !12, line: 36, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 29, size: 320, elements: !682)
!682 = !{!683, !685, !686, !687, !688, !689}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !681, file: !12, line: 30, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !12, line: 31, baseType: !486, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !12, line: 32, baseType: !486, size: 32, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !681, file: !12, line: 33, baseType: !486, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !681, file: !12, line: 34, baseType: !81, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !681, file: !12, line: 35, baseType: !684, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !678, file: !12, line: 46, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 38, size: 192, elements: !692)
!692 = !{!693, !694, !695, !716}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !691, file: !12, line: 39, baseType: !595, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !12, line: 41, baseType: !696, size: 64, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !12, line: 41, size: 64, elements: !697)
!697 = !{!698, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !696, file: !12, line: 42, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !701, line: 7, size: 128, elements: !702)
!701 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !701, line: 8, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !253, line: 93, baseType: !301)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !701, line: 9, baseType: !301, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !696, file: !12, line: 43, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !709, line: 7, size: 64, elements: !710)
!709 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !709, line: 8, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !709, line: 5, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !82, line: 20, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !84, line: 26, baseType: !117)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !709, line: 9, baseType: !713, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !691, file: !12, line: 45, baseType: !81, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !678, file: !12, line: 54, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 48, size: 256, elements: !719)
!719 = !{!720, !723, !724, !725, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !718, file: !12, line: 49, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !718, file: !12, line: 50, baseType: !117, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !718, file: !12, line: 51, baseType: !117, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !718, file: !12, line: 52, baseType: !90, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !718, file: !12, line: 53, baseType: !90, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !477, file: !478, line: 835, baseType: !728, size: 32, offset: 5120)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !78, line: 22, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !253, line: 28, baseType: !117)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !477, file: !478, line: 836, baseType: !728, size: 32, offset: 5152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !477, file: !478, line: 840, baseType: !90, size: 64, offset: 5184)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !477, file: !478, line: 849, baseType: !476, size: 64, offset: 5248)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !477, file: !478, line: 852, baseType: !476, size: 64, offset: 5312)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !477, file: !478, line: 857, baseType: !166, size: 128, offset: 5376)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !477, file: !478, line: 858, baseType: !166, size: 128, offset: 5504)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !477, file: !478, line: 859, baseType: !476, size: 64, offset: 5632)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !477, file: !478, line: 867, baseType: !166, size: 128, offset: 5696)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !477, file: !478, line: 868, baseType: !166, size: 128, offset: 5824)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !477, file: !478, line: 871, baseType: !740, size: 64, offset: 5952)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !742, line: 59, size: 768, elements: !743)
!742 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746, !747, !758, !759, !766, !775}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 61, baseType: !491, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !741, file: !742, line: 62, baseType: !7, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 63, baseType: !179, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !741, file: !742, line: 65, baseType: !748, size: 256, offset: 64)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 256, elements: !413)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !78, line: 182, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !749, file: !78, line: 183, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !78, line: 186, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !78, line: 187, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !753, file: !78, line: 187, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !741, file: !742, line: 66, baseType: !749, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !741, file: !742, line: 68, baseType: !760, size: 128, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !761, line: 40, baseType: !762)
!761 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !761, line: 36, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !761, line: 37, baseType: !179)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !762, file: !761, line: 38, baseType: !166, size: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !742, line: 69, baseType: !767, size: 128, align: 64, offset: 512)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !78, line: 216, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !78, line: 217, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !78, line: 218, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !741, file: !742, line: 70, baseType: !776, size: 128, offset: 640)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 128, elements: !640)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !742, line: 54, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !777, file: !742, line: 55, baseType: !117, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !777, file: !742, line: 56, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !742, line: 56, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !477, file: !478, line: 872, baseType: !784, size: 512, offset: 6016)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 512, elements: !413)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !477, file: !478, line: 873, baseType: !166, size: 128, offset: 6528)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !477, file: !478, line: 874, baseType: !166, size: 128, offset: 6656)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !477, file: !478, line: 876, baseType: !788, size: 64, offset: 6784)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !790, line: 26, size: 192, elements: !791)
!790 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !789, file: !790, line: 27, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !789, file: !790, line: 28, baseType: !794, size: 128, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !795, line: 43, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !795, line: 44, baseType: !379)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !794, file: !795, line: 45, baseType: !166, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !477, file: !478, line: 879, baseType: !800, size: 64, offset: 6848)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !477, file: !478, line: 882, baseType: !800, size: 64, offset: 6912)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !477, file: !478, line: 884, baseType: !81, size: 64, offset: 6976)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !477, file: !478, line: 885, baseType: !81, size: 64, offset: 7040)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !477, file: !478, line: 890, baseType: !81, size: 64, offset: 7104)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !477, file: !478, line: 891, baseType: !806, size: 128, offset: 7168)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !478, line: 242, size: 128, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !806, file: !478, line: 244, baseType: !81, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !806, file: !478, line: 245, baseType: !81, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !806, file: !478, line: 246, baseType: !379, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !477, file: !478, line: 900, baseType: !90, size: 64, offset: 7296)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !477, file: !478, line: 901, baseType: !90, size: 64, offset: 7360)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !477, file: !478, line: 904, baseType: !81, size: 64, offset: 7424)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !477, file: !478, line: 907, baseType: !81, size: 64, offset: 7488)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !477, file: !478, line: 910, baseType: !90, size: 64, offset: 7552)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !477, file: !478, line: 911, baseType: !90, size: 64, offset: 7616)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !477, file: !478, line: 914, baseType: !818, size: 640, offset: 7680)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !819, line: 123, size: 640, elements: !820)
!819 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !827, !828}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !818, file: !819, line: 124, baseType: !822, size: 576)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 576, elements: !221)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !819, line: 108, size: 192, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !823, file: !819, line: 109, baseType: !81, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !823, file: !819, line: 110, baseType: !609, size: 128, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !818, file: !819, line: 125, baseType: !7, size: 32, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !818, file: !819, line: 126, baseType: !7, size: 32, offset: 608)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !477, file: !478, line: 917, baseType: !830, size: 192, offset: 8320)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !819, line: 134, size: 192, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !830, file: !819, line: 135, baseType: !767, size: 128, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !830, file: !819, line: 136, baseType: !7, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !477, file: !478, line: 923, baseType: !835, size: 64, offset: 8512)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !478, line: 923, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !477, file: !478, line: 926, baseType: !835, size: 64, offset: 8576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !477, file: !478, line: 929, baseType: !835, size: 64, offset: 8640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !477, file: !478, line: 933, baseType: !841, size: 64, offset: 8704)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !478, line: 933, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !477, file: !478, line: 943, baseType: !844, size: 128, offset: 8768)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !101)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !477, file: !478, line: 945, baseType: !846, size: 64, offset: 8896)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !478, line: 49, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !477, file: !478, line: 956, baseType: !849, size: 64, offset: 8960)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !478, line: 45, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !477, file: !478, line: 959, baseType: !852, size: 64, offset: 9024)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !478, line: 959, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !477, file: !478, line: 962, baseType: !855, size: 64, offset: 9088)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !478, line: 66, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !477, file: !478, line: 966, baseType: !858, size: 64, offset: 9152)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !478, line: 50, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !477, file: !478, line: 969, baseType: !861, size: 64, offset: 9216)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !819, line: 223, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !477, file: !478, line: 970, baseType: !864, size: 64, offset: 9280)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !478, line: 62, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !477, file: !478, line: 971, baseType: !867, size: 64, offset: 9344)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !868, line: 25, baseType: !869)
!868 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 23, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !869, file: !868, line: 24, baseType: !639, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !477, file: !478, line: 972, baseType: !867, size: 64, offset: 9408)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !477, file: !478, line: 974, baseType: !867, size: 64, offset: 9472)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !477, file: !478, line: 975, baseType: !875, size: 192, offset: 9536)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !876, line: 30, size: 192, elements: !877)
!876 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !876, line: 31, baseType: !166, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !875, file: !876, line: 32, baseType: !867, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !477, file: !478, line: 976, baseType: !90, size: 64, offset: 9728)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !477, file: !478, line: 977, baseType: !266, size: 64, offset: 9792)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !477, file: !478, line: 978, baseType: !7, size: 32, offset: 9856)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !477, file: !478, line: 980, baseType: !770, size: 64, offset: 9920)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !477, file: !478, line: 989, baseType: !885, size: 128, offset: 9984)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !886, line: 35, size: 128, elements: !887)
!886 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !885, file: !886, line: 36, baseType: !117, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !885, file: !886, line: 37, baseType: !354, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !885, file: !886, line: 38, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !886, line: 23, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !477, file: !478, line: 992, baseType: !81, size: 64, offset: 10112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !477, file: !478, line: 993, baseType: !81, size: 64, offset: 10176)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !477, file: !478, line: 996, baseType: !179, offset: 10240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !477, file: !478, line: 999, baseType: !379, offset: 10240)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !477, file: !478, line: 1001, baseType: !898, size: 64, offset: 10240)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !478, line: 636, size: 64, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !478, line: 637, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !477, file: !478, line: 1005, baseType: !612, size: 128, offset: 10304)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !477, file: !478, line: 1007, baseType: !476, size: 64, offset: 10432)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !477, file: !478, line: 1009, baseType: !905, size: 64, offset: 10496)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !478, line: 1009, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !477, file: !478, line: 1043, baseType: !86, size: 64, offset: 10560)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !477, file: !478, line: 1046, baseType: !909, size: 64, offset: 10624)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !478, line: 41, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !477, file: !478, line: 1050, baseType: !912, size: 64, offset: 10688)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !478, line: 42, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !477, file: !478, line: 1054, baseType: !915, size: 64, offset: 10752)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !478, line: 55, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !477, file: !478, line: 1056, baseType: !918, size: 64, offset: 10816)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !478, line: 40, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !477, file: !478, line: 1058, baseType: !921, size: 64, offset: 10880)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !478, line: 47, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !477, file: !478, line: 1061, baseType: !924, size: 64, offset: 10944)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !478, line: 43, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !477, file: !478, line: 1064, baseType: !90, size: 64, offset: 11008)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !477, file: !478, line: 1065, baseType: !928, size: 64, offset: 11072)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !876, line: 14, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !876, line: 12, size: 384, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !876, line: 13, baseType: !933, size: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !876, line: 13, size: 384, elements: !934)
!934 = !{!935, !936, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !933, file: !876, line: 13, baseType: !117, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !933, file: !876, line: 13, baseType: !117, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !933, file: !876, line: 13, baseType: !117, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !933, file: !876, line: 13, baseType: !939, size: 256, offset: 128)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !940, line: 32, size: 256, elements: !941)
!940 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !948, !961, !967, !976, !996, !1001}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !939, file: !940, line: 37, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 34, size: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !943, file: !940, line: 35, baseType: !729, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !943, file: !940, line: 36, baseType: !947, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !253, line: 49, baseType: !7)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !939, file: !940, line: 45, baseType: !949, size: 192)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 40, size: 192, elements: !950)
!950 = !{!951, !953, !954, !960}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !949, file: !940, line: 41, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !253, line: 95, baseType: !117)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !949, file: !940, line: 42, baseType: !117, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !949, file: !940, line: 43, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !940, line: 11, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !940, line: 8, size: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !956, file: !940, line: 9, baseType: !117, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !956, file: !940, line: 10, baseType: !86, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !949, file: !940, line: 44, baseType: !117, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !939, file: !940, line: 52, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 48, size: 128, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !962, file: !940, line: 49, baseType: !729, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !962, file: !940, line: 50, baseType: !947, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !962, file: !940, line: 51, baseType: !955, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !939, file: !940, line: 61, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 55, size: 256, elements: !969)
!969 = !{!970, !971, !972, !973, !975}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !968, file: !940, line: 56, baseType: !729, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !968, file: !940, line: 57, baseType: !947, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !968, file: !940, line: 58, baseType: !117, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !968, file: !940, line: 59, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !253, line: 94, baseType: !254)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !968, file: !940, line: 60, baseType: !974, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !939, file: !940, line: 95, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 64, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !977, file: !940, line: 65, baseType: !86, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !940, line: 77, baseType: !981, size: 192, offset: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !940, line: 77, size: 192, elements: !982)
!982 = !{!983, !984, !991}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !981, file: !940, line: 82, baseType: !465, size: 16)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !981, file: !940, line: 88, baseType: !985, size: 192)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !940, line: 84, size: 192, elements: !986)
!986 = !{!987, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !985, file: !940, line: 85, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !591)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !985, file: !940, line: 86, baseType: !86, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !985, file: !940, line: 87, baseType: !86, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !981, file: !940, line: 93, baseType: !992, size: 96)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !940, line: 90, size: 96, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !992, file: !940, line: 91, baseType: !988, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !992, file: !940, line: 92, baseType: !487, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !939, file: !940, line: 101, baseType: !997, size: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 98, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !997, file: !940, line: 99, baseType: !89, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !997, file: !940, line: 100, baseType: !117, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !939, file: !940, line: 108, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 104, size: 128, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1002, file: !940, line: 105, baseType: !86, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1002, file: !940, line: 106, baseType: !117, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1002, file: !940, line: 107, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !477, file: !478, line: 1067, baseType: !1008, offset: 11136)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1009, line: 12, elements: !193)
!1009 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !477, file: !478, line: 1099, baseType: !1011, size: 64, offset: 11136)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !478, line: 56, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !477, file: !478, line: 1103, baseType: !166, size: 128, offset: 11200)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !477, file: !478, line: 1104, baseType: !1015, size: 64, offset: 11328)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !478, line: 46, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !477, file: !478, line: 1105, baseType: !431, size: 192, offset: 11392)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !477, file: !478, line: 1106, baseType: !7, size: 32, offset: 11584)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !477, file: !478, line: 1109, baseType: !1020, size: 128, offset: 11648)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 128, elements: !1023)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !478, line: 51, flags: DIFlagFwdDecl)
!1023 = !{!1024}
!1024 = !DISubrange(count: 2)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !477, file: !478, line: 1110, baseType: !431, size: 192, offset: 11776)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !477, file: !478, line: 1111, baseType: !166, size: 128, offset: 11968)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !477, file: !478, line: 1173, baseType: !1028, size: 64, offset: 12096)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1030, line: 62, size: 256, align: 256, elements: !1031)
!1030 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032, !1033, !1034, !1039}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1029, file: !1030, line: 75, baseType: !487, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1029, file: !1030, line: 90, baseType: !487, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1029, file: !1030, line: 124, baseType: !1035, size: 64, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !1030, line: 109, size: 64, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1035, file: !1030, line: 110, baseType: !83, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1035, file: !1030, line: 112, baseType: !83, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 144, baseType: !487, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !477, file: !478, line: 1174, baseType: !486, size: 32, offset: 12160)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !477, file: !478, line: 1179, baseType: !90, size: 64, offset: 12224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !477, file: !478, line: 1182, baseType: !1043, size: 128, offset: 12288)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !409, line: 76, size: 128, elements: !1044)
!1044 = !{!1045, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1043, file: !409, line: 85, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1047, line: 7, size: 64, elements: !1048)
!1047 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1046, file: !1047, line: 12, baseType: !636, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1043, file: !409, line: 88, baseType: !143, size: 8, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1043, file: !409, line: 95, baseType: !143, size: 8, offset: 72)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !478, line: 1184, baseType: !1053, size: 128, offset: 12416)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !478, line: 1184, size: 128, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1053, file: !478, line: 1185, baseType: !491, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1053, file: !478, line: 1186, baseType: !767, size: 128, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !477, file: !478, line: 1190, baseType: !1058, size: 64, offset: 12544)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !478, line: 53, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !477, file: !478, line: 1192, baseType: !1061, size: 128, offset: 12608)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !409, line: 64, size: 128, elements: !1062)
!1062 = !{!1063, !1156, !1157}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1061, file: !409, line: 65, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !309, line: 68, size: 512, align: 128, elements: !1066)
!1066 = !{!1067, !1068, !1148, !1155}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !309, line: 69, baseType: !90, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !309, line: 77, baseType: !1069, size: 320, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !309, line: 77, size: 320, elements: !1070)
!1070 = !{!1071, !1080, !1085, !1113, !1121, !1127, !1140, !1147}
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 78, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 78, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1072, file: !309, line: 84, baseType: !166, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1072, file: !309, line: 86, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !309, line: 26, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !309, line: 87, baseType: !90, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1072, file: !309, line: 94, baseType: !90, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 96, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 96, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1081, file: !309, line: 101, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !78, line: 143, baseType: !81)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 103, baseType: !1086, size: 320)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 103, size: 320, elements: !1087)
!1087 = !{!1088, !1098, !1101, !1102}
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !309, line: 104, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !309, line: 104, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1089, file: !309, line: 105, baseType: !166, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !309, line: 106, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !309, line: 106, size: 128, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !309, line: 107, baseType: !1064, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1093, file: !309, line: 109, baseType: !117, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1093, file: !309, line: 110, baseType: !117, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1086, file: !309, line: 117, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !309, line: 117, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1086, file: !309, line: 119, baseType: !86, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !309, line: 120, baseType: !1103, size: 64, offset: 256)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !309, line: 120, size: 64, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1103, file: !309, line: 121, baseType: !86, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1103, file: !309, line: 122, baseType: !90, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !309, line: 123, baseType: !1108, size: 32)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1103, file: !309, line: 123, size: 32, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1108, file: !309, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1108, file: !309, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1108, file: !309, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 130, baseType: !1114, size: 192)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 130, size: 192, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1114, file: !309, line: 131, baseType: !90, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1114, file: !309, line: 134, baseType: !100, size: 8, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1114, file: !309, line: 135, baseType: !100, size: 8, offset: 72)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1114, file: !309, line: 136, baseType: !354, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1114, file: !309, line: 137, baseType: !7, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 139, baseType: !1122, size: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 139, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1122, file: !309, line: 140, baseType: !90, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1122, file: !309, line: 141, baseType: !354, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1122, file: !309, line: 143, baseType: !166, size: 128, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 145, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 145, size: 256, elements: !1129)
!1129 = !{!1130, !1131, !1133, !1134, !1139}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1128, file: !309, line: 146, baseType: !90, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1128, file: !309, line: 147, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !298, line: 509, baseType: !1064)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1128, file: !309, line: 148, baseType: !90, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !309, line: 149, baseType: !1135, size: 64, offset: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !309, line: 149, size: 64, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1135, file: !309, line: 150, baseType: !325, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1135, file: !309, line: 151, baseType: !354, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1128, file: !309, line: 156, baseType: !179, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !309, line: 159, baseType: !1141, size: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !309, line: 159, size: 128, elements: !1142)
!1142 = !{!1143, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1141, file: !309, line: 161, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !309, line: 161, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1141, file: !309, line: 162, baseType: !86, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1069, file: !309, line: 176, baseType: !767, size: 128, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !309, line: 179, baseType: !1149, size: 32, offset: 384)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !309, line: 179, size: 32, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1149, file: !309, line: 184, baseType: !354, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1149, file: !309, line: 192, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1149, file: !309, line: 194, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1149, file: !309, line: 195, baseType: !117, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1065, file: !309, line: 199, baseType: !354, size: 32, offset: 416)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1061, file: !409, line: 67, baseType: !487, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1061, file: !409, line: 68, baseType: !487, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !477, file: !478, line: 1206, baseType: !117, size: 32, offset: 12736)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !477, file: !478, line: 1207, baseType: !117, size: 32, offset: 12768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !477, file: !478, line: 1209, baseType: !90, size: 64, offset: 12800)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !477, file: !478, line: 1219, baseType: !81, size: 64, offset: 12864)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !477, file: !478, line: 1220, baseType: !81, size: 64, offset: 12928)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !477, file: !478, line: 1317, baseType: !117, size: 32, offset: 12992)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !477, file: !478, line: 1319, baseType: !476, size: 64, offset: 13056)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !477, file: !478, line: 1322, baseType: !1166, size: 64, offset: 13120)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1168, line: 56, size: 512, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1176, !1177, !1179}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1167, file: !1168, line: 57, baseType: !1166, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1167, file: !1168, line: 58, baseType: !86, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1167, file: !1168, line: 59, baseType: !90, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1168, line: 60, baseType: !90, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1167, file: !1168, line: 61, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1167, file: !1168, line: 62, baseType: !7, size: 32, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1167, file: !1168, line: 63, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !78, line: 153, baseType: !81)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1167, file: !1168, line: 64, baseType: !151, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !477, file: !478, line: 1326, baseType: !491, size: 32, offset: 13184)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !477, file: !478, line: 1342, baseType: !86, size: 64, offset: 13248)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !477, file: !478, line: 1343, baseType: !83, size: 64, offset: 13312)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !477, file: !478, line: 1344, baseType: !81, size: 64, offset: 13376)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !477, file: !478, line: 1345, baseType: !83, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !477, file: !478, line: 1346, baseType: !83, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !477, file: !478, line: 1347, baseType: !83, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !477, file: !478, line: 1348, baseType: !767, size: 128, align: 64, offset: 13504)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !477, file: !478, line: 1358, baseType: !1189, size: 34816, offset: 13824)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1190, line: 485, size: 34816, elements: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1226, !1229, !1230, !1231}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1189, file: !1190, line: 487, baseType: !1193, size: 192)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 192, elements: !221)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1195, line: 16, size: 64, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1194, file: !1195, line: 17, baseType: !460, size: 16)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1194, file: !1195, line: 18, baseType: !460, size: 16, offset: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1194, file: !1195, line: 19, baseType: !460, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1194, file: !1195, line: 19, baseType: !460, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1194, file: !1195, line: 19, baseType: !460, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1194, file: !1195, line: 19, baseType: !460, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1194, file: !1195, line: 19, baseType: !460, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1194, file: !1195, line: 20, baseType: !460, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1194, file: !1195, line: 20, baseType: !460, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1194, file: !1195, line: 20, baseType: !460, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1194, file: !1195, line: 20, baseType: !460, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1194, file: !1195, line: 20, baseType: !460, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1194, file: !1195, line: 20, baseType: !460, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1189, file: !1190, line: 491, baseType: !90, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1189, file: !1190, line: 495, baseType: !261, size: 16, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1189, file: !1190, line: 496, baseType: !261, size: 16, offset: 272)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1189, file: !1190, line: 497, baseType: !261, size: 16, offset: 288)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1189, file: !1190, line: 498, baseType: !261, size: 16, offset: 304)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1189, file: !1190, line: 502, baseType: !90, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1189, file: !1190, line: 503, baseType: !90, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1189, file: !1190, line: 514, baseType: !1218, size: 256, offset: 448)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !413)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1190, line: 483, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1189, file: !1190, line: 516, baseType: !90, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1189, file: !1190, line: 518, baseType: !90, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1189, file: !1190, line: 520, baseType: !90, size: 64, offset: 832)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1189, file: !1190, line: 521, baseType: !90, size: 64, offset: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1189, file: !1190, line: 522, baseType: !90, size: 64, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1189, file: !1190, line: 528, baseType: !1227, size: 64, offset: 1024)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1190, line: 10, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1189, file: !1190, line: 535, baseType: !90, size: 64, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1189, file: !1190, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1189, file: !1190, line: 540, baseType: !1232, size: 33280, offset: 1536)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1233, line: 317, size: 33280, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1232, file: !1233, line: 330, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1232, file: !1233, line: 337, baseType: !90, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1232, file: !1233, line: 348, baseType: !1238, size: 32768, offset: 512)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1233, line: 304, size: 32768, elements: !1239)
!1239 = !{!1240, !1255, !1294, !1344, !1361}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1238, file: !1233, line: 305, baseType: !1241, size: 896)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1233, line: 12, size: 896, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1241, file: !1233, line: 13, baseType: !486, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1241, file: !1233, line: 14, baseType: !486, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1241, file: !1233, line: 15, baseType: !486, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1241, file: !1233, line: 16, baseType: !486, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1241, file: !1233, line: 17, baseType: !486, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1241, file: !1233, line: 18, baseType: !486, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1241, file: !1233, line: 19, baseType: !486, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1241, file: !1233, line: 22, baseType: !1251, size: 640, offset: 224)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 640, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 20)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1241, file: !1233, line: 25, baseType: !486, size: 32, offset: 864)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1238, file: !1233, line: 306, baseType: !1256, size: 4096, align: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1233, line: 34, size: 4096, align: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1277, !1278, !1279, !1283, !1285, !1289}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1256, file: !1233, line: 35, baseType: !460, size: 16)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1256, file: !1233, line: 36, baseType: !460, size: 16, offset: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1256, file: !1233, line: 37, baseType: !460, size: 16, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1256, file: !1233, line: 38, baseType: !460, size: 16, offset: 48)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !1233, line: 39, baseType: !1263, size: 128, offset: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !1233, line: 39, size: 128, elements: !1264)
!1264 = !{!1265, !1270}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1233, line: 40, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !1233, line: 40, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1266, file: !1233, line: 41, baseType: !81, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1266, file: !1233, line: 42, baseType: !81, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1233, line: 44, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !1233, line: 44, size: 128, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1271, file: !1233, line: 45, baseType: !486, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1271, file: !1233, line: 46, baseType: !486, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1271, file: !1233, line: 47, baseType: !486, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1271, file: !1233, line: 48, baseType: !486, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1256, file: !1233, line: 51, baseType: !486, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1256, file: !1233, line: 52, baseType: !486, size: 32, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1256, file: !1233, line: 55, baseType: !1280, size: 1024, offset: 256)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 1024, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1256, file: !1233, line: 58, baseType: !1284, size: 2048, offset: 1280)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 2048, elements: !225)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1256, file: !1233, line: 60, baseType: !1286, size: 384, offset: 3328)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 384, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 12)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !1233, line: 62, baseType: !1290, size: 384, offset: 3712)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !1233, line: 62, size: 384, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1290, file: !1233, line: 63, baseType: !1286, size: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1290, file: !1233, line: 64, baseType: !1286, size: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1238, file: !1233, line: 307, baseType: !1295, size: 1088)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1233, line: 79, size: 1088, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1343}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1295, file: !1233, line: 80, baseType: !486, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1295, file: !1233, line: 81, baseType: !486, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1295, file: !1233, line: 82, baseType: !486, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1295, file: !1233, line: 83, baseType: !486, size: 32, offset: 96)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1295, file: !1233, line: 84, baseType: !486, size: 32, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1295, file: !1233, line: 85, baseType: !486, size: 32, offset: 160)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1295, file: !1233, line: 86, baseType: !486, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1295, file: !1233, line: 88, baseType: !1251, size: 640, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1295, file: !1233, line: 89, baseType: !622, size: 8, offset: 864)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1295, file: !1233, line: 90, baseType: !622, size: 8, offset: 872)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1295, file: !1233, line: 91, baseType: !622, size: 8, offset: 880)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1295, file: !1233, line: 92, baseType: !622, size: 8, offset: 888)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1295, file: !1233, line: 93, baseType: !622, size: 8, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1295, file: !1233, line: 94, baseType: !622, size: 8, offset: 904)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1295, file: !1233, line: 95, baseType: !1312, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1314, line: 11, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1313, file: !1314, line: 12, baseType: !89, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1313, file: !1314, line: 13, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1320, line: 56, size: 1344, elements: !1321)
!1320 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1319, file: !1320, line: 61, baseType: !90, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1319, file: !1320, line: 62, baseType: !90, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1319, file: !1320, line: 63, baseType: !90, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1319, file: !1320, line: 64, baseType: !90, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1319, file: !1320, line: 65, baseType: !90, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1319, file: !1320, line: 66, baseType: !90, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1319, file: !1320, line: 68, baseType: !90, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1319, file: !1320, line: 69, baseType: !90, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1319, file: !1320, line: 70, baseType: !90, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1319, file: !1320, line: 71, baseType: !90, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1319, file: !1320, line: 72, baseType: !90, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1319, file: !1320, line: 73, baseType: !90, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1319, file: !1320, line: 74, baseType: !90, size: 64, offset: 768)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1319, file: !1320, line: 75, baseType: !90, size: 64, offset: 832)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1319, file: !1320, line: 76, baseType: !90, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1319, file: !1320, line: 81, baseType: !90, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1319, file: !1320, line: 83, baseType: !90, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1319, file: !1320, line: 84, baseType: !90, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1320, line: 85, baseType: !90, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1319, file: !1320, line: 86, baseType: !90, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1319, file: !1320, line: 87, baseType: !90, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1295, file: !1233, line: 96, baseType: !486, size: 32, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1238, file: !1233, line: 308, baseType: !1345, size: 4608, align: 512)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1233, line: 289, size: 4608, align: 512, elements: !1346)
!1346 = !{!1347, !1348, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1345, file: !1233, line: 290, baseType: !1256, size: 4096, align: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1345, file: !1233, line: 291, baseType: !1349, size: 512, offset: 4096)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1233, line: 268, size: 512, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1349, file: !1233, line: 269, baseType: !81, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1349, file: !1233, line: 270, baseType: !81, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1349, file: !1233, line: 271, baseType: !1354, size: 384, offset: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 384, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 6)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1345, file: !1233, line: 292, baseType: !1358, offset: 4608)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 0)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1238, file: !1233, line: 309, baseType: !1362, size: 32768)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 32768, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 4096)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !309, line: 378, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !469, file: !309, line: 384, baseType: !789, size: 192, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !329, file: !309, line: 500, baseType: !179, offset: 6656)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !329, file: !309, line: 501, baseType: !1370, size: 64, offset: 6656)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !309, line: 387, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !329, file: !309, line: 516, baseType: !1373, size: 64, offset: 6720)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !309, line: 516, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !329, file: !309, line: 519, baseType: !296, size: 64, offset: 6784)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !329, file: !309, line: 521, baseType: !1377, size: 64, offset: 6848)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !309, line: 521, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !329, file: !309, line: 545, baseType: !354, size: 32, offset: 6912)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !329, file: !309, line: 548, baseType: !143, size: 8, offset: 6944)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !329, file: !309, line: 550, baseType: !1382, offset: 6952)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1383, line: 142, elements: !193)
!1383 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !329, file: !309, line: 554, baseType: !1385, size: 256, offset: 6976)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1386, line: 102, size: 256, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1385, file: !1386, line: 103, baseType: !362, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1385, file: !1386, line: 104, baseType: !166, size: 128, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1385, file: !1386, line: 105, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1386, line: 21, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !329, file: !309, line: 557, baseType: !486, size: 32, offset: 7232)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !326, file: !309, line: 565, baseType: !1398, offset: 7296)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: -1)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !308, file: !309, line: 333, baseType: !1402, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !298, line: 284, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !298, line: 284, size: 64, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1403, file: !298, line: 284, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !352, line: 19, baseType: !90)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !308, file: !309, line: 334, baseType: !90, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !308, file: !309, line: 343, baseType: !1409, size: 256, offset: 704)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !309, line: 340, size: 256, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1409, file: !309, line: 341, baseType: !316, size: 192, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1409, file: !309, line: 342, baseType: !90, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !308, file: !309, line: 351, baseType: !166, size: 128, offset: 960)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !308, file: !309, line: 353, baseType: !1415, size: 64, offset: 1088)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !309, line: 353, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !308, file: !309, line: 356, baseType: !1418, size: 64, offset: 1152)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !309, line: 356, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !308, file: !309, line: 359, baseType: !90, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !308, file: !309, line: 361, baseType: !296, size: 64, offset: 1280)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !308, file: !309, line: 362, baseType: !86, size: 64, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !308, file: !309, line: 365, baseType: !362, size: 64, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !308, file: !309, line: 373, baseType: !1426, offset: 1472)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !309, line: 296, elements: !193)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !275, file: !245, line: 90, baseType: !270, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !275, file: !245, line: 91, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !235, file: !159, line: 143, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434, !172}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1437)
!1437 = !{!1438, !1439, !1443, !1447, !1453, !1457}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1436, file: !18, line: 40, baseType: !17, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1436, file: !18, line: 41, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!143}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1436, file: !18, line: 42, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!86}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1436, file: !18, line: 43, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!151, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1436, file: !18, line: 44, baseType: !1454, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!151}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1436, file: !18, line: 45, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !86}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !235, file: !159, line: 144, baseType: !1462, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!151, !172}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !235, file: !159, line: 145, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !172, !1469, !1476}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1471, line: 23, baseType: !1472)
!1471 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 21, size: 32, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1472, file: !1471, line: 22, baseType: !1475, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !78, line: 32, baseType: !947)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1471, line: 28, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 26, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1478, file: !1471, line: 27, baseType: !1481, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !78, line: 33, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !253, line: 50, baseType: !7)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !158, file: !159, line: 70, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1486, line: 123, size: 1024, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1629, !1630, !1631, !1632, !1633}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1485, file: !1486, line: 124, baseType: !354, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1485, file: !1486, line: 125, baseType: !354, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1485, file: !1486, line: 135, baseType: !1484, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1485, file: !1486, line: 136, baseType: !162, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1485, file: !1486, line: 138, baseType: !316, size: 192, align: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !1486, line: 140, baseType: !151, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1485, file: !1486, line: 141, baseType: !7, size: 32, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1486, line: 142, baseType: !1496, size: 256, offset: 512)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1486, line: 142, size: 256, elements: !1497)
!1497 = !{!1498, !1552, !1556}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1496, file: !1486, line: 143, baseType: !1499, size: 192)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1486, line: 91, size: 192, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1499, file: !1486, line: 92, baseType: !90, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1499, file: !1486, line: 94, baseType: !333, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1499, file: !1486, line: 100, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1486, line: 180, size: 704, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1522, !1523, !1524, !1550, !1551}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1505, file: !1486, line: 182, baseType: !1484, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !1486, line: 183, baseType: !7, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1505, file: !1486, line: 186, baseType: !1510, size: 192, offset: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1511, line: 19, size: 192, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1520, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1510, file: !1511, line: 20, baseType: !1514, size: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1515, line: 292, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518, !1519}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1514, file: !1515, line: 293, baseType: !179)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1514, file: !1515, line: 295, baseType: !77, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1514, file: !1515, line: 296, baseType: !86, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1510, file: !1511, line: 21, baseType: !7, size: 32, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1510, file: !1511, line: 22, baseType: !7, size: 32, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1505, file: !1486, line: 187, baseType: !486, size: 32, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1505, file: !1486, line: 188, baseType: !486, size: 32, offset: 352)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1505, file: !1486, line: 189, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1486, line: 168, size: 320, elements: !1527)
!1527 = !{!1528, !1534, !1538, !1542, !1546}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1526, file: !1486, line: 169, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!117, !1532, !1504}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !298, line: 539, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1526, file: !1486, line: 171, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!117, !1484, !162, !260}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1526, file: !1486, line: 173, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!117, !1484}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1526, file: !1486, line: 174, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!117, !1484, !1484, !162}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1526, file: !1486, line: 176, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!117, !1532, !1484, !1504}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1505, file: !1486, line: 192, baseType: !166, size: 128, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1505, file: !1486, line: 194, baseType: !760, size: 128, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1496, file: !1486, line: 144, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1486, line: 103, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1553, file: !1486, line: 104, baseType: !1484, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1496, file: !1486, line: 145, baseType: !1557, size: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1486, line: 107, size: 256, elements: !1558)
!1558 = !{!1559, !1624, !1627, !1628}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1557, file: !1486, line: 108, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1486, line: 217, size: 768, elements: !1563)
!1563 = !{!1564, !1584, !1588, !1592, !1597, !1601, !1605, !1609, !1610, !1611, !1612, !1620}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1562, file: !1486, line: 222, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!117, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1486, line: 197, size: 1088, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1569, file: !1486, line: 199, baseType: !1484, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1569, file: !1486, line: 200, baseType: !296, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1569, file: !1486, line: 201, baseType: !1532, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1569, file: !1486, line: 202, baseType: !86, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1569, file: !1486, line: 205, baseType: !431, size: 192, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1569, file: !1486, line: 206, baseType: !431, size: 192, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1569, file: !1486, line: 207, baseType: !117, size: 32, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1569, file: !1486, line: 208, baseType: !166, size: 128, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1569, file: !1486, line: 209, baseType: !220, size: 64, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1569, file: !1486, line: 211, baseType: !266, size: 64, offset: 896)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1569, file: !1486, line: 212, baseType: !143, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1569, file: !1486, line: 213, baseType: !143, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1569, file: !1486, line: 214, baseType: !1418, size: 64, offset: 1024)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1562, file: !1486, line: 223, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1568}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1562, file: !1486, line: 236, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!117, !1532, !86}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1562, file: !1486, line: 238, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!86, !1532, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1562, file: !1486, line: 239, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!86, !1532, !86, !1596}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1562, file: !1486, line: 240, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1532, !86}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1562, file: !1486, line: 242, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!251, !1568, !220, !266, !299}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1562, file: !1486, line: 252, baseType: !266, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1562, file: !1486, line: 259, baseType: !143, size: 8, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1562, file: !1486, line: 260, baseType: !1606, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1562, file: !1486, line: 263, baseType: !1613, size: 64, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!1616, !1568, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1617, line: 52, baseType: !7)
!1617 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1486, line: 27, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1562, file: !1486, line: 266, baseType: !1621, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!117, !1568, !307}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1557, file: !1486, line: 109, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1486, line: 31, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1557, file: !1486, line: 110, baseType: !299, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1557, file: !1486, line: 111, baseType: !1484, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1485, file: !1486, line: 148, baseType: !86, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1485, file: !1486, line: 154, baseType: !81, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1485, file: !1486, line: 156, baseType: !261, size: 16, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1485, file: !1486, line: 157, baseType: !260, size: 16, offset: 912)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1485, file: !1486, line: 158, baseType: !1634, size: 64, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1486, line: 32, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !158, file: !159, line: 71, baseType: !1637, size: 32, offset: 448)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1638, line: 19, size: 32, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1637, file: !1638, line: 20, baseType: !491, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !158, file: !159, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !158, file: !159, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !158, file: !159, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !158, file: !159, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !158, file: !159, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !155, file: !30, line: 463, baseType: !1647, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !155, file: !30, line: 465, baseType: !1649, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !155, file: !30, line: 467, baseType: !162, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !30, line: 468, baseType: !1653, size: 64, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1663, !1668, !1672}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !30, line: 88, baseType: !162, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1655, file: !30, line: 89, baseType: !272, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1655, file: !30, line: 90, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!117, !1647, !215}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1655, file: !30, line: 91, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!220, !1647, !1667, !1469, !1476}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1655, file: !30, line: 93, baseType: !1669, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1647}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !30, line: 95, baseType: !1673, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1676)
!1676 = !{!1677, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1675, file: !37, line: 279, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!117, !1647}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1675, file: !37, line: 280, baseType: !1669, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1675, file: !37, line: 281, baseType: !1678, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1675, file: !37, line: 282, baseType: !1678, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1675, file: !37, line: 283, baseType: !1678, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1675, file: !37, line: 284, baseType: !1678, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1675, file: !37, line: 285, baseType: !1678, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1675, file: !37, line: 286, baseType: !1678, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1675, file: !37, line: 287, baseType: !1678, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1675, file: !37, line: 288, baseType: !1678, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1675, file: !37, line: 289, baseType: !1678, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1675, file: !37, line: 290, baseType: !1678, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1675, file: !37, line: 291, baseType: !1678, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1675, file: !37, line: 292, baseType: !1678, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1675, file: !37, line: 293, baseType: !1678, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1675, file: !37, line: 294, baseType: !1678, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1675, file: !37, line: 295, baseType: !1678, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1675, file: !37, line: 296, baseType: !1678, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1675, file: !37, line: 297, baseType: !1678, size: 64, offset: 1152)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1675, file: !37, line: 298, baseType: !1678, size: 64, offset: 1216)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1675, file: !37, line: 299, baseType: !1678, size: 64, offset: 1280)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1675, file: !37, line: 300, baseType: !1678, size: 64, offset: 1344)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1675, file: !37, line: 301, baseType: !1678, size: 64, offset: 1408)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !155, file: !30, line: 470, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1706, line: 82, size: 1408, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1793, !1796, !1799}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !1706, line: 83, baseType: !162, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1705, file: !1706, line: 84, baseType: !162, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1705, file: !1706, line: 85, baseType: !1647, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1705, file: !1706, line: 86, baseType: !272, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1705, file: !1706, line: 87, baseType: !272, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1705, file: !1706, line: 88, baseType: !272, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1705, file: !1706, line: 90, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!117, !1647, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1727, !1728, !1729, !1730, !1744, !1757, !1758, !1759, !1760, !1761, !1769, !1770, !1771, !1772, !1773, !1774}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1719, file: !24, line: 96, baseType: !162, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1719, file: !24, line: 97, baseType: !1704, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1719, file: !24, line: 99, baseType: !1724, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1726, line: 76, flags: DIFlagFwdDecl)
!1726 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1719, file: !24, line: 100, baseType: !162, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1719, file: !24, line: 102, baseType: !143, size: 8, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1719, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1719, file: !24, line: 105, baseType: !1731, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1734, line: 262, size: 1600, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1738, !1739, !1743}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1733, file: !1734, line: 263, baseType: !1737, size: 256)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !1281)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1733, file: !1734, line: 264, baseType: !1737, size: 256, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1733, file: !1734, line: 265, baseType: !1740, size: 1024, offset: 512)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1733, file: !1734, line: 266, baseType: !151, size: 64, offset: 1536)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1719, file: !24, line: 106, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1734, line: 210, size: 256, elements: !1748)
!1748 = !{!1749, !1753, !1755, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1747, file: !1734, line: 211, baseType: !1750, size: 72)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 72, elements: !1751)
!1751 = !{!1752}
!1752 = !DISubrange(count: 9)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1747, file: !1734, line: 212, baseType: !1754, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1734, line: 14, baseType: !90)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1747, file: !1734, line: 213, baseType: !487, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1747, file: !1734, line: 214, baseType: !487, size: 32, offset: 224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1719, file: !24, line: 108, baseType: !1678, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1719, file: !24, line: 109, baseType: !1669, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1719, file: !24, line: 110, baseType: !1678, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1719, file: !24, line: 111, baseType: !1669, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1719, file: !24, line: 112, baseType: !1762, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!117, !1647, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1766, file: !37, line: 51, baseType: !117, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1719, file: !24, line: 113, baseType: !1678, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1719, file: !24, line: 114, baseType: !272, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1719, file: !24, line: 115, baseType: !272, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1719, file: !24, line: 117, baseType: !1673, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1719, file: !24, line: 118, baseType: !1669, size: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1719, file: !24, line: 120, baseType: !1775, size: 64, offset: 1088)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1705, file: !1706, line: 91, baseType: !1660, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1705, file: !1706, line: 92, baseType: !1678, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1705, file: !1706, line: 93, baseType: !1669, size: 64, offset: 576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1705, file: !1706, line: 94, baseType: !1678, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1705, file: !1706, line: 95, baseType: !1669, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1705, file: !1706, line: 97, baseType: !1678, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1705, file: !1706, line: 98, baseType: !1678, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1705, file: !1706, line: 100, baseType: !1762, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1705, file: !1706, line: 101, baseType: !1678, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1705, file: !1706, line: 103, baseType: !1678, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1705, file: !1706, line: 105, baseType: !1678, size: 64, offset: 1088)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1705, file: !1706, line: 107, baseType: !1673, size: 64, offset: 1152)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1705, file: !1706, line: 109, baseType: !1790, size: 64, offset: 1216)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1706, line: 109, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1705, file: !1706, line: 111, baseType: !1794, size: 64, offset: 1280)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1706, line: 111, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1705, file: !1706, line: 112, baseType: !1797, offset: 1344)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1798, line: 187, elements: !193)
!1798 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1705, file: !1706, line: 114, baseType: !143, size: 8, offset: 1344)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !155, file: !30, line: 471, baseType: !1718, size: 64, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !155, file: !30, line: 473, baseType: !86, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !155, file: !30, line: 475, baseType: !86, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !155, file: !30, line: 480, baseType: !431, size: 192, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !155, file: !30, line: 484, baseType: !1805, size: 576, offset: 1216)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1805, file: !30, line: 362, baseType: !166, size: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1805, file: !30, line: 363, baseType: !166, size: 128, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1805, file: !30, line: 364, baseType: !166, size: 128, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1805, file: !30, line: 365, baseType: !166, size: 128, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1805, file: !30, line: 366, baseType: !143, size: 8, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1805, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !155, file: !30, line: 485, baseType: !1814, size: 2304, offset: 1792)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1911, !1915}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1814, file: !37, line: 566, baseType: !1765, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1814, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1814, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1814, file: !37, line: 569, baseType: !143, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1814, file: !37, line: 570, baseType: !143, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1814, file: !37, line: 571, baseType: !143, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1814, file: !37, line: 572, baseType: !143, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1814, file: !37, line: 573, baseType: !143, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1814, file: !37, line: 574, baseType: !143, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1814, file: !37, line: 575, baseType: !143, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1814, file: !37, line: 576, baseType: !143, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1814, file: !37, line: 577, baseType: !486, size: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !37, line: 578, baseType: !179, offset: 96)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1814, file: !37, line: 580, baseType: !166, size: 128, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1814, file: !37, line: 581, baseType: !789, size: 192, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1814, file: !37, line: 582, baseType: !1832, size: 64, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1834, line: 43, size: 1472, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1843, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1833, file: !1834, line: 44, baseType: !162, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1833, file: !1834, line: 45, baseType: !117, size: 32, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1833, file: !1834, line: 46, baseType: !166, size: 128, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !1834, line: 47, baseType: !179, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1833, file: !1834, line: 48, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1833, file: !1834, line: 49, baseType: !1844, size: 320, offset: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1845, line: 11, size: 320, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847, !1848, !1849, !1854}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1844, file: !1845, line: 16, baseType: !753, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1844, file: !1845, line: 17, baseType: !90, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1844, file: !1845, line: 18, baseType: !1850, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1844, file: !1845, line: 19, baseType: !486, size: 32, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1833, file: !1834, line: 50, baseType: !90, size: 64, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1833, file: !1834, line: 51, baseType: !561, size: 64, offset: 704)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1833, file: !1834, line: 52, baseType: !561, size: 64, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1833, file: !1834, line: 53, baseType: !561, size: 64, offset: 832)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1833, file: !1834, line: 54, baseType: !561, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1833, file: !1834, line: 55, baseType: !561, size: 64, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1833, file: !1834, line: 56, baseType: !90, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1833, file: !1834, line: 57, baseType: !90, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1833, file: !1834, line: 58, baseType: !90, size: 64, offset: 1152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1833, file: !1834, line: 59, baseType: !90, size: 64, offset: 1216)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1833, file: !1834, line: 60, baseType: !90, size: 64, offset: 1280)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1833, file: !1834, line: 61, baseType: !1647, size: 64, offset: 1344)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1833, file: !1834, line: 62, baseType: !143, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1833, file: !1834, line: 63, baseType: !143, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1814, file: !37, line: 583, baseType: !143, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1814, file: !37, line: 584, baseType: !143, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1814, file: !37, line: 585, baseType: !143, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1814, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1814, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1814, file: !37, line: 592, baseType: !553, size: 512, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1814, file: !37, line: 593, baseType: !81, size: 64, offset: 1088)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1814, file: !37, line: 594, baseType: !1385, size: 256, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1814, file: !37, line: 595, baseType: !760, size: 128, offset: 1408)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1814, file: !37, line: 596, baseType: !1841, size: 64, offset: 1536)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1814, file: !37, line: 597, baseType: !354, size: 32, offset: 1600)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1814, file: !37, line: 598, baseType: !354, size: 32, offset: 1632)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1814, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1814, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1814, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1814, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1814, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1814, file: !37, line: 604, baseType: !143, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1814, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1814, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1814, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1814, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1814, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1814, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1814, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1814, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1814, file: !37, line: 613, baseType: !117, size: 32, offset: 1792)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1814, file: !37, line: 614, baseType: !117, size: 32, offset: 1824)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1814, file: !37, line: 615, baseType: !81, size: 64, offset: 1856)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1814, file: !37, line: 616, baseType: !81, size: 64, offset: 1920)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1814, file: !37, line: 617, baseType: !81, size: 64, offset: 1984)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1814, file: !37, line: 618, baseType: !81, size: 64, offset: 2048)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1814, file: !37, line: 620, baseType: !1902, size: 64, offset: 2112)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1903, file: !37, line: 537, baseType: !179)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1903, file: !37, line: 538, baseType: !7, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1903, file: !37, line: 540, baseType: !166, size: 128, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1903, file: !37, line: 543, baseType: !1909, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1814, file: !37, line: 621, baseType: !1912, size: 64, offset: 2176)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1647, !713}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1814, file: !37, line: 622, baseType: !1916, size: 64, offset: 2240)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !155, file: !30, line: 486, baseType: !1919, size: 64, offset: 4096)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1928, !1929, !1930}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1920, file: !37, line: 643, baseType: !1675, size: 1472)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1920, file: !37, line: 644, baseType: !1678, size: 64, offset: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1920, file: !37, line: 645, baseType: !1925, size: 64, offset: 1536)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1647, !143}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1920, file: !37, line: 646, baseType: !1678, size: 64, offset: 1600)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1920, file: !37, line: 647, baseType: !1669, size: 64, offset: 1664)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1920, file: !37, line: 648, baseType: !1669, size: 64, offset: 1728)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !155, file: !30, line: 493, baseType: !1932, size: 64, offset: 4160)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1934)
!1934 = !{!1935, !1936, !1937, !2022, !2023, !2024, !2025, !2026, !2027, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1933, file: !51, line: 163, baseType: !166, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1933, file: !51, line: 164, baseType: !162, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1933, file: !51, line: 165, baseType: !1938, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1941)
!1941 = !{!1942, !1971, !1982, !1987, !1991, !1999, !2003, !2007, !2014, !2018}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1940, file: !51, line: 106, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!117, !1932, !1946, !50}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1948, line: 51, size: 1344, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950, !1951, !1953, !1954, !1955, !1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 52, baseType: !162, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1947, file: !1948, line: 53, baseType: !1952, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1948, line: 28, baseType: !486)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1947, file: !1948, line: 54, baseType: !162, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1947, file: !1948, line: 55, baseType: !121, size: 192, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1947, file: !1948, line: 57, baseType: !1956, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1948, line: 31, size: 704, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1957, file: !1948, line: 32, baseType: !220, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1957, file: !1948, line: 33, baseType: !117, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1957, file: !1948, line: 34, baseType: !86, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1957, file: !1948, line: 35, baseType: !1956, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1957, file: !1948, line: 43, baseType: !287, size: 448, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1947, file: !1948, line: 58, baseType: !1956, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1947, file: !1948, line: 59, baseType: !1946, size: 64, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1947, file: !1948, line: 60, baseType: !1946, size: 64, offset: 576)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1947, file: !1948, line: 61, baseType: !1946, size: 64, offset: 640)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1947, file: !1948, line: 63, baseType: !158, size: 512, offset: 704)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1947, file: !1948, line: 65, baseType: !90, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1947, file: !1948, line: 66, baseType: !86, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1940, file: !51, line: 108, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!117, !1932, !1975, !50}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1976, file: !51, line: 64, baseType: !125, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1976, file: !51, line: 65, baseType: !117, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1976, file: !51, line: 66, baseType: !1981, size: 512, offset: 96)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 512, elements: !101)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1940, file: !51, line: 110, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!117, !1932, !7, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !78, line: 164, baseType: !90)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1940, file: !51, line: 111, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1932, !7}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1940, file: !51, line: 112, baseType: !1992, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!117, !1932, !1946, !1995, !7, !1997, !1998}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1940, file: !51, line: 117, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!117, !1932, !7, !7, !86}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1940, file: !51, line: 119, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1932, !7, !7}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1940, file: !51, line: 121, baseType: !2008, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!117, !1932, !2011, !143}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2013, line: 11, flags: DIFlagFwdDecl)
!2013 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1940, file: !51, line: 122, baseType: !2015, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1932, !2011}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1940, file: !51, line: 123, baseType: !2019, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!117, !1932, !1975, !1997, !1998}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1933, file: !51, line: 166, baseType: !86, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1933, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1933, file: !51, line: 171, baseType: !125, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1933, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1933, file: !51, line: 173, baseType: !2028, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1933, file: !51, line: 175, baseType: !1932, size: 64, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1933, file: !51, line: 182, baseType: !1986, size: 64, offset: 640)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1933, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1933, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1933, file: !51, line: 185, baseType: !1514, size: 128, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1933, file: !51, line: 186, baseType: !431, size: 192, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1933, file: !51, line: 187, baseType: !2037, offset: 1088)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1399)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !155, file: !30, line: 499, baseType: !166, size: 128, offset: 4224)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !155, file: !30, line: 502, baseType: !2040, size: 64, offset: 4352)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !155, file: !30, line: 504, baseType: !2044, size: 64, offset: 4416)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !155, file: !30, line: 505, baseType: !81, size: 64, offset: 4480)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !155, file: !30, line: 510, baseType: !81, size: 64, offset: 4544)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !155, file: !30, line: 511, baseType: !2048, size: 64, offset: 4608)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !155, file: !30, line: 513, baseType: !2052, size: 64, offset: 4672)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2053, file: !30, line: 293, baseType: !7, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2053, file: !30, line: 294, baseType: !90, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !155, file: !30, line: 515, baseType: !166, size: 128, offset: 4736)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !155, file: !30, line: 526, baseType: !2059, offset: 4864)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2060, line: 5, elements: !193)
!2060 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !155, file: !30, line: 528, baseType: !1946, size: 64, offset: 4864)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !155, file: !30, line: 529, baseType: !125, size: 64, offset: 4928)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !155, file: !30, line: 534, baseType: !2064, size: 32, offset: 4992)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !78, line: 16, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !78, line: 13, baseType: !486)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !155, file: !30, line: 535, baseType: !486, size: 32, offset: 5024)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !155, file: !30, line: 537, baseType: !179, offset: 5056)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !155, file: !30, line: 538, baseType: !166, size: 128, offset: 5056)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !155, file: !30, line: 540, baseType: !2070, size: 64, offset: 5184)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2072, line: 54, size: 960, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2084, !2088, !2089, !2090, !2091, !2095, !2099, !2100}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !2072, line: 55, baseType: !162, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2071, file: !2072, line: 56, baseType: !1724, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2071, file: !2072, line: 58, baseType: !272, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2071, file: !2072, line: 59, baseType: !272, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2071, file: !2072, line: 60, baseType: !172, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2071, file: !2072, line: 62, baseType: !1660, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2071, file: !2072, line: 63, baseType: !2081, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!220, !1647, !1667}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2071, file: !2072, line: 65, baseType: !2085, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2070}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2071, file: !2072, line: 66, baseType: !1669, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2071, file: !2072, line: 68, baseType: !1678, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2071, file: !2072, line: 70, baseType: !1434, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2071, file: !2072, line: 71, baseType: !2092, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!151, !1647}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2071, file: !2072, line: 73, baseType: !2096, size: 64, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1647, !1469, !1476}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2071, file: !2072, line: 75, baseType: !1673, size: 64, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2071, file: !2072, line: 77, baseType: !1794, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !155, file: !30, line: 541, baseType: !272, size: 64, offset: 5248)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !155, file: !30, line: 543, baseType: !1669, size: 64, offset: 5312)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !155, file: !30, line: 544, baseType: !2104, size: 64, offset: 5376)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !155, file: !30, line: 545, baseType: !2107, size: 64, offset: 5440)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !155, file: !30, line: 547, baseType: !143, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !155, file: !30, line: 548, baseType: !143, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !155, file: !30, line: 549, baseType: !143, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !155, file: !30, line: 550, baseType: !143, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !129, file: !122, line: 116, baseType: !2114, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!143, !145, !162}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !129, file: !122, line: 118, baseType: !2118, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!117, !145, !162, !7, !86, !266}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !129, file: !122, line: 123, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!117, !145, !162, !2125, !266}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !129, file: !122, line: 126, baseType: !2127, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!162, !145}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !129, file: !122, line: 127, baseType: !2127, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !129, file: !122, line: 128, baseType: !2132, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!125, !145}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !129, file: !122, line: 130, baseType: !2136, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!125, !145, !125}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !129, file: !122, line: 133, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!125, !145, !162}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !129, file: !122, line: 135, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!117, !145, !162, !162, !7, !7, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !122, line: 43, size: 640, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2148, file: !122, line: 44, baseType: !125, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2148, file: !122, line: 45, baseType: !7, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2148, file: !122, line: 46, baseType: !2153, size: 512, offset: 128)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !591)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !129, file: !122, line: 140, baseType: !2136, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !129, file: !122, line: 143, baseType: !2132, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !129, file: !122, line: 145, baseType: !132, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !129, file: !122, line: 146, baseType: !2158, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!117, !145, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !122, line: 29, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2162, file: !122, line: 30, baseType: !7, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2162, file: !122, line: 31, baseType: !7, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2162, file: !122, line: 32, baseType: !145, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !129, file: !122, line: 148, baseType: !2168, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!117, !145, !1647}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !121, file: !122, line: 20, baseType: !1647, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 355, baseType: !112, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !113, file: !114, line: 356, baseType: !166, size: 128, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !114, line: 357, baseType: !166, size: 128, offset: 512)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !113, file: !114, line: 358, baseType: !166, size: 128, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !113, file: !114, line: 359, baseType: !166, size: 128, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !113, file: !114, line: 360, baseType: !2178, size: 32, offset: 896)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !114, line: 179, size: 32, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2178, file: !114, line: 180, baseType: !486, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2178, file: !114, line: 181, baseType: !486, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2178, file: !114, line: 182, baseType: !486, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2178, file: !114, line: 183, baseType: !486, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2178, file: !114, line: 184, baseType: !486, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2178, file: !114, line: 185, baseType: !486, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !114, line: 361, baseType: !2187, size: 32, offset: 928)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !114, line: 190, size: 32, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2187, file: !114, line: 191, baseType: !486, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2187, file: !114, line: 192, baseType: !486, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2187, file: !114, line: 193, baseType: !486, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2187, file: !114, line: 194, baseType: !486, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2187, file: !114, line: 195, baseType: !486, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2187, file: !114, line: 196, baseType: !486, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2187, file: !114, line: 197, baseType: !486, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2187, file: !114, line: 198, baseType: !486, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2187, file: !114, line: 199, baseType: !486, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2187, file: !114, line: 200, baseType: !486, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2187, file: !114, line: 201, baseType: !486, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2187, file: !114, line: 202, baseType: !486, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2187, file: !114, line: 203, baseType: !486, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2187, file: !114, line: 204, baseType: !486, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !113, file: !114, line: 362, baseType: !2204, size: 960, offset: 960)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !114, line: 234, size: 960, elements: !2205)
!2205 = !{!2206, !2208, !2215, !2217, !2218, !2219, !2224, !2227}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2204, file: !114, line: 235, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !114, line: 217, baseType: !988)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2204, file: !114, line: 236, baseType: !2209, size: 32, offset: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !114, line: 227, size: 32, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2209, file: !114, line: 228, baseType: !486, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2209, file: !114, line: 229, baseType: !486, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2209, file: !114, line: 230, baseType: !486, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2209, file: !114, line: 231, baseType: !486, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2204, file: !114, line: 237, baseType: !2216, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !114, line: 218, baseType: !81)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2204, file: !114, line: 238, baseType: !220, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2204, file: !114, line: 239, baseType: !166, size: 128, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2204, file: !114, line: 240, baseType: !2220, size: 320, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !114, line: 219, baseType: !2221)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 320, elements: !2222)
!2222 = !{!2223}
!2223 = !DISubrange(count: 40)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2204, file: !114, line: 241, baseType: !2225, size: 160, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !114, line: 220, baseType: !2226)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 160, elements: !1252)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2204, file: !114, line: 242, baseType: !2228, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !80, line: 899, size: 192, elements: !2230)
!2230 = !{!2231, !2233, !2238, !2244, !2251, !2257, !2263, !2271}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !80, line: 900, baseType: !2232, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !80, line: 635, baseType: !486)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2229, file: !80, line: 904, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 901, size: 128, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2234, file: !80, line: 902, baseType: !2232, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2234, file: !80, line: 903, baseType: !81, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2229, file: !80, line: 910, baseType: !2239, size: 128)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 906, size: 128, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2239, file: !80, line: 907, baseType: !2232, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2239, file: !80, line: 908, baseType: !486, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2239, file: !80, line: 909, baseType: !220, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2229, file: !80, line: 916, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 912, size: 128, elements: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2245, file: !80, line: 913, baseType: !2232, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2245, file: !80, line: 914, baseType: !486, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2245, file: !80, line: 915, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2229, file: !80, line: 922, baseType: !2252, size: 128)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 918, size: 128, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2252, file: !80, line: 919, baseType: !2232, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2252, file: !80, line: 920, baseType: !486, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2252, file: !80, line: 921, baseType: !2228, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2229, file: !80, line: 928, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 924, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2258, file: !80, line: 925, baseType: !2232, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2258, file: !80, line: 926, baseType: !2232, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2258, file: !80, line: 927, baseType: !119, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2229, file: !80, line: 935, baseType: !2264, size: 192)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 930, size: 192, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2270}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2264, file: !80, line: 931, baseType: !2232, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2264, file: !80, line: 932, baseType: !486, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2264, file: !80, line: 933, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !80, line: 128, baseType: !81)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2264, file: !80, line: 934, baseType: !486, size: 32, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2229, file: !80, line: 941, baseType: !2272, size: 96)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !80, line: 937, size: 96, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2272, file: !80, line: 938, baseType: !2232, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2272, file: !80, line: 939, baseType: !486, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2272, file: !80, line: 940, baseType: !486, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !113, file: !114, line: 363, baseType: !2278, size: 1344, offset: 1920)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !114, line: 275, size: 1344, elements: !2279)
!2279 = !{!2280, !2281, !2291}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2278, file: !114, line: 276, baseType: !117, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !114, line: 277, baseType: !2282, size: 32, offset: 32)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !114, line: 254, size: 32, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2282, file: !114, line: 255, baseType: !486, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2282, file: !114, line: 256, baseType: !486, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2282, file: !114, line: 257, baseType: !486, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2282, file: !114, line: 258, baseType: !486, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2282, file: !114, line: 259, baseType: !486, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2282, file: !114, line: 260, baseType: !486, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2282, file: !114, line: 261, baseType: !486, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2278, file: !114, line: 278, baseType: !2292, size: 1280, offset: 64)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2293, size: 1280, elements: !2304)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !114, line: 264, size: 256, elements: !2294)
!2294 = !{!2295, !2301, !2302, !2303}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !114, line: 269, baseType: !2296, size: 8)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !114, line: 265, size: 8, elements: !2297)
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2296, file: !114, line: 266, baseType: !622, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2296, file: !114, line: 267, baseType: !622, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2296, file: !114, line: 268, baseType: !622, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2293, file: !114, line: 270, baseType: !117, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2293, file: !114, line: 271, baseType: !117, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2293, file: !114, line: 272, baseType: !166, size: 128, offset: 128)
!2304 = !{!2305}
!2305 = !DISubrange(count: 5)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !113, file: !114, line: 364, baseType: !2307, size: 640, offset: 3264)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !114, line: 315, size: 640, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2318, !2327, !2328, !2329}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2307, file: !114, line: 316, baseType: !119, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2307, file: !114, line: 317, baseType: !81, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2307, file: !114, line: 318, baseType: !81, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2307, file: !114, line: 319, baseType: !166, size: 128, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !114, line: 320, baseType: !2314, size: 8, offset: 320)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !114, line: 305, size: 8, elements: !2315)
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2314, file: !114, line: 306, baseType: !622, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2314, file: !114, line: 307, baseType: !622, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2307, file: !114, line: 321, baseType: !2319, size: 128, offset: 384)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !114, line: 310, size: 128, elements: !2320)
!2320 = !{!2321, !2326}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2319, file: !114, line: 311, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2319, file: !114, line: 312, baseType: !1647, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2307, file: !114, line: 322, baseType: !1832, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2307, file: !114, line: 323, baseType: !117, size: 32, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2307, file: !114, line: 324, baseType: !117, size: 32, offset: 608)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !113, file: !114, line: 365, baseType: !2331, size: 192, offset: 3904)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !114, line: 297, size: 192, elements: !2332)
!2332 = !{!2333, !2334, !2338, !2339}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2331, file: !114, line: 298, baseType: !117, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2331, file: !114, line: 299, baseType: !2335, size: 8, offset: 32)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !114, line: 283, size: 8, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2335, file: !114, line: 284, baseType: !622, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2331, file: !114, line: 300, baseType: !117, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2331, file: !114, line: 301, baseType: !2340, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !114, line: 287, size: 64, elements: !2342)
!2342 = !{!2343, !2348, !2349, !2350}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2341, file: !114, line: 291, baseType: !2344, size: 8)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2341, file: !114, line: 288, size: 8, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2344, file: !114, line: 289, baseType: !622, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2344, file: !114, line: 290, baseType: !622, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2341, file: !114, line: 292, baseType: !622, size: 8, offset: 8)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2341, file: !114, line: 293, baseType: !622, size: 8, offset: 16)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2341, file: !114, line: 294, baseType: !117, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !113, file: !114, line: 366, baseType: !2352, size: 64, offset: 4096)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !114, line: 209, size: 64, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2352, file: !114, line: 210, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !114, line: 84, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !113, file: !114, line: 367, baseType: !2358, size: 384, offset: 4160)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !114, line: 341, size: 384, elements: !2359)
!2359 = !{!2360, !2363, !2364, !2365}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2358, file: !114, line: 342, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2358, file: !114, line: 343, baseType: !166, size: 128, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2358, file: !114, line: 344, baseType: !2361, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2358, file: !114, line: 345, baseType: !166, size: 128, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !113, file: !114, line: 368, baseType: !2367, size: 64, offset: 4544)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !114, line: 122, size: 1216, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2377, !2381, !2383, !2384, !2385}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2368, file: !114, line: 123, baseType: !1745, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2368, file: !114, line: 124, baseType: !166, size: 128, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2368, file: !114, line: 125, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!143, !162, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2368, file: !114, line: 126, baseType: !2378, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!117, !112, !1745}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2368, file: !114, line: 127, baseType: !2382, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2368, file: !114, line: 128, baseType: !1669, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2368, file: !114, line: 129, baseType: !1669, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2368, file: !114, line: 130, baseType: !2386, size: 704, offset: 512)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !114, line: 108, size: 704, elements: !2387)
!2387 = !{!2388, !2389, !2393, !2394, !2395}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2386, file: !114, line: 109, baseType: !158, size: 512)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2386, file: !114, line: 110, baseType: !2390, size: 64, offset: 512)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!117, !112}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2386, file: !114, line: 111, baseType: !2382, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2386, file: !114, line: 112, baseType: !143, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2386, file: !114, line: 113, baseType: !143, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !113, file: !114, line: 369, baseType: !2397, size: 64, offset: 4608)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !114, line: 138, size: 256, elements: !2399)
!2399 = !{!2400, !2401, !2405, !2409}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2398, file: !114, line: 139, baseType: !112, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2398, file: !114, line: 140, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!117, !112, !486}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2398, file: !114, line: 141, baseType: !2406, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !112, !486}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2398, file: !114, line: 142, baseType: !2382, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !113, file: !114, line: 370, baseType: !2411, size: 64, offset: 4672)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !114, line: 162, size: 2816, elements: !2413)
!2413 = !{!2414, !2418, !2419, !2420, !2421, !2430, !2431}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2412, file: !114, line: 163, baseType: !2415, size: 640)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 640, elements: !2416)
!2416 = !{!2417}
!2417 = !DISubrange(count: 80)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2412, file: !114, line: 164, baseType: !2415, size: 640, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2412, file: !114, line: 165, baseType: !1745, size: 64, offset: 1280)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !114, line: 166, baseType: !7, size: 32, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2412, file: !114, line: 167, baseType: !2422, size: 192, offset: 1408)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !114, line: 154, size: 192, elements: !2423)
!2423 = !{!2424, !2426, !2428}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2422, file: !114, line: 155, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !114, line: 150, baseType: !2390)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2422, file: !114, line: 156, baseType: !2427, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !114, line: 151, baseType: !2390)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2422, file: !114, line: 157, baseType: !2429, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !114, line: 152, baseType: !2406)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2412, file: !114, line: 168, baseType: !1719, size: 1152, offset: 1600)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2412, file: !114, line: 169, baseType: !1724, size: 64, offset: 2752)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !113, file: !114, line: 371, baseType: !2433, size: 64, offset: 4736)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !114, line: 348, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !113, file: !114, line: 372, baseType: !86, size: 64, offset: 4800)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !113, file: !114, line: 373, baseType: !155, size: 5568, offset: 4864)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !113, file: !114, line: 374, baseType: !7, size: 32, offset: 10432)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !113, file: !114, line: 375, baseType: !7, size: 32, offset: 10464)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !113, file: !114, line: 376, baseType: !166, size: 128, offset: 10496)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !113, file: !114, line: 377, baseType: !431, size: 192, offset: 10624)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !113, file: !114, line: 378, baseType: !2382, size: 64, offset: 10816)
!2443 = !DILocalVariable(name: "w", arg: 1, scope: !2444, file: !2445, line: 43, type: !83)
!2444 = distinct !DISubprogram(name: "__arch_hweight64", scope: !2445, file: !2445, line: 43, type: !2446, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2445 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!90, !83}
!2448 = !DILocation(line: 43, column: 61, scope: !2444, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 75, column: 41, scope: !2450, inlinedAt: !2454)
!2450 = distinct !DISubprogram(name: "hweight_long", scope: !2451, file: !2451, line: 73, type: !2452, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2451 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!90, !90}
!2454 = distinct !DILocation(line: 401, column: 10, scope: !2455, inlinedAt: !2462)
!2455 = distinct !DILexicalBlock(scope: !2457, file: !2456, line: 400, column: 6)
!2456 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!2457 = distinct !DISubprogram(name: "bitmap_weight", scope: !2456, file: !2456, line: 398, type: !2458, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!117, !2460, !7}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!2462 = distinct !DILocation(line: 82, column: 13, scope: !109)
!2463 = !DILocalVariable(name: "res", scope: !2444, file: !2445, line: 45, type: !90)
!2464 = !DILocation(line: 45, column: 16, scope: !2444, inlinedAt: !2449)
!2465 = !DILocalVariable(name: "w", arg: 1, scope: !2450, file: !2451, line: 73, type: !90)
!2466 = !DILocation(line: 73, column: 65, scope: !2450, inlinedAt: !2454)
!2467 = !DILocalVariable(name: "src", arg: 1, scope: !2457, file: !2456, line: 398, type: !2460)
!2468 = !DILocation(line: 398, column: 63, scope: !2457, inlinedAt: !2462)
!2469 = !DILocalVariable(name: "nbits", arg: 2, scope: !2457, file: !2456, line: 398, type: !7)
!2470 = !DILocation(line: 398, column: 81, scope: !2457, inlinedAt: !2462)
!2471 = !DILocalVariable(name: "adev", arg: 1, scope: !109, file: !3, line: 27, type: !112)
!2472 = !DILocation(line: 27, column: 56, scope: !109)
!2473 = !DILocalVariable(name: "i", scope: !109, file: !3, line: 29, type: !7)
!2474 = !DILocation(line: 29, column: 15, scope: !109)
!2475 = !DILocalVariable(name: "j", scope: !109, file: !3, line: 29, type: !7)
!2476 = !DILocation(line: 29, column: 18, scope: !109)
!2477 = !DILocalVariable(name: "newsize", scope: !109, file: !3, line: 29, type: !7)
!2478 = !DILocation(line: 29, column: 25, scope: !109)
!2479 = !DILocalVariable(name: "numprops", scope: !109, file: !3, line: 29, type: !7)
!2480 = !DILocation(line: 29, column: 38, scope: !109)
!2481 = !DILocalVariable(name: "numvalid", scope: !109, file: !3, line: 29, type: !7)
!2482 = !DILocation(line: 29, column: 48, scope: !109)
!2483 = !DILocalVariable(name: "props", scope: !109, file: !3, line: 30, type: !2228)
!2484 = !DILocation(line: 30, column: 21, scope: !109)
!2485 = !DILocalVariable(name: "newprops", scope: !109, file: !3, line: 30, type: !2228)
!2486 = !DILocation(line: 30, column: 29, scope: !109)
!2487 = !DILocalVariable(name: "valid", scope: !109, file: !3, line: 31, type: !1997)
!2488 = !DILocation(line: 31, column: 17, scope: !109)
!2489 = !DILocalVariable(name: "free_space", scope: !109, file: !3, line: 32, type: !86)
!2490 = !DILocation(line: 32, column: 8, scope: !109)
!2491 = !DILocation(line: 34, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !109, file: !3, line: 34, column: 6)
!2493 = !DILocation(line: 34, column: 6, scope: !109)
!2494 = !DILocation(line: 35, column: 3, scope: !2492)
!2495 = !DILocation(line: 37, column: 34, scope: !109)
!2496 = !DILocation(line: 37, column: 40, scope: !109)
!2497 = !DILocation(line: 37, column: 10, scope: !109)
!2498 = !DILocation(line: 37, column: 8, scope: !109)
!2499 = !DILocation(line: 39, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !109, file: !3, line: 39, column: 6)
!2501 = !DILocation(line: 39, column: 6, scope: !109)
!2502 = !DILocation(line: 40, column: 3, scope: !2500)
!2503 = !DILocation(line: 42, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !109, file: !3, line: 42, column: 6)
!2505 = !DILocation(line: 42, column: 14, scope: !2504)
!2506 = !DILocation(line: 42, column: 21, scope: !2504)
!2507 = !DILocation(line: 42, column: 6, scope: !109)
!2508 = !DILocation(line: 43, column: 3, scope: !2504)
!2509 = !DILocation(line: 45, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !109, file: !3, line: 45, column: 6)
!2511 = !DILocation(line: 45, column: 13, scope: !2510)
!2512 = !DILocation(line: 45, column: 20, scope: !2510)
!2513 = !DILocation(line: 45, column: 31, scope: !2510)
!2514 = !DILocation(line: 45, column: 6, scope: !109)
!2515 = !DILocation(line: 46, column: 3, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 45, column: 37)
!2517 = !DILocation(line: 49, column: 3, scope: !2516)
!2518 = !DILocation(line: 52, column: 2, scope: !109)
!2519 = !DILocation(line: 53, column: 34, scope: !109)
!2520 = !DILocation(line: 53, column: 40, scope: !109)
!2521 = !DILocation(line: 53, column: 10, scope: !109)
!2522 = !DILocation(line: 53, column: 8, scope: !109)
!2523 = !DILocation(line: 55, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !109, file: !3, line: 55, column: 6)
!2525 = !DILocation(line: 55, column: 6, scope: !109)
!2526 = !DILocation(line: 56, column: 3, scope: !2524)
!2527 = !DILocation(line: 58, column: 13, scope: !109)
!2528 = !DILocation(line: 58, column: 20, scope: !109)
!2529 = !DILocation(line: 58, column: 28, scope: !109)
!2530 = !DILocation(line: 58, column: 34, scope: !109)
!2531 = !DILocation(line: 58, column: 11, scope: !109)
!2532 = !DILocation(line: 59, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !109, file: !3, line: 59, column: 6)
!2534 = !DILocation(line: 59, column: 6, scope: !109)
!2535 = !DILocation(line: 60, column: 3, scope: !2533)
!2536 = !DILocation(line: 62, column: 24, scope: !109)
!2537 = !DILocation(line: 62, column: 10, scope: !109)
!2538 = !DILocation(line: 62, column: 8, scope: !109)
!2539 = !DILocation(line: 63, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !109, file: !3, line: 63, column: 6)
!2541 = !DILocation(line: 63, column: 6, scope: !109)
!2542 = !DILocation(line: 64, column: 3, scope: !2540)
!2543 = !DILocation(line: 67, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !109, file: !3, line: 67, column: 2)
!2545 = !DILocation(line: 67, column: 7, scope: !2544)
!2546 = !DILocation(line: 67, column: 14, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 67, column: 2)
!2548 = !DILocation(line: 67, column: 18, scope: !2547)
!2549 = !DILocation(line: 67, column: 16, scope: !2547)
!2550 = !DILocation(line: 67, column: 2, scope: !2544)
!2551 = !DILocalVariable(name: "key", scope: !2552, file: !3, line: 68, type: !2228)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 67, column: 33)
!2553 = !DILocation(line: 68, column: 22, scope: !2552)
!2554 = !DILocation(line: 68, column: 29, scope: !2552)
!2555 = !DILocation(line: 68, column: 36, scope: !2552)
!2556 = !DILocation(line: 68, column: 44, scope: !2552)
!2557 = !DILocation(line: 68, column: 53, scope: !2552)
!2558 = !DILocation(line: 68, column: 55, scope: !2552)
!2559 = !DILocalVariable(name: "val", scope: !2552, file: !3, line: 69, type: !2228)
!2560 = !DILocation(line: 69, column: 22, scope: !2552)
!2561 = !DILocation(line: 69, column: 29, scope: !2552)
!2562 = !DILocation(line: 69, column: 36, scope: !2552)
!2563 = !DILocation(line: 69, column: 44, scope: !2552)
!2564 = !DILocation(line: 69, column: 53, scope: !2552)
!2565 = !DILocation(line: 69, column: 55, scope: !2552)
!2566 = !DILocation(line: 69, column: 59, scope: !2552)
!2567 = !DILocation(line: 71, column: 8, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 71, column: 8)
!2569 = !DILocation(line: 71, column: 13, scope: !2568)
!2570 = !DILocation(line: 71, column: 18, scope: !2568)
!2571 = !DILocation(line: 71, column: 38, scope: !2568)
!2572 = !DILocation(line: 72, column: 8, scope: !2568)
!2573 = !DILocation(line: 72, column: 13, scope: !2568)
!2574 = !DILocation(line: 72, column: 18, scope: !2568)
!2575 = !DILocation(line: 72, column: 39, scope: !2568)
!2576 = !DILocation(line: 73, column: 8, scope: !2568)
!2577 = !DILocation(line: 73, column: 13, scope: !2568)
!2578 = !DILocation(line: 73, column: 18, scope: !2568)
!2579 = !DILocation(line: 71, column: 8, scope: !2552)
!2580 = !DILocation(line: 74, column: 4, scope: !2568)
!2581 = !DILocation(line: 76, column: 13, scope: !2552)
!2582 = !DILocation(line: 76, column: 16, scope: !2552)
!2583 = !DILocation(line: 76, column: 3, scope: !2552)
!2584 = !DILocation(line: 77, column: 14, scope: !2552)
!2585 = !DILocation(line: 77, column: 19, scope: !2552)
!2586 = !DILocation(line: 77, column: 26, scope: !2552)
!2587 = !DILocation(line: 77, column: 33, scope: !2552)
!2588 = !DILocation(line: 77, column: 11, scope: !2552)
!2589 = !DILocation(line: 78, column: 8, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 78, column: 8)
!2591 = !DILocation(line: 78, column: 13, scope: !2590)
!2592 = !DILocation(line: 78, column: 18, scope: !2590)
!2593 = !DILocation(line: 78, column: 8, scope: !2552)
!2594 = !DILocation(line: 79, column: 15, scope: !2590)
!2595 = !DILocation(line: 79, column: 20, scope: !2590)
!2596 = !DILocation(line: 79, column: 27, scope: !2590)
!2597 = !DILocation(line: 79, column: 12, scope: !2590)
!2598 = !DILocation(line: 79, column: 4, scope: !2590)
!2599 = !DILocation(line: 80, column: 2, scope: !2552)
!2600 = !DILocation(line: 67, column: 29, scope: !2547)
!2601 = !DILocation(line: 67, column: 2, scope: !2547)
!2602 = distinct !{!2602, !2550, !2603}
!2603 = !DILocation(line: 80, column: 2, scope: !2544)
!2604 = !DILocation(line: 82, column: 27, scope: !109)
!2605 = !DILocation(line: 82, column: 34, scope: !109)
!2606 = !DILocation(line: 400, column: 6, scope: !2455, inlinedAt: !2462)
!2607 = !DILocation(line: 400, column: 6, scope: !2457, inlinedAt: !2462)
!2608 = !DILocation(line: 401, column: 24, scope: !2455, inlinedAt: !2462)
!2609 = !DILocation(line: 401, column: 23, scope: !2455, inlinedAt: !2462)
!2610 = !DILocation(line: 401, column: 30, scope: !2455, inlinedAt: !2462)
!2611 = !DILocation(line: 401, column: 28, scope: !2455, inlinedAt: !2462)
!2612 = !DILocation(line: 75, column: 41, scope: !2450, inlinedAt: !2454)
!2613 = !DILocation(line: 49, column: 15, scope: !2444, inlinedAt: !2449)
!2614 = !DILocation(line: 47, column: 2, scope: !2444, inlinedAt: !2449)
!2615 = !{i32 -2147085732, i32 -2147085704, i32 -2147085698, i32 -2147085682, i32 -2147085666, i32 -2147085639, i32 -2147085306, i32 -2147086024, i32 -2147085300, i32 -2147085252, i32 -2147085188, i32 -2147085126, i32 -2147085069, i32 -2147085013, i32 -2147085944, i32 -2147085919, i32 -2147084779, i32 -2147084649, i32 -2147084718, i32 -2147084635, i32 -2147085819}
!2616 = !DILocation(line: 51, column: 9, scope: !2444, inlinedAt: !2449)
!2617 = !DILocation(line: 401, column: 10, scope: !2455, inlinedAt: !2462)
!2618 = !DILocation(line: 401, column: 3, scope: !2455, inlinedAt: !2462)
!2619 = !DILocation(line: 402, column: 25, scope: !2457, inlinedAt: !2462)
!2620 = !DILocation(line: 402, column: 30, scope: !2457, inlinedAt: !2462)
!2621 = !DILocation(line: 402, column: 9, scope: !2457, inlinedAt: !2462)
!2622 = !DILocation(line: 402, column: 2, scope: !2457, inlinedAt: !2462)
!2623 = !DILocation(line: 403, column: 1, scope: !2457, inlinedAt: !2462)
!2624 = !DILocation(line: 82, column: 11, scope: !109)
!2625 = !DILocation(line: 83, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !109, file: !3, line: 83, column: 6)
!2627 = !DILocation(line: 83, column: 17, scope: !2626)
!2628 = !DILocation(line: 83, column: 15, scope: !2626)
!2629 = !DILocation(line: 83, column: 6, scope: !109)
!2630 = !DILocation(line: 84, column: 3, scope: !2626)
!2631 = !DILocation(line: 87, column: 6, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !109, file: !3, line: 87, column: 6)
!2633 = !DILocation(line: 87, column: 15, scope: !2632)
!2634 = !DILocation(line: 87, column: 6, scope: !109)
!2635 = !DILocation(line: 88, column: 3, scope: !2632)
!2636 = !DILocation(line: 91, column: 22, scope: !109)
!2637 = !DILocation(line: 91, column: 20, scope: !109)
!2638 = !DILocation(line: 91, column: 16, scope: !109)
!2639 = !DILocation(line: 91, column: 13, scope: !109)
!2640 = !DILocation(line: 91, column: 32, scope: !109)
!2641 = !DILocation(line: 91, column: 10, scope: !109)
!2642 = !DILocation(line: 92, column: 13, scope: !109)
!2643 = !DILocation(line: 92, column: 11, scope: !109)
!2644 = !DILocation(line: 93, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !109, file: !3, line: 93, column: 6)
!2646 = !DILocation(line: 93, column: 6, scope: !109)
!2647 = !DILocation(line: 94, column: 3, scope: !2645)
!2648 = !DILocation(line: 97, column: 2, scope: !109)
!2649 = !DILocation(line: 97, column: 12, scope: !109)
!2650 = !DILocation(line: 97, column: 17, scope: !109)
!2651 = !DILocation(line: 98, column: 28, scope: !109)
!2652 = !DILocation(line: 98, column: 2, scope: !109)
!2653 = !DILocation(line: 98, column: 12, scope: !109)
!2654 = !DILocation(line: 98, column: 20, scope: !109)
!2655 = !DILocation(line: 98, column: 26, scope: !109)
!2656 = !DILocation(line: 99, column: 32, scope: !109)
!2657 = !DILocation(line: 99, column: 2, scope: !109)
!2658 = !DILocation(line: 99, column: 12, scope: !109)
!2659 = !DILocation(line: 99, column: 20, scope: !109)
!2660 = !DILocation(line: 99, column: 29, scope: !109)
!2661 = !DILocation(line: 100, column: 16, scope: !109)
!2662 = !DILocation(line: 100, column: 33, scope: !109)
!2663 = !DILocation(line: 100, column: 31, scope: !109)
!2664 = !DILocation(line: 100, column: 27, scope: !109)
!2665 = !DILocation(line: 100, column: 15, scope: !109)
!2666 = !DILocation(line: 100, column: 13, scope: !109)
!2667 = !DILocation(line: 102, column: 2, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !109, file: !3, line: 102, column: 2)
!2669 = !DILocation(line: 102, column: 2, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 102, column: 2)
!2671 = !DILocalVariable(name: "key", scope: !2672, file: !3, line: 103, type: !2228)
!2672 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 102, column: 39)
!2673 = !DILocation(line: 103, column: 22, scope: !2672)
!2674 = !DILocation(line: 103, column: 29, scope: !2672)
!2675 = !DILocation(line: 103, column: 36, scope: !2672)
!2676 = !DILocation(line: 103, column: 44, scope: !2672)
!2677 = !DILocation(line: 103, column: 53, scope: !2672)
!2678 = !DILocation(line: 103, column: 55, scope: !2672)
!2679 = !DILocalVariable(name: "val", scope: !2672, file: !3, line: 104, type: !2228)
!2680 = !DILocation(line: 104, column: 22, scope: !2672)
!2681 = !DILocation(line: 104, column: 29, scope: !2672)
!2682 = !DILocation(line: 104, column: 36, scope: !2672)
!2683 = !DILocation(line: 104, column: 44, scope: !2672)
!2684 = !DILocation(line: 104, column: 53, scope: !2672)
!2685 = !DILocation(line: 104, column: 55, scope: !2672)
!2686 = !DILocation(line: 104, column: 59, scope: !2672)
!2687 = !DILocalVariable(name: "k", scope: !2672, file: !3, line: 105, type: !7)
!2688 = !DILocation(line: 105, column: 16, scope: !2672)
!2689 = !DILocation(line: 105, column: 24, scope: !2672)
!2690 = !DILocation(line: 105, column: 22, scope: !2672)
!2691 = !DILocation(line: 105, column: 35, scope: !2672)
!2692 = !DILocation(line: 105, column: 37, scope: !2672)
!2693 = !DILocation(line: 105, column: 33, scope: !2672)
!2694 = !DILocalVariable(name: "v", scope: !2672, file: !3, line: 106, type: !7)
!2695 = !DILocation(line: 106, column: 16, scope: !2672)
!2696 = !DILocation(line: 106, column: 20, scope: !2672)
!2697 = !DILocation(line: 106, column: 22, scope: !2672)
!2698 = !DILocation(line: 108, column: 3, scope: !2672)
!2699 = !DILocation(line: 108, column: 16, scope: !2672)
!2700 = !DILocation(line: 108, column: 14, scope: !2672)
!2701 = !DILocation(line: 108, column: 19, scope: !2672)
!2702 = !DILocation(line: 108, column: 24, scope: !2672)
!2703 = !DILocation(line: 109, column: 3, scope: !2672)
!2704 = !DILocation(line: 109, column: 16, scope: !2672)
!2705 = !DILocation(line: 109, column: 14, scope: !2672)
!2706 = !DILocation(line: 109, column: 19, scope: !2672)
!2707 = !DILocation(line: 109, column: 27, scope: !2672)
!2708 = !DILocation(line: 109, column: 33, scope: !2672)
!2709 = !DILocation(line: 110, column: 39, scope: !2672)
!2710 = !DILocation(line: 110, column: 48, scope: !2672)
!2711 = !DILocation(line: 110, column: 3, scope: !2672)
!2712 = !DILocation(line: 110, column: 16, scope: !2672)
!2713 = !DILocation(line: 110, column: 14, scope: !2672)
!2714 = !DILocation(line: 110, column: 19, scope: !2672)
!2715 = !DILocation(line: 110, column: 27, scope: !2672)
!2716 = !DILocation(line: 110, column: 36, scope: !2672)
!2717 = !DILocation(line: 112, column: 3, scope: !2672)
!2718 = !DILocation(line: 112, column: 12, scope: !2672)
!2719 = !DILocation(line: 112, column: 15, scope: !2672)
!2720 = !DILocation(line: 112, column: 20, scope: !2672)
!2721 = !DILocation(line: 113, column: 31, scope: !2672)
!2722 = !DILocation(line: 113, column: 36, scope: !2672)
!2723 = !DILocation(line: 113, column: 43, scope: !2672)
!2724 = !DILocation(line: 113, column: 3, scope: !2672)
!2725 = !DILocation(line: 113, column: 12, scope: !2672)
!2726 = !DILocation(line: 113, column: 15, scope: !2672)
!2727 = !DILocation(line: 113, column: 22, scope: !2672)
!2728 = !DILocation(line: 113, column: 29, scope: !2672)
!2729 = !DILocation(line: 114, column: 32, scope: !2672)
!2730 = !DILocation(line: 114, column: 3, scope: !2672)
!2731 = !DILocation(line: 114, column: 12, scope: !2672)
!2732 = !DILocation(line: 114, column: 15, scope: !2672)
!2733 = !DILocation(line: 114, column: 22, scope: !2672)
!2734 = !DILocation(line: 114, column: 30, scope: !2672)
!2735 = !DILocation(line: 115, column: 10, scope: !2672)
!2736 = !DILocation(line: 115, column: 22, scope: !2672)
!2737 = !DILocation(line: 115, column: 27, scope: !2672)
!2738 = !DILocation(line: 115, column: 34, scope: !2672)
!2739 = !DILocation(line: 115, column: 43, scope: !2672)
!2740 = !DILocation(line: 115, column: 48, scope: !2672)
!2741 = !DILocation(line: 115, column: 55, scope: !2672)
!2742 = !DILocation(line: 115, column: 3, scope: !2672)
!2743 = !DILocation(line: 116, column: 17, scope: !2672)
!2744 = !DILocation(line: 116, column: 22, scope: !2672)
!2745 = !DILocation(line: 116, column: 29, scope: !2672)
!2746 = !DILocation(line: 116, column: 36, scope: !2672)
!2747 = !DILocation(line: 116, column: 14, scope: !2672)
!2748 = !DILocation(line: 118, column: 22, scope: !2672)
!2749 = !DILocation(line: 118, column: 27, scope: !2672)
!2750 = !DILocation(line: 118, column: 3, scope: !2672)
!2751 = !DILocation(line: 118, column: 12, scope: !2672)
!2752 = !DILocation(line: 118, column: 15, scope: !2672)
!2753 = !DILocation(line: 118, column: 20, scope: !2672)
!2754 = !DILocation(line: 119, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 119, column: 7)
!2756 = !DILocation(line: 119, column: 12, scope: !2755)
!2757 = !DILocation(line: 119, column: 17, scope: !2755)
!2758 = !DILocation(line: 119, column: 7, scope: !2672)
!2759 = !DILocation(line: 120, column: 32, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 119, column: 39)
!2761 = !DILocation(line: 120, column: 37, scope: !2760)
!2762 = !DILocation(line: 120, column: 45, scope: !2760)
!2763 = !DILocation(line: 120, column: 4, scope: !2760)
!2764 = !DILocation(line: 120, column: 13, scope: !2760)
!2765 = !DILocation(line: 120, column: 16, scope: !2760)
!2766 = !DILocation(line: 120, column: 24, scope: !2760)
!2767 = !DILocation(line: 120, column: 30, scope: !2760)
!2768 = !DILocation(line: 121, column: 3, scope: !2760)
!2769 = !DILocation(line: 122, column: 32, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 121, column: 10)
!2771 = !DILocation(line: 122, column: 37, scope: !2770)
!2772 = !DILocation(line: 122, column: 44, scope: !2770)
!2773 = !DILocation(line: 122, column: 4, scope: !2770)
!2774 = !DILocation(line: 122, column: 13, scope: !2770)
!2775 = !DILocation(line: 122, column: 16, scope: !2770)
!2776 = !DILocation(line: 122, column: 23, scope: !2770)
!2777 = !DILocation(line: 122, column: 30, scope: !2770)
!2778 = !DILocation(line: 123, column: 33, scope: !2770)
!2779 = !DILocation(line: 123, column: 4, scope: !2770)
!2780 = !DILocation(line: 123, column: 13, scope: !2770)
!2781 = !DILocation(line: 123, column: 16, scope: !2770)
!2782 = !DILocation(line: 123, column: 23, scope: !2770)
!2783 = !DILocation(line: 123, column: 31, scope: !2770)
!2784 = !DILocation(line: 124, column: 11, scope: !2770)
!2785 = !DILocation(line: 124, column: 23, scope: !2770)
!2786 = !DILocation(line: 124, column: 28, scope: !2770)
!2787 = !DILocation(line: 124, column: 35, scope: !2770)
!2788 = !DILocation(line: 125, column: 11, scope: !2770)
!2789 = !DILocation(line: 125, column: 16, scope: !2770)
!2790 = !DILocation(line: 125, column: 23, scope: !2770)
!2791 = !DILocation(line: 124, column: 4, scope: !2770)
!2792 = !DILocation(line: 126, column: 18, scope: !2770)
!2793 = !DILocation(line: 126, column: 23, scope: !2770)
!2794 = !DILocation(line: 126, column: 30, scope: !2770)
!2795 = !DILocation(line: 126, column: 15, scope: !2770)
!2796 = !DILocation(line: 128, column: 4, scope: !2672)
!2797 = !DILocation(line: 129, column: 2, scope: !2672)
!2798 = distinct !{!2798, !2667, !2799}
!2799 = !DILocation(line: 129, column: 2, scope: !2668)
!2800 = !DILocalVariable(name: "__ret_warn_on", scope: !2801, file: !3, line: 130, type: !117)
!2801 = distinct !DILexicalBlock(scope: !109, file: !3, line: 130, column: 2)
!2802 = !DILocation(line: 130, column: 2, scope: !2801)
!2803 = !DILocation(line: 130, column: 2, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 130, column: 2)
!2805 = !DILocation(line: 130, column: 2, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 130, column: 2)
!2807 = !DILocation(line: 130, column: 2, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 130, column: 2)
!2809 = !DILocation(line: 130, column: 2, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 130, column: 2)
!2811 = !{i32 -2142815530, i32 -2142815501, i32 -2142815455, i32 -2142815397, i32 -2142815343, i32 -2142815289, i32 -2142815234, i32 -2142815203}
!2812 = !DILocation(line: 130, column: 2, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 130, column: 2)
!2814 = !{i32 -2142814797, i32 -2142814790, i32 -2142814738, i32 -2142814707, i32 -2142814677}
!2815 = !DILocation(line: 130, column: 2, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 130, column: 2)
!2817 = !DILocation(line: 132, column: 23, scope: !109)
!2818 = !DILocation(line: 132, column: 2, scope: !109)
!2819 = !DILocation(line: 132, column: 8, scope: !109)
!2820 = !DILocation(line: 132, column: 13, scope: !109)
!2821 = !DILocation(line: 132, column: 21, scope: !109)
!2822 = !DILocation(line: 133, column: 23, scope: !109)
!2823 = !DILocation(line: 133, column: 29, scope: !109)
!2824 = !DILocation(line: 133, column: 52, scope: !109)
!2825 = !DILocation(line: 133, column: 2, scope: !109)
!2826 = !DILabel(scope: !109, name: "out_free", file: !3, line: 135)
!2827 = !DILocation(line: 135, column: 1, scope: !109)
!2828 = !DILocation(line: 136, column: 2, scope: !109)
!2829 = !DILocation(line: 137, column: 14, scope: !109)
!2830 = !DILocation(line: 137, column: 2, scope: !109)
!2831 = !DILocation(line: 138, column: 1, scope: !109)
!2832 = distinct !DISubprogram(name: "acpi_evaluate_dsm_typed", scope: !114, file: !114, line: 57, type: !2833, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!2228, !119, !2835, !81, !81, !2228, !2232}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!2836 = !DILocalVariable(name: "handle", arg: 1, scope: !2832, file: !114, line: 57, type: !119)
!2837 = !DILocation(line: 57, column: 37, scope: !2832)
!2838 = !DILocalVariable(name: "guid", arg: 2, scope: !2832, file: !114, line: 57, type: !2835)
!2839 = !DILocation(line: 57, column: 59, scope: !2832)
!2840 = !DILocalVariable(name: "rev", arg: 3, scope: !2832, file: !114, line: 57, type: !81)
!2841 = !DILocation(line: 57, column: 69, scope: !2832)
!2842 = !DILocalVariable(name: "func", arg: 4, scope: !2832, file: !114, line: 58, type: !81)
!2843 = !DILocation(line: 58, column: 8, scope: !2832)
!2844 = !DILocalVariable(name: "argv4", arg: 5, scope: !2832, file: !114, line: 58, type: !2228)
!2845 = !DILocation(line: 58, column: 33, scope: !2832)
!2846 = !DILocalVariable(name: "type", arg: 6, scope: !2832, file: !114, line: 59, type: !2232)
!2847 = !DILocation(line: 59, column: 21, scope: !2832)
!2848 = !DILocalVariable(name: "obj", scope: !2832, file: !114, line: 61, type: !2228)
!2849 = !DILocation(line: 61, column: 21, scope: !2832)
!2850 = !DILocation(line: 63, column: 26, scope: !2832)
!2851 = !DILocation(line: 63, column: 34, scope: !2832)
!2852 = !DILocation(line: 63, column: 40, scope: !2832)
!2853 = !DILocation(line: 63, column: 45, scope: !2832)
!2854 = !DILocation(line: 63, column: 51, scope: !2832)
!2855 = !DILocation(line: 63, column: 8, scope: !2832)
!2856 = !DILocation(line: 63, column: 6, scope: !2832)
!2857 = !DILocation(line: 64, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2832, file: !114, line: 64, column: 6)
!2859 = !DILocation(line: 64, column: 10, scope: !2858)
!2860 = !DILocation(line: 64, column: 13, scope: !2858)
!2861 = !DILocation(line: 64, column: 18, scope: !2858)
!2862 = !DILocation(line: 64, column: 26, scope: !2858)
!2863 = !DILocation(line: 64, column: 23, scope: !2858)
!2864 = !DILocation(line: 64, column: 6, scope: !2832)
!2865 = !DILocation(line: 65, column: 3, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !114, line: 64, column: 32)
!2867 = !DILocation(line: 66, column: 7, scope: !2866)
!2868 = !DILocation(line: 67, column: 2, scope: !2866)
!2869 = !DILocation(line: 69, column: 9, scope: !2832)
!2870 = !DILocation(line: 69, column: 2, scope: !2832)
!2871 = distinct !DISubprogram(name: "acpi_os_free", scope: !2872, file: !2872, line: 60, type: !1459, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2872 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !DILocalVariable(name: "memory", arg: 1, scope: !2871, file: !2872, line: 60, type: !86)
!2874 = !DILocation(line: 60, column: 39, scope: !2871)
!2875 = !DILocation(line: 62, column: 8, scope: !2871)
!2876 = !DILocation(line: 62, column: 2, scope: !2871)
!2877 = !DILocation(line: 63, column: 1, scope: !2871)
!2878 = distinct !DISubprogram(name: "__set_bit", scope: !2879, file: !2879, line: 25, type: !2880, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2879 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !89, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!2884 = !DILocalVariable(name: "nr", arg: 1, scope: !2885, file: !2886, line: 66, type: !89)
!2885 = distinct !DISubprogram(name: "arch___set_bit", scope: !2886, file: !2886, line: 66, type: !2880, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2886 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2887 = !DILocation(line: 66, column: 21, scope: !2885, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 28, column: 2, scope: !2878)
!2889 = !DILocalVariable(name: "addr", arg: 2, scope: !2885, file: !2886, line: 66, type: !2882)
!2890 = !DILocation(line: 66, column: 49, scope: !2885, inlinedAt: !2888)
!2891 = !DILocalVariable(name: "v", arg: 1, scope: !2892, file: !2893, line: 39, type: !2896)
!2892 = distinct !DISubprogram(name: "instrument_write", scope: !2893, file: !2893, line: 39, type: !2894, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2893 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896, !266}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2899 = !DILocation(line: 39, column: 67, scope: !2892, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 27, column: 2, scope: !2878)
!2901 = !DILocalVariable(name: "size", arg: 2, scope: !2892, file: !2893, line: 39, type: !266)
!2902 = !DILocation(line: 39, column: 77, scope: !2892, inlinedAt: !2900)
!2903 = !DILocalVariable(name: "nr", arg: 1, scope: !2878, file: !2879, line: 25, type: !89)
!2904 = !DILocation(line: 25, column: 35, scope: !2878)
!2905 = !DILocalVariable(name: "addr", arg: 2, scope: !2878, file: !2879, line: 25, type: !2882)
!2906 = !DILocation(line: 25, column: 63, scope: !2878)
!2907 = !DILocation(line: 27, column: 19, scope: !2878)
!2908 = !DILocation(line: 27, column: 26, scope: !2878)
!2909 = !DILocation(line: 27, column: 24, scope: !2878)
!2910 = !DILocation(line: 41, column: 20, scope: !2892, inlinedAt: !2900)
!2911 = !DILocation(line: 41, column: 23, scope: !2892, inlinedAt: !2900)
!2912 = !DILocation(line: 41, column: 2, scope: !2892, inlinedAt: !2900)
!2913 = !DILocation(line: 42, column: 2, scope: !2892, inlinedAt: !2900)
!2914 = !DILocation(line: 28, column: 17, scope: !2878)
!2915 = !DILocation(line: 28, column: 21, scope: !2878)
!2916 = !DILocation(line: 68, column: 44, scope: !2885, inlinedAt: !2888)
!2917 = !DILocation(line: 68, column: 56, scope: !2885, inlinedAt: !2888)
!2918 = !DILocation(line: 68, column: 2, scope: !2885, inlinedAt: !2888)
!2919 = !{i32 -2147135936}
!2920 = !DILocation(line: 29, column: 1, scope: !2878)
!2921 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2872, file: !2872, line: 55, type: !2922, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!86, !79}
!2924 = !DILocalVariable(name: "flags", arg: 1, scope: !2925, file: !2926, line: 162, type: !90)
!2925 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2926, file: !2926, line: 162, type: !2927, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2926 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!117, !90}
!2929 = !DILocation(line: 162, column: 67, scope: !2925, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 57, column: 23, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !2872, line: 57, column: 23)
!2932 = distinct !DILexicalBlock(scope: !2921, file: !2872, line: 57, column: 23)
!2933 = !DILocalVariable(name: "size", arg: 1, scope: !2921, file: !2872, line: 55, type: !79)
!2934 = !DILocation(line: 55, column: 55, scope: !2921)
!2935 = !DILocation(line: 57, column: 17, scope: !2921)
!2936 = !DILocalVariable(name: "_flags", scope: !2932, file: !2872, line: 57, type: !90)
!2937 = !DILocation(line: 57, column: 23, scope: !2932)
!2938 = !DILocalVariable(name: "__dummy", scope: !2939, file: !2872, line: 57, type: !90)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !2872, line: 57, column: 23)
!2940 = distinct !DILexicalBlock(scope: !2932, file: !2872, line: 57, column: 23)
!2941 = !DILocation(line: 57, column: 23, scope: !2939)
!2942 = !DILocalVariable(name: "__dummy2", scope: !2939, file: !2872, line: 57, type: !90)
!2943 = !DILocation(line: 57, column: 23, scope: !2940)
!2944 = !DILocalVariable(name: "__dummy", scope: !2945, file: !2872, line: 57, type: !90)
!2945 = distinct !DILexicalBlock(scope: !2931, file: !2872, line: 57, column: 23)
!2946 = !DILocation(line: 57, column: 23, scope: !2945)
!2947 = !DILocalVariable(name: "__dummy2", scope: !2945, file: !2872, line: 57, type: !90)
!2948 = !DILocation(line: 57, column: 23, scope: !2931)
!2949 = !DILocation(line: 164, column: 11, scope: !2925, inlinedAt: !2930)
!2950 = !DILocation(line: 164, column: 17, scope: !2925, inlinedAt: !2930)
!2951 = !DILocation(line: 164, column: 9, scope: !2925, inlinedAt: !2930)
!2952 = !DILocation(line: 57, column: 23, scope: !2921)
!2953 = !DILocation(line: 57, column: 9, scope: !2921)
!2954 = !DILocation(line: 57, column: 2, scope: !2921)
!2955 = distinct !DISubprogram(name: "kasan_check_write", scope: !2956, file: !2956, line: 38, type: !2957, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2956 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!143, !2896, !7}
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !2956, line: 38, type: !2896)
!2960 = !DILocation(line: 38, column: 59, scope: !2955)
!2961 = !DILocalVariable(name: "size", arg: 2, scope: !2955, file: !2956, line: 38, type: !7)
!2962 = !DILocation(line: 38, column: 75, scope: !2955)
!2963 = !DILocation(line: 40, column: 2, scope: !2955)
!2964 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2965, file: !2965, line: 178, type: !2966, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2965 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2966 = !DISubroutineType(types: !2967)
!2967 = !{null, !2896, !266, !117}
!2968 = !DILocalVariable(name: "ptr", arg: 1, scope: !2964, file: !2965, line: 178, type: !2896)
!2969 = !DILocation(line: 178, column: 60, scope: !2964)
!2970 = !DILocalVariable(name: "size", arg: 2, scope: !2964, file: !2965, line: 178, type: !266)
!2971 = !DILocation(line: 178, column: 72, scope: !2964)
!2972 = !DILocalVariable(name: "type", arg: 3, scope: !2964, file: !2965, line: 179, type: !117)
!2973 = !DILocation(line: 179, column: 15, scope: !2964)
!2974 = !DILocation(line: 179, column: 23, scope: !2964)
!2975 = distinct !DISubprogram(name: "kzalloc", scope: !70, file: !70, line: 662, type: !2976, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!86, !266, !77}
!2978 = !DILocalVariable(name: "s", arg: 1, scope: !2979, file: !70, line: 445, type: !1099)
!2979 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !70, file: !70, line: 445, type: !2980, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!86, !1099, !77, !266}
!2982 = !DILocation(line: 445, column: 72, scope: !2979, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 552, column: 10, scope: !2984, inlinedAt: !2987)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !70, line: 540, column: 34)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !70, line: 540, column: 6)
!2986 = distinct !DISubprogram(name: "kmalloc", scope: !70, file: !70, line: 538, type: !2976, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2987 = distinct !DILocation(line: 664, column: 9, scope: !2975)
!2988 = !DILocalVariable(name: "flags", arg: 2, scope: !2979, file: !70, line: 446, type: !77)
!2989 = !DILocation(line: 446, column: 9, scope: !2979, inlinedAt: !2983)
!2990 = !DILocalVariable(name: "size", arg: 3, scope: !2979, file: !70, line: 446, type: !266)
!2991 = !DILocation(line: 446, column: 23, scope: !2979, inlinedAt: !2983)
!2992 = !DILocalVariable(name: "ret", scope: !2979, file: !70, line: 448, type: !86)
!2993 = !DILocation(line: 448, column: 8, scope: !2979, inlinedAt: !2983)
!2994 = !DILocalVariable(name: "flags", arg: 1, scope: !2995, file: !70, line: 318, type: !77)
!2995 = distinct !DISubprogram(name: "kmalloc_type", scope: !70, file: !70, line: 318, type: !2996, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!69, !77}
!2998 = !DILocation(line: 318, column: 67, scope: !2995, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 553, column: 20, scope: !2984, inlinedAt: !2987)
!3000 = !DILocalVariable(name: "size", arg: 1, scope: !3001, file: !70, line: 346, type: !266)
!3001 = distinct !DISubprogram(name: "kmalloc_index", scope: !70, file: !70, line: 346, type: !3002, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!7, !266}
!3004 = !DILocation(line: 346, column: 58, scope: !3001, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 547, column: 11, scope: !2984, inlinedAt: !2987)
!3006 = !DILocalVariable(name: "size", arg: 1, scope: !3007, file: !70, line: 472, type: !266)
!3007 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !70, file: !70, line: 472, type: !3008, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!86, !266, !77, !7}
!3010 = !DILocation(line: 472, column: 28, scope: !3007, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 481, column: 9, scope: !3012, inlinedAt: !3013)
!3012 = distinct !DISubprogram(name: "kmalloc_large", scope: !70, file: !70, line: 478, type: !2976, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3013 = distinct !DILocation(line: 545, column: 11, scope: !3014, inlinedAt: !2987)
!3014 = distinct !DILexicalBlock(scope: !2984, file: !70, line: 544, column: 7)
!3015 = !DILocalVariable(name: "flags", arg: 2, scope: !3007, file: !70, line: 472, type: !77)
!3016 = !DILocation(line: 472, column: 40, scope: !3007, inlinedAt: !3011)
!3017 = !DILocalVariable(name: "order", arg: 3, scope: !3007, file: !70, line: 472, type: !7)
!3018 = !DILocation(line: 472, column: 60, scope: !3007, inlinedAt: !3011)
!3019 = !DILocalVariable(name: "size", arg: 1, scope: !3012, file: !70, line: 478, type: !266)
!3020 = !DILocation(line: 478, column: 51, scope: !3012, inlinedAt: !3013)
!3021 = !DILocalVariable(name: "flags", arg: 2, scope: !3012, file: !70, line: 478, type: !77)
!3022 = !DILocation(line: 478, column: 63, scope: !3012, inlinedAt: !3013)
!3023 = !DILocalVariable(name: "order", scope: !3012, file: !70, line: 480, type: !7)
!3024 = !DILocation(line: 480, column: 15, scope: !3012, inlinedAt: !3013)
!3025 = !DILocalVariable(name: "size", arg: 1, scope: !2986, file: !70, line: 538, type: !266)
!3026 = !DILocation(line: 538, column: 45, scope: !2986, inlinedAt: !2987)
!3027 = !DILocalVariable(name: "flags", arg: 2, scope: !2986, file: !70, line: 538, type: !77)
!3028 = !DILocation(line: 538, column: 57, scope: !2986, inlinedAt: !2987)
!3029 = !DILocalVariable(name: "index", scope: !2984, file: !70, line: 542, type: !7)
!3030 = !DILocation(line: 542, column: 16, scope: !2984, inlinedAt: !2987)
!3031 = !DILocalVariable(name: "size", arg: 1, scope: !2975, file: !70, line: 662, type: !266)
!3032 = !DILocation(line: 662, column: 36, scope: !2975)
!3033 = !DILocalVariable(name: "flags", arg: 2, scope: !2975, file: !70, line: 662, type: !77)
!3034 = !DILocation(line: 662, column: 48, scope: !2975)
!3035 = !DILocation(line: 664, column: 17, scope: !2975)
!3036 = !DILocation(line: 664, column: 23, scope: !2975)
!3037 = !DILocation(line: 664, column: 29, scope: !2975)
!3038 = !DILocation(line: 540, column: 27, scope: !2985, inlinedAt: !2987)
!3039 = !DILocation(line: 540, column: 6, scope: !2985, inlinedAt: !2987)
!3040 = !DILocation(line: 540, column: 6, scope: !2986, inlinedAt: !2987)
!3041 = !DILocation(line: 544, column: 7, scope: !3014, inlinedAt: !2987)
!3042 = !DILocation(line: 544, column: 12, scope: !3014, inlinedAt: !2987)
!3043 = !DILocation(line: 544, column: 7, scope: !2984, inlinedAt: !2987)
!3044 = !DILocation(line: 545, column: 25, scope: !3014, inlinedAt: !2987)
!3045 = !DILocation(line: 545, column: 31, scope: !3014, inlinedAt: !2987)
!3046 = !DILocation(line: 480, column: 33, scope: !3012, inlinedAt: !3013)
!3047 = !DILocation(line: 480, column: 23, scope: !3012, inlinedAt: !3013)
!3048 = !DILocation(line: 481, column: 29, scope: !3012, inlinedAt: !3013)
!3049 = !DILocation(line: 481, column: 35, scope: !3012, inlinedAt: !3013)
!3050 = !DILocation(line: 481, column: 42, scope: !3012, inlinedAt: !3013)
!3051 = !DILocation(line: 474, column: 23, scope: !3007, inlinedAt: !3011)
!3052 = !DILocation(line: 474, column: 29, scope: !3007, inlinedAt: !3011)
!3053 = !DILocation(line: 474, column: 36, scope: !3007, inlinedAt: !3011)
!3054 = !DILocation(line: 474, column: 9, scope: !3007, inlinedAt: !3011)
!3055 = !DILocation(line: 545, column: 4, scope: !3014, inlinedAt: !2987)
!3056 = !DILocation(line: 547, column: 25, scope: !2984, inlinedAt: !2987)
!3057 = !DILocation(line: 348, column: 7, scope: !3058, inlinedAt: !3005)
!3058 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 348, column: 6)
!3059 = !DILocation(line: 348, column: 6, scope: !3001, inlinedAt: !3005)
!3060 = !DILocation(line: 349, column: 3, scope: !3058, inlinedAt: !3005)
!3061 = !DILocation(line: 351, column: 6, scope: !3062, inlinedAt: !3005)
!3062 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 351, column: 6)
!3063 = !DILocation(line: 351, column: 11, scope: !3062, inlinedAt: !3005)
!3064 = !DILocation(line: 351, column: 6, scope: !3001, inlinedAt: !3005)
!3065 = !DILocation(line: 352, column: 3, scope: !3062, inlinedAt: !3005)
!3066 = !DILocation(line: 354, column: 32, scope: !3067, inlinedAt: !3005)
!3067 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 354, column: 6)
!3068 = !DILocation(line: 354, column: 37, scope: !3067, inlinedAt: !3005)
!3069 = !DILocation(line: 354, column: 42, scope: !3067, inlinedAt: !3005)
!3070 = !DILocation(line: 354, column: 45, scope: !3067, inlinedAt: !3005)
!3071 = !DILocation(line: 354, column: 50, scope: !3067, inlinedAt: !3005)
!3072 = !DILocation(line: 354, column: 6, scope: !3001, inlinedAt: !3005)
!3073 = !DILocation(line: 355, column: 3, scope: !3067, inlinedAt: !3005)
!3074 = !DILocation(line: 356, column: 32, scope: !3075, inlinedAt: !3005)
!3075 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 356, column: 6)
!3076 = !DILocation(line: 356, column: 37, scope: !3075, inlinedAt: !3005)
!3077 = !DILocation(line: 356, column: 43, scope: !3075, inlinedAt: !3005)
!3078 = !DILocation(line: 356, column: 46, scope: !3075, inlinedAt: !3005)
!3079 = !DILocation(line: 356, column: 51, scope: !3075, inlinedAt: !3005)
!3080 = !DILocation(line: 356, column: 6, scope: !3001, inlinedAt: !3005)
!3081 = !DILocation(line: 357, column: 3, scope: !3075, inlinedAt: !3005)
!3082 = !DILocation(line: 358, column: 6, scope: !3083, inlinedAt: !3005)
!3083 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 358, column: 6)
!3084 = !DILocation(line: 358, column: 11, scope: !3083, inlinedAt: !3005)
!3085 = !DILocation(line: 358, column: 6, scope: !3001, inlinedAt: !3005)
!3086 = !DILocation(line: 358, column: 26, scope: !3083, inlinedAt: !3005)
!3087 = !DILocation(line: 359, column: 6, scope: !3088, inlinedAt: !3005)
!3088 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 359, column: 6)
!3089 = !DILocation(line: 359, column: 11, scope: !3088, inlinedAt: !3005)
!3090 = !DILocation(line: 359, column: 6, scope: !3001, inlinedAt: !3005)
!3091 = !DILocation(line: 359, column: 26, scope: !3088, inlinedAt: !3005)
!3092 = !DILocation(line: 360, column: 6, scope: !3093, inlinedAt: !3005)
!3093 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 360, column: 6)
!3094 = !DILocation(line: 360, column: 11, scope: !3093, inlinedAt: !3005)
!3095 = !DILocation(line: 360, column: 6, scope: !3001, inlinedAt: !3005)
!3096 = !DILocation(line: 360, column: 26, scope: !3093, inlinedAt: !3005)
!3097 = !DILocation(line: 361, column: 6, scope: !3098, inlinedAt: !3005)
!3098 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 361, column: 6)
!3099 = !DILocation(line: 361, column: 11, scope: !3098, inlinedAt: !3005)
!3100 = !DILocation(line: 361, column: 6, scope: !3001, inlinedAt: !3005)
!3101 = !DILocation(line: 361, column: 26, scope: !3098, inlinedAt: !3005)
!3102 = !DILocation(line: 362, column: 6, scope: !3103, inlinedAt: !3005)
!3103 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 362, column: 6)
!3104 = !DILocation(line: 362, column: 11, scope: !3103, inlinedAt: !3005)
!3105 = !DILocation(line: 362, column: 6, scope: !3001, inlinedAt: !3005)
!3106 = !DILocation(line: 362, column: 26, scope: !3103, inlinedAt: !3005)
!3107 = !DILocation(line: 363, column: 6, scope: !3108, inlinedAt: !3005)
!3108 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 363, column: 6)
!3109 = !DILocation(line: 363, column: 11, scope: !3108, inlinedAt: !3005)
!3110 = !DILocation(line: 363, column: 6, scope: !3001, inlinedAt: !3005)
!3111 = !DILocation(line: 363, column: 26, scope: !3108, inlinedAt: !3005)
!3112 = !DILocation(line: 364, column: 6, scope: !3113, inlinedAt: !3005)
!3113 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 364, column: 6)
!3114 = !DILocation(line: 364, column: 11, scope: !3113, inlinedAt: !3005)
!3115 = !DILocation(line: 364, column: 6, scope: !3001, inlinedAt: !3005)
!3116 = !DILocation(line: 364, column: 26, scope: !3113, inlinedAt: !3005)
!3117 = !DILocation(line: 365, column: 6, scope: !3118, inlinedAt: !3005)
!3118 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 365, column: 6)
!3119 = !DILocation(line: 365, column: 11, scope: !3118, inlinedAt: !3005)
!3120 = !DILocation(line: 365, column: 6, scope: !3001, inlinedAt: !3005)
!3121 = !DILocation(line: 365, column: 26, scope: !3118, inlinedAt: !3005)
!3122 = !DILocation(line: 366, column: 6, scope: !3123, inlinedAt: !3005)
!3123 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 366, column: 6)
!3124 = !DILocation(line: 366, column: 11, scope: !3123, inlinedAt: !3005)
!3125 = !DILocation(line: 366, column: 6, scope: !3001, inlinedAt: !3005)
!3126 = !DILocation(line: 366, column: 26, scope: !3123, inlinedAt: !3005)
!3127 = !DILocation(line: 367, column: 6, scope: !3128, inlinedAt: !3005)
!3128 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 367, column: 6)
!3129 = !DILocation(line: 367, column: 11, scope: !3128, inlinedAt: !3005)
!3130 = !DILocation(line: 367, column: 6, scope: !3001, inlinedAt: !3005)
!3131 = !DILocation(line: 367, column: 26, scope: !3128, inlinedAt: !3005)
!3132 = !DILocation(line: 368, column: 6, scope: !3133, inlinedAt: !3005)
!3133 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 368, column: 6)
!3134 = !DILocation(line: 368, column: 11, scope: !3133, inlinedAt: !3005)
!3135 = !DILocation(line: 368, column: 6, scope: !3001, inlinedAt: !3005)
!3136 = !DILocation(line: 368, column: 26, scope: !3133, inlinedAt: !3005)
!3137 = !DILocation(line: 369, column: 6, scope: !3138, inlinedAt: !3005)
!3138 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 369, column: 6)
!3139 = !DILocation(line: 369, column: 11, scope: !3138, inlinedAt: !3005)
!3140 = !DILocation(line: 369, column: 6, scope: !3001, inlinedAt: !3005)
!3141 = !DILocation(line: 369, column: 26, scope: !3138, inlinedAt: !3005)
!3142 = !DILocation(line: 370, column: 6, scope: !3143, inlinedAt: !3005)
!3143 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 370, column: 6)
!3144 = !DILocation(line: 370, column: 11, scope: !3143, inlinedAt: !3005)
!3145 = !DILocation(line: 370, column: 6, scope: !3001, inlinedAt: !3005)
!3146 = !DILocation(line: 370, column: 26, scope: !3143, inlinedAt: !3005)
!3147 = !DILocation(line: 371, column: 6, scope: !3148, inlinedAt: !3005)
!3148 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 371, column: 6)
!3149 = !DILocation(line: 371, column: 11, scope: !3148, inlinedAt: !3005)
!3150 = !DILocation(line: 371, column: 6, scope: !3001, inlinedAt: !3005)
!3151 = !DILocation(line: 371, column: 26, scope: !3148, inlinedAt: !3005)
!3152 = !DILocation(line: 372, column: 6, scope: !3153, inlinedAt: !3005)
!3153 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 372, column: 6)
!3154 = !DILocation(line: 372, column: 11, scope: !3153, inlinedAt: !3005)
!3155 = !DILocation(line: 372, column: 6, scope: !3001, inlinedAt: !3005)
!3156 = !DILocation(line: 372, column: 26, scope: !3153, inlinedAt: !3005)
!3157 = !DILocation(line: 373, column: 6, scope: !3158, inlinedAt: !3005)
!3158 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 373, column: 6)
!3159 = !DILocation(line: 373, column: 11, scope: !3158, inlinedAt: !3005)
!3160 = !DILocation(line: 373, column: 6, scope: !3001, inlinedAt: !3005)
!3161 = !DILocation(line: 373, column: 26, scope: !3158, inlinedAt: !3005)
!3162 = !DILocation(line: 374, column: 6, scope: !3163, inlinedAt: !3005)
!3163 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 374, column: 6)
!3164 = !DILocation(line: 374, column: 11, scope: !3163, inlinedAt: !3005)
!3165 = !DILocation(line: 374, column: 6, scope: !3001, inlinedAt: !3005)
!3166 = !DILocation(line: 374, column: 26, scope: !3163, inlinedAt: !3005)
!3167 = !DILocation(line: 375, column: 6, scope: !3168, inlinedAt: !3005)
!3168 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 375, column: 6)
!3169 = !DILocation(line: 375, column: 11, scope: !3168, inlinedAt: !3005)
!3170 = !DILocation(line: 375, column: 6, scope: !3001, inlinedAt: !3005)
!3171 = !DILocation(line: 375, column: 27, scope: !3168, inlinedAt: !3005)
!3172 = !DILocation(line: 376, column: 6, scope: !3173, inlinedAt: !3005)
!3173 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 376, column: 6)
!3174 = !DILocation(line: 376, column: 11, scope: !3173, inlinedAt: !3005)
!3175 = !DILocation(line: 376, column: 6, scope: !3001, inlinedAt: !3005)
!3176 = !DILocation(line: 376, column: 32, scope: !3173, inlinedAt: !3005)
!3177 = !DILocation(line: 377, column: 6, scope: !3178, inlinedAt: !3005)
!3178 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 377, column: 6)
!3179 = !DILocation(line: 377, column: 11, scope: !3178, inlinedAt: !3005)
!3180 = !DILocation(line: 377, column: 6, scope: !3001, inlinedAt: !3005)
!3181 = !DILocation(line: 377, column: 32, scope: !3178, inlinedAt: !3005)
!3182 = !DILocation(line: 378, column: 6, scope: !3183, inlinedAt: !3005)
!3183 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 378, column: 6)
!3184 = !DILocation(line: 378, column: 11, scope: !3183, inlinedAt: !3005)
!3185 = !DILocation(line: 378, column: 6, scope: !3001, inlinedAt: !3005)
!3186 = !DILocation(line: 378, column: 32, scope: !3183, inlinedAt: !3005)
!3187 = !DILocation(line: 379, column: 6, scope: !3188, inlinedAt: !3005)
!3188 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 379, column: 6)
!3189 = !DILocation(line: 379, column: 11, scope: !3188, inlinedAt: !3005)
!3190 = !DILocation(line: 379, column: 6, scope: !3001, inlinedAt: !3005)
!3191 = !DILocation(line: 379, column: 33, scope: !3188, inlinedAt: !3005)
!3192 = !DILocation(line: 380, column: 6, scope: !3193, inlinedAt: !3005)
!3193 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 380, column: 6)
!3194 = !DILocation(line: 380, column: 11, scope: !3193, inlinedAt: !3005)
!3195 = !DILocation(line: 380, column: 6, scope: !3001, inlinedAt: !3005)
!3196 = !DILocation(line: 380, column: 33, scope: !3193, inlinedAt: !3005)
!3197 = !DILocation(line: 381, column: 6, scope: !3198, inlinedAt: !3005)
!3198 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 381, column: 6)
!3199 = !DILocation(line: 381, column: 11, scope: !3198, inlinedAt: !3005)
!3200 = !DILocation(line: 381, column: 6, scope: !3001, inlinedAt: !3005)
!3201 = !DILocation(line: 381, column: 33, scope: !3198, inlinedAt: !3005)
!3202 = !DILocation(line: 382, column: 2, scope: !3203, inlinedAt: !3005)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !70, line: 382, column: 2)
!3204 = distinct !DILexicalBlock(scope: !3001, file: !70, line: 382, column: 2)
!3205 = !{i32 -2144219833, i32 -2144219804, i32 -2144219758, i32 -2144219700, i32 -2144219646, i32 -2144219592, i32 -2144219537, i32 -2144219506}
!3206 = !DILocation(line: 382, column: 2, scope: !3207, inlinedAt: !3005)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !70, line: 382, column: 2)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !70, line: 382, column: 2)
!3209 = !{i32 -2144219063, i32 -2144219056, i32 -2144219002, i32 -2144218971, i32 -2144218941}
!3210 = !DILocation(line: 382, column: 2, scope: !3208, inlinedAt: !3005)
!3211 = !DILocation(line: 386, column: 1, scope: !3001, inlinedAt: !3005)
!3212 = !DILocation(line: 547, column: 9, scope: !2984, inlinedAt: !2987)
!3213 = !DILocation(line: 549, column: 8, scope: !3214, inlinedAt: !2987)
!3214 = distinct !DILexicalBlock(scope: !2984, file: !70, line: 549, column: 7)
!3215 = !DILocation(line: 549, column: 7, scope: !2984, inlinedAt: !2987)
!3216 = !DILocation(line: 550, column: 4, scope: !3214, inlinedAt: !2987)
!3217 = !DILocation(line: 553, column: 33, scope: !2984, inlinedAt: !2987)
!3218 = !DILocation(line: 325, column: 6, scope: !3219, inlinedAt: !2999)
!3219 = distinct !DILexicalBlock(scope: !2995, file: !70, line: 325, column: 6)
!3220 = !DILocation(line: 325, column: 6, scope: !2995, inlinedAt: !2999)
!3221 = !DILocation(line: 326, column: 3, scope: !3219, inlinedAt: !2999)
!3222 = !DILocation(line: 332, column: 9, scope: !2995, inlinedAt: !2999)
!3223 = !DILocation(line: 332, column: 15, scope: !2995, inlinedAt: !2999)
!3224 = !DILocation(line: 332, column: 2, scope: !2995, inlinedAt: !2999)
!3225 = !DILocation(line: 336, column: 1, scope: !2995, inlinedAt: !2999)
!3226 = !DILocation(line: 553, column: 5, scope: !2984, inlinedAt: !2987)
!3227 = !DILocation(line: 553, column: 41, scope: !2984, inlinedAt: !2987)
!3228 = !DILocation(line: 554, column: 5, scope: !2984, inlinedAt: !2987)
!3229 = !DILocation(line: 554, column: 12, scope: !2984, inlinedAt: !2987)
!3230 = !DILocation(line: 448, column: 31, scope: !2979, inlinedAt: !2983)
!3231 = !DILocation(line: 448, column: 34, scope: !2979, inlinedAt: !2983)
!3232 = !DILocation(line: 448, column: 14, scope: !2979, inlinedAt: !2983)
!3233 = !DILocation(line: 450, column: 22, scope: !2979, inlinedAt: !2983)
!3234 = !DILocation(line: 450, column: 25, scope: !2979, inlinedAt: !2983)
!3235 = !DILocation(line: 450, column: 30, scope: !2979, inlinedAt: !2983)
!3236 = !DILocation(line: 450, column: 36, scope: !2979, inlinedAt: !2983)
!3237 = !DILocation(line: 450, column: 8, scope: !2979, inlinedAt: !2983)
!3238 = !DILocation(line: 450, column: 6, scope: !2979, inlinedAt: !2983)
!3239 = !DILocation(line: 451, column: 9, scope: !2979, inlinedAt: !2983)
!3240 = !DILocation(line: 552, column: 3, scope: !2984, inlinedAt: !2987)
!3241 = !DILocation(line: 557, column: 19, scope: !2986, inlinedAt: !2987)
!3242 = !DILocation(line: 557, column: 25, scope: !2986, inlinedAt: !2987)
!3243 = !DILocation(line: 557, column: 9, scope: !2986, inlinedAt: !2987)
!3244 = !DILocation(line: 557, column: 2, scope: !2986, inlinedAt: !2987)
!3245 = !DILocation(line: 558, column: 1, scope: !2986, inlinedAt: !2987)
!3246 = !DILocation(line: 664, column: 2, scope: !2975)
!3247 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3248, file: !3248, line: 646, type: !3249, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3248 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!90}
!3251 = !DILocalVariable(name: "__ret", scope: !3252, file: !3248, line: 648, type: !90)
!3252 = distinct !DILexicalBlock(scope: !3247, file: !3248, line: 648, column: 9)
!3253 = !DILocation(line: 648, column: 9, scope: !3252)
!3254 = !DILocalVariable(name: "__edi", scope: !3252, file: !3248, line: 648, type: !90)
!3255 = !DILocalVariable(name: "__esi", scope: !3252, file: !3248, line: 648, type: !90)
!3256 = !DILocalVariable(name: "__edx", scope: !3252, file: !3248, line: 648, type: !90)
!3257 = !DILocalVariable(name: "__ecx", scope: !3252, file: !3248, line: 648, type: !90)
!3258 = !DILocalVariable(name: "__eax", scope: !3252, file: !3248, line: 648, type: !90)
!3259 = !DILocation(line: 648, column: 9, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3248, line: 648, column: 9)
!3261 = distinct !DILexicalBlock(scope: !3252, file: !3248, line: 648, column: 9)
!3262 = !{i32 -2145649342, i32 -2145647027, i32 -2145646793, i32 -2145646742, i32 -2145646714, i32 -2145646689, i32 -2145647005, i32 -2145646992, i32 -2145646554, i32 -2145646435, i32 -2145646900, i32 -2145646873, i32 -2145646845, i32 -2145646815}
!3263 = !DILocalVariable(name: "__mask", scope: !3264, file: !3248, line: 648, type: !90)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !3248, line: 648, column: 9)
!3265 = !DILocation(line: 648, column: 9, scope: !3264)
!3266 = !DILocation(line: 648, column: 9, scope: !3261)
!3267 = !DILocation(line: 648, column: 2, scope: !3247)
!3268 = distinct !DISubprogram(name: "get_order", scope: !3269, file: !3269, line: 29, type: !2927, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3269 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !DILocalVariable(name: "x", arg: 1, scope: !3271, file: !2886, line: 366, type: !83)
!3271 = distinct !DISubprogram(name: "fls64", scope: !2886, file: !2886, line: 366, type: !3272, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!117, !83}
!3274 = !DILocation(line: 366, column: 40, scope: !3271, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 46, column: 9, scope: !3268)
!3276 = !DILocalVariable(name: "bitpos", scope: !3271, file: !2886, line: 368, type: !117)
!3277 = !DILocation(line: 368, column: 6, scope: !3271, inlinedAt: !3275)
!3278 = !DILocalVariable(name: "size", arg: 1, scope: !3268, file: !3269, line: 29, type: !90)
!3279 = !DILocation(line: 29, column: 63, scope: !3268)
!3280 = !DILocation(line: 31, column: 27, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3268, file: !3269, line: 31, column: 6)
!3282 = !DILocation(line: 31, column: 6, scope: !3281)
!3283 = !DILocation(line: 31, column: 6, scope: !3268)
!3284 = !DILocation(line: 32, column: 8, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3269, line: 32, column: 7)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !3269, line: 31, column: 34)
!3287 = !DILocation(line: 32, column: 7, scope: !3286)
!3288 = !DILocation(line: 33, column: 4, scope: !3285)
!3289 = !DILocation(line: 35, column: 7, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3269, line: 35, column: 7)
!3291 = !DILocation(line: 35, column: 12, scope: !3290)
!3292 = !DILocation(line: 35, column: 7, scope: !3286)
!3293 = !DILocation(line: 36, column: 4, scope: !3290)
!3294 = !DILocation(line: 38, column: 10, scope: !3286)
!3295 = !DILocation(line: 38, column: 28, scope: !3286)
!3296 = !DILocation(line: 38, column: 41, scope: !3286)
!3297 = !DILocation(line: 38, column: 3, scope: !3286)
!3298 = !DILocation(line: 41, column: 6, scope: !3268)
!3299 = !DILocation(line: 42, column: 7, scope: !3268)
!3300 = !DILocation(line: 46, column: 15, scope: !3268)
!3301 = !DILocation(line: 374, column: 2, scope: !3271, inlinedAt: !3275)
!3302 = !DILocation(line: 376, column: 14, scope: !3271, inlinedAt: !3275)
!3303 = !{i32 315279}
!3304 = !DILocation(line: 377, column: 9, scope: !3271, inlinedAt: !3275)
!3305 = !DILocation(line: 377, column: 16, scope: !3271, inlinedAt: !3275)
!3306 = !DILocation(line: 46, column: 2, scope: !3268)
!3307 = !DILocation(line: 48, column: 1, scope: !3268)
!3308 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3309, file: !3309, line: 30, type: !3310, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3309 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!117, !81}
!3312 = !DILocation(line: 366, column: 40, scope: !3271, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 32, column: 9, scope: !3308)
!3314 = !DILocation(line: 368, column: 6, scope: !3271, inlinedAt: !3313)
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !3309, line: 30, type: !81)
!3316 = !DILocation(line: 30, column: 21, scope: !3308)
!3317 = !DILocation(line: 32, column: 15, scope: !3308)
!3318 = !DILocation(line: 374, column: 2, scope: !3271, inlinedAt: !3313)
!3319 = !DILocation(line: 376, column: 14, scope: !3271, inlinedAt: !3313)
!3320 = !DILocation(line: 377, column: 9, scope: !3271, inlinedAt: !3313)
!3321 = !DILocation(line: 377, column: 16, scope: !3271, inlinedAt: !3313)
!3322 = !DILocation(line: 32, column: 18, scope: !3308)
!3323 = !DILocation(line: 32, column: 2, scope: !3308)
!3324 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3325, file: !3325, line: 137, type: !3326, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !193)
!3325 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!86, !1099, !151, !266, !77}
!3328 = !DILocalVariable(name: "s", arg: 1, scope: !3324, file: !3325, line: 137, type: !1099)
!3329 = !DILocation(line: 137, column: 54, scope: !3324)
!3330 = !DILocalVariable(name: "object", arg: 2, scope: !3324, file: !3325, line: 137, type: !151)
!3331 = !DILocation(line: 137, column: 69, scope: !3324)
!3332 = !DILocalVariable(name: "size", arg: 3, scope: !3324, file: !3325, line: 138, type: !266)
!3333 = !DILocation(line: 138, column: 12, scope: !3324)
!3334 = !DILocalVariable(name: "flags", arg: 4, scope: !3324, file: !3325, line: 138, type: !77)
!3335 = !DILocation(line: 138, column: 24, scope: !3324)
!3336 = !DILocation(line: 140, column: 17, scope: !3324)
!3337 = !DILocation(line: 140, column: 2, scope: !3324)
