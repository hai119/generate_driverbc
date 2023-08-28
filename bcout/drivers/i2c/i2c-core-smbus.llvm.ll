; ModuleID = '../bcout/drivers/i2c/i2c-core-smbus.llvm.bc'
source_filename = "drivers/i2c/i2c-core-smbus.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
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
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.module = type opaque
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@jiffies = external dso_local global i64, align 8
@.str = private unnamed_addr constant [20 x i8] c"smbus_alert\00\00\00\00\00\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"smbus_alert\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"No atomic I2C transfer handler for '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"drivers/i2c/i2c-core.h\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s %s: Transfer while suspended\0A\00", align 1
@system_state = external dso_local global i32, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid block write size %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid block %s size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Invalid block size returned: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client* %client) #0 !dbg !111 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data = alloca %union.i2c_smbus_data, align 2
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2307, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2309, metadata !DIExpression()), !dbg !2310
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2311
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !2312
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2312
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2313
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !2314
  %3 = load i16, i16* %addr, align 2, !dbg !2314
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2315
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !2316
  %5 = load i16, i16* %flags, align 8, !dbg !2316
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %1, i16 zeroext %3, i16 zeroext %5, i8 signext 1, i8 zeroext 0, i32 1, %union.i2c_smbus_data* %data) #10, !dbg !2317
  store i32 %call, i32* %status, align 4, !dbg !2318
  %6 = load i32, i32* %status, align 4, !dbg !2319
  %cmp = icmp slt i32 %6, 0, !dbg !2320
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2321

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !2322
  br label %cond.end, !dbg !2321

cond.false:                                       ; preds = %entry
  %byte = bitcast %union.i2c_smbus_data* %data to i8*, !dbg !2323
  %8 = load i8, i8* %byte, align 2, !dbg !2323
  %conv = zext i8 %8 to i32, !dbg !2324
  br label %cond.end, !dbg !2321

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %conv, %cond.false ], !dbg !2321
  ret i32 %cond, !dbg !2325
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter* %adapter, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol, %union.i2c_smbus_data* %data) #0 !dbg !2326 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %res = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2329, metadata !DIExpression()), !dbg !2330
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2337, metadata !DIExpression()), !dbg !2338
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !2339, metadata !DIExpression()), !dbg !2340
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2343, metadata !DIExpression()), !dbg !2344
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2345
  %call = call i32 @__i2c_lock_bus_helper(%struct.i2c_adapter* %0) #10, !dbg !2346
  store i32 %call, i32* %res, align 4, !dbg !2347
  %1 = load i32, i32* %res, align 4, !dbg !2348
  %tobool = icmp ne i32 %1, 0, !dbg !2348
  br i1 %tobool, label %if.then, label %if.end, !dbg !2350

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %res, align 4, !dbg !2351
  store i32 %2, i32* %retval, align 4, !dbg !2352
  br label %return, !dbg !2352

if.end:                                           ; preds = %entry
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2353
  %4 = load i16, i16* %addr.addr, align 2, !dbg !2354
  %5 = load i16, i16* %flags.addr, align 2, !dbg !2355
  %6 = load i8, i8* %read_write.addr, align 1, !dbg !2356
  %7 = load i8, i8* %command.addr, align 1, !dbg !2357
  %8 = load i32, i32* %protocol.addr, align 4, !dbg !2358
  %9 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !2359
  %call1 = call i32 @__i2c_smbus_xfer(%struct.i2c_adapter* %3, i16 zeroext %4, i16 zeroext %5, i8 signext %6, i8 zeroext %7, i32 %8, %union.i2c_smbus_data* %9) #10, !dbg !2360
  store i32 %call1, i32* %res, align 4, !dbg !2361
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2362
  call void @i2c_unlock_bus(%struct.i2c_adapter* %10, i32 2) #10, !dbg !2363
  %11 = load i32, i32* %res, align 4, !dbg !2364
  store i32 %11, i32* %retval, align 4, !dbg !2365
  br label %return, !dbg !2365

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2366
  ret i32 %12, !dbg !2366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client* %client, i8 zeroext %value) #0 !dbg !2367 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %value.addr = alloca i8, align 1
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !2372, metadata !DIExpression()), !dbg !2373
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2374
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !2375
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2375
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2376
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !2377
  %3 = load i16, i16* %addr, align 2, !dbg !2377
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2378
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !2379
  %5 = load i16, i16* %flags, align 8, !dbg !2379
  %6 = load i8, i8* %value.addr, align 1, !dbg !2380
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %1, i16 zeroext %3, i16 zeroext %5, i8 signext 0, i8 zeroext %6, i32 1, %union.i2c_smbus_data* null) #10, !dbg !2381
  ret i32 %call, !dbg !2382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %client, i8 zeroext %command) #0 !dbg !2383 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %data = alloca %union.i2c_smbus_data, align 2
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2384, metadata !DIExpression()), !dbg !2385
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2390, metadata !DIExpression()), !dbg !2391
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2392
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !2393
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2393
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2394
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !2395
  %3 = load i16, i16* %addr, align 2, !dbg !2395
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2396
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !2397
  %5 = load i16, i16* %flags, align 8, !dbg !2397
  %6 = load i8, i8* %command.addr, align 1, !dbg !2398
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %1, i16 zeroext %3, i16 zeroext %5, i8 signext 1, i8 zeroext %6, i32 2, %union.i2c_smbus_data* %data) #10, !dbg !2399
  store i32 %call, i32* %status, align 4, !dbg !2400
  %7 = load i32, i32* %status, align 4, !dbg !2401
  %cmp = icmp slt i32 %7, 0, !dbg !2402
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2403

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !2404
  br label %cond.end, !dbg !2403

cond.false:                                       ; preds = %entry
  %byte = bitcast %union.i2c_smbus_data* %data to i8*, !dbg !2405
  %9 = load i8, i8* %byte, align 2, !dbg !2405
  %conv = zext i8 %9 to i32, !dbg !2406
  br label %cond.end, !dbg !2403

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %conv, %cond.false ], !dbg !2403
  ret i32 %cond, !dbg !2407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %client, i8 zeroext %command, i8 zeroext %value) #0 !dbg !2408 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  %data = alloca %union.i2c_smbus_data, align 2
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !2415, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2417, metadata !DIExpression()), !dbg !2418
  %0 = load i8, i8* %value.addr, align 1, !dbg !2419
  %byte = bitcast %union.i2c_smbus_data* %data to i8*, !dbg !2420
  store i8 %0, i8* %byte, align 2, !dbg !2421
  %1 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2422
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 3, !dbg !2423
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2423
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2424
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %3, i32 0, i32 1, !dbg !2425
  %4 = load i16, i16* %addr, align 2, !dbg !2425
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2426
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0, !dbg !2427
  %6 = load i16, i16* %flags, align 8, !dbg !2427
  %7 = load i8, i8* %command.addr, align 1, !dbg !2428
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %2, i16 zeroext %4, i16 zeroext %6, i8 signext 0, i8 zeroext %7, i32 2, %union.i2c_smbus_data* %data) #10, !dbg !2429
  ret i32 %call, !dbg !2430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client* %client, i8 zeroext %command) #0 !dbg !2431 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %data = alloca %union.i2c_smbus_data, align 2
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2438, metadata !DIExpression()), !dbg !2439
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2440
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !2441
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2441
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2442
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !2443
  %3 = load i16, i16* %addr, align 2, !dbg !2443
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2444
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !2445
  %5 = load i16, i16* %flags, align 8, !dbg !2445
  %6 = load i8, i8* %command.addr, align 1, !dbg !2446
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %1, i16 zeroext %3, i16 zeroext %5, i8 signext 1, i8 zeroext %6, i32 3, %union.i2c_smbus_data* %data) #10, !dbg !2447
  store i32 %call, i32* %status, align 4, !dbg !2448
  %7 = load i32, i32* %status, align 4, !dbg !2449
  %cmp = icmp slt i32 %7, 0, !dbg !2450
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2451

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !2452
  br label %cond.end, !dbg !2451

cond.false:                                       ; preds = %entry
  %word = bitcast %union.i2c_smbus_data* %data to i16*, !dbg !2453
  %9 = load i16, i16* %word, align 2, !dbg !2453
  %conv = zext i16 %9 to i32, !dbg !2454
  br label %cond.end, !dbg !2451

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %conv, %cond.false ], !dbg !2451
  ret i32 %cond, !dbg !2455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client* %client, i8 zeroext %command, i16 zeroext %value) #0 !dbg !2456 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %value.addr = alloca i16, align 2
  %data = alloca %union.i2c_smbus_data, align 2
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !2463, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2465, metadata !DIExpression()), !dbg !2466
  %0 = load i16, i16* %value.addr, align 2, !dbg !2467
  %word = bitcast %union.i2c_smbus_data* %data to i16*, !dbg !2468
  store i16 %0, i16* %word, align 2, !dbg !2469
  %1 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2470
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 3, !dbg !2471
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2471
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2472
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %3, i32 0, i32 1, !dbg !2473
  %4 = load i16, i16* %addr, align 2, !dbg !2473
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2474
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0, !dbg !2475
  %6 = load i16, i16* %flags, align 8, !dbg !2475
  %7 = load i8, i8* %command.addr, align 1, !dbg !2476
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %2, i16 zeroext %4, i16 zeroext %6, i8 signext 0, i8 zeroext %7, i32 3, %union.i2c_smbus_data* %data) #10, !dbg !2477
  ret i32 %call, !dbg !2478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client* %client, i8 zeroext %command, i8* %values) #0 !dbg !2479 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %values.addr = alloca i8*, align 8
  %data = alloca %union.i2c_smbus_data, align 2
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2485, metadata !DIExpression()), !dbg !2486
  store i8* %values, i8** %values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %values.addr, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2493
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !2494
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2494
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2495
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !2496
  %3 = load i16, i16* %addr, align 2, !dbg !2496
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2497
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0, !dbg !2498
  %5 = load i16, i16* %flags, align 8, !dbg !2498
  %6 = load i8, i8* %command.addr, align 1, !dbg !2499
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %1, i16 zeroext %3, i16 zeroext %5, i8 signext 1, i8 zeroext %6, i32 5, %union.i2c_smbus_data* %data) #10, !dbg !2500
  store i32 %call, i32* %status, align 4, !dbg !2501
  %7 = load i32, i32* %status, align 4, !dbg !2502
  %tobool = icmp ne i32 %7, 0, !dbg !2502
  br i1 %tobool, label %if.then, label %if.end, !dbg !2504

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !2505
  store i32 %8, i32* %retval, align 4, !dbg !2506
  br label %return, !dbg !2506

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %values.addr, align 8, !dbg !2507
  %block = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2508
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 1, !dbg !2509
  %block1 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2510
  %arrayidx2 = getelementptr [34 x i8], [34 x i8]* %block1, i64 0, i64 0, !dbg !2511
  %10 = load i8, i8* %arrayidx2, align 2, !dbg !2511
  %conv = zext i8 %10 to i64, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %arrayidx, i64 %conv, i1 false), !dbg !2512
  %block3 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2513
  %arrayidx4 = getelementptr [34 x i8], [34 x i8]* %block3, i64 0, i64 0, !dbg !2514
  %11 = load i8, i8* %arrayidx4, align 2, !dbg !2514
  %conv5 = zext i8 %11 to i32, !dbg !2514
  store i32 %conv5, i32* %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2516
  ret i32 %12, !dbg !2516
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_write_block_data(%struct.i2c_client* %client, i8 zeroext %command, i8 zeroext %length, i8* %values) #0 !dbg !2517 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %length.addr = alloca i8, align 1
  %values.addr = alloca i8*, align 8
  %data = alloca %union.i2c_smbus_data, align 2
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2524, metadata !DIExpression()), !dbg !2525
  store i8 %length, i8* %length.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %length.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  store i8* %values, i8** %values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %values.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2530, metadata !DIExpression()), !dbg !2531
  %0 = load i8, i8* %length.addr, align 1, !dbg !2532
  %conv = zext i8 %0 to i32, !dbg !2532
  %cmp = icmp sgt i32 %conv, 32, !dbg !2534
  br i1 %cmp, label %if.then, label %if.end, !dbg !2535

if.then:                                          ; preds = %entry
  store i8 32, i8* %length.addr, align 1, !dbg !2536
  br label %if.end, !dbg !2537

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* %length.addr, align 1, !dbg !2538
  %block = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2539
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !2540
  store i8 %1, i8* %arrayidx, align 2, !dbg !2541
  %block2 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2542
  %arrayidx3 = getelementptr [34 x i8], [34 x i8]* %block2, i64 0, i64 1, !dbg !2543
  %2 = load i8*, i8** %values.addr, align 8, !dbg !2544
  %3 = load i8, i8* %length.addr, align 1, !dbg !2545
  %conv4 = zext i8 %3 to i64, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx3, i8* align 1 %2, i64 %conv4, i1 false), !dbg !2546
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2547
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 3, !dbg !2548
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2548
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2549
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1, !dbg !2550
  %7 = load i16, i16* %addr, align 2, !dbg !2550
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2551
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0, !dbg !2552
  %9 = load i16, i16* %flags, align 8, !dbg !2552
  %10 = load i8, i8* %command.addr, align 1, !dbg !2553
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %5, i16 zeroext %7, i16 zeroext %9, i8 signext 0, i8 zeroext %10, i32 5, %union.i2c_smbus_data* %data) #10, !dbg !2554
  ret i32 %call, !dbg !2555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %client, i8 zeroext %command, i8 zeroext %length, i8* %values) #0 !dbg !2556 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %length.addr = alloca i8, align 1
  %values.addr = alloca i8*, align 8
  %data = alloca %union.i2c_smbus_data, align 2
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i8 %length, i8* %length.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %length.addr, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i8* %values, i8** %values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %values.addr, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2567, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2569, metadata !DIExpression()), !dbg !2570
  %0 = load i8, i8* %length.addr, align 1, !dbg !2571
  %conv = zext i8 %0 to i32, !dbg !2571
  %cmp = icmp sgt i32 %conv, 32, !dbg !2573
  br i1 %cmp, label %if.then, label %if.end, !dbg !2574

if.then:                                          ; preds = %entry
  store i8 32, i8* %length.addr, align 1, !dbg !2575
  br label %if.end, !dbg !2576

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* %length.addr, align 1, !dbg !2577
  %block = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2578
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !2579
  store i8 %1, i8* %arrayidx, align 2, !dbg !2580
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2581
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 3, !dbg !2582
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2582
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2583
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 1, !dbg !2584
  %5 = load i16, i16* %addr, align 2, !dbg !2584
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2585
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0, !dbg !2586
  %7 = load i16, i16* %flags, align 8, !dbg !2586
  %8 = load i8, i8* %command.addr, align 1, !dbg !2587
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %3, i16 zeroext %5, i16 zeroext %7, i8 signext 1, i8 zeroext %8, i32 8, %union.i2c_smbus_data* %data) #10, !dbg !2588
  store i32 %call, i32* %status, align 4, !dbg !2589
  %9 = load i32, i32* %status, align 4, !dbg !2590
  %cmp2 = icmp slt i32 %9, 0, !dbg !2592
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2593

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !dbg !2594
  store i32 %10, i32* %retval, align 4, !dbg !2595
  br label %return, !dbg !2595

if.end5:                                          ; preds = %if.end
  %11 = load i8*, i8** %values.addr, align 8, !dbg !2596
  %block6 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2597
  %arrayidx7 = getelementptr [34 x i8], [34 x i8]* %block6, i64 0, i64 1, !dbg !2598
  %block8 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2599
  %arrayidx9 = getelementptr [34 x i8], [34 x i8]* %block8, i64 0, i64 0, !dbg !2600
  %12 = load i8, i8* %arrayidx9, align 2, !dbg !2600
  %conv10 = zext i8 %12 to i64, !dbg !2600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %arrayidx7, i64 %conv10, i1 false), !dbg !2601
  %block11 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2602
  %arrayidx12 = getelementptr [34 x i8], [34 x i8]* %block11, i64 0, i64 0, !dbg !2603
  %13 = load i8, i8* %arrayidx12, align 2, !dbg !2603
  %conv13 = zext i8 %13 to i32, !dbg !2603
  store i32 %conv13, i32* %retval, align 4, !dbg !2604
  br label %return, !dbg !2604

return:                                           ; preds = %if.end5, %if.then4
  %14 = load i32, i32* %retval, align 4, !dbg !2605
  ret i32 %14, !dbg !2605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %client, i8 zeroext %command, i8 zeroext %length, i8* %values) #0 !dbg !2606 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %length.addr = alloca i8, align 1
  %values.addr = alloca i8*, align 8
  %data = alloca %union.i2c_smbus_data, align 2
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i8 %length, i8* %length.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %length.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i8* %values, i8** %values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %values.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data* %data, metadata !2615, metadata !DIExpression()), !dbg !2616
  %0 = load i8, i8* %length.addr, align 1, !dbg !2617
  %conv = zext i8 %0 to i32, !dbg !2617
  %cmp = icmp sgt i32 %conv, 32, !dbg !2619
  br i1 %cmp, label %if.then, label %if.end, !dbg !2620

if.then:                                          ; preds = %entry
  store i8 32, i8* %length.addr, align 1, !dbg !2621
  br label %if.end, !dbg !2622

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* %length.addr, align 1, !dbg !2623
  %block = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2624
  %arrayidx = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !2625
  store i8 %1, i8* %arrayidx, align 2, !dbg !2626
  %block2 = bitcast %union.i2c_smbus_data* %data to [34 x i8]*, !dbg !2627
  %arraydecay = getelementptr inbounds [34 x i8], [34 x i8]* %block2, i64 0, i64 0, !dbg !2628
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 1, !dbg !2629
  %2 = load i8*, i8** %values.addr, align 8, !dbg !2630
  %3 = load i8, i8* %length.addr, align 1, !dbg !2631
  %conv3 = zext i8 %3 to i64, !dbg !2631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %2, i64 %conv3, i1 false), !dbg !2632
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2633
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 3, !dbg !2634
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !2634
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2635
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1, !dbg !2636
  %7 = load i16, i16* %addr, align 2, !dbg !2636
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !2637
  %flags = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0, !dbg !2638
  %9 = load i16, i16* %flags, align 8, !dbg !2638
  %10 = load i8, i8* %command.addr, align 1, !dbg !2639
  %call = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %5, i16 zeroext %7, i16 zeroext %9, i8 signext 0, i8 zeroext %10, i32 8, %union.i2c_smbus_data* %data) #10, !dbg !2640
  ret i32 %call, !dbg !2641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i2c_lock_bus_helper(%struct.i2c_adapter* %adap) #0 !dbg !2642 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2646, metadata !DIExpression()), !dbg !2647
  store i32 0, i32* %ret, align 4, !dbg !2647
  %call = call zeroext i1 @i2c_in_atomic_xfer_mode() #10, !dbg !2648
  br i1 %call, label %if.then, label %if.else, !dbg !2650

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2651, metadata !DIExpression()), !dbg !2654
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2654
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 2, !dbg !2654
  %1 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !2654
  %master_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %1, i32 0, i32 1, !dbg !2654
  %2 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer_atomic, align 8, !dbg !2654
  %tobool = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %2, null, !dbg !2654
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2654

land.rhs:                                         ; preds = %if.then
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2654
  %algo1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %3, i32 0, i32 2, !dbg !2654
  %4 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo1, align 8, !dbg !2654
  %smbus_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %4, i32 0, i32 3, !dbg !2654
  %5 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer_atomic, align 8, !dbg !2654
  %tobool2 = icmp ne i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %5, null, !dbg !2654
  %lnot = xor i1 %tobool2, true, !dbg !2654
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %6 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ], !dbg !2655
  %lnot3 = xor i1 %6, true, !dbg !2654
  %lnot4 = xor i1 %lnot3, true, !dbg !2654
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2654
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2654
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !2656
  %tobool5 = icmp ne i32 %7, 0, !dbg !2656
  %lnot6 = xor i1 %tobool5, true, !dbg !2656
  %lnot8 = xor i1 %lnot6, true, !dbg !2656
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2656
  %conv = sext i32 %lnot.ext9 to i64, !dbg !2656
  %tobool10 = icmp ne i64 %conv, 0, !dbg !2656
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !2654

if.then11:                                        ; preds = %land.end
  br label %do.body, !dbg !2656

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !2658

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !2660

do.end:                                           ; preds = %do.body12
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2658
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 9, !dbg !2658
  %call13 = call i8* @dev_name(%struct.device* %dev) #10, !dbg !2658
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %call13) #10, !dbg !2658
  br label %do.body14, !dbg !2658

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !2662

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2664

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !2662

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 41, i32 2313, i64 12) #6, !dbg !2666, !srcloc !2668
  br label %do.end18, !dbg !2666

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !dbg !2669, !srcloc !2671
  br label %do.body19, !dbg !2662

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2672

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !2662

do.end21:                                         ; preds = %do.end20
  br label %do.body22, !dbg !2658

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !2674

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !2658

do.end24:                                         ; preds = %do.end23
  br label %if.end, !dbg !2658

if.end:                                           ; preds = %do.end24, %land.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !2654
  %tobool25 = icmp ne i32 %9, 0, !dbg !2654
  %lnot26 = xor i1 %tobool25, true, !dbg !2654
  %lnot28 = xor i1 %lnot26, true, !dbg !2654
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2654
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2654
  store i64 %conv30, i64* %tmp, align 8, !dbg !2656
  %10 = load i64, i64* %tmp, align 8, !dbg !2654
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2676
  %call31 = call i32 @i2c_trylock_bus(%struct.i2c_adapter* %11, i32 2) #10, !dbg !2677
  %tobool32 = icmp ne i32 %call31, 0, !dbg !2677
  %12 = zext i1 %tobool32 to i64, !dbg !2677
  %cond = select i1 %tobool32, i32 0, i32 -11, !dbg !2677
  store i32 %cond, i32* %ret, align 4, !dbg !2678
  br label %if.end33, !dbg !2679

if.else:                                          ; preds = %entry
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2680
  call void @i2c_lock_bus(%struct.i2c_adapter* %13, i32 2) #10, !dbg !2682
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end
  %14 = load i32, i32* %ret, align 4, !dbg !2683
  ret i32 %14, !dbg !2684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__i2c_smbus_xfer(%struct.i2c_adapter* %adapter, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol, %union.i2c_smbus_data* %data) #0 !dbg !2685 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %xfer_func = alloca i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, align 8
  %orig_jiffies = alloca i64, align 8
  %try = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !2692, metadata !DIExpression()), !dbg !2693
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !2696, metadata !DIExpression()), !dbg !2697
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !2698, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.declare(metadata i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata i64* %orig_jiffies, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.declare(metadata i32* %try, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2706, metadata !DIExpression()), !dbg !2707
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2708
  %call = call i32 @__i2c_check_suspended(%struct.i2c_adapter* %0) #10, !dbg !2709
  store i32 %call, i32* %res, align 4, !dbg !2710
  %1 = load i32, i32* %res, align 4, !dbg !2711
  %tobool = icmp ne i32 %1, 0, !dbg !2711
  br i1 %tobool, label %if.then, label %if.end, !dbg !2713

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %res, align 4, !dbg !2714
  store i32 %2, i32* %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end:                                           ; preds = %entry
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2716
  %4 = load i16, i16* %addr.addr, align 2, !dbg !2717
  %5 = load i16, i16* %flags.addr, align 2, !dbg !2718
  %6 = load i8, i8* %read_write.addr, align 1, !dbg !2719
  %7 = load i8, i8* %command.addr, align 1, !dbg !2720
  %8 = load i32, i32* %protocol.addr, align 4, !dbg !2721
  %9 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !2722
  call void @trace_smbus_write(%struct.i2c_adapter* %3, i16 zeroext %4, i16 zeroext %5, i8 signext %6, i8 zeroext %7, i32 %8, %union.i2c_smbus_data* %9) #10, !dbg !2723
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2724
  %11 = load i16, i16* %addr.addr, align 2, !dbg !2725
  %12 = load i16, i16* %flags.addr, align 2, !dbg !2726
  %13 = load i8, i8* %read_write.addr, align 1, !dbg !2727
  %14 = load i8, i8* %command.addr, align 1, !dbg !2728
  %15 = load i32, i32* %protocol.addr, align 4, !dbg !2729
  call void @trace_smbus_read(%struct.i2c_adapter* %10, i16 zeroext %11, i16 zeroext %12, i8 signext %13, i8 zeroext %14, i32 %15) #10, !dbg !2730
  %16 = load i16, i16* %flags.addr, align 2, !dbg !2731
  %conv = zext i16 %16 to i32, !dbg !2731
  %and = and i32 %conv, 36884, !dbg !2731
  %conv1 = trunc i32 %and to i16, !dbg !2731
  store i16 %conv1, i16* %flags.addr, align 2, !dbg !2731
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2732
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 2, !dbg !2733
  %18 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !2733
  %smbus_xfer = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %18, i32 0, i32 2, !dbg !2734
  %19 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer, align 8, !dbg !2734
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %19, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, align 8, !dbg !2735
  %call2 = call zeroext i1 @i2c_in_atomic_xfer_mode() #10, !dbg !2736
  br i1 %call2, label %if.then3, label %if.end14, !dbg !2738

if.then3:                                         ; preds = %if.end
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2739
  %algo4 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 2, !dbg !2742
  %21 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo4, align 8, !dbg !2742
  %smbus_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %21, i32 0, i32 3, !dbg !2743
  %22 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer_atomic, align 8, !dbg !2743
  %tobool5 = icmp ne i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %22, null, !dbg !2739
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !2744

if.then6:                                         ; preds = %if.then3
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2745
  %algo7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 2, !dbg !2746
  %24 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo7, align 8, !dbg !2746
  %smbus_xfer_atomic8 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %24, i32 0, i32 3, !dbg !2747
  %25 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer_atomic8, align 8, !dbg !2747
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %25, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, align 8, !dbg !2748
  br label %if.end13, !dbg !2749

if.else:                                          ; preds = %if.then3
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2750
  %algo9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 2, !dbg !2752
  %27 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo9, align 8, !dbg !2752
  %master_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %27, i32 0, i32 1, !dbg !2753
  %28 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer_atomic, align 8, !dbg !2753
  %tobool10 = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %28, null, !dbg !2750
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2754

if.then11:                                        ; preds = %if.else
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, align 8, !dbg !2755
  br label %if.end12, !dbg !2756

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then6
  br label %if.end14, !dbg !2757

if.end14:                                         ; preds = %if.end13, %if.end
  %29 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, align 8, !dbg !2758
  %tobool15 = icmp ne i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %29, null, !dbg !2758
  br i1 %tobool15, label %if.then16, label %if.end34, !dbg !2760

if.then16:                                        ; preds = %if.end14
  %30 = load volatile i64, i64* @jiffies, align 8, !dbg !2761
  store i64 %30, i64* %orig_jiffies, align 8, !dbg !2763
  store i32 0, i32* %res, align 4, !dbg !2764
  store i32 0, i32* %try, align 4, !dbg !2766
  br label %for.cond, !dbg !2767

for.cond:                                         ; preds = %for.inc, %if.then16
  %31 = load i32, i32* %try, align 4, !dbg !2768
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2770
  %retries = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 8, !dbg !2771
  %33 = load i32, i32* %retries, align 4, !dbg !2771
  %cmp = icmp sle i32 %31, %33, !dbg !2772
  br i1 %cmp, label %for.body, label %for.end, !dbg !2773

for.body:                                         ; preds = %for.cond
  %34 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %xfer_func, align 8, !dbg !2774
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2776
  %36 = load i16, i16* %addr.addr, align 2, !dbg !2777
  %37 = load i16, i16* %flags.addr, align 2, !dbg !2778
  %38 = load i8, i8* %read_write.addr, align 1, !dbg !2779
  %39 = load i8, i8* %command.addr, align 1, !dbg !2780
  %40 = load i32, i32* %protocol.addr, align 4, !dbg !2781
  %41 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !2782
  %call18 = call i32 %34(%struct.i2c_adapter* %35, i16 zeroext %36, i16 zeroext %37, i8 signext %38, i8 zeroext %39, i32 %40, %union.i2c_smbus_data* %41) #10, !dbg !2774
  store i32 %call18, i32* %res, align 4, !dbg !2783
  %42 = load i32, i32* %res, align 4, !dbg !2784
  %cmp19 = icmp ne i32 %42, -11, !dbg !2786
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2787

if.then21:                                        ; preds = %for.body
  br label %for.end, !dbg !2788

if.end22:                                         ; preds = %for.body
  %43 = load i64, i64* %orig_jiffies, align 8, !dbg !2789
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2789
  %timeout = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 7, !dbg !2789
  %45 = load i32, i32* %timeout, align 8, !dbg !2789
  %conv23 = sext i32 %45 to i64, !dbg !2789
  %add = add i64 %43, %conv23, !dbg !2789
  %46 = load volatile i64, i64* @jiffies, align 8, !dbg !2789
  %sub = sub i64 %add, %46, !dbg !2789
  %cmp24 = icmp slt i64 %sub, 0, !dbg !2789
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2791

if.then26:                                        ; preds = %if.end22
  br label %for.end, !dbg !2792

if.end27:                                         ; preds = %if.end22
  br label %for.inc, !dbg !2793

for.inc:                                          ; preds = %if.end27
  %47 = load i32, i32* %try, align 4, !dbg !2794
  %inc = add i32 %47, 1, !dbg !2794
  store i32 %inc, i32* %try, align 4, !dbg !2794
  br label %for.cond, !dbg !2795, !llvm.loop !2796

for.end:                                          ; preds = %if.then26, %if.then21, %for.cond
  %48 = load i32, i32* %res, align 4, !dbg !2798
  %cmp28 = icmp ne i32 %48, -95, !dbg !2800
  br i1 %cmp28, label %if.then32, label %lor.lhs.false, !dbg !2801

lor.lhs.false:                                    ; preds = %for.end
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2802
  %algo30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 2, !dbg !2803
  %50 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo30, align 8, !dbg !2803
  %master_xfer = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %50, i32 0, i32 0, !dbg !2804
  %51 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer, align 8, !dbg !2804
  %tobool31 = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %51, null, !dbg !2802
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !2805

if.then32:                                        ; preds = %lor.lhs.false, %for.end
  br label %trace, !dbg !2806

if.end33:                                         ; preds = %lor.lhs.false
  br label %if.end34, !dbg !2807

if.end34:                                         ; preds = %if.end33, %if.end14
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2808
  %53 = load i16, i16* %addr.addr, align 2, !dbg !2809
  %54 = load i16, i16* %flags.addr, align 2, !dbg !2810
  %55 = load i8, i8* %read_write.addr, align 1, !dbg !2811
  %56 = load i8, i8* %command.addr, align 1, !dbg !2812
  %57 = load i32, i32* %protocol.addr, align 4, !dbg !2813
  %58 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !2814
  %call35 = call i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %52, i16 zeroext %53, i16 zeroext %54, i8 signext %55, i8 zeroext %56, i32 %57, %union.i2c_smbus_data* %58) #10, !dbg !2815
  store i32 %call35, i32* %res, align 4, !dbg !2816
  br label %trace, !dbg !2817

trace:                                            ; preds = %if.end34, %if.then32
  call void @llvm.dbg.label(metadata !2818), !dbg !2819
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2820
  %60 = load i16, i16* %addr.addr, align 2, !dbg !2821
  %61 = load i16, i16* %flags.addr, align 2, !dbg !2822
  %62 = load i8, i8* %read_write.addr, align 1, !dbg !2823
  %63 = load i8, i8* %command.addr, align 1, !dbg !2824
  %64 = load i32, i32* %protocol.addr, align 4, !dbg !2825
  %65 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !2826
  %66 = load i32, i32* %res, align 4, !dbg !2827
  call void @trace_smbus_reply(%struct.i2c_adapter* %59, i16 zeroext %60, i16 zeroext %61, i8 signext %62, i8 zeroext %63, i32 %64, %union.i2c_smbus_data* %65, i32 %66) #10, !dbg !2828
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2829
  %68 = load i16, i16* %addr.addr, align 2, !dbg !2830
  %69 = load i16, i16* %flags.addr, align 2, !dbg !2831
  %70 = load i8, i8* %read_write.addr, align 1, !dbg !2832
  %71 = load i8, i8* %command.addr, align 1, !dbg !2833
  %72 = load i32, i32* %protocol.addr, align 4, !dbg !2834
  %73 = load i32, i32* %res, align 4, !dbg !2835
  call void @trace_smbus_result(%struct.i2c_adapter* %67, i16 zeroext %68, i16 zeroext %69, i8 signext %70, i8 zeroext %71, i32 %72, i32 %73) #10, !dbg !2836
  %74 = load i32, i32* %res, align 4, !dbg !2837
  store i32 %74, i32* %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

return:                                           ; preds = %trace, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !2839
  ret i32 %75, !dbg !2839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !2840 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2845
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !2846
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !2846
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !2847
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !2847
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2848
  %4 = load i32, i32* %flags.addr, align 4, !dbg !2849
  call void %2(%struct.i2c_adapter* %3, i32 %4) #10, !dbg !2845
  ret void, !dbg !2850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i2c_check_suspended(%struct.i2c_adapter* %adap) #0 !dbg !2851 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2854
  %locked_flags = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 10, !dbg !2856
  %call = call zeroext i1 @test_bit(i64 0, i64* %locked_flags) #10, !dbg !2857
  br i1 %call, label %if.then, label %if.end29, !dbg !2858

if.then:                                          ; preds = %entry
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2859
  %locked_flags1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %1, i32 0, i32 10, !dbg !2862
  %call2 = call zeroext i1 @test_and_set_bit(i64 1, i64* %locked_flags1) #10, !dbg !2863
  br i1 %call2, label %if.end28, label %if.then3, !dbg !2864

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2865, metadata !DIExpression()), !dbg !2867
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !2867
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2868
  %tobool = icmp ne i32 %2, 0, !dbg !2868
  %lnot = xor i1 %tobool, true, !dbg !2868
  %lnot4 = xor i1 %lnot, true, !dbg !2868
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2868
  %conv = sext i32 %lnot.ext to i64, !dbg !2868
  %tobool5 = icmp ne i64 %conv, 0, !dbg !2868
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2867

if.then6:                                         ; preds = %if.then3
  br label %do.body, !dbg !2868

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !2870

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2872

do.end:                                           ; preds = %do.body7
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2870
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %3, i32 0, i32 9, !dbg !2870
  %call8 = call i8* @dev_driver_string(%struct.device* %dev) #10, !dbg !2870
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2870
  %dev9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 9, !dbg !2870
  %call10 = call i8* @dev_name(%struct.device* %dev9) #10, !dbg !2870
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %call8, i8* %call10) #10, !dbg !2870
  br label %do.body11, !dbg !2870

do.body11:                                        ; preds = %do.end
  br label %do.body12, !dbg !2874

do.body12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2876

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !2874

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 54, i32 2313, i64 12) #6, !dbg !2878, !srcloc !2880
  br label %do.end15, !dbg !2878

do.end15:                                         ; preds = %do.body14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #6, !dbg !2881, !srcloc !2883
  br label %do.body16, !dbg !2874

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2884

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !2874

do.end18:                                         ; preds = %do.end17
  br label %do.body19, !dbg !2870

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2886

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !2870

do.end21:                                         ; preds = %do.end20
  br label %if.end, !dbg !2870

if.end:                                           ; preds = %do.end21, %if.then3
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !2867
  %tobool22 = icmp ne i32 %5, 0, !dbg !2867
  %lnot23 = xor i1 %tobool22, true, !dbg !2867
  %lnot25 = xor i1 %lnot23, true, !dbg !2867
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !2867
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !2867
  store i64 %conv27, i64* %tmp, align 8, !dbg !2868
  %6 = load i64, i64* %tmp, align 8, !dbg !2867
  br label %if.end28, !dbg !2888

if.end28:                                         ; preds = %if.end, %if.then
  store i32 -108, i32* %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

if.end29:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2890
  br label %return, !dbg !2890

return:                                           ; preds = %if.end29, %if.end28
  %7 = load i32, i32* %retval, align 4, !dbg !2891
  ret i32 %7, !dbg !2891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_smbus_write(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol, %union.i2c_smbus_data* %data) #0 !dbg !2892 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2902, metadata !DIExpression()), !dbg !2901
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !2903, metadata !DIExpression()), !dbg !2901
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !2904, metadata !DIExpression()), !dbg !2901
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2905, metadata !DIExpression()), !dbg !2901
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !2906, metadata !DIExpression()), !dbg !2901
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !2907, metadata !DIExpression()), !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_smbus_read(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol) #0 !dbg !2908 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2913, metadata !DIExpression()), !dbg !2912
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !2914, metadata !DIExpression()), !dbg !2912
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !2915, metadata !DIExpression()), !dbg !2912
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2916, metadata !DIExpression()), !dbg !2912
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !2917, metadata !DIExpression()), !dbg !2912
  ret void, !dbg !2912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i2c_in_atomic_xfer_mode() #0 !dbg !2918 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2919, metadata !DIExpression()), !dbg !2924
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %0 = load i32, i32* @system_state, align 4, !dbg !2928
  %cmp = icmp ugt i32 %0, 2, !dbg !2929
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2930

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2931, metadata !DIExpression()), !dbg !2932
  br label %do.body, !dbg !2932

do.body:                                          ; preds = %land.rhs
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2937, metadata !DIExpression()), !dbg !2936
  %cmp1 = icmp eq i64* %__dummy, %__dummy2, !dbg !2936
  %conv = zext i1 %cmp1 to i32, !dbg !2936
  store i32 1, i32* %tmp, align 4, !dbg !2936
  %1 = load i32, i32* %tmp, align 4, !dbg !2936
  %call = call i64 @arch_local_save_flags() #10, !dbg !2938
  store i64 %call, i64* %_flags, align 8, !dbg !2938
  br label %do.end, !dbg !2938

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2942, metadata !DIExpression()), !dbg !2941
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2941
  %conv6 = zext i1 %cmp5 to i32, !dbg !2941
  store i32 1, i32* %tmp7, align 4, !dbg !2941
  %2 = load i32, i32* %tmp7, align 4, !dbg !2941
  %3 = load i64, i64* %_flags, align 8, !dbg !2943
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2944
  %and.i = and i64 %4, 512, !dbg !2945
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2946
  %lnot.i = xor i1 %tobool.i, true, !dbg !2946
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2946
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2943
  %5 = load i32, i32* %tmp8, align 4, !dbg !2943
  store i32 %5, i32* %tmp2, align 4, !dbg !2938
  %6 = load i32, i32* %tmp2, align 4, !dbg !2932
  %tobool = icmp ne i32 %6, 0, !dbg !2930
  br label %land.end

land.end:                                         ; preds = %do.end, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool, %do.end ], !dbg !2947
  ret i1 %7, !dbg !2948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %adapter, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #0 !dbg !2949 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %msgbuf0 = alloca [35 x i8], align 16
  %msgbuf1 = alloca [34 x i8], align 16
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %partial_pec = alloca i8, align 1
  %status = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2952, metadata !DIExpression()), !dbg !2953
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !2956, metadata !DIExpression()), !dbg !2957
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.declare(metadata [35 x i8]* %msgbuf0, metadata !2964, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata [34 x i8]* %msgbuf1, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %num, metadata !2972, metadata !DIExpression()), !dbg !2973
  %0 = load i8, i8* %read_write.addr, align 1, !dbg !2974
  %conv = sext i8 %0 to i32, !dbg !2974
  %cmp = icmp eq i32 %conv, 1, !dbg !2975
  %1 = zext i1 %cmp to i64, !dbg !2974
  %cond = select i1 %cmp, i32 2, i32 1, !dbg !2974
  store i32 %cond, i32* %num, align 4, !dbg !2973
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.declare(metadata i8* %partial_pec, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i8 0, i8* %partial_pec, align 1, !dbg !2979
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !2982, metadata !DIExpression()), !dbg !2984
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !2985
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !2986
  %2 = load i16, i16* %addr.addr, align 2, !dbg !2987
  store i16 %2, i16* %addr2, align 16, !dbg !2986
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !2986
  %3 = load i16, i16* %flags.addr, align 2, !dbg !2988
  store i16 %3, i16* %flags3, align 2, !dbg !2986
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !2986
  store i16 1, i16* %len, align 4, !dbg !2986
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !2986
  %arraydecay = getelementptr inbounds [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 0, !dbg !2989
  store i8* %arraydecay, i8** %buf, align 8, !dbg !2986
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !2985
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !2990
  %4 = load i16, i16* %addr.addr, align 2, !dbg !2991
  store i16 %4, i16* %addr4, align 16, !dbg !2990
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !2990
  %5 = load i16, i16* %flags.addr, align 2, !dbg !2992
  %conv6 = zext i16 %5 to i32, !dbg !2992
  %or = or i32 %conv6, 1, !dbg !2993
  %conv7 = trunc i32 %or to i16, !dbg !2992
  store i16 %conv7, i16* %flags5, align 2, !dbg !2990
  %len8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !2990
  store i16 0, i16* %len8, align 4, !dbg !2990
  %buf9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !2990
  %arraydecay10 = getelementptr inbounds [34 x i8], [34 x i8]* %msgbuf1, i64 0, i64 0, !dbg !2994
  store i8* %arraydecay10, i8** %buf9, align 8, !dbg !2990
  %6 = load i8, i8* %command.addr, align 1, !dbg !2995
  %arrayidx = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 0, !dbg !2996
  store i8 %6, i8* %arrayidx, align 16, !dbg !2997
  %7 = load i32, i32* %size.addr, align 4, !dbg !2998
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb31
    i32 3, label %sw.bb42
    i32 4, label %sw.bb60
    i32 5, label %sw.bb75
    i32 7, label %sw.bb117
    i32 8, label %sw.bb163
  ], !dbg !2999

sw.bb:                                            ; preds = %entry
  %arrayidx11 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3000
  %len12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx11, i32 0, i32 2, !dbg !3002
  store i16 0, i16* %len12, align 4, !dbg !3003
  %8 = load i16, i16* %flags.addr, align 2, !dbg !3004
  %conv13 = zext i16 %8 to i32, !dbg !3004
  %9 = load i8, i8* %read_write.addr, align 1, !dbg !3005
  %conv14 = sext i8 %9 to i32, !dbg !3005
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !3006
  %10 = zext i1 %cmp15 to i64, !dbg !3005
  %cond17 = select i1 %cmp15, i32 1, i32 0, !dbg !3005
  %or18 = or i32 %conv13, %cond17, !dbg !3007
  %conv19 = trunc i32 %or18 to i16, !dbg !3004
  %arrayidx20 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3008
  %flags21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx20, i32 0, i32 1, !dbg !3009
  store i16 %conv19, i16* %flags21, align 2, !dbg !3010
  store i32 1, i32* %num, align 4, !dbg !3011
  br label %sw.epilog, !dbg !3012

sw.bb22:                                          ; preds = %entry
  %11 = load i8, i8* %read_write.addr, align 1, !dbg !3013
  %conv23 = sext i8 %11 to i32, !dbg !3013
  %cmp24 = icmp eq i32 %conv23, 1, !dbg !3015
  br i1 %cmp24, label %if.then, label %if.end, !dbg !3016

if.then:                                          ; preds = %sw.bb22
  %12 = load i16, i16* %flags.addr, align 2, !dbg !3017
  %conv26 = zext i16 %12 to i32, !dbg !3017
  %or27 = or i32 1, %conv26, !dbg !3019
  %conv28 = trunc i32 %or27 to i16, !dbg !3020
  %arrayidx29 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3021
  %flags30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx29, i32 0, i32 1, !dbg !3022
  store i16 %conv28, i16* %flags30, align 2, !dbg !3023
  store i32 1, i32* %num, align 4, !dbg !3024
  br label %if.end, !dbg !3025

if.end:                                           ; preds = %if.then, %sw.bb22
  br label %sw.epilog, !dbg !3026

sw.bb31:                                          ; preds = %entry
  %13 = load i8, i8* %read_write.addr, align 1, !dbg !3027
  %conv32 = sext i8 %13 to i32, !dbg !3027
  %cmp33 = icmp eq i32 %conv32, 1, !dbg !3029
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !3030

if.then35:                                        ; preds = %sw.bb31
  %arrayidx36 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3031
  %len37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx36, i32 0, i32 2, !dbg !3032
  store i16 1, i16* %len37, align 4, !dbg !3033
  br label %if.end41, !dbg !3031

if.else:                                          ; preds = %sw.bb31
  %arrayidx38 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3034
  %len39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx38, i32 0, i32 2, !dbg !3036
  store i16 2, i16* %len39, align 4, !dbg !3037
  %14 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3038
  %byte = bitcast %union.i2c_smbus_data* %14 to i8*, !dbg !3039
  %15 = load i8, i8* %byte, align 2, !dbg !3039
  %arrayidx40 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 1, !dbg !3040
  store i8 %15, i8* %arrayidx40, align 1, !dbg !3041
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35
  br label %sw.epilog, !dbg !3042

sw.bb42:                                          ; preds = %entry
  %16 = load i8, i8* %read_write.addr, align 1, !dbg !3043
  %conv43 = sext i8 %16 to i32, !dbg !3043
  %cmp44 = icmp eq i32 %conv43, 1, !dbg !3045
  br i1 %cmp44, label %if.then46, label %if.else49, !dbg !3046

if.then46:                                        ; preds = %sw.bb42
  %arrayidx47 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3047
  %len48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx47, i32 0, i32 2, !dbg !3048
  store i16 2, i16* %len48, align 4, !dbg !3049
  br label %if.end59, !dbg !3047

if.else49:                                        ; preds = %sw.bb42
  %arrayidx50 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3050
  %len51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx50, i32 0, i32 2, !dbg !3052
  store i16 3, i16* %len51, align 4, !dbg !3053
  %17 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3054
  %word = bitcast %union.i2c_smbus_data* %17 to i16*, !dbg !3055
  %18 = load i16, i16* %word, align 2, !dbg !3055
  %conv52 = zext i16 %18 to i32, !dbg !3054
  %and = and i32 %conv52, 255, !dbg !3056
  %conv53 = trunc i32 %and to i8, !dbg !3054
  %arrayidx54 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 1, !dbg !3057
  store i8 %conv53, i8* %arrayidx54, align 1, !dbg !3058
  %19 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3059
  %word55 = bitcast %union.i2c_smbus_data* %19 to i16*, !dbg !3060
  %20 = load i16, i16* %word55, align 2, !dbg !3060
  %conv56 = zext i16 %20 to i32, !dbg !3059
  %shr = ashr i32 %conv56, 8, !dbg !3061
  %conv57 = trunc i32 %shr to i8, !dbg !3059
  %arrayidx58 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 2, !dbg !3062
  store i8 %conv57, i8* %arrayidx58, align 2, !dbg !3063
  br label %if.end59

if.end59:                                         ; preds = %if.else49, %if.then46
  br label %sw.epilog, !dbg !3064

sw.bb60:                                          ; preds = %entry
  store i32 2, i32* %num, align 4, !dbg !3065
  store i8 1, i8* %read_write.addr, align 1, !dbg !3066
  %arrayidx61 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3067
  %len62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx61, i32 0, i32 2, !dbg !3068
  store i16 3, i16* %len62, align 4, !dbg !3069
  %arrayidx63 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3070
  %len64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx63, i32 0, i32 2, !dbg !3071
  store i16 2, i16* %len64, align 4, !dbg !3072
  %21 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3073
  %word65 = bitcast %union.i2c_smbus_data* %21 to i16*, !dbg !3074
  %22 = load i16, i16* %word65, align 2, !dbg !3074
  %conv66 = zext i16 %22 to i32, !dbg !3073
  %and67 = and i32 %conv66, 255, !dbg !3075
  %conv68 = trunc i32 %and67 to i8, !dbg !3073
  %arrayidx69 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 1, !dbg !3076
  store i8 %conv68, i8* %arrayidx69, align 1, !dbg !3077
  %23 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3078
  %word70 = bitcast %union.i2c_smbus_data* %23 to i16*, !dbg !3079
  %24 = load i16, i16* %word70, align 2, !dbg !3079
  %conv71 = zext i16 %24 to i32, !dbg !3078
  %shr72 = ashr i32 %conv71, 8, !dbg !3080
  %conv73 = trunc i32 %shr72 to i8, !dbg !3078
  %arrayidx74 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 2, !dbg !3081
  store i8 %conv73, i8* %arrayidx74, align 2, !dbg !3082
  br label %sw.epilog, !dbg !3083

sw.bb75:                                          ; preds = %entry
  %25 = load i8, i8* %read_write.addr, align 1, !dbg !3084
  %conv76 = sext i8 %25 to i32, !dbg !3084
  %cmp77 = icmp eq i32 %conv76, 1, !dbg !3086
  br i1 %cmp77, label %if.then79, label %if.else88, !dbg !3087

if.then79:                                        ; preds = %sw.bb75
  %arrayidx80 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3088
  %flags81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx80, i32 0, i32 1, !dbg !3090
  %26 = load i16, i16* %flags81, align 2, !dbg !3091
  %conv82 = zext i16 %26 to i32, !dbg !3091
  %or83 = or i32 %conv82, 1024, !dbg !3091
  %conv84 = trunc i32 %or83 to i16, !dbg !3091
  store i16 %conv84, i16* %flags81, align 2, !dbg !3091
  %arrayidx85 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3092
  %len86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx85, i32 0, i32 2, !dbg !3093
  store i16 1, i16* %len86, align 4, !dbg !3094
  %arrayidx87 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3095
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx87, i8 zeroext 0) #10, !dbg !3096
  br label %if.end116, !dbg !3097

if.else88:                                        ; preds = %sw.bb75
  %27 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3098
  %block = bitcast %union.i2c_smbus_data* %27 to [34 x i8]*, !dbg !3100
  %arrayidx89 = getelementptr [34 x i8], [34 x i8]* %block, i64 0, i64 0, !dbg !3098
  %28 = load i8, i8* %arrayidx89, align 2, !dbg !3098
  %conv90 = zext i8 %28 to i32, !dbg !3098
  %add = add i32 %conv90, 2, !dbg !3101
  %conv91 = trunc i32 %add to i16, !dbg !3098
  %arrayidx92 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3102
  %len93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx92, i32 0, i32 2, !dbg !3103
  store i16 %conv91, i16* %len93, align 4, !dbg !3104
  %arrayidx94 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3105
  %len95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx94, i32 0, i32 2, !dbg !3107
  %29 = load i16, i16* %len95, align 4, !dbg !3107
  %conv96 = zext i16 %29 to i32, !dbg !3105
  %cmp97 = icmp sgt i32 %conv96, 34, !dbg !3108
  br i1 %cmp97, label %if.then99, label %if.end103, !dbg !3109

if.then99:                                        ; preds = %if.else88
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3110
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 9, !dbg !3110
  %31 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3110
  %block100 = bitcast %union.i2c_smbus_data* %31 to [34 x i8]*, !dbg !3110
  %arrayidx101 = getelementptr [34 x i8], [34 x i8]* %block100, i64 0, i64 0, !dbg !3110
  %32 = load i8, i8* %arrayidx101, align 2, !dbg !3110
  %conv102 = zext i8 %32 to i32, !dbg !3110
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %conv102) #11, !dbg !3110
  store i32 -22, i32* %retval, align 4, !dbg !3112
  br label %return, !dbg !3112

if.end103:                                        ; preds = %if.else88
  %arrayidx104 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3113
  %33 = load i8, i8* %command.addr, align 1, !dbg !3114
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx104, i8 zeroext %33) #10, !dbg !3115
  store i32 1, i32* %i, align 4, !dbg !3116
  br label %for.cond, !dbg !3118

for.cond:                                         ; preds = %for.inc, %if.end103
  %34 = load i32, i32* %i, align 4, !dbg !3119
  %arrayidx105 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3121
  %len106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx105, i32 0, i32 2, !dbg !3122
  %35 = load i16, i16* %len106, align 4, !dbg !3122
  %conv107 = zext i16 %35 to i32, !dbg !3121
  %cmp108 = icmp slt i32 %34, %conv107, !dbg !3123
  br i1 %cmp108, label %for.body, label %for.end, !dbg !3124

for.body:                                         ; preds = %for.cond
  %36 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3125
  %block110 = bitcast %union.i2c_smbus_data* %36 to [34 x i8]*, !dbg !3126
  %37 = load i32, i32* %i, align 4, !dbg !3127
  %sub = sub i32 %37, 1, !dbg !3128
  %idxprom = sext i32 %sub to i64, !dbg !3125
  %arrayidx111 = getelementptr [34 x i8], [34 x i8]* %block110, i64 0, i64 %idxprom, !dbg !3125
  %38 = load i8, i8* %arrayidx111, align 1, !dbg !3125
  %arrayidx112 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3129
  %buf113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx112, i32 0, i32 3, !dbg !3130
  %39 = load i8*, i8** %buf113, align 8, !dbg !3130
  %40 = load i32, i32* %i, align 4, !dbg !3131
  %idxprom114 = sext i32 %40 to i64, !dbg !3129
  %arrayidx115 = getelementptr i8, i8* %39, i64 %idxprom114, !dbg !3129
  store i8 %38, i8* %arrayidx115, align 1, !dbg !3132
  br label %for.inc, !dbg !3129

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !dbg !3133
  %inc = add i32 %41, 1, !dbg !3133
  store i32 %inc, i32* %i, align 4, !dbg !3133
  br label %for.cond, !dbg !3134, !llvm.loop !3135

for.end:                                          ; preds = %for.cond
  br label %if.end116

if.end116:                                        ; preds = %for.end, %if.then79
  br label %sw.epilog, !dbg !3137

sw.bb117:                                         ; preds = %entry
  store i32 2, i32* %num, align 4, !dbg !3138
  store i8 1, i8* %read_write.addr, align 1, !dbg !3139
  %42 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3140
  %block118 = bitcast %union.i2c_smbus_data* %42 to [34 x i8]*, !dbg !3142
  %arrayidx119 = getelementptr [34 x i8], [34 x i8]* %block118, i64 0, i64 0, !dbg !3140
  %43 = load i8, i8* %arrayidx119, align 2, !dbg !3140
  %conv120 = zext i8 %43 to i32, !dbg !3140
  %cmp121 = icmp sgt i32 %conv120, 32, !dbg !3143
  br i1 %cmp121, label %if.then123, label %if.end128, !dbg !3144

if.then123:                                       ; preds = %sw.bb117
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3145
  %dev124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 9, !dbg !3145
  %45 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3145
  %block125 = bitcast %union.i2c_smbus_data* %45 to [34 x i8]*, !dbg !3145
  %arrayidx126 = getelementptr [34 x i8], [34 x i8]* %block125, i64 0, i64 0, !dbg !3145
  %46 = load i8, i8* %arrayidx126, align 2, !dbg !3145
  %conv127 = zext i8 %46 to i32, !dbg !3145
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %conv127) #11, !dbg !3145
  store i32 -22, i32* %retval, align 4, !dbg !3147
  br label %return, !dbg !3147

if.end128:                                        ; preds = %sw.bb117
  %47 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3148
  %block129 = bitcast %union.i2c_smbus_data* %47 to [34 x i8]*, !dbg !3149
  %arrayidx130 = getelementptr [34 x i8], [34 x i8]* %block129, i64 0, i64 0, !dbg !3148
  %48 = load i8, i8* %arrayidx130, align 2, !dbg !3148
  %conv131 = zext i8 %48 to i32, !dbg !3148
  %add132 = add i32 %conv131, 2, !dbg !3150
  %conv133 = trunc i32 %add132 to i16, !dbg !3148
  %arrayidx134 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3151
  %len135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx134, i32 0, i32 2, !dbg !3152
  store i16 %conv133, i16* %len135, align 4, !dbg !3153
  %arrayidx136 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3154
  %49 = load i8, i8* %command.addr, align 1, !dbg !3155
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx136, i8 zeroext %49) #10, !dbg !3156
  store i32 1, i32* %i, align 4, !dbg !3157
  br label %for.cond137, !dbg !3159

for.cond137:                                      ; preds = %for.inc152, %if.end128
  %50 = load i32, i32* %i, align 4, !dbg !3160
  %arrayidx138 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3162
  %len139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx138, i32 0, i32 2, !dbg !3163
  %51 = load i16, i16* %len139, align 4, !dbg !3163
  %conv140 = zext i16 %51 to i32, !dbg !3162
  %cmp141 = icmp slt i32 %50, %conv140, !dbg !3164
  br i1 %cmp141, label %for.body143, label %for.end154, !dbg !3165

for.body143:                                      ; preds = %for.cond137
  %52 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3166
  %block144 = bitcast %union.i2c_smbus_data* %52 to [34 x i8]*, !dbg !3167
  %53 = load i32, i32* %i, align 4, !dbg !3168
  %sub145 = sub i32 %53, 1, !dbg !3169
  %idxprom146 = sext i32 %sub145 to i64, !dbg !3166
  %arrayidx147 = getelementptr [34 x i8], [34 x i8]* %block144, i64 0, i64 %idxprom146, !dbg !3166
  %54 = load i8, i8* %arrayidx147, align 1, !dbg !3166
  %arrayidx148 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3170
  %buf149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx148, i32 0, i32 3, !dbg !3171
  %55 = load i8*, i8** %buf149, align 8, !dbg !3171
  %56 = load i32, i32* %i, align 4, !dbg !3172
  %idxprom150 = sext i32 %56 to i64, !dbg !3170
  %arrayidx151 = getelementptr i8, i8* %55, i64 %idxprom150, !dbg !3170
  store i8 %54, i8* %arrayidx151, align 1, !dbg !3173
  br label %for.inc152, !dbg !3170

for.inc152:                                       ; preds = %for.body143
  %57 = load i32, i32* %i, align 4, !dbg !3174
  %inc153 = add i32 %57, 1, !dbg !3174
  store i32 %inc153, i32* %i, align 4, !dbg !3174
  br label %for.cond137, !dbg !3175, !llvm.loop !3176

for.end154:                                       ; preds = %for.cond137
  %arrayidx155 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3178
  %flags156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx155, i32 0, i32 1, !dbg !3179
  %58 = load i16, i16* %flags156, align 2, !dbg !3180
  %conv157 = zext i16 %58 to i32, !dbg !3180
  %or158 = or i32 %conv157, 1024, !dbg !3180
  %conv159 = trunc i32 %or158 to i16, !dbg !3180
  store i16 %conv159, i16* %flags156, align 2, !dbg !3180
  %arrayidx160 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3181
  %len161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx160, i32 0, i32 2, !dbg !3182
  store i16 1, i16* %len161, align 4, !dbg !3183
  %arrayidx162 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3184
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx162, i8 zeroext 0) #10, !dbg !3185
  br label %sw.epilog, !dbg !3186

sw.bb163:                                         ; preds = %entry
  %59 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3187
  %block164 = bitcast %union.i2c_smbus_data* %59 to [34 x i8]*, !dbg !3189
  %arrayidx165 = getelementptr [34 x i8], [34 x i8]* %block164, i64 0, i64 0, !dbg !3187
  %60 = load i8, i8* %arrayidx165, align 2, !dbg !3187
  %conv166 = zext i8 %60 to i32, !dbg !3187
  %cmp167 = icmp sgt i32 %conv166, 32, !dbg !3190
  br i1 %cmp167, label %if.then169, label %if.end178, !dbg !3191

if.then169:                                       ; preds = %sw.bb163
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3192
  %dev170 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 9, !dbg !3192
  %62 = load i8, i8* %read_write.addr, align 1, !dbg !3192
  %conv171 = sext i8 %62 to i32, !dbg !3192
  %cmp172 = icmp eq i32 %conv171, 1, !dbg !3192
  %63 = zext i1 %cmp172 to i64, !dbg !3192
  %cond174 = select i1 %cmp172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), !dbg !3192
  %64 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3192
  %block175 = bitcast %union.i2c_smbus_data* %64 to [34 x i8]*, !dbg !3192
  %arrayidx176 = getelementptr [34 x i8], [34 x i8]* %block175, i64 0, i64 0, !dbg !3192
  %65 = load i8, i8* %arrayidx176, align 2, !dbg !3192
  %conv177 = zext i8 %65 to i32, !dbg !3192
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %cond174, i32 %conv177) #11, !dbg !3192
  store i32 -22, i32* %retval, align 4, !dbg !3194
  br label %return, !dbg !3194

if.end178:                                        ; preds = %sw.bb163
  %66 = load i8, i8* %read_write.addr, align 1, !dbg !3195
  %conv179 = sext i8 %66 to i32, !dbg !3195
  %cmp180 = icmp eq i32 %conv179, 1, !dbg !3197
  br i1 %cmp180, label %if.then182, label %if.else189, !dbg !3198

if.then182:                                       ; preds = %if.end178
  %67 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3199
  %block183 = bitcast %union.i2c_smbus_data* %67 to [34 x i8]*, !dbg !3201
  %arrayidx184 = getelementptr [34 x i8], [34 x i8]* %block183, i64 0, i64 0, !dbg !3199
  %68 = load i8, i8* %arrayidx184, align 2, !dbg !3199
  %conv185 = zext i8 %68 to i16, !dbg !3199
  %arrayidx186 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3202
  %len187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx186, i32 0, i32 2, !dbg !3203
  store i16 %conv185, i16* %len187, align 4, !dbg !3204
  %arrayidx188 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3205
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx188, i8 zeroext 0) #10, !dbg !3206
  br label %if.end215, !dbg !3207

if.else189:                                       ; preds = %if.end178
  %69 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3208
  %block190 = bitcast %union.i2c_smbus_data* %69 to [34 x i8]*, !dbg !3210
  %arrayidx191 = getelementptr [34 x i8], [34 x i8]* %block190, i64 0, i64 0, !dbg !3208
  %70 = load i8, i8* %arrayidx191, align 2, !dbg !3208
  %conv192 = zext i8 %70 to i32, !dbg !3208
  %add193 = add i32 %conv192, 1, !dbg !3211
  %conv194 = trunc i32 %add193 to i16, !dbg !3208
  %arrayidx195 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3212
  %len196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx195, i32 0, i32 2, !dbg !3213
  store i16 %conv194, i16* %len196, align 4, !dbg !3214
  %arrayidx197 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3215
  %71 = load i8, i8* %command.addr, align 1, !dbg !3216
  call void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %arrayidx197, i8 zeroext %71) #10, !dbg !3217
  store i32 1, i32* %i, align 4, !dbg !3218
  br label %for.cond198, !dbg !3220

for.cond198:                                      ; preds = %for.inc212, %if.else189
  %72 = load i32, i32* %i, align 4, !dbg !3221
  %73 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3223
  %block199 = bitcast %union.i2c_smbus_data* %73 to [34 x i8]*, !dbg !3224
  %arrayidx200 = getelementptr [34 x i8], [34 x i8]* %block199, i64 0, i64 0, !dbg !3223
  %74 = load i8, i8* %arrayidx200, align 2, !dbg !3223
  %conv201 = zext i8 %74 to i32, !dbg !3223
  %cmp202 = icmp sle i32 %72, %conv201, !dbg !3225
  br i1 %cmp202, label %for.body204, label %for.end214, !dbg !3226

for.body204:                                      ; preds = %for.cond198
  %75 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3227
  %block205 = bitcast %union.i2c_smbus_data* %75 to [34 x i8]*, !dbg !3228
  %76 = load i32, i32* %i, align 4, !dbg !3229
  %idxprom206 = sext i32 %76 to i64, !dbg !3227
  %arrayidx207 = getelementptr [34 x i8], [34 x i8]* %block205, i64 0, i64 %idxprom206, !dbg !3227
  %77 = load i8, i8* %arrayidx207, align 1, !dbg !3227
  %arrayidx208 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3230
  %buf209 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx208, i32 0, i32 3, !dbg !3231
  %78 = load i8*, i8** %buf209, align 8, !dbg !3231
  %79 = load i32, i32* %i, align 4, !dbg !3232
  %idxprom210 = sext i32 %79 to i64, !dbg !3230
  %arrayidx211 = getelementptr i8, i8* %78, i64 %idxprom210, !dbg !3230
  store i8 %77, i8* %arrayidx211, align 1, !dbg !3233
  br label %for.inc212, !dbg !3230

for.inc212:                                       ; preds = %for.body204
  %80 = load i32, i32* %i, align 4, !dbg !3234
  %inc213 = add i32 %80, 1, !dbg !3234
  store i32 %inc213, i32* %i, align 4, !dbg !3234
  br label %for.cond198, !dbg !3235, !llvm.loop !3236

for.end214:                                       ; preds = %for.cond198
  br label %if.end215

if.end215:                                        ; preds = %for.end214, %if.then182
  br label %sw.epilog, !dbg !3238

sw.default:                                       ; preds = %entry
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3239
  %dev216 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %81, i32 0, i32 9, !dbg !3239
  %82 = load i32, i32* %size.addr, align 4, !dbg !3239
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %82) #11, !dbg !3239
  store i32 -95, i32* %retval, align 4, !dbg !3240
  br label %return, !dbg !3240

sw.epilog:                                        ; preds = %if.end215, %for.end154, %if.end116, %sw.bb60, %if.end59, %if.end41, %if.end, %sw.bb
  %83 = load i16, i16* %flags.addr, align 2, !dbg !3241
  %conv217 = zext i16 %83 to i32, !dbg !3241
  %and218 = and i32 %conv217, 4, !dbg !3242
  %tobool = icmp ne i32 %and218, 0, !dbg !3242
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !3243

land.lhs.true:                                    ; preds = %sw.epilog
  %84 = load i32, i32* %size.addr, align 4, !dbg !3244
  %cmp219 = icmp ne i32 %84, 0, !dbg !3245
  br i1 %cmp219, label %land.rhs, label %land.end, !dbg !3246

land.rhs:                                         ; preds = %land.lhs.true
  %85 = load i32, i32* %size.addr, align 4, !dbg !3247
  %cmp221 = icmp ne i32 %85, 8, !dbg !3248
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %sw.epilog
  %86 = phi i1 [ false, %land.lhs.true ], [ false, %sw.epilog ], [ %cmp221, %land.rhs ], !dbg !3249
  %land.ext = zext i1 %86 to i32, !dbg !3246
  store i32 %land.ext, i32* %i, align 4, !dbg !3250
  %87 = load i32, i32* %i, align 4, !dbg !3251
  %tobool223 = icmp ne i32 %87, 0, !dbg !3251
  br i1 %tobool223, label %if.then224, label %if.end253, !dbg !3253

if.then224:                                       ; preds = %land.end
  %arrayidx225 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3254
  %flags226 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx225, i32 0, i32 1, !dbg !3257
  %88 = load i16, i16* %flags226, align 2, !dbg !3257
  %conv227 = zext i16 %88 to i32, !dbg !3254
  %and228 = and i32 %conv227, 1, !dbg !3258
  %tobool229 = icmp ne i32 %and228, 0, !dbg !3258
  br i1 %tobool229, label %if.end238, label %if.then230, !dbg !3259

if.then230:                                       ; preds = %if.then224
  %89 = load i32, i32* %num, align 4, !dbg !3260
  %cmp231 = icmp eq i32 %89, 1, !dbg !3263
  br i1 %cmp231, label %if.then233, label %if.else235, !dbg !3264

if.then233:                                       ; preds = %if.then230
  %arrayidx234 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3265
  call void @i2c_smbus_add_pec(%struct.i2c_msg* %arrayidx234) #10, !dbg !3266
  br label %if.end237, !dbg !3266

if.else235:                                       ; preds = %if.then230
  %arrayidx236 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3267
  %call = call zeroext i8 @i2c_smbus_msg_pec(i8 zeroext 0, %struct.i2c_msg* %arrayidx236) #10, !dbg !3268
  store i8 %call, i8* %partial_pec, align 1, !dbg !3269
  br label %if.end237

if.end237:                                        ; preds = %if.else235, %if.then233
  br label %if.end238, !dbg !3270

if.end238:                                        ; preds = %if.end237, %if.then224
  %90 = load i32, i32* %num, align 4, !dbg !3271
  %sub239 = sub i32 %90, 1, !dbg !3273
  %idxprom240 = sext i32 %sub239 to i64, !dbg !3274
  %arrayidx241 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 %idxprom240, !dbg !3274
  %flags242 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx241, i32 0, i32 1, !dbg !3275
  %91 = load i16, i16* %flags242, align 2, !dbg !3275
  %conv243 = zext i16 %91 to i32, !dbg !3274
  %and244 = and i32 %conv243, 1, !dbg !3276
  %tobool245 = icmp ne i32 %and244, 0, !dbg !3276
  br i1 %tobool245, label %if.then246, label %if.end252, !dbg !3277

if.then246:                                       ; preds = %if.end238
  %92 = load i32, i32* %num, align 4, !dbg !3278
  %sub247 = sub i32 %92, 1, !dbg !3279
  %idxprom248 = sext i32 %sub247 to i64, !dbg !3280
  %arrayidx249 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 %idxprom248, !dbg !3280
  %len250 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx249, i32 0, i32 2, !dbg !3281
  %93 = load i16, i16* %len250, align 4, !dbg !3282
  %inc251 = add i16 %93, 1, !dbg !3282
  store i16 %inc251, i16* %len250, align 4, !dbg !3282
  br label %if.end252, !dbg !3280

if.end252:                                        ; preds = %if.then246, %if.end238
  br label %if.end253, !dbg !3283

if.end253:                                        ; preds = %if.end252, %land.end
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3284
  %arraydecay254 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3285
  %95 = load i32, i32* %num, align 4, !dbg !3286
  %call255 = call i32 @__i2c_transfer(%struct.i2c_adapter* %94, %struct.i2c_msg* %arraydecay254, i32 %95) #10, !dbg !3287
  store i32 %call255, i32* %status, align 4, !dbg !3288
  %96 = load i32, i32* %status, align 4, !dbg !3289
  %cmp256 = icmp slt i32 %96, 0, !dbg !3291
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !3292

if.then258:                                       ; preds = %if.end253
  br label %cleanup, !dbg !3293

if.end259:                                        ; preds = %if.end253
  %97 = load i32, i32* %status, align 4, !dbg !3294
  %98 = load i32, i32* %num, align 4, !dbg !3296
  %cmp260 = icmp ne i32 %97, %98, !dbg !3297
  br i1 %cmp260, label %if.then262, label %if.end263, !dbg !3298

if.then262:                                       ; preds = %if.end259
  store i32 -5, i32* %status, align 4, !dbg !3299
  br label %cleanup, !dbg !3301

if.end263:                                        ; preds = %if.end259
  store i32 0, i32* %status, align 4, !dbg !3302
  %99 = load i32, i32* %i, align 4, !dbg !3303
  %tobool264 = icmp ne i32 %99, 0, !dbg !3303
  br i1 %tobool264, label %land.lhs.true265, label %if.end282, !dbg !3305

land.lhs.true265:                                 ; preds = %if.end263
  %100 = load i32, i32* %num, align 4, !dbg !3306
  %sub266 = sub i32 %100, 1, !dbg !3307
  %idxprom267 = sext i32 %sub266 to i64, !dbg !3308
  %arrayidx268 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 %idxprom267, !dbg !3308
  %flags269 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx268, i32 0, i32 1, !dbg !3309
  %101 = load i16, i16* %flags269, align 2, !dbg !3309
  %conv270 = zext i16 %101 to i32, !dbg !3308
  %and271 = and i32 %conv270, 1, !dbg !3310
  %tobool272 = icmp ne i32 %and271, 0, !dbg !3310
  br i1 %tobool272, label %if.then273, label %if.end282, !dbg !3311

if.then273:                                       ; preds = %land.lhs.true265
  %102 = load i8, i8* %partial_pec, align 1, !dbg !3312
  %103 = load i32, i32* %num, align 4, !dbg !3314
  %sub274 = sub i32 %103, 1, !dbg !3315
  %idxprom275 = sext i32 %sub274 to i64, !dbg !3316
  %arrayidx276 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 %idxprom275, !dbg !3316
  %call277 = call i32 @i2c_smbus_check_pec(i8 zeroext %102, %struct.i2c_msg* %arrayidx276) #10, !dbg !3317
  store i32 %call277, i32* %status, align 4, !dbg !3318
  %104 = load i32, i32* %status, align 4, !dbg !3319
  %cmp278 = icmp slt i32 %104, 0, !dbg !3321
  br i1 %cmp278, label %if.then280, label %if.end281, !dbg !3322

if.then280:                                       ; preds = %if.then273
  br label %cleanup, !dbg !3323

if.end281:                                        ; preds = %if.then273
  br label %if.end282, !dbg !3324

if.end282:                                        ; preds = %if.end281, %land.lhs.true265, %if.end263
  %105 = load i8, i8* %read_write.addr, align 1, !dbg !3325
  %conv283 = sext i8 %105 to i32, !dbg !3325
  %cmp284 = icmp eq i32 %conv283, 1, !dbg !3327
  br i1 %cmp284, label %if.then286, label %if.end354, !dbg !3328

if.then286:                                       ; preds = %if.end282
  %106 = load i32, i32* %size.addr, align 4, !dbg !3329
  switch i32 %106, label %sw.epilog353 [
    i32 1, label %sw.bb287
    i32 2, label %sw.bb290
    i32 3, label %sw.bb293
    i32 4, label %sw.bb293
    i32 8, label %sw.bb301
    i32 5, label %sw.bb320
    i32 7, label %sw.bb320
  ], !dbg !3330

sw.bb287:                                         ; preds = %if.then286
  %arrayidx288 = getelementptr [35 x i8], [35 x i8]* %msgbuf0, i64 0, i64 0, !dbg !3331
  %107 = load i8, i8* %arrayidx288, align 16, !dbg !3331
  %108 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3333
  %byte289 = bitcast %union.i2c_smbus_data* %108 to i8*, !dbg !3334
  store i8 %107, i8* %byte289, align 2, !dbg !3335
  br label %sw.epilog353, !dbg !3336

sw.bb290:                                         ; preds = %if.then286
  %arrayidx291 = getelementptr [34 x i8], [34 x i8]* %msgbuf1, i64 0, i64 0, !dbg !3337
  %109 = load i8, i8* %arrayidx291, align 16, !dbg !3337
  %110 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3338
  %byte292 = bitcast %union.i2c_smbus_data* %110 to i8*, !dbg !3339
  store i8 %109, i8* %byte292, align 2, !dbg !3340
  br label %sw.epilog353, !dbg !3341

sw.bb293:                                         ; preds = %if.then286, %if.then286
  %arrayidx294 = getelementptr [34 x i8], [34 x i8]* %msgbuf1, i64 0, i64 0, !dbg !3342
  %111 = load i8, i8* %arrayidx294, align 16, !dbg !3342
  %conv295 = zext i8 %111 to i32, !dbg !3342
  %arrayidx296 = getelementptr [34 x i8], [34 x i8]* %msgbuf1, i64 0, i64 1, !dbg !3343
  %112 = load i8, i8* %arrayidx296, align 1, !dbg !3343
  %conv297 = zext i8 %112 to i32, !dbg !3343
  %shl = shl i32 %conv297, 8, !dbg !3344
  %or298 = or i32 %conv295, %shl, !dbg !3345
  %conv299 = trunc i32 %or298 to i16, !dbg !3342
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3346
  %word300 = bitcast %union.i2c_smbus_data* %113 to i16*, !dbg !3347
  store i16 %conv299, i16* %word300, align 2, !dbg !3348
  br label %sw.epilog353, !dbg !3349

sw.bb301:                                         ; preds = %if.then286
  store i32 0, i32* %i, align 4, !dbg !3350
  br label %for.cond302, !dbg !3352

for.cond302:                                      ; preds = %for.inc317, %sw.bb301
  %114 = load i32, i32* %i, align 4, !dbg !3353
  %115 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3355
  %block303 = bitcast %union.i2c_smbus_data* %115 to [34 x i8]*, !dbg !3356
  %arrayidx304 = getelementptr [34 x i8], [34 x i8]* %block303, i64 0, i64 0, !dbg !3355
  %116 = load i8, i8* %arrayidx304, align 2, !dbg !3355
  %conv305 = zext i8 %116 to i32, !dbg !3355
  %cmp306 = icmp slt i32 %114, %conv305, !dbg !3357
  br i1 %cmp306, label %for.body308, label %for.end319, !dbg !3358

for.body308:                                      ; preds = %for.cond302
  %arrayidx309 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3359
  %buf310 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx309, i32 0, i32 3, !dbg !3360
  %117 = load i8*, i8** %buf310, align 8, !dbg !3360
  %118 = load i32, i32* %i, align 4, !dbg !3361
  %idxprom311 = sext i32 %118 to i64, !dbg !3359
  %arrayidx312 = getelementptr i8, i8* %117, i64 %idxprom311, !dbg !3359
  %119 = load i8, i8* %arrayidx312, align 1, !dbg !3359
  %120 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3362
  %block313 = bitcast %union.i2c_smbus_data* %120 to [34 x i8]*, !dbg !3363
  %121 = load i32, i32* %i, align 4, !dbg !3364
  %add314 = add i32 %121, 1, !dbg !3365
  %idxprom315 = sext i32 %add314 to i64, !dbg !3362
  %arrayidx316 = getelementptr [34 x i8], [34 x i8]* %block313, i64 0, i64 %idxprom315, !dbg !3362
  store i8 %119, i8* %arrayidx316, align 1, !dbg !3366
  br label %for.inc317, !dbg !3362

for.inc317:                                       ; preds = %for.body308
  %122 = load i32, i32* %i, align 4, !dbg !3367
  %inc318 = add i32 %122, 1, !dbg !3367
  store i32 %inc318, i32* %i, align 4, !dbg !3367
  br label %for.cond302, !dbg !3368, !llvm.loop !3369

for.end319:                                       ; preds = %for.cond302
  br label %sw.epilog353, !dbg !3371

sw.bb320:                                         ; preds = %if.then286, %if.then286
  %arrayidx321 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3372
  %buf322 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx321, i32 0, i32 3, !dbg !3374
  %123 = load i8*, i8** %buf322, align 8, !dbg !3374
  %arrayidx323 = getelementptr i8, i8* %123, i64 0, !dbg !3372
  %124 = load i8, i8* %arrayidx323, align 1, !dbg !3372
  %conv324 = zext i8 %124 to i32, !dbg !3372
  %cmp325 = icmp sgt i32 %conv324, 32, !dbg !3375
  br i1 %cmp325, label %if.then327, label %if.end333, !dbg !3376

if.then327:                                       ; preds = %sw.bb320
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3377
  %dev328 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 9, !dbg !3377
  %arrayidx329 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3377
  %buf330 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx329, i32 0, i32 3, !dbg !3377
  %126 = load i8*, i8** %buf330, align 8, !dbg !3377
  %arrayidx331 = getelementptr i8, i8* %126, i64 0, !dbg !3377
  %127 = load i8, i8* %arrayidx331, align 1, !dbg !3377
  %conv332 = zext i8 %127 to i32, !dbg !3377
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev328, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %conv332) #11, !dbg !3377
  store i32 -71, i32* %status, align 4, !dbg !3379
  br label %cleanup, !dbg !3380

if.end333:                                        ; preds = %sw.bb320
  store i32 0, i32* %i, align 4, !dbg !3381
  br label %for.cond334, !dbg !3383

for.cond334:                                      ; preds = %for.inc350, %if.end333
  %128 = load i32, i32* %i, align 4, !dbg !3384
  %arrayidx335 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3386
  %buf336 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx335, i32 0, i32 3, !dbg !3387
  %129 = load i8*, i8** %buf336, align 8, !dbg !3387
  %arrayidx337 = getelementptr i8, i8* %129, i64 0, !dbg !3386
  %130 = load i8, i8* %arrayidx337, align 1, !dbg !3386
  %conv338 = zext i8 %130 to i32, !dbg !3386
  %add339 = add i32 %conv338, 1, !dbg !3388
  %cmp340 = icmp slt i32 %128, %add339, !dbg !3389
  br i1 %cmp340, label %for.body342, label %for.end352, !dbg !3390

for.body342:                                      ; preds = %for.cond334
  %arrayidx343 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3391
  %buf344 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx343, i32 0, i32 3, !dbg !3392
  %131 = load i8*, i8** %buf344, align 8, !dbg !3392
  %132 = load i32, i32* %i, align 4, !dbg !3393
  %idxprom345 = sext i32 %132 to i64, !dbg !3391
  %arrayidx346 = getelementptr i8, i8* %131, i64 %idxprom345, !dbg !3391
  %133 = load i8, i8* %arrayidx346, align 1, !dbg !3391
  %134 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3394
  %block347 = bitcast %union.i2c_smbus_data* %134 to [34 x i8]*, !dbg !3395
  %135 = load i32, i32* %i, align 4, !dbg !3396
  %idxprom348 = sext i32 %135 to i64, !dbg !3394
  %arrayidx349 = getelementptr [34 x i8], [34 x i8]* %block347, i64 0, i64 %idxprom348, !dbg !3394
  store i8 %133, i8* %arrayidx349, align 1, !dbg !3397
  br label %for.inc350, !dbg !3394

for.inc350:                                       ; preds = %for.body342
  %136 = load i32, i32* %i, align 4, !dbg !3398
  %inc351 = add i32 %136, 1, !dbg !3398
  store i32 %inc351, i32* %i, align 4, !dbg !3398
  br label %for.cond334, !dbg !3399, !llvm.loop !3400

for.end352:                                       ; preds = %for.cond334
  br label %sw.epilog353, !dbg !3402

sw.epilog353:                                     ; preds = %if.then286, %for.end352, %for.end319, %sw.bb293, %sw.bb290, %sw.bb287
  br label %if.end354, !dbg !3403

if.end354:                                        ; preds = %sw.epilog353, %if.end282
  br label %cleanup, !dbg !3404

cleanup:                                          ; preds = %if.end354, %if.then327, %if.then280, %if.then262, %if.then258
  call void @llvm.dbg.label(metadata !3405), !dbg !3406
  %arrayidx355 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3407
  %flags356 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx355, i32 0, i32 1, !dbg !3409
  %137 = load i16, i16* %flags356, align 2, !dbg !3409
  %conv357 = zext i16 %137 to i32, !dbg !3407
  %and358 = and i32 %conv357, 512, !dbg !3410
  %tobool359 = icmp ne i32 %and358, 0, !dbg !3410
  br i1 %tobool359, label %if.then360, label %if.end363, !dbg !3411

if.then360:                                       ; preds = %cleanup
  %arrayidx361 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3412
  %buf362 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx361, i32 0, i32 3, !dbg !3413
  %138 = load i8*, i8** %buf362, align 8, !dbg !3413
  call void @kfree(i8* %138) #10, !dbg !3414
  br label %if.end363, !dbg !3414

if.end363:                                        ; preds = %if.then360, %cleanup
  %arrayidx364 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3415
  %flags365 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx364, i32 0, i32 1, !dbg !3417
  %139 = load i16, i16* %flags365, align 2, !dbg !3417
  %conv366 = zext i16 %139 to i32, !dbg !3415
  %and367 = and i32 %conv366, 512, !dbg !3418
  %tobool368 = icmp ne i32 %and367, 0, !dbg !3418
  br i1 %tobool368, label %if.then369, label %if.end372, !dbg !3419

if.then369:                                       ; preds = %if.end363
  %arrayidx370 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !3420
  %buf371 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx370, i32 0, i32 3, !dbg !3421
  %140 = load i8*, i8** %buf371, align 8, !dbg !3421
  call void @kfree(i8* %140) #10, !dbg !3422
  br label %if.end372, !dbg !3422

if.end372:                                        ; preds = %if.then369, %if.end363
  %141 = load i32, i32* %status, align 4, !dbg !3423
  store i32 %141, i32* %retval, align 4, !dbg !3424
  br label %return, !dbg !3424

return:                                           ; preds = %if.end372, %sw.default, %if.then169, %if.then123, %if.then99
  %142 = load i32, i32* %retval, align 4, !dbg !3425
  ret i32 %142, !dbg !3425
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_smbus_reply(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol, %union.i2c_smbus_data* %data, i32 %res) #0 !dbg !3426 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %res.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !3431, metadata !DIExpression()), !dbg !3430
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !3432, metadata !DIExpression()), !dbg !3430
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !3433, metadata !DIExpression()), !dbg !3430
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !3434, metadata !DIExpression()), !dbg !3430
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !3435, metadata !DIExpression()), !dbg !3430
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !3436, metadata !DIExpression()), !dbg !3430
  store i32 %res, i32* %res.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %res.addr, metadata !3437, metadata !DIExpression()), !dbg !3430
  ret void, !dbg !3430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_smbus_result(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %protocol, i32 %res) #0 !dbg !3438 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %protocol.addr = alloca i32, align 4
  %res.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !3443, metadata !DIExpression()), !dbg !3442
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !3444, metadata !DIExpression()), !dbg !3442
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !3445, metadata !DIExpression()), !dbg !3442
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !3446, metadata !DIExpression()), !dbg !3442
  store i32 %protocol, i32* %protocol.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %protocol.addr, metadata !3447, metadata !DIExpression()), !dbg !3442
  store i32 %res, i32* %res.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %res.addr, metadata !3448, metadata !DIExpression()), !dbg !3442
  ret void, !dbg !3442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client* %client, i8 zeroext %command, i8 zeroext %length, i8* %values) #0 !dbg !3449 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %command.addr = alloca i8, align 1
  %length.addr = alloca i8, align 1
  %values.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !3452, metadata !DIExpression()), !dbg !3453
  store i8 %length, i8* %length.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %length.addr, metadata !3454, metadata !DIExpression()), !dbg !3455
  store i8* %values, i8** %values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %values.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.declare(metadata i8* %i, metadata !3458, metadata !DIExpression()), !dbg !3459
  store i8 0, i8* %i, align 1, !dbg !3459
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3460, metadata !DIExpression()), !dbg !3461
  %0 = load i8, i8* %length.addr, align 1, !dbg !3462
  %conv = zext i8 %0 to i32, !dbg !3462
  %cmp = icmp sgt i32 %conv, 32, !dbg !3464
  br i1 %cmp, label %if.then, label %if.end, !dbg !3465

if.then:                                          ; preds = %entry
  store i8 32, i8* %length.addr, align 1, !dbg !3466
  br label %if.end, !dbg !3467

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3468
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 3, !dbg !3470
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3470
  %call = call i32 @i2c_check_functionality(%struct.i2c_adapter* %2, i32 67108864) #10, !dbg !3471
  %tobool = icmp ne i32 %call, 0, !dbg !3471
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !3472

if.then2:                                         ; preds = %if.end
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3473
  %4 = load i8, i8* %command.addr, align 1, !dbg !3474
  %5 = load i8, i8* %length.addr, align 1, !dbg !3475
  %6 = load i8*, i8** %values.addr, align 8, !dbg !3476
  %call3 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %3, i8 zeroext %4, i8 zeroext %5, i8* %6) #10, !dbg !3477
  store i32 %call3, i32* %retval, align 4, !dbg !3478
  br label %return, !dbg !3478

if.end4:                                          ; preds = %if.end
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3479
  %adapter5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 3, !dbg !3481
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter5, align 8, !dbg !3481
  %call6 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %8, i32 524288) #10, !dbg !3482
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3482
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3483

if.then8:                                         ; preds = %if.end4
  store i32 -95, i32* %retval, align 4, !dbg !3484
  br label %return, !dbg !3484

if.end9:                                          ; preds = %if.end4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3485
  %adapter10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !3487
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter10, align 8, !dbg !3487
  %call11 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 2097152) #10, !dbg !3488
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3488
  br i1 %tobool12, label %if.then13, label %if.end36, !dbg !3489

if.then13:                                        ; preds = %if.end9
  br label %while.cond, !dbg !3490

while.cond:                                       ; preds = %if.end26, %if.then13
  %11 = load i8, i8* %i, align 1, !dbg !3492
  %conv14 = zext i8 %11 to i32, !dbg !3492
  %add = add i32 %conv14, 2, !dbg !3493
  %12 = load i8, i8* %length.addr, align 1, !dbg !3494
  %conv15 = zext i8 %12 to i32, !dbg !3494
  %cmp16 = icmp sle i32 %add, %conv15, !dbg !3495
  br i1 %cmp16, label %while.body, label %while.end, !dbg !3490

while.body:                                       ; preds = %while.cond
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3496
  %14 = load i8, i8* %command.addr, align 1, !dbg !3498
  %conv18 = zext i8 %14 to i32, !dbg !3498
  %15 = load i8, i8* %i, align 1, !dbg !3499
  %conv19 = zext i8 %15 to i32, !dbg !3499
  %add20 = add i32 %conv18, %conv19, !dbg !3500
  %conv21 = trunc i32 %add20 to i8, !dbg !3498
  %call22 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %13, i8 zeroext %conv21) #10, !dbg !3501
  store i32 %call22, i32* %status, align 4, !dbg !3502
  %16 = load i32, i32* %status, align 4, !dbg !3503
  %cmp23 = icmp slt i32 %16, 0, !dbg !3505
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3506

if.then25:                                        ; preds = %while.body
  %17 = load i32, i32* %status, align 4, !dbg !3507
  store i32 %17, i32* %retval, align 4, !dbg !3508
  br label %return, !dbg !3508

if.end26:                                         ; preds = %while.body
  %18 = load i32, i32* %status, align 4, !dbg !3509
  %and = and i32 %18, 255, !dbg !3510
  %conv27 = trunc i32 %and to i8, !dbg !3509
  %19 = load i8*, i8** %values.addr, align 8, !dbg !3511
  %20 = load i8, i8* %i, align 1, !dbg !3512
  %idxprom = zext i8 %20 to i64, !dbg !3511
  %arrayidx = getelementptr i8, i8* %19, i64 %idxprom, !dbg !3511
  store i8 %conv27, i8* %arrayidx, align 1, !dbg !3513
  %21 = load i32, i32* %status, align 4, !dbg !3514
  %shr = ashr i32 %21, 8, !dbg !3515
  %conv28 = trunc i32 %shr to i8, !dbg !3514
  %22 = load i8*, i8** %values.addr, align 8, !dbg !3516
  %23 = load i8, i8* %i, align 1, !dbg !3517
  %conv29 = zext i8 %23 to i32, !dbg !3517
  %add30 = add i32 %conv29, 1, !dbg !3518
  %idxprom31 = sext i32 %add30 to i64, !dbg !3516
  %arrayidx32 = getelementptr i8, i8* %22, i64 %idxprom31, !dbg !3516
  store i8 %conv28, i8* %arrayidx32, align 1, !dbg !3519
  %24 = load i8, i8* %i, align 1, !dbg !3520
  %conv33 = zext i8 %24 to i32, !dbg !3520
  %add34 = add i32 %conv33, 2, !dbg !3520
  %conv35 = trunc i32 %add34 to i8, !dbg !3520
  store i8 %conv35, i8* %i, align 1, !dbg !3520
  br label %while.cond, !dbg !3490, !llvm.loop !3521

while.end:                                        ; preds = %while.cond
  br label %if.end36, !dbg !3523

if.end36:                                         ; preds = %while.end, %if.end9
  br label %while.cond37, !dbg !3524

while.cond37:                                     ; preds = %if.end51, %if.end36
  %25 = load i8, i8* %i, align 1, !dbg !3525
  %conv38 = zext i8 %25 to i32, !dbg !3525
  %26 = load i8, i8* %length.addr, align 1, !dbg !3526
  %conv39 = zext i8 %26 to i32, !dbg !3526
  %cmp40 = icmp slt i32 %conv38, %conv39, !dbg !3527
  br i1 %cmp40, label %while.body42, label %while.end55, !dbg !3524

while.body42:                                     ; preds = %while.cond37
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3528
  %28 = load i8, i8* %command.addr, align 1, !dbg !3530
  %conv43 = zext i8 %28 to i32, !dbg !3530
  %29 = load i8, i8* %i, align 1, !dbg !3531
  %conv44 = zext i8 %29 to i32, !dbg !3531
  %add45 = add i32 %conv43, %conv44, !dbg !3532
  %conv46 = trunc i32 %add45 to i8, !dbg !3530
  %call47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i8 zeroext %conv46) #10, !dbg !3533
  store i32 %call47, i32* %status, align 4, !dbg !3534
  %30 = load i32, i32* %status, align 4, !dbg !3535
  %cmp48 = icmp slt i32 %30, 0, !dbg !3537
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !3538

if.then50:                                        ; preds = %while.body42
  %31 = load i32, i32* %status, align 4, !dbg !3539
  store i32 %31, i32* %retval, align 4, !dbg !3540
  br label %return, !dbg !3540

if.end51:                                         ; preds = %while.body42
  %32 = load i32, i32* %status, align 4, !dbg !3541
  %conv52 = trunc i32 %32 to i8, !dbg !3541
  %33 = load i8*, i8** %values.addr, align 8, !dbg !3542
  %34 = load i8, i8* %i, align 1, !dbg !3543
  %idxprom53 = zext i8 %34 to i64, !dbg !3542
  %arrayidx54 = getelementptr i8, i8* %33, i64 %idxprom53, !dbg !3542
  store i8 %conv52, i8* %arrayidx54, align 1, !dbg !3544
  %35 = load i8, i8* %i, align 1, !dbg !3545
  %inc = add i8 %35, 1, !dbg !3545
  store i8 %inc, i8* %i, align 1, !dbg !3545
  br label %while.cond37, !dbg !3524, !llvm.loop !3546

while.end55:                                      ; preds = %while.cond37
  %36 = load i8, i8* %i, align 1, !dbg !3548
  %conv56 = zext i8 %36 to i32, !dbg !3548
  store i32 %conv56, i32* %retval, align 4, !dbg !3549
  br label %return, !dbg !3549

return:                                           ; preds = %while.end55, %if.then50, %if.then25, %if.then8, %if.then2
  %37 = load i32, i32* %retval, align 4, !dbg !3550
  ret i32 %37, !dbg !3550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_check_functionality(%struct.i2c_adapter* %adap, i32 %func) #0 !dbg !3551 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %func.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  %0 = load i32, i32* %func.addr, align 4, !dbg !3558
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3559
  %call = call i32 @i2c_get_functionality(%struct.i2c_adapter* %1) #10, !dbg !3560
  %and = and i32 %0, %call, !dbg !3561
  %2 = load i32, i32* %func.addr, align 4, !dbg !3562
  %cmp = icmp eq i32 %and, %2, !dbg !3563
  %conv = zext i1 %cmp to i32, !dbg !3563
  ret i32 %conv, !dbg !3564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_client* @i2c_new_smbus_alert_device(%struct.i2c_adapter* %adapter, %struct.i2c_smbus_alert_setup* %setup) #0 !dbg !3565 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %setup.addr = alloca %struct.i2c_smbus_alert_setup*, align 8
  %ara_board_info = alloca %struct.i2c_board_info, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3574, metadata !DIExpression()), !dbg !3575
  store %struct.i2c_smbus_alert_setup* %setup, %struct.i2c_smbus_alert_setup** %setup.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_smbus_alert_setup** %setup.addr, metadata !3576, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %ara_board_info, metadata !3578, metadata !DIExpression()), !dbg !3632
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 0, !dbg !3633
  %0 = bitcast [20 x i8]* %type to i8*, !dbg !3634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i64 20, i1 false), !dbg !3634
  %flags = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 1, !dbg !3633
  store i16 0, i16* %flags, align 4, !dbg !3633
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 2, !dbg !3633
  store i16 12, i16* %addr, align 2, !dbg !3633
  %dev_name = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 3, !dbg !3633
  store i8* null, i8** %dev_name, align 8, !dbg !3633
  %platform_data = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 4, !dbg !3633
  %1 = load %struct.i2c_smbus_alert_setup*, %struct.i2c_smbus_alert_setup** %setup.addr, align 8, !dbg !3635
  %2 = bitcast %struct.i2c_smbus_alert_setup* %1 to i8*, !dbg !3635
  store i8* %2, i8** %platform_data, align 8, !dbg !3633
  %of_node = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 5, !dbg !3633
  store %struct.device_node* null, %struct.device_node** %of_node, align 8, !dbg !3633
  %fwnode = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 6, !dbg !3633
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %fwnode, align 8, !dbg !3633
  %properties = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 7, !dbg !3633
  store %struct.property_entry* null, %struct.property_entry** %properties, align 8, !dbg !3633
  %resources = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 8, !dbg !3633
  store %struct.resource* null, %struct.resource** %resources, align 8, !dbg !3633
  %num_resources = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 9, !dbg !3633
  store i32 0, i32* %num_resources, align 8, !dbg !3633
  %irq = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %ara_board_info, i32 0, i32 10, !dbg !3633
  store i32 0, i32* %irq, align 4, !dbg !3633
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3636
  %call = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %3, %struct.i2c_board_info* %ara_board_info) #10, !dbg !3637
  ret %struct.i2c_client* %call, !dbg !3638
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_i2c_setup_smbus_alert(%struct.i2c_adapter* %adapter) #0 !dbg !3639 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %irq = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !3642, metadata !DIExpression()), !dbg !3643
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3644
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !3645
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3646
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3646
  %call = call i32 @of_property_match_string(%struct.device_node* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !3647
  store i32 %call, i32* %irq, align 4, !dbg !3648
  %2 = load i32, i32* %irq, align 4, !dbg !3649
  %cmp = icmp eq i32 %2, -22, !dbg !3651
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3652

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %irq, align 4, !dbg !3653
  %cmp1 = icmp eq i32 %3, -61, !dbg !3654
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3655

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !3656
  br label %return, !dbg !3656

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %irq, align 4, !dbg !3657
  %cmp2 = icmp slt i32 %4, 0, !dbg !3659
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3660

if.then3:                                         ; preds = %if.else
  %5 = load i32, i32* %irq, align 4, !dbg !3661
  store i32 %5, i32* %retval, align 4, !dbg !3662
  br label %return, !dbg !3662

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3663
  %call5 = call %struct.i2c_client* @i2c_new_smbus_alert_device(%struct.i2c_adapter* %6, %struct.i2c_smbus_alert_setup* null) #10, !dbg !3664
  %7 = bitcast %struct.i2c_client* %call5 to i8*, !dbg !3664
  %call6 = call i32 @PTR_ERR_OR_ZERO(i8* %7) #10, !dbg !3665
  store i32 %call6, i32* %retval, align 4, !dbg !3666
  br label %return, !dbg !3666

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3667
  ret i32 %8, !dbg !3667
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !3668 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3672, metadata !DIExpression()), !dbg !3673
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3674
  %call = call zeroext i1 @IS_ERR(i8* %0) #10, !dbg !3676
  br i1 %call, label %if.then, label %if.else, !dbg !3677

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3678
  %call1 = call i64 @PTR_ERR(i8* %1) #10, !dbg !3679
  %conv = trunc i64 %call1 to i32, !dbg !3679
  store i32 %conv, i32* %retval, align 4, !dbg !3680
  br label %return, !dbg !3680

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3681
  br label %return, !dbg !3681

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3682
  ret i32 %2, !dbg !3682
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3683 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3686, metadata !DIExpression()), !dbg !3687
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3688
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3690
  %1 = load i8*, i8** %init_name, align 8, !dbg !3690
  %tobool = icmp ne i8* %1, null, !dbg !3688
  br i1 %tobool, label %if.then, label %if.end, !dbg !3691

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3692
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3693
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3693
  store i8* %3, i8** %retval, align 8, !dbg !3694
  br label %return, !dbg !3694

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3695
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3696
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #10, !dbg !3697
  store i8* %call, i8** %retval, align 8, !dbg !3698
  br label %return, !dbg !3698

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3699
  ret i8* %5, !dbg !3699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_trylock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !3700 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3703, metadata !DIExpression()), !dbg !3704
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3705
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !3706
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !3706
  %trylock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 1, !dbg !3707
  %2 = load i32 (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)** %trylock_bus, align 8, !dbg !3707
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3708
  %4 = load i32, i32* %flags.addr, align 4, !dbg !3709
  %call = call i32 %2(%struct.i2c_adapter* %3, i32 %4) #10, !dbg !3705
  ret i32 %call, !dbg !3710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !3711 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3716
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !3717
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !3717
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !3718
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !3718
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3719
  %4 = load i32, i32* %flags.addr, align 4, !dbg !3720
  call void %2(%struct.i2c_adapter* %3, i32 %4) #10, !dbg !3716
  ret void, !dbg !3721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3722 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3729
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3730
  %1 = load i8*, i8** %name, align 8, !dbg !3730
  ret i8* %1, !dbg !3731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3732 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3739, metadata !DIExpression()), !dbg !3742
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3744, metadata !DIExpression()), !dbg !3745
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3746, metadata !DIExpression()), !dbg !3747
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3748, metadata !DIExpression()), !dbg !3750
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3752, metadata !DIExpression()), !dbg !3753
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3754, metadata !DIExpression()), !dbg !3762
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3764, metadata !DIExpression()), !dbg !3765
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3768, metadata !DIExpression()), !dbg !3769
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3770
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3771
  %div = sdiv i64 %1, 64, !dbg !3771
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3772
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3770
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3773
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3774
  %conv.i = trunc i64 %4 to i32, !dbg !3774
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !3775
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3776
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3776
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !3776
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3777
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3777
  br i1 %8, label %cond.true, label %cond.false, !dbg !3777

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3777
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3777
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3778
  %and.i = and i64 %11, 63, !dbg !3779
  %shl.i = shl i64 1, %and.i, !dbg !3780
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3781
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3782
  %shr.i = ashr i64 %13, 6, !dbg !3783
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3781
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3781
  %and1.i = and i64 %shl.i, %14, !dbg !3784
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3785
  %conv = zext i1 %cmp.i to i32, !dbg !3777
  br label %cond.end, !dbg !3777

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3777
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3777
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3786
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3787
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !3788, !srcloc !3789
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3788
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3790
  %tobool.i = trunc i8 %20 to i1, !dbg !3790
  %conv2 = zext i1 %tobool.i to i32, !dbg !3777
  br label %cond.end, !dbg !3777

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3777
  %tobool = icmp ne i32 %cond, 0, !dbg !3777
  ret i1 %tobool, !dbg !3791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !3792 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3797, metadata !DIExpression()), !dbg !3799
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3801, metadata !DIExpression()), !dbg !3802
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !3803, metadata !DIExpression()), !dbg !3805
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3806, metadata !DIExpression()), !dbg !3808
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3810, metadata !DIExpression()), !dbg !3811
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3816
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3817
  %div = sdiv i64 %1, 64, !dbg !3817
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3818
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3816
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3819
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3820
  %conv.i = trunc i64 %4 to i32, !dbg !3820
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !3821
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3822
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3822
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !3822
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3823
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3824
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3805
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3805
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #6, !dbg !3805, !srcloc !3825
  store i8 %11, i8* %c.i, align 1, !dbg !3805
  %12 = load i8, i8* %c.i, align 1, !dbg !3805
  %tobool.i = trunc i8 %12 to i1, !dbg !3805
  %frombool.i = zext i1 %tobool.i to i8, !dbg !3805
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !3805
  %13 = load i8, i8* %tmp.i, align 1, !dbg !3805
  %tobool1.i = trunc i8 %13 to i1, !dbg !3805
  ret i1 %tobool1.i, !dbg !3826
}

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3827 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3831, metadata !DIExpression()), !dbg !3832
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3833, metadata !DIExpression()), !dbg !3834
  ret i1 true, !dbg !3835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3836 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3844, metadata !DIExpression()), !dbg !3845
  ret void, !dbg !3846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3847 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  ret i1 true, !dbg !3852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3853 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3860, metadata !DIExpression()), !dbg !3859
  %0 = load i64, i64* %__edi, align 8, !dbg !3859
  store i64 %0, i64* %__edi, align 8, !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3861, metadata !DIExpression()), !dbg !3859
  %1 = load i64, i64* %__esi, align 8, !dbg !3859
  store i64 %1, i64* %__esi, align 8, !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3862, metadata !DIExpression()), !dbg !3859
  %2 = load i64, i64* %__edx, align 8, !dbg !3859
  store i64 %2, i64* %__edx, align 8, !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3863, metadata !DIExpression()), !dbg !3859
  %3 = load i64, i64* %__ecx, align 8, !dbg !3859
  store i64 %3, i64* %__ecx, align 8, !dbg !3859
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3864, metadata !DIExpression()), !dbg !3859
  %4 = load i64, i64* %__eax, align 8, !dbg !3859
  store i64 %4, i64* %__eax, align 8, !dbg !3859
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3859
  %6 = call i64 @llvm.read_register.i64(metadata !105), !dbg !3865
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !3865, !srcloc !3868
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3865
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3865
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3865
  call void @llvm.write_register.i64(metadata !105, i64 %asmresult1), !dbg !3865
  %8 = load i64, i64* %__eax, align 8, !dbg !3865
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3869, metadata !DIExpression()), !dbg !3871
  store i64 -1, i64* %__mask, align 8, !dbg !3871
  %9 = load i64, i64* %__mask, align 8, !dbg !3871
  store i64 %9, i64* %tmp, align 8, !dbg !3871
  %10 = load i64, i64* %tmp, align 8, !dbg !3871
  %and = and i64 %8, %10, !dbg !3865
  store i64 %and, i64* %__ret, align 8, !dbg !3865
  %11 = load i64, i64* %__ret, align 8, !dbg !3859
  store i64 %11, i64* %tmp2, align 8, !dbg !3872
  %12 = load i64, i64* %tmp2, align 8, !dbg !3859
  ret i64 %12, !dbg !3873
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %msg, i8 zeroext %init_val) #0 !dbg !3874 {
entry:
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %init_val.addr = alloca i8, align 1
  %is_read = alloca i8, align 1
  %dma_buf = alloca i8*, align 8
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i8 %init_val, i8* %init_val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %init_val.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.declare(metadata i8* %is_read, metadata !3881, metadata !DIExpression()), !dbg !3882
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3883
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 1, !dbg !3884
  %1 = load i16, i16* %flags, align 2, !dbg !3884
  %conv = zext i16 %1 to i32, !dbg !3883
  %and = and i32 %conv, 1, !dbg !3885
  %tobool = icmp ne i32 %and, 0, !dbg !3883
  %frombool = zext i1 %tobool to i8, !dbg !3882
  store i8 %frombool, i8* %is_read, align 1, !dbg !3882
  call void @llvm.dbg.declare(metadata i8** %dma_buf, metadata !3886, metadata !DIExpression()), !dbg !3888
  %2 = load i8, i8* %is_read, align 1, !dbg !3889
  %tobool1 = trunc i8 %2 to i1, !dbg !3889
  %3 = zext i1 %tobool1 to i64, !dbg !3889
  %cond = select i1 %tobool1, i32 2, i32 3, !dbg !3889
  %add = add i32 32, %cond, !dbg !3890
  %conv3 = sext i32 %add to i64, !dbg !3891
  %call = call i8* @kzalloc(i64 %conv3, i32 3264) #10, !dbg !3892
  store i8* %call, i8** %dma_buf, align 8, !dbg !3893
  %4 = load i8*, i8** %dma_buf, align 8, !dbg !3894
  %tobool4 = icmp ne i8* %4, null, !dbg !3894
  br i1 %tobool4, label %if.end, label %if.then, !dbg !3896

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !3897

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %dma_buf, align 8, !dbg !3898
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3899
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3, !dbg !3900
  store i8* %5, i8** %buf, align 8, !dbg !3901
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3902
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1, !dbg !3903
  %8 = load i16, i16* %flags5, align 2, !dbg !3904
  %conv6 = zext i16 %8 to i32, !dbg !3904
  %or = or i32 %conv6, 512, !dbg !3904
  %conv7 = trunc i32 %or to i16, !dbg !3904
  store i16 %conv7, i16* %flags5, align 2, !dbg !3904
  %9 = load i8, i8* %init_val.addr, align 1, !dbg !3905
  %tobool8 = icmp ne i8 %9, 0, !dbg !3905
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !3907

if.then9:                                         ; preds = %if.end
  %10 = load i8, i8* %init_val.addr, align 1, !dbg !3908
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3909
  %buf10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3, !dbg !3910
  %12 = load i8*, i8** %buf10, align 8, !dbg !3910
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !3909
  store i8 %10, i8* %arrayidx, align 1, !dbg !3911
  br label %if.end11, !dbg !3909

if.end11:                                         ; preds = %if.then, %if.then9, %if.end
  ret void, !dbg !3912
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_smbus_add_pec(%struct.i2c_msg* %msg) #0 !dbg !3913 {
entry:
  %msg.addr = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3916, metadata !DIExpression()), !dbg !3917
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3918
  %call = call zeroext i8 @i2c_smbus_msg_pec(i8 zeroext 0, %struct.i2c_msg* %0) #10, !dbg !3919
  %1 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3920
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %1, i32 0, i32 3, !dbg !3921
  %2 = load i8*, i8** %buf, align 8, !dbg !3921
  %3 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3922
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %3, i32 0, i32 2, !dbg !3923
  %4 = load i16, i16* %len, align 4, !dbg !3923
  %idxprom = zext i16 %4 to i64, !dbg !3920
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !3920
  store i8 %call, i8* %arrayidx, align 1, !dbg !3924
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3925
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2, !dbg !3926
  %6 = load i16, i16* %len1, align 4, !dbg !3927
  %inc = add i16 %6, 1, !dbg !3927
  store i16 %inc, i16* %len1, align 4, !dbg !3927
  ret void, !dbg !3928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @i2c_smbus_msg_pec(i8 zeroext %pec, %struct.i2c_msg* %msg) #0 !dbg !3929 {
entry:
  %pec.addr = alloca i8, align 1
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %addr = alloca i8, align 1
  store i8 %pec, i8* %pec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pec.addr, metadata !3932, metadata !DIExpression()), !dbg !3933
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.declare(metadata i8* %addr, metadata !3936, metadata !DIExpression()), !dbg !3937
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3938
  %call = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %0) #10, !dbg !3939
  store i8 %call, i8* %addr, align 1, !dbg !3937
  %1 = load i8, i8* %pec.addr, align 1, !dbg !3940
  %call1 = call zeroext i8 @i2c_smbus_pec(i8 zeroext %1, i8* %addr, i64 1) #10, !dbg !3941
  store i8 %call1, i8* %pec.addr, align 1, !dbg !3942
  %2 = load i8, i8* %pec.addr, align 1, !dbg !3943
  %3 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3944
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %3, i32 0, i32 3, !dbg !3945
  %4 = load i8*, i8** %buf, align 8, !dbg !3945
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3946
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2, !dbg !3947
  %6 = load i16, i16* %len, align 4, !dbg !3947
  %conv = zext i16 %6 to i64, !dbg !3946
  %call2 = call zeroext i8 @i2c_smbus_pec(i8 zeroext %2, i8* %4, i64 %conv) #10, !dbg !3948
  ret i8 %call2, !dbg !3949
}

; Function Attrs: noredzone
declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_smbus_check_pec(i8 zeroext %cpec, %struct.i2c_msg* %msg) #0 !dbg !3950 {
entry:
  %retval = alloca i32, align 4
  %cpec.addr = alloca i8, align 1
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %rpec = alloca i8, align 1
  %tmp = alloca i32, align 4
  store i8 %cpec, i8* %cpec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cpec.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.declare(metadata i8* %rpec, metadata !3957, metadata !DIExpression()), !dbg !3958
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3959
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 3, !dbg !3960
  %1 = load i8*, i8** %buf, align 8, !dbg !3960
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3961
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 2, !dbg !3962
  %3 = load i16, i16* %len, align 4, !dbg !3963
  %dec = add i16 %3, -1, !dbg !3963
  store i16 %dec, i16* %len, align 4, !dbg !3963
  %idxprom = zext i16 %dec to i64, !dbg !3959
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !3959
  %4 = load i8, i8* %arrayidx, align 1, !dbg !3959
  store i8 %4, i8* %rpec, align 1, !dbg !3958
  %5 = load i8, i8* %cpec.addr, align 1, !dbg !3964
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3965
  %call = call zeroext i8 @i2c_smbus_msg_pec(i8 zeroext %5, %struct.i2c_msg* %6) #10, !dbg !3966
  store i8 %call, i8* %cpec.addr, align 1, !dbg !3967
  %7 = load i8, i8* %rpec, align 1, !dbg !3968
  %conv = zext i8 %7 to i32, !dbg !3968
  %8 = load i8, i8* %cpec.addr, align 1, !dbg !3970
  %conv1 = zext i8 %8 to i32, !dbg !3970
  %cmp = icmp ne i32 %conv, %conv1, !dbg !3971
  br i1 %cmp, label %if.then, label %if.end, !dbg !3972

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !3973
  %9 = load i32, i32* %tmp, align 4, !dbg !3977
  store i32 -74, i32* %retval, align 4, !dbg !3978
  br label %return, !dbg !3978

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3979
  br label %return, !dbg !3979

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3980
  ret i32 %10, !dbg !3980
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3981 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3984, metadata !DIExpression()), !dbg !3988
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3994, metadata !DIExpression()), !dbg !3995
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3996, metadata !DIExpression()), !dbg !3997
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3998, metadata !DIExpression()), !dbg !3999
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4000, metadata !DIExpression()), !dbg !4004
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4006, metadata !DIExpression()), !dbg !4010
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4012, metadata !DIExpression()), !dbg !4016
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4021, metadata !DIExpression()), !dbg !4022
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4023, metadata !DIExpression()), !dbg !4024
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4025, metadata !DIExpression()), !dbg !4026
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4027, metadata !DIExpression()), !dbg !4028
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4029, metadata !DIExpression()), !dbg !4030
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4031, metadata !DIExpression()), !dbg !4032
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4033, metadata !DIExpression()), !dbg !4034
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4035, metadata !DIExpression()), !dbg !4036
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4039, metadata !DIExpression()), !dbg !4040
  %0 = load i64, i64* %size.addr, align 8, !dbg !4041
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4042
  %or = or i32 %1, 256, !dbg !4043
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4044
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #6, !dbg !4045
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4046

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4047
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4048
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4049

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4050
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4051
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4052
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4053
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4030
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4054
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4055
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4056
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4057
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4058
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4059
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4060
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4060
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4060
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4060
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !4060
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4061
  br label %kmalloc.exit, !dbg !4061

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4062
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4063
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4063
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4065

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4066
  br label %kmalloc_index.exit.i, !dbg !4066

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4067
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4069
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4070

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4071
  br label %kmalloc_index.exit.i, !dbg !4071

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4072
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4074
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4075

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4076
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4077
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4078

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4079
  br label %kmalloc_index.exit.i, !dbg !4079

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4080
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4082
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4083

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4084
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4085
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4086

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4087
  br label %kmalloc_index.exit.i, !dbg !4087

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4088
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4090
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4091

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4092
  br label %kmalloc_index.exit.i, !dbg !4092

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4093
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4095
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4096

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4097
  br label %kmalloc_index.exit.i, !dbg !4097

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4098
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4100
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4101

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4102
  br label %kmalloc_index.exit.i, !dbg !4102

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4105
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4106

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4107
  br label %kmalloc_index.exit.i, !dbg !4107

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4108
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4110
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4111

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4112
  br label %kmalloc_index.exit.i, !dbg !4112

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4113
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4115
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4116

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4117
  br label %kmalloc_index.exit.i, !dbg !4117

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4118
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4120
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4121

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4125
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4126

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4127
  br label %kmalloc_index.exit.i, !dbg !4127

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4128
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4130
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4131

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4132
  br label %kmalloc_index.exit.i, !dbg !4132

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4133
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4135
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4136

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4137
  br label %kmalloc_index.exit.i, !dbg !4137

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4138
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4140
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4141

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4142
  br label %kmalloc_index.exit.i, !dbg !4142

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4145
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4146

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4147
  br label %kmalloc_index.exit.i, !dbg !4147

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4148
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4150
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4151

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4152
  br label %kmalloc_index.exit.i, !dbg !4152

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4153
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4155
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4156

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4157
  br label %kmalloc_index.exit.i, !dbg !4157

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4158
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4160
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4161

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4162
  br label %kmalloc_index.exit.i, !dbg !4162

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4163
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4165
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4166

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4167
  br label %kmalloc_index.exit.i, !dbg !4167

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4168
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4170
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4171

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4172
  br label %kmalloc_index.exit.i, !dbg !4172

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4173
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4175
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4176

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4177
  br label %kmalloc_index.exit.i, !dbg !4177

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4178
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4180
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4181

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4183
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4185
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4186

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4187
  br label %kmalloc_index.exit.i, !dbg !4187

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4188
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4190
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4191

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4192
  br label %kmalloc_index.exit.i, !dbg !4192

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4195
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4196

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4197
  br label %kmalloc_index.exit.i, !dbg !4197

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4198
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4200
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4201

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4202
  br label %kmalloc_index.exit.i, !dbg !4202

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4203
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4205
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4206

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4207
  br label %kmalloc_index.exit.i, !dbg !4207

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !4208, !srcloc !4211
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #6, !dbg !4212, !srcloc !4215
  unreachable, !dbg !4216

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4217
  store i32 %45, i32* %index.i, align 4, !dbg !4218
  %46 = load i32, i32* %index.i, align 4, !dbg !4219
  %tobool.i = icmp ne i32 %46, 0, !dbg !4219
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4221

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4222
  br label %kmalloc.exit, !dbg !4222

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4223
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4224
  %and.i.i = and i32 %48, 17, !dbg !4224
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4224
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4224
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4224
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4224
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4226

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4227
  br label %kmalloc_type.exit.i, !dbg !4227

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4228
  %and2.i.i = and i32 %49, 1, !dbg !4229
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4228
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4228
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4228
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4230
  br label %kmalloc_type.exit.i, !dbg !4230

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4231
  %idxprom.i = zext i32 %51 to i64, !dbg !4232
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4232
  %52 = load i32, i32* %index.i, align 4, !dbg !4233
  %idxprom6.i = zext i32 %52 to i64, !dbg !4232
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4232
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4232
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4234
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4235
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4236
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4237
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4238
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4238
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4238
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4238
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !4238
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3999
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4239
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4240
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4241
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4242
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4243
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4244
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4245
  store i8* %62, i8** %retval.i, align 8, !dbg !4246
  br label %kmalloc.exit, !dbg !4246

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4247
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4248
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4249
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4249
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4249
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4249
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !4249
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4250
  br label %kmalloc.exit, !dbg !4250

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4251
  ret i8* %65, !dbg !4252
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !4253 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4255, metadata !DIExpression()), !dbg !4259
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4261, metadata !DIExpression()), !dbg !4262
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4263, metadata !DIExpression()), !dbg !4264
  %0 = load i64, i64* %size.addr, align 8, !dbg !4265
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4267
  br i1 %1, label %if.then, label %if.end447, !dbg !4268

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4269
  %tobool = icmp ne i64 %2, 0, !dbg !4269
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4272

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4273
  br label %return, !dbg !4273

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4274
  %cmp = icmp ult i64 %3, 4096, !dbg !4276
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4277

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4278
  br label %return, !dbg !4278

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub = sub i64 %4, 1, !dbg !4279
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4279
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4279

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub4 = sub i64 %6, 1, !dbg !4279
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4279
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4279

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub6 = sub i64 %8, 1, !dbg !4279
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4279
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4279

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4279

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub9 = sub i64 %9, 1, !dbg !4279
  %and = and i64 %sub9, -9223372036854775808, !dbg !4279
  %tobool10 = icmp ne i64 %and, 0, !dbg !4279
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4279

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4279

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub13 = sub i64 %10, 1, !dbg !4279
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4279
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4279
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4279

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4279

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub18 = sub i64 %11, 1, !dbg !4279
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4279
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4279
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4279

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4279

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub23 = sub i64 %12, 1, !dbg !4279
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4279
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4279
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4279

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4279

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub28 = sub i64 %13, 1, !dbg !4279
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4279
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4279
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4279

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4279

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub33 = sub i64 %14, 1, !dbg !4279
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4279
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4279
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4279

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4279

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub38 = sub i64 %15, 1, !dbg !4279
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4279
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4279
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4279

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4279

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub43 = sub i64 %16, 1, !dbg !4279
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4279
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4279
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4279

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4279

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub48 = sub i64 %17, 1, !dbg !4279
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4279
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4279
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4279

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4279

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub53 = sub i64 %18, 1, !dbg !4279
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4279
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4279
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4279

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4279

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub58 = sub i64 %19, 1, !dbg !4279
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4279
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4279
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4279

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4279

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub63 = sub i64 %20, 1, !dbg !4279
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4279
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4279
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4279

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4279

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub68 = sub i64 %21, 1, !dbg !4279
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4279
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4279
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4279

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4279

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub73 = sub i64 %22, 1, !dbg !4279
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4279
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4279
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4279

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4279

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub78 = sub i64 %23, 1, !dbg !4279
  %and79 = and i64 %sub78, 562949953421312, !dbg !4279
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4279
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4279

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4279

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub83 = sub i64 %24, 1, !dbg !4279
  %and84 = and i64 %sub83, 281474976710656, !dbg !4279
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4279
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4279

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4279

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub88 = sub i64 %25, 1, !dbg !4279
  %and89 = and i64 %sub88, 140737488355328, !dbg !4279
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4279
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4279

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4279

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub93 = sub i64 %26, 1, !dbg !4279
  %and94 = and i64 %sub93, 70368744177664, !dbg !4279
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4279
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4279

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4279

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub98 = sub i64 %27, 1, !dbg !4279
  %and99 = and i64 %sub98, 35184372088832, !dbg !4279
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4279
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4279

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4279

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub103 = sub i64 %28, 1, !dbg !4279
  %and104 = and i64 %sub103, 17592186044416, !dbg !4279
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4279
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4279

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4279

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub108 = sub i64 %29, 1, !dbg !4279
  %and109 = and i64 %sub108, 8796093022208, !dbg !4279
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4279
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4279

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4279

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub113 = sub i64 %30, 1, !dbg !4279
  %and114 = and i64 %sub113, 4398046511104, !dbg !4279
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4279
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4279

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4279

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub118 = sub i64 %31, 1, !dbg !4279
  %and119 = and i64 %sub118, 2199023255552, !dbg !4279
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4279
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4279

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4279

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub123 = sub i64 %32, 1, !dbg !4279
  %and124 = and i64 %sub123, 1099511627776, !dbg !4279
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4279
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4279

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4279

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub128 = sub i64 %33, 1, !dbg !4279
  %and129 = and i64 %sub128, 549755813888, !dbg !4279
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4279
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4279

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4279

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub133 = sub i64 %34, 1, !dbg !4279
  %and134 = and i64 %sub133, 274877906944, !dbg !4279
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4279
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4279

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4279

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub138 = sub i64 %35, 1, !dbg !4279
  %and139 = and i64 %sub138, 137438953472, !dbg !4279
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4279
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4279

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4279

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub143 = sub i64 %36, 1, !dbg !4279
  %and144 = and i64 %sub143, 68719476736, !dbg !4279
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4279
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4279

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4279

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub148 = sub i64 %37, 1, !dbg !4279
  %and149 = and i64 %sub148, 34359738368, !dbg !4279
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4279
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4279

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4279

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub153 = sub i64 %38, 1, !dbg !4279
  %and154 = and i64 %sub153, 17179869184, !dbg !4279
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4279
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4279

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4279

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub158 = sub i64 %39, 1, !dbg !4279
  %and159 = and i64 %sub158, 8589934592, !dbg !4279
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4279
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4279

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4279

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub163 = sub i64 %40, 1, !dbg !4279
  %and164 = and i64 %sub163, 4294967296, !dbg !4279
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4279
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4279

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4279

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub168 = sub i64 %41, 1, !dbg !4279
  %and169 = and i64 %sub168, 2147483648, !dbg !4279
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4279
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4279

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4279

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub173 = sub i64 %42, 1, !dbg !4279
  %and174 = and i64 %sub173, 1073741824, !dbg !4279
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4279
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4279

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4279

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub178 = sub i64 %43, 1, !dbg !4279
  %and179 = and i64 %sub178, 536870912, !dbg !4279
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4279
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4279

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4279

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub183 = sub i64 %44, 1, !dbg !4279
  %and184 = and i64 %sub183, 268435456, !dbg !4279
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4279
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4279

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4279

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub188 = sub i64 %45, 1, !dbg !4279
  %and189 = and i64 %sub188, 134217728, !dbg !4279
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4279
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4279

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4279

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub193 = sub i64 %46, 1, !dbg !4279
  %and194 = and i64 %sub193, 67108864, !dbg !4279
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4279
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4279

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4279

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub198 = sub i64 %47, 1, !dbg !4279
  %and199 = and i64 %sub198, 33554432, !dbg !4279
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4279
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4279

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4279

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub203 = sub i64 %48, 1, !dbg !4279
  %and204 = and i64 %sub203, 16777216, !dbg !4279
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4279
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4279

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4279

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub208 = sub i64 %49, 1, !dbg !4279
  %and209 = and i64 %sub208, 8388608, !dbg !4279
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4279
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4279

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4279

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub213 = sub i64 %50, 1, !dbg !4279
  %and214 = and i64 %sub213, 4194304, !dbg !4279
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4279
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4279

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4279

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub218 = sub i64 %51, 1, !dbg !4279
  %and219 = and i64 %sub218, 2097152, !dbg !4279
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4279
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4279

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4279

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub223 = sub i64 %52, 1, !dbg !4279
  %and224 = and i64 %sub223, 1048576, !dbg !4279
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4279
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4279

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4279

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub228 = sub i64 %53, 1, !dbg !4279
  %and229 = and i64 %sub228, 524288, !dbg !4279
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4279
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4279

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4279

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub233 = sub i64 %54, 1, !dbg !4279
  %and234 = and i64 %sub233, 262144, !dbg !4279
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4279
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4279

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4279

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub238 = sub i64 %55, 1, !dbg !4279
  %and239 = and i64 %sub238, 131072, !dbg !4279
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4279
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4279

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4279

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub243 = sub i64 %56, 1, !dbg !4279
  %and244 = and i64 %sub243, 65536, !dbg !4279
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4279
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4279

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4279

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub248 = sub i64 %57, 1, !dbg !4279
  %and249 = and i64 %sub248, 32768, !dbg !4279
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4279
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4279

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4279

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub253 = sub i64 %58, 1, !dbg !4279
  %and254 = and i64 %sub253, 16384, !dbg !4279
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4279
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4279

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4279

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub258 = sub i64 %59, 1, !dbg !4279
  %and259 = and i64 %sub258, 8192, !dbg !4279
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4279
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4279

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4279

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub263 = sub i64 %60, 1, !dbg !4279
  %and264 = and i64 %sub263, 4096, !dbg !4279
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4279
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4279

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4279

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub268 = sub i64 %61, 1, !dbg !4279
  %and269 = and i64 %sub268, 2048, !dbg !4279
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4279
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4279

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4279

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub273 = sub i64 %62, 1, !dbg !4279
  %and274 = and i64 %sub273, 1024, !dbg !4279
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4279
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4279

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4279

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub278 = sub i64 %63, 1, !dbg !4279
  %and279 = and i64 %sub278, 512, !dbg !4279
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4279
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4279

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4279

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub283 = sub i64 %64, 1, !dbg !4279
  %and284 = and i64 %sub283, 256, !dbg !4279
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4279
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4279

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4279

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub288 = sub i64 %65, 1, !dbg !4279
  %and289 = and i64 %sub288, 128, !dbg !4279
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4279
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4279

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4279

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub293 = sub i64 %66, 1, !dbg !4279
  %and294 = and i64 %sub293, 64, !dbg !4279
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4279
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4279

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4279

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub298 = sub i64 %67, 1, !dbg !4279
  %and299 = and i64 %sub298, 32, !dbg !4279
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4279
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4279

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4279

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub303 = sub i64 %68, 1, !dbg !4279
  %and304 = and i64 %sub303, 16, !dbg !4279
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4279
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4279

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4279

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub308 = sub i64 %69, 1, !dbg !4279
  %and309 = and i64 %sub308, 8, !dbg !4279
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4279
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4279

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4279

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub313 = sub i64 %70, 1, !dbg !4279
  %and314 = and i64 %sub313, 4, !dbg !4279
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4279
  %71 = zext i1 %tobool315 to i64, !dbg !4279
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4279
  br label %cond.end, !dbg !4279

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4279
  br label %cond.end317, !dbg !4279

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4279
  br label %cond.end319, !dbg !4279

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4279
  br label %cond.end321, !dbg !4279

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4279
  br label %cond.end323, !dbg !4279

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4279
  br label %cond.end325, !dbg !4279

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4279
  br label %cond.end327, !dbg !4279

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4279
  br label %cond.end329, !dbg !4279

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4279
  br label %cond.end331, !dbg !4279

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4279
  br label %cond.end333, !dbg !4279

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4279
  br label %cond.end335, !dbg !4279

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4279
  br label %cond.end337, !dbg !4279

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4279
  br label %cond.end339, !dbg !4279

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4279
  br label %cond.end341, !dbg !4279

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4279
  br label %cond.end343, !dbg !4279

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4279
  br label %cond.end345, !dbg !4279

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4279
  br label %cond.end347, !dbg !4279

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4279
  br label %cond.end349, !dbg !4279

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4279
  br label %cond.end351, !dbg !4279

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4279
  br label %cond.end353, !dbg !4279

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4279
  br label %cond.end355, !dbg !4279

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4279
  br label %cond.end357, !dbg !4279

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4279
  br label %cond.end359, !dbg !4279

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4279
  br label %cond.end361, !dbg !4279

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4279
  br label %cond.end363, !dbg !4279

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4279
  br label %cond.end365, !dbg !4279

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4279
  br label %cond.end367, !dbg !4279

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4279
  br label %cond.end369, !dbg !4279

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4279
  br label %cond.end371, !dbg !4279

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4279
  br label %cond.end373, !dbg !4279

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4279
  br label %cond.end375, !dbg !4279

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4279
  br label %cond.end377, !dbg !4279

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4279
  br label %cond.end379, !dbg !4279

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4279
  br label %cond.end381, !dbg !4279

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4279
  br label %cond.end383, !dbg !4279

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4279
  br label %cond.end385, !dbg !4279

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4279
  br label %cond.end387, !dbg !4279

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4279
  br label %cond.end389, !dbg !4279

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4279
  br label %cond.end391, !dbg !4279

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4279
  br label %cond.end393, !dbg !4279

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4279
  br label %cond.end395, !dbg !4279

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4279
  br label %cond.end397, !dbg !4279

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4279
  br label %cond.end399, !dbg !4279

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4279
  br label %cond.end401, !dbg !4279

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4279
  br label %cond.end403, !dbg !4279

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4279
  br label %cond.end405, !dbg !4279

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4279
  br label %cond.end407, !dbg !4279

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4279
  br label %cond.end409, !dbg !4279

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4279
  br label %cond.end411, !dbg !4279

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4279
  br label %cond.end413, !dbg !4279

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4279
  br label %cond.end415, !dbg !4279

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4279
  br label %cond.end417, !dbg !4279

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4279
  br label %cond.end419, !dbg !4279

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4279
  br label %cond.end421, !dbg !4279

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4279
  br label %cond.end423, !dbg !4279

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4279
  br label %cond.end425, !dbg !4279

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4279
  br label %cond.end427, !dbg !4279

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4279
  br label %cond.end429, !dbg !4279

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4279
  br label %cond.end431, !dbg !4279

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4279
  br label %cond.end433, !dbg !4279

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4279
  br label %cond.end435, !dbg !4279

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4279
  br label %cond.end437, !dbg !4279

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4279
  br label %cond.end440, !dbg !4279

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4279

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4279
  br label %cond.end444, !dbg !4279

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4279
  %sub443 = sub i64 %72, 1, !dbg !4279
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4279
  br label %cond.end444, !dbg !4279

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4279
  %sub446 = sub i32 %cond445, 12, !dbg !4280
  %add = add i32 %sub446, 1, !dbg !4281
  store i32 %add, i32* %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4283
  %dec = add i64 %73, -1, !dbg !4283
  store i64 %dec, i64* %size.addr, align 8, !dbg !4283
  %74 = load i64, i64* %size.addr, align 8, !dbg !4284
  %shr = lshr i64 %74, 12, !dbg !4284
  store i64 %shr, i64* %size.addr, align 8, !dbg !4284
  %75 = load i64, i64* %size.addr, align 8, !dbg !4285
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4262
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4286
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4287
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !4286, !srcloc !4288
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4286
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4289
  %add.i = add i32 %79, 1, !dbg !4290
  store i32 %add.i, i32* %retval, align 4, !dbg !4291
  br label %return, !dbg !4291

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4292
  ret i32 %80, !dbg !4292
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !4293 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4255, metadata !DIExpression()), !dbg !4297
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4261, metadata !DIExpression()), !dbg !4299
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  %0 = load i64, i64* %n.addr, align 8, !dbg !4302
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4299
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4303
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4304
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !4303, !srcloc !4288
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4303
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4305
  %add.i = add i32 %4, 1, !dbg !4306
  %sub = sub i32 %add.i, 1, !dbg !4307
  ret i32 %sub, !dbg !4308
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4309 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4321
  ret i8* %0, !dbg !4322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %msg) #0 !dbg !4323 {
entry:
  %msg.addr = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !4330
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 0, !dbg !4331
  %1 = load i16, i16* %addr, align 8, !dbg !4331
  %conv = zext i16 %1 to i32, !dbg !4330
  %shl = shl i32 %conv, 1, !dbg !4332
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !4333
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 1, !dbg !4334
  %3 = load i16, i16* %flags, align 2, !dbg !4334
  %conv1 = zext i16 %3 to i32, !dbg !4333
  %and = and i32 %conv1, 1, !dbg !4335
  %tobool = icmp ne i32 %and, 0, !dbg !4333
  %4 = zext i1 %tobool to i64, !dbg !4333
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4333
  %or = or i32 %shl, %cond, !dbg !4336
  %conv2 = trunc i32 %or to i8, !dbg !4337
  ret i8 %conv2, !dbg !4338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @i2c_smbus_pec(i8 zeroext %crc, i8* %p, i64 %count) #0 !dbg !4339 {
entry:
  %crc.addr = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i8 %crc, i8* %crc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %crc.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i32 0, i32* %i, align 4, !dbg !4350
  br label %for.cond, !dbg !4352

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4353
  %conv = sext i32 %0 to i64, !dbg !4353
  %1 = load i64, i64* %count.addr, align 8, !dbg !4355
  %cmp = icmp ult i64 %conv, %1, !dbg !4356
  br i1 %cmp, label %for.body, label %for.end, !dbg !4357

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %crc.addr, align 1, !dbg !4358
  %conv2 = zext i8 %2 to i32, !dbg !4358
  %3 = load i8*, i8** %p.addr, align 8, !dbg !4359
  %4 = load i32, i32* %i, align 4, !dbg !4360
  %idxprom = sext i32 %4 to i64, !dbg !4359
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !4359
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4359
  %conv3 = zext i8 %5 to i32, !dbg !4359
  %xor = xor i32 %conv2, %conv3, !dbg !4361
  %shl = shl i32 %xor, 8, !dbg !4362
  %conv4 = trunc i32 %shl to i16, !dbg !4363
  %call = call zeroext i8 @crc8(i16 zeroext %conv4) #10, !dbg !4364
  store i8 %call, i8* %crc.addr, align 1, !dbg !4365
  br label %for.inc, !dbg !4366

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4367
  %inc = add i32 %6, 1, !dbg !4367
  store i32 %inc, i32* %i, align 4, !dbg !4367
  br label %for.cond, !dbg !4368, !llvm.loop !4369

for.end:                                          ; preds = %for.cond
  %7 = load i8, i8* %crc.addr, align 1, !dbg !4371
  ret i8 %7, !dbg !4372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @crc8(i16 zeroext %data) #0 !dbg !4373 {
entry:
  %data.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i16 %data, i16* %data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %data.addr, metadata !4376, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4378, metadata !DIExpression()), !dbg !4379
  store i32 0, i32* %i, align 4, !dbg !4380
  br label %for.cond, !dbg !4382

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4383
  %cmp = icmp slt i32 %0, 8, !dbg !4385
  br i1 %cmp, label %for.body, label %for.end, !dbg !4386

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %data.addr, align 2, !dbg !4387
  %conv = zext i16 %1 to i32, !dbg !4387
  %and = and i32 %conv, 32768, !dbg !4390
  %tobool = icmp ne i32 %and, 0, !dbg !4390
  br i1 %tobool, label %if.then, label %if.end, !dbg !4391

if.then:                                          ; preds = %for.body
  %2 = load i16, i16* %data.addr, align 2, !dbg !4392
  %conv1 = zext i16 %2 to i32, !dbg !4392
  %xor = xor i32 %conv1, 33664, !dbg !4393
  %conv2 = trunc i32 %xor to i16, !dbg !4392
  store i16 %conv2, i16* %data.addr, align 2, !dbg !4394
  br label %if.end, !dbg !4395

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i16, i16* %data.addr, align 2, !dbg !4396
  %conv3 = zext i16 %3 to i32, !dbg !4396
  %shl = shl i32 %conv3, 1, !dbg !4397
  %conv4 = trunc i32 %shl to i16, !dbg !4396
  store i16 %conv4, i16* %data.addr, align 2, !dbg !4398
  br label %for.inc, !dbg !4399

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !4400
  %inc = add i32 %4, 1, !dbg !4400
  store i32 %inc, i32* %i, align 4, !dbg !4400
  br label %for.cond, !dbg !4401, !llvm.loop !4402

for.end:                                          ; preds = %for.cond
  %5 = load i16, i16* %data.addr, align 2, !dbg !4404
  %conv5 = zext i16 %5 to i32, !dbg !4404
  %shr = ashr i32 %conv5, 8, !dbg !4405
  %conv6 = trunc i32 %shr to i8, !dbg !4406
  ret i8 %conv6, !dbg !4407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_get_functionality(%struct.i2c_adapter* %adap) #0 !dbg !4408 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4411
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 2, !dbg !4412
  %1 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !4412
  %functionality = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %1, i32 0, i32 4, !dbg !4413
  %2 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %functionality, align 8, !dbg !4413
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4414
  %call = call i32 %2(%struct.i2c_adapter* %3) #10, !dbg !4411
  ret i32 %call, !dbg !4415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4416 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4419, metadata !DIExpression()), !dbg !4420
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4421
  %1 = ptrtoint i8* %0 to i64, !dbg !4421
  %2 = inttoptr i64 %1 to i8*, !dbg !4421
  %3 = ptrtoint i8* %2 to i64, !dbg !4421
  %cmp = icmp uge i64 %3, -4095, !dbg !4421
  %lnot = xor i1 %cmp, true, !dbg !4421
  %lnot1 = xor i1 %lnot, true, !dbg !4421
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4421
  %conv = sext i32 %lnot.ext to i64, !dbg !4421
  %tobool = icmp ne i64 %conv, 0, !dbg !4421
  ret i1 %tobool, !dbg !4422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4423 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4428
  %1 = ptrtoint i8* %0 to i64, !dbg !4429
  ret i64 %1, !dbg !4430
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/i2c/i2c-core-smbus.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !62, !71, !76, !86}
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
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !63, line: 19, baseType: !5, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!69 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!70 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 10, baseType: !5, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !77, line: 576, baseType: !5, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "SYSTEM_HALT", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "SYSTEM_RESTART", value: 5, isUnsigned: true)
!85 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 6, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !87, line: 305, baseType: !5, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!93 = !{!94, !95, !96, !97, !99, !100}
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 148, baseType: !5)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!"rsp"}
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"Code Model", i32 2}
!110 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!111 = distinct !DISubprogram(name: "i2c_smbus_read_byte", scope: !1, file: !1, line: 93, type: !112, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !117}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !116)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !120, line: 314, size: 6016, elements: !121)
!120 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !124, !125, !130, !2301, !2302, !2303, !2304}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !120, line: 315, baseType: !123, size: 16)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !119, file: !120, line: 325, baseType: !123, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 328, baseType: !126, size: 160, offset: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 160, elements: !128)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !119, file: !120, line: 329, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !120, line: 695, size: 7552, elements: !133)
!133 = !{!134, !138, !139, !180, !181, !195, !1357, !1358, !1359, !1360, !2248, !2249, !2250, !2254, !2255, !2256, !2257, !2289, !2300}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !132, file: !120, line: 696, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !137, line: 76, flags: DIFlagFwdDecl)
!137 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !132, file: !120, line: 697, baseType: !5, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !132, file: !120, line: 698, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !120, line: 519, size: 320, elements: !143)
!143 = !{!144, !158, !159, !173, !174}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !142, file: !120, line: 529, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!116, !131, !148, !116}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !150, line: 69, size: 128, elements: !151)
!150 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !154, !155, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !149, file: !150, line: 70, baseType: !153, size: 16)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !123)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !150, line: 71, baseType: !153, size: 16, offset: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !149, file: !150, line: 84, baseType: !153, size: 16, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !149, file: !150, line: 85, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !142, file: !120, line: 531, baseType: !145, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !142, file: !120, line: 533, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!116, !131, !163, !123, !127, !100, !116, !164}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !153)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !150, line: 135, size: 272, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !165, file: !150, line: 136, baseType: !102, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !165, file: !150, line: 137, baseType: !153, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !165, file: !150, line: 138, baseType: !170, size: 272)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 272, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 34)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !142, file: !120, line: 536, baseType: !160, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !142, file: !120, line: 541, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !131}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !5)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !132, file: !120, line: 699, baseType: !99, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !132, file: !120, line: 702, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !120, line: 557, size: 192, elements: !185)
!185 = !{!186, !190, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !184, file: !120, line: 558, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !131, !5}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !184, file: !120, line: 559, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!116, !131, !5}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !184, file: !120, line: 560, baseType: !187, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !132, file: !120, line: 703, baseType: !196, size: 192, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !197, line: 30, size: 192, elements: !198)
!197 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !209, !224}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !196, file: !197, line: 31, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 29, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 20, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !201, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 25, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 25, elements: !208)
!208 = !{}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !196, file: !197, line: 32, baseType: !210, size: 128)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !211, line: 125, size: 128, elements: !212)
!211 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !210, file: !211, line: 126, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !211, line: 31, size: 64, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !214, file: !211, line: 32, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !211, line: 24, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !218, file: !211, line: 25, baseType: !96, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !218, file: !211, line: 26, baseType: !217, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !218, file: !211, line: 27, baseType: !217, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !210, file: !211, line: 127, baseType: !217, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !196, file: !197, line: 33, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !227, line: 640, size: 48640, elements: !228)
!227 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !235, !237, !238, !248, !249, !250, !251, !252, !253, !254, !255, !259, !285, !296, !388, !389, !390, !401, !402, !404, !405, !641, !642, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !719, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !775, !777, !778, !779, !781, !783, !784, !785, !786, !787, !793, !794, !795, !796, !797, !798, !799, !813, !818, !822, !823, !824, !827, !831, !834, !837, !840, !843, !846, !849, !852, !858, !859, !860, !866, !867, !871, !872, !873, !882, !883, !884, !885, !886, !891, !892, !893, !896, !897, !900, !903, !906, !909, !912, !915, !916, !997, !1000, !1003, !1004, !1007, !1008, !1009, !1015, !1016, !1017, !1030, !1031, !1032, !1042, !1047, !1050, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !226, file: !227, line: 646, baseType: !230, size: 128)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !231, line: 56, size: 128, elements: !232)
!231 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !231, line: 57, baseType: !96, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !230, file: !231, line: 58, baseType: !178, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !226, file: !227, line: 649, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !226, file: !227, line: 657, baseType: !99, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !226, file: !227, line: 658, baseType: !239, size: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !240, line: 113, baseType: !241)
!240 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !240, line: 111, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !241, file: !240, line: 112, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !98, line: 168, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 166, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !98, line: 167, baseType: !116, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !227, line: 660, baseType: !5, size: 32, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !226, file: !227, line: 661, baseType: !5, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !226, file: !227, line: 684, baseType: !116, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !226, file: !227, line: 686, baseType: !116, size: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !226, file: !227, line: 687, baseType: !116, size: 32, offset: 416)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !226, file: !227, line: 688, baseType: !116, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !226, file: !227, line: 689, baseType: !5, size: 32, offset: 480)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !226, file: !227, line: 691, baseType: !256, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !227, line: 691, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !226, file: !227, line: 692, baseType: !260, size: 832, offset: 576)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !227, line: 451, size: 832, elements: !261)
!261 = !{!262, !267, !268, !274, !275, !279, !280, !281, !282, !283}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !260, file: !227, line: 453, baseType: !263, size: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !227, line: 325, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !263, file: !227, line: 326, baseType: !96, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !263, file: !227, line: 327, baseType: !178, size: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !260, file: !227, line: 454, baseType: !218, size: 192, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !260, file: !227, line: 455, baseType: !269, size: 128, offset: 320)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !98, line: 178, size: 128, elements: !270)
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !98, line: 179, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !269, file: !98, line: 179, baseType: !272, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !260, file: !227, line: 456, baseType: !5, size: 32, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !260, file: !227, line: 458, baseType: !276, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !278)
!278 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !260, file: !227, line: 459, baseType: !276, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !260, file: !227, line: 460, baseType: !276, size: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !260, file: !227, line: 461, baseType: !276, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !260, file: !227, line: 463, baseType: !276, size: 64, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !260, file: !227, line: 465, baseType: !284, offset: 832)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !227, line: 415, elements: !208)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !226, file: !227, line: 693, baseType: !286, size: 384, offset: 1408)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !227, line: 489, size: 384, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !286, file: !227, line: 490, baseType: !269, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !227, line: 491, baseType: !96, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !286, file: !227, line: 492, baseType: !96, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !286, file: !227, line: 493, baseType: !5, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !286, file: !227, line: 494, baseType: !123, size: 16, offset: 288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !286, file: !227, line: 495, baseType: !123, size: 16, offset: 304)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !286, file: !227, line: 497, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !226, file: !227, line: 697, baseType: !297, size: 1792, offset: 1792)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !227, line: 507, size: 1792, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !309, !310, !311, !312, !313, !314, !315, !385, !386}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !297, file: !227, line: 508, baseType: !218, size: 192, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !297, file: !227, line: 515, baseType: !276, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !297, file: !227, line: 516, baseType: !276, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !297, file: !227, line: 517, baseType: !276, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !297, file: !227, line: 518, baseType: !276, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !297, file: !227, line: 519, baseType: !276, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !297, file: !227, line: 526, baseType: !306, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !308)
!308 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !297, file: !227, line: 527, baseType: !276, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !227, line: 528, baseType: !5, size: 32, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !297, file: !227, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !297, file: !227, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !297, file: !227, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !297, file: !227, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !297, file: !227, line: 563, baseType: !316, size: 512, offset: 704)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !317)
!317 = !{!318, !326, !327, !332, !381, !382, !383, !384}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !316, file: !4, line: 119, baseType: !319, size: 256)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !320, line: 9, size: 256, elements: !321)
!320 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !320, line: 10, baseType: !218, size: 192, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !319, file: !320, line: 11, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !325, line: 29, baseType: !306)
!325 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !316, file: !4, line: 120, baseType: !324, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !316, file: !4, line: 121, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!3, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !316, file: !4, line: 122, baseType: !333, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !335)
!335 = !{!336, !356, !357, !361, !371, !372, !376, !380}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !334, file: !4, line: 160, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !338, file: !4, line: 215, baseType: !200)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !338, file: !4, line: 216, baseType: !5, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !338, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !338, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !338, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !338, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !338, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !338, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !338, file: !4, line: 233, baseType: !324, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !338, file: !4, line: 234, baseType: !331, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !338, file: !4, line: 235, baseType: !324, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !338, file: !4, line: 236, baseType: !331, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !338, file: !4, line: 237, baseType: !353, size: 4096, offset: 512)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 4096, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !334, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !334, file: !4, line: 162, baseType: !358, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !98, line: 27, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !360, line: 96, baseType: !116)
!360 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!361 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !334, file: !4, line: 163, baseType: !362, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !363, line: 276, baseType: !364)
!363 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !363, line: 276, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !364, file: !363, line: 276, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !363, line: 70, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !363, line: 65, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !368, file: !363, line: 66, baseType: !5, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !334, file: !4, line: 164, baseType: !331, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !334, file: !4, line: 165, baseType: !373, size: 128, offset: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !320, line: 14, size: 128, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !373, file: !320, line: 15, baseType: !210, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !334, file: !4, line: 166, baseType: !377, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!324}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !334, file: !4, line: 167, baseType: !324, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !4, line: 123, baseType: !100, size: 8, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !316, file: !4, line: 124, baseType: !100, size: 8, offset: 456)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !316, file: !4, line: 125, baseType: !100, size: 8, offset: 464)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !316, file: !4, line: 126, baseType: !100, size: 8, offset: 472)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !297, file: !227, line: 572, baseType: !316, size: 512, offset: 1216)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !297, file: !227, line: 580, baseType: !387, size: 64, offset: 1728)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !226, file: !227, line: 721, baseType: !5, size: 32, offset: 3584)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !226, file: !227, line: 722, baseType: !116, size: 32, offset: 3616)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !226, file: !227, line: 723, baseType: !391, size: 64, offset: 3648)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !394, line: 17, baseType: !395)
!394 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !394, line: 17, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !395, file: !394, line: 17, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 1)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !226, file: !227, line: 724, baseType: !393, size: 64, offset: 3712)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !226, file: !227, line: 749, baseType: !403, offset: 3776)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !227, line: 290, elements: !208)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !226, file: !227, line: 751, baseType: !269, size: 128, offset: 3776)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !226, file: !227, line: 757, baseType: !406, size: 64, offset: 3904)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !408, line: 388, size: 7296, elements: !409)
!408 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !637}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 389, baseType: !411, size: 7296)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !408, line: 389, size: 7296, elements: !412)
!412 = !{!413, !460, !461, !462, !466, !467, !468, !469, !470, !477, !478, !479, !480, !481, !482, !483, !491, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !525, !533, !536, !582, !583, !605, !606, !609, !613, !614, !617, !618, !621, !624, !636}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !411, file: !408, line: 390, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !408, line: 305, size: 1472, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !432, !433, !438, !439, !442, !446, !447, !450, !451, !458}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !415, file: !408, line: 308, baseType: !96, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !415, file: !408, line: 309, baseType: !96, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !415, file: !408, line: 313, baseType: !414, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !415, file: !408, line: 313, baseType: !414, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !415, file: !408, line: 315, baseType: !218, size: 192, align: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !415, file: !408, line: 323, baseType: !96, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !415, file: !408, line: 327, baseType: !406, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !415, file: !408, line: 333, baseType: !425, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !426, line: 284, baseType: !427)
!426 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !426, line: 284, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !427, file: !426, line: 284, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !431, line: 19, baseType: !96)
!431 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !415, file: !408, line: 334, baseType: !96, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !415, file: !408, line: 343, baseType: !434, size: 256, offset: 704)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !408, line: 340, size: 256, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !434, file: !408, line: 341, baseType: !218, size: 192, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !434, file: !408, line: 342, baseType: !96, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !415, file: !408, line: 351, baseType: !269, size: 128, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !415, file: !408, line: 353, baseType: !440, size: 64, offset: 1088)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !408, line: 353, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !415, file: !408, line: 356, baseType: !443, size: 64, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !408, line: 356, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !415, file: !408, line: 359, baseType: !96, size: 64, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !415, file: !408, line: 361, baseType: !448, size: 64, offset: 1280)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !426, line: 526, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !415, file: !408, line: 362, baseType: !99, size: 64, offset: 1344)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !415, file: !408, line: 365, baseType: !452, size: 64, offset: 1408)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !453, line: 13, baseType: !454)
!453 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !98, line: 175, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 173, size: 64, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !455, file: !98, line: 174, baseType: !306, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !415, file: !408, line: 373, baseType: !459, offset: 1472)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !408, line: 296, elements: !208)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !411, file: !408, line: 391, baseType: !214, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !411, file: !408, line: 392, baseType: !276, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !411, file: !408, line: 394, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!96, !448, !96, !96, !96, !96}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !411, file: !408, line: 398, baseType: !96, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !411, file: !408, line: 399, baseType: !96, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !411, file: !408, line: 405, baseType: !96, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !411, file: !408, line: 406, baseType: !96, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !411, file: !408, line: 407, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !426, line: 286, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 286, size: 64, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !473, file: !426, line: 286, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !431, line: 18, baseType: !96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !411, file: !408, line: 416, baseType: !244, size: 32, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !411, file: !408, line: 428, baseType: !244, size: 32, offset: 608)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !411, file: !408, line: 437, baseType: !244, size: 32, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !411, file: !408, line: 447, baseType: !244, size: 32, offset: 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !411, file: !408, line: 450, baseType: !452, size: 64, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !411, file: !408, line: 452, baseType: !116, size: 32, offset: 768)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !411, file: !408, line: 454, baseType: !484, offset: 800)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !201, line: 83, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !201, line: 71, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !201, line: 72, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !201, line: 72, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !488, file: !201, line: 73, baseType: !202)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !411, file: !408, line: 457, baseType: !492, size: 256, offset: 832)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !493, line: 35, size: 256, elements: !494)
!493 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !492, file: !493, line: 36, baseType: !452, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !492, file: !493, line: 42, baseType: !452, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !492, file: !493, line: 46, baseType: !200, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !492, file: !493, line: 47, baseType: !269, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !411, file: !408, line: 459, baseType: !269, size: 128, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !411, file: !408, line: 466, baseType: !96, size: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !411, file: !408, line: 467, baseType: !96, size: 64, offset: 1280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !411, file: !408, line: 469, baseType: !96, size: 64, offset: 1344)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !411, file: !408, line: 470, baseType: !96, size: 64, offset: 1408)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !411, file: !408, line: 471, baseType: !454, size: 64, offset: 1472)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !411, file: !408, line: 472, baseType: !96, size: 64, offset: 1536)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !411, file: !408, line: 473, baseType: !96, size: 64, offset: 1600)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !411, file: !408, line: 474, baseType: !96, size: 64, offset: 1664)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !411, file: !408, line: 475, baseType: !96, size: 64, offset: 1728)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !411, file: !408, line: 477, baseType: !484, offset: 1792)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !411, file: !408, line: 478, baseType: !96, size: 64, offset: 1792)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !411, file: !408, line: 478, baseType: !96, size: 64, offset: 1856)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !411, file: !408, line: 478, baseType: !96, size: 64, offset: 1920)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !411, file: !408, line: 478, baseType: !96, size: 64, offset: 1984)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !411, file: !408, line: 479, baseType: !96, size: 64, offset: 2048)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !411, file: !408, line: 479, baseType: !96, size: 64, offset: 2112)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !411, file: !408, line: 479, baseType: !96, size: 64, offset: 2176)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !411, file: !408, line: 480, baseType: !96, size: 64, offset: 2240)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !411, file: !408, line: 480, baseType: !96, size: 64, offset: 2304)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !411, file: !408, line: 480, baseType: !96, size: 64, offset: 2368)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !411, file: !408, line: 480, baseType: !96, size: 64, offset: 2432)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !411, file: !408, line: 482, baseType: !522, size: 2816, offset: 2496)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2816, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 44)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !411, file: !408, line: 488, baseType: !526, size: 256, offset: 5312)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !527, line: 60, size: 256, elements: !528)
!527 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !526, file: !527, line: 61, baseType: !530, size: 256)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 4)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !411, file: !408, line: 490, baseType: !534, size: 64, offset: 5568)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !408, line: 490, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !411, file: !408, line: 493, baseType: !537, size: 896, offset: 5632)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !538, line: 53, baseType: !539)
!538 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !538, line: 13, size: 896, elements: !540)
!540 = !{!541, !542, !543, !544, !547, !548, !555, !556, !576, !577, !578}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !539, file: !538, line: 18, baseType: !276, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !539, file: !538, line: 28, baseType: !454, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !539, file: !538, line: 31, baseType: !492, size: 256, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !539, file: !538, line: 32, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !538, line: 32, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !539, file: !538, line: 37, baseType: !123, size: 16, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !539, file: !538, line: 40, baseType: !549, size: 192, offset: 512)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !550, line: 53, size: 192, elements: !551)
!550 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !549, file: !550, line: 54, baseType: !452, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !549, file: !550, line: 55, baseType: !484, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !549, file: !550, line: 59, baseType: !269, size: 128, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !539, file: !538, line: 41, baseType: !99, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !539, file: !538, line: 42, baseType: !557, size: 64, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !560, line: 13, size: 896, elements: !561)
!560 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !559, file: !560, line: 14, baseType: !99, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !559, file: !560, line: 15, baseType: !96, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !559, file: !560, line: 17, baseType: !96, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !559, file: !560, line: 17, baseType: !96, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !559, file: !560, line: 19, baseType: !94, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !559, file: !560, line: 21, baseType: !94, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !559, file: !560, line: 22, baseType: !94, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !559, file: !560, line: 23, baseType: !94, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !559, file: !560, line: 24, baseType: !94, size: 64, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !559, file: !560, line: 25, baseType: !94, size: 64, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !559, file: !560, line: 26, baseType: !94, size: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !559, file: !560, line: 27, baseType: !94, size: 64, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !559, file: !560, line: 28, baseType: !94, size: 64, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !559, file: !560, line: 29, baseType: !94, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !539, file: !538, line: 44, baseType: !244, size: 32, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !539, file: !538, line: 50, baseType: !163, size: 16, offset: 864)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !539, file: !538, line: 51, baseType: !579, size: 16, offset: 880)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !581)
!581 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !408, line: 495, baseType: !96, size: 64, offset: 6528)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !411, file: !408, line: 497, baseType: !584, size: 64, offset: 6592)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !408, line: 381, size: 384, elements: !586)
!586 = !{!587, !588, !594}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !585, file: !408, line: 382, baseType: !244, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !585, file: !408, line: 383, baseType: !589, size: 128, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !408, line: 376, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !589, file: !408, line: 377, baseType: !225, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !408, line: 378, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !585, file: !408, line: 384, baseType: !595, size: 192, offset: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !596, line: 26, size: 192, elements: !597)
!596 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !595, file: !596, line: 27, baseType: !5, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !595, file: !596, line: 28, baseType: !600, size: 128, offset: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !601, line: 43, size: 128, elements: !602)
!601 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !601, line: 44, baseType: !200)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !600, file: !601, line: 45, baseType: !269, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !411, file: !408, line: 500, baseType: !484, offset: 6656)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !411, file: !408, line: 501, baseType: !607, size: 64, offset: 6656)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !408, line: 387, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !411, file: !408, line: 516, baseType: !610, size: 64, offset: 6720)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !612, line: 18, flags: DIFlagFwdDecl)
!612 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !411, file: !408, line: 519, baseType: !448, size: 64, offset: 6784)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !411, file: !408, line: 521, baseType: !615, size: 64, offset: 6848)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !408, line: 521, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !411, file: !408, line: 545, baseType: !244, size: 32, offset: 6912)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !411, file: !408, line: 548, baseType: !619, size: 8, offset: 6944)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 30, baseType: !620)
!620 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !411, file: !408, line: 550, baseType: !622, offset: 6952)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !623, line: 142, elements: !208)
!623 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !411, file: !408, line: 554, baseType: !625, size: 256, offset: 6976)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !626, line: 102, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !625, file: !626, line: 103, baseType: !452, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !625, file: !626, line: 104, baseType: !269, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !625, file: !626, line: 105, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !626, line: 21, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !411, file: !408, line: 557, baseType: !178, size: 32, offset: 7232)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !407, file: !408, line: 565, baseType: !638, offset: 7296)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: -1)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !226, file: !227, line: 758, baseType: !406, size: 64, offset: 3968)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !226, file: !227, line: 761, baseType: !643, size: 320, offset: 4032)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !527, line: 34, size: 320, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !643, file: !527, line: 35, baseType: !276, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !643, file: !527, line: 36, baseType: !647, size: 256, offset: 64)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 256, elements: !531)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !226, file: !227, line: 766, baseType: !116, size: 32, offset: 4352)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !226, file: !227, line: 767, baseType: !116, size: 32, offset: 4384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !226, file: !227, line: 768, baseType: !116, size: 32, offset: 4416)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !226, file: !227, line: 770, baseType: !116, size: 32, offset: 4448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !226, file: !227, line: 772, baseType: !96, size: 64, offset: 4480)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !226, file: !227, line: 775, baseType: !5, size: 32, offset: 4544)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !226, file: !227, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !226, file: !227, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !226, file: !227, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !226, file: !227, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !226, file: !227, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !226, file: !227, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !226, file: !227, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !226, file: !227, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !226, file: !227, line: 831, baseType: !96, size: 64, offset: 4672)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !226, file: !227, line: 833, baseType: !664, size: 384, offset: 4736)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !665)
!665 = !{!666, !671}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !664, file: !10, line: 26, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!94, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !10, line: 27, baseType: !672, size: 320, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !10, line: 27, size: 320, elements: !673)
!673 = !{!674, !684, !709}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !672, file: !10, line: 36, baseType: !675, size: 320)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !10, line: 29, size: 320, elements: !676)
!676 = !{!677, !679, !680, !681, !682, !683}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !675, file: !10, line: 30, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !10, line: 31, baseType: !178, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !10, line: 32, baseType: !178, size: 32, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !675, file: !10, line: 33, baseType: !178, size: 32, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !675, file: !10, line: 34, baseType: !276, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !675, file: !10, line: 35, baseType: !678, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !672, file: !10, line: 46, baseType: !685, size: 192)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !10, line: 38, size: 192, elements: !686)
!686 = !{!687, !688, !689, !708}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !685, file: !10, line: 39, baseType: !358, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !10, line: 41, baseType: !690, size: 64, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !10, line: 41, size: 64, elements: !691)
!691 = !{!692, !700}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !690, file: !10, line: 42, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !695, line: 7, size: 128, elements: !696)
!695 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !694, file: !695, line: 8, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !360, line: 93, baseType: !308)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !694, file: !695, line: 9, baseType: !308, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !690, file: !10, line: 43, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !703, line: 7, size: 64, elements: !704)
!703 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !702, file: !703, line: 8, baseType: !706, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !703, line: 5, baseType: !114)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !702, file: !703, line: 9, baseType: !114, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !685, file: !10, line: 45, baseType: !276, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !672, file: !10, line: 54, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !10, line: 48, size: 256, elements: !711)
!711 = !{!712, !715, !716, !717, !718}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !710, file: !10, line: 49, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !710, file: !10, line: 50, baseType: !116, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !710, file: !10, line: 51, baseType: !116, size: 32, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !710, file: !10, line: 52, baseType: !96, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !710, file: !10, line: 53, baseType: !96, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !226, file: !227, line: 835, baseType: !720, size: 32, offset: 5120)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !98, line: 22, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !360, line: 28, baseType: !116)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !226, file: !227, line: 836, baseType: !720, size: 32, offset: 5152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !226, file: !227, line: 840, baseType: !96, size: 64, offset: 5184)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !226, file: !227, line: 849, baseType: !225, size: 64, offset: 5248)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !227, line: 852, baseType: !225, size: 64, offset: 5312)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !226, file: !227, line: 857, baseType: !269, size: 128, offset: 5376)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !226, file: !227, line: 858, baseType: !269, size: 128, offset: 5504)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !226, file: !227, line: 859, baseType: !225, size: 64, offset: 5632)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !226, file: !227, line: 867, baseType: !269, size: 128, offset: 5696)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !226, file: !227, line: 868, baseType: !269, size: 128, offset: 5824)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !226, file: !227, line: 871, baseType: !732, size: 64, offset: 5952)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !734, line: 59, size: 768, elements: !735)
!734 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !737, !738, !739, !750, !751, !758, !767}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !733, file: !734, line: 61, baseType: !239, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !733, file: !734, line: 62, baseType: !5, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !734, line: 63, baseType: !484, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !733, file: !734, line: 65, baseType: !740, size: 256, offset: 64)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !531)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !98, line: 182, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !741, file: !98, line: 183, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !98, line: 186, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !98, line: 187, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !745, file: !98, line: 187, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !733, file: !734, line: 66, baseType: !741, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !733, file: !734, line: 68, baseType: !752, size: 128, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !753, line: 40, baseType: !754)
!753 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !753, line: 36, size: 128, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !753, line: 37, baseType: !484)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !754, file: !753, line: 38, baseType: !269, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !733, file: !734, line: 69, baseType: !759, size: 128, align: 64, offset: 512)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !98, line: 216, size: 128, align: 64, elements: !760)
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !98, line: 217, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !759, file: !98, line: 218, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !762}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !733, file: !734, line: 70, baseType: !768, size: 128, offset: 640)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 128, elements: !399)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !734, line: 54, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !769, file: !734, line: 55, baseType: !116, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !769, file: !734, line: 56, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !734, line: 56, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !226, file: !227, line: 872, baseType: !776, size: 512, offset: 6016)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 512, elements: !531)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !226, file: !227, line: 873, baseType: !269, size: 128, offset: 6528)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !226, file: !227, line: 874, baseType: !269, size: 128, offset: 6656)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !226, file: !227, line: 876, baseType: !780, size: 64, offset: 6784)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !226, file: !227, line: 879, baseType: !782, size: 64, offset: 6848)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !226, file: !227, line: 882, baseType: !782, size: 64, offset: 6912)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !226, file: !227, line: 884, baseType: !276, size: 64, offset: 6976)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !226, file: !227, line: 885, baseType: !276, size: 64, offset: 7040)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !226, file: !227, line: 890, baseType: !276, size: 64, offset: 7104)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !226, file: !227, line: 891, baseType: !788, size: 128, offset: 7168)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !227, line: 242, size: 128, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !788, file: !227, line: 244, baseType: !276, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !788, file: !227, line: 245, baseType: !276, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !227, line: 246, baseType: !200, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !226, file: !227, line: 900, baseType: !96, size: 64, offset: 7296)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !226, file: !227, line: 901, baseType: !96, size: 64, offset: 7360)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !226, file: !227, line: 904, baseType: !276, size: 64, offset: 7424)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !226, file: !227, line: 907, baseType: !276, size: 64, offset: 7488)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !226, file: !227, line: 910, baseType: !96, size: 64, offset: 7552)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !226, file: !227, line: 911, baseType: !96, size: 64, offset: 7616)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !226, file: !227, line: 914, baseType: !800, size: 640, offset: 7680)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !801, line: 123, size: 640, elements: !802)
!801 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !811, !812}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !800, file: !801, line: 124, baseType: !804, size: 576)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 576, elements: !809)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !801, line: 108, size: 192, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !805, file: !801, line: 109, baseType: !276, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !805, file: !801, line: 110, baseType: !373, size: 128, offset: 64)
!809 = !{!810}
!810 = !DISubrange(count: 3)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !800, file: !801, line: 125, baseType: !5, size: 32, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !800, file: !801, line: 126, baseType: !5, size: 32, offset: 608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !226, file: !227, line: 917, baseType: !814, size: 192, offset: 8320)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !801, line: 134, size: 192, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !814, file: !801, line: 135, baseType: !759, size: 128, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !814, file: !801, line: 136, baseType: !5, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !226, file: !227, line: 923, baseType: !819, size: 64, offset: 8512)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !227, line: 923, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !226, file: !227, line: 926, baseType: !819, size: 64, offset: 8576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !226, file: !227, line: 929, baseType: !819, size: 64, offset: 8640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !226, file: !227, line: 933, baseType: !825, size: 64, offset: 8704)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !227, line: 933, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !226, file: !227, line: 943, baseType: !828, size: 128, offset: 8768)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 16)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !226, file: !227, line: 945, baseType: !832, size: 64, offset: 8896)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !227, line: 49, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !226, file: !227, line: 956, baseType: !835, size: 64, offset: 8960)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !227, line: 45, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !226, file: !227, line: 959, baseType: !838, size: 64, offset: 9024)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !227, line: 959, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !226, file: !227, line: 962, baseType: !841, size: 64, offset: 9088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !227, line: 66, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !226, file: !227, line: 966, baseType: !844, size: 64, offset: 9152)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !227, line: 50, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !226, file: !227, line: 969, baseType: !847, size: 64, offset: 9216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !801, line: 223, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !226, file: !227, line: 970, baseType: !850, size: 64, offset: 9280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !227, line: 62, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !226, file: !227, line: 971, baseType: !853, size: 64, offset: 9344)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !854, line: 25, baseType: !855)
!854 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 23, size: 64, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !855, file: !854, line: 24, baseType: !398, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !226, file: !227, line: 972, baseType: !853, size: 64, offset: 9408)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !226, file: !227, line: 974, baseType: !853, size: 64, offset: 9472)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !226, file: !227, line: 975, baseType: !861, size: 192, offset: 9536)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !862, line: 30, size: 192, elements: !863)
!862 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !861, file: !862, line: 31, baseType: !269, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !861, file: !862, line: 32, baseType: !853, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !226, file: !227, line: 976, baseType: !96, size: 64, offset: 9728)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !226, file: !227, line: 977, baseType: !868, size: 64, offset: 9792)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 55, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !360, line: 72, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !360, line: 16, baseType: !96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !226, file: !227, line: 978, baseType: !5, size: 32, offset: 9856)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !226, file: !227, line: 980, baseType: !762, size: 64, offset: 9920)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !226, file: !227, line: 989, baseType: !874, size: 128, offset: 9984)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !875, line: 35, size: 128, elements: !876)
!875 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !874, file: !875, line: 36, baseType: !116, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !874, file: !875, line: 37, baseType: !244, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !874, file: !875, line: 38, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !875, line: 23, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !226, file: !227, line: 992, baseType: !276, size: 64, offset: 10112)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !226, file: !227, line: 993, baseType: !276, size: 64, offset: 10176)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !226, file: !227, line: 996, baseType: !484, offset: 10240)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !226, file: !227, line: 999, baseType: !200, offset: 10240)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !226, file: !227, line: 1001, baseType: !887, size: 64, offset: 10240)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !227, line: 636, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !227, line: 637, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !226, file: !227, line: 1005, baseType: !210, size: 128, offset: 10304)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !226, file: !227, line: 1007, baseType: !225, size: 64, offset: 10432)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !226, file: !227, line: 1009, baseType: !894, size: 64, offset: 10496)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !227, line: 1009, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !226, file: !227, line: 1043, baseType: !99, size: 64, offset: 10560)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !226, file: !227, line: 1046, baseType: !898, size: 64, offset: 10624)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !227, line: 41, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !226, file: !227, line: 1050, baseType: !901, size: 64, offset: 10688)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !227, line: 42, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !226, file: !227, line: 1054, baseType: !904, size: 64, offset: 10752)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !227, line: 55, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !226, file: !227, line: 1056, baseType: !907, size: 64, offset: 10816)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 40, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !226, file: !227, line: 1058, baseType: !910, size: 64, offset: 10880)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !227, line: 47, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !226, file: !227, line: 1061, baseType: !913, size: 64, offset: 10944)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !227, line: 43, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !226, file: !227, line: 1064, baseType: !96, size: 64, offset: 11008)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !226, file: !227, line: 1065, baseType: !917, size: 64, offset: 11072)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !862, line: 14, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !862, line: 12, size: 384, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !862, line: 13, baseType: !922, size: 384)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !862, line: 13, size: 384, elements: !923)
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !922, file: !862, line: 13, baseType: !116, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !922, file: !862, line: 13, baseType: !116, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !922, file: !862, line: 13, baseType: !116, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !922, file: !862, line: 13, baseType: !928, size: 256, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !929, line: 32, size: 256, elements: !930)
!929 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!930 = !{!931, !937, !950, !956, !966, !986, !991}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !928, file: !929, line: 37, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 34, size: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !932, file: !929, line: 35, baseType: !721, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !932, file: !929, line: 36, baseType: !936, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !360, line: 49, baseType: !5)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !928, file: !929, line: 45, baseType: !938, size: 192)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 40, size: 192, elements: !939)
!939 = !{!940, !942, !943, !949}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !938, file: !929, line: 41, baseType: !941, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !360, line: 95, baseType: !116)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !938, file: !929, line: 42, baseType: !116, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !938, file: !929, line: 43, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !929, line: 11, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !929, line: 8, size: 64, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !945, file: !929, line: 9, baseType: !116, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !945, file: !929, line: 10, baseType: !99, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !938, file: !929, line: 44, baseType: !116, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !928, file: !929, line: 52, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 48, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !951, file: !929, line: 49, baseType: !721, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !951, file: !929, line: 50, baseType: !936, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !951, file: !929, line: 51, baseType: !944, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !928, file: !929, line: 61, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 55, size: 256, elements: !958)
!958 = !{!959, !960, !961, !962, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !957, file: !929, line: 56, baseType: !721, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !957, file: !929, line: 57, baseType: !936, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !957, file: !929, line: 58, baseType: !116, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !957, file: !929, line: 59, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !360, line: 94, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !360, line: 15, baseType: !94)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !957, file: !929, line: 60, baseType: !963, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !928, file: !929, line: 95, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 64, size: 256, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !967, file: !929, line: 65, baseType: !99, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !929, line: 77, baseType: !971, size: 192, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !929, line: 77, size: 192, elements: !972)
!972 = !{!973, !974, !981}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !971, file: !929, line: 82, baseType: !581, size: 16)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !971, file: !929, line: 88, baseType: !975, size: 192)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !929, line: 84, size: 192, elements: !976)
!976 = !{!977, !979, !980}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !975, file: !929, line: 85, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !354)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !975, file: !929, line: 86, baseType: !99, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !975, file: !929, line: 87, baseType: !99, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !971, file: !929, line: 93, baseType: !982, size: 96)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !929, line: 90, size: 96, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !982, file: !929, line: 91, baseType: !978, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !982, file: !929, line: 92, baseType: !179, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !928, file: !929, line: 101, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 98, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !987, file: !929, line: 99, baseType: !94, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !987, file: !929, line: 100, baseType: !116, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !928, file: !929, line: 108, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !929, line: 104, size: 128, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !992, file: !929, line: 105, baseType: !99, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !992, file: !929, line: 106, baseType: !116, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !992, file: !929, line: 107, baseType: !5, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !226, file: !227, line: 1067, baseType: !998, offset: 11136)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !999, line: 12, elements: !208)
!999 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !226, file: !227, line: 1099, baseType: !1001, size: 64, offset: 11136)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !227, line: 56, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !226, file: !227, line: 1103, baseType: !269, size: 128, offset: 11200)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !226, file: !227, line: 1104, baseType: !1005, size: 64, offset: 11328)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !227, line: 46, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !226, file: !227, line: 1105, baseType: !549, size: 192, offset: 11392)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !226, file: !227, line: 1106, baseType: !5, size: 32, offset: 11584)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !226, file: !227, line: 1109, baseType: !1010, size: 128, offset: 11648)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 128, elements: !1013)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !227, line: 51, flags: DIFlagFwdDecl)
!1013 = !{!1014}
!1014 = !DISubrange(count: 2)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !226, file: !227, line: 1110, baseType: !549, size: 192, offset: 11776)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !226, file: !227, line: 1111, baseType: !269, size: 128, offset: 11968)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !226, file: !227, line: 1173, baseType: !1018, size: 64, offset: 12096)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1020, line: 62, size: 256, align: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022, !1023, !1024, !1029}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1019, file: !1020, line: 75, baseType: !179, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1019, file: !1020, line: 90, baseType: !179, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1019, file: !1020, line: 124, baseType: !1025, size: 64, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1019, file: !1020, line: 109, size: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1025, file: !1020, line: 110, baseType: !277, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1025, file: !1020, line: 112, baseType: !277, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1019, file: !1020, line: 144, baseType: !179, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !226, file: !227, line: 1174, baseType: !178, size: 32, offset: 12160)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !226, file: !227, line: 1179, baseType: !96, size: 64, offset: 12224)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !226, file: !227, line: 1182, baseType: !1033, size: 128, offset: 12288)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !527, line: 76, size: 128, elements: !1034)
!1034 = !{!1035, !1040, !1041}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1033, file: !527, line: 85, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1037, line: 7, size: 64, elements: !1038)
!1037 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1036, file: !1037, line: 12, baseType: !395, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1033, file: !527, line: 88, baseType: !619, size: 8, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1033, file: !527, line: 95, baseType: !619, size: 8, offset: 72)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !227, line: 1184, baseType: !1043, size: 128, offset: 12416)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 1184, size: 128, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1043, file: !227, line: 1185, baseType: !239, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1043, file: !227, line: 1186, baseType: !759, size: 128, align: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !226, file: !227, line: 1190, baseType: !1048, size: 64, offset: 12544)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !227, line: 53, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !226, file: !227, line: 1192, baseType: !1051, size: 128, offset: 12608)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !527, line: 64, size: 128, elements: !1052)
!1052 = !{!1053, !1146, !1147}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1051, file: !527, line: 65, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !408, line: 68, size: 512, align: 128, elements: !1056)
!1056 = !{!1057, !1058, !1138, !1145}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !408, line: 69, baseType: !96, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !408, line: 77, baseType: !1059, size: 320, offset: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1055, file: !408, line: 77, size: 320, elements: !1060)
!1060 = !{!1061, !1070, !1075, !1103, !1111, !1117, !1130, !1137}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 78, baseType: !1062, size: 320)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 78, size: 320, elements: !1063)
!1063 = !{!1064, !1065, !1068, !1069}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1062, file: !408, line: 84, baseType: !269, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1062, file: !408, line: 86, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !408, line: 26, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1062, file: !408, line: 87, baseType: !96, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1062, file: !408, line: 94, baseType: !96, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 96, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 96, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1071, file: !408, line: 101, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !98, line: 143, baseType: !276)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 103, baseType: !1076, size: 320)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 103, size: 320, elements: !1077)
!1077 = !{!1078, !1088, !1091, !1092}
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !408, line: 104, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !408, line: 104, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1079, file: !408, line: 105, baseType: !269, size: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !408, line: 106, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !408, line: 106, size: 128, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1083, file: !408, line: 107, baseType: !1054, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1083, file: !408, line: 109, baseType: !116, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1083, file: !408, line: 110, baseType: !116, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1076, file: !408, line: 117, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !408, line: 117, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1076, file: !408, line: 119, baseType: !99, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !408, line: 120, baseType: !1093, size: 64, offset: 256)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !408, line: 120, size: 64, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1093, file: !408, line: 121, baseType: !99, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1093, file: !408, line: 122, baseType: !96, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !408, line: 123, baseType: !1098, size: 32)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !408, line: 123, size: 32, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1098, file: !408, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1098, file: !408, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1098, file: !408, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 130, baseType: !1104, size: 192)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 130, size: 192, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1104, file: !408, line: 131, baseType: !96, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1104, file: !408, line: 134, baseType: !104, size: 8, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1104, file: !408, line: 135, baseType: !104, size: 8, offset: 72)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1104, file: !408, line: 136, baseType: !244, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1104, file: !408, line: 137, baseType: !5, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 139, baseType: !1112, size: 256)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 139, size: 256, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1112, file: !408, line: 140, baseType: !96, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1112, file: !408, line: 141, baseType: !244, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1112, file: !408, line: 143, baseType: !269, size: 128, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 145, baseType: !1118, size: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 145, size: 256, elements: !1119)
!1119 = !{!1120, !1121, !1123, !1124, !1129}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1118, file: !408, line: 146, baseType: !96, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1118, file: !408, line: 147, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !426, line: 509, baseType: !1054)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1118, file: !408, line: 148, baseType: !96, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !408, line: 149, baseType: !1125, size: 64, offset: 192)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !408, line: 149, size: 64, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1125, file: !408, line: 150, baseType: !406, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1125, file: !408, line: 151, baseType: !244, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1118, file: !408, line: 156, baseType: !484, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !408, line: 159, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !408, line: 159, size: 128, elements: !1132)
!1132 = !{!1133, !1136}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1131, file: !408, line: 161, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !408, line: 161, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1131, file: !408, line: 162, baseType: !99, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1059, file: !408, line: 176, baseType: !759, size: 128, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !408, line: 179, baseType: !1139, size: 32, offset: 384)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1055, file: !408, line: 179, size: 32, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1139, file: !408, line: 184, baseType: !244, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1139, file: !408, line: 192, baseType: !5, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1139, file: !408, line: 194, baseType: !5, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1139, file: !408, line: 195, baseType: !116, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1055, file: !408, line: 199, baseType: !244, size: 32, offset: 416)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1051, file: !527, line: 67, baseType: !179, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !527, line: 68, baseType: !179, size: 32, offset: 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !226, file: !227, line: 1206, baseType: !116, size: 32, offset: 12736)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !226, file: !227, line: 1207, baseType: !116, size: 32, offset: 12768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !226, file: !227, line: 1209, baseType: !96, size: 64, offset: 12800)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !226, file: !227, line: 1219, baseType: !276, size: 64, offset: 12864)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !226, file: !227, line: 1220, baseType: !276, size: 64, offset: 12928)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !226, file: !227, line: 1317, baseType: !116, size: 32, offset: 12992)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !226, file: !227, line: 1319, baseType: !225, size: 64, offset: 13056)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !226, file: !227, line: 1322, baseType: !1156, size: 64, offset: 13120)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1158, line: 56, size: 512, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1166, !1167, !1169}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !1158, line: 57, baseType: !1156, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1157, file: !1158, line: 58, baseType: !99, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1157, file: !1158, line: 59, baseType: !96, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !1158, line: 60, baseType: !96, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1157, file: !1158, line: 61, baseType: !1165, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1157, file: !1158, line: 62, baseType: !5, size: 32, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1157, file: !1158, line: 63, baseType: !1168, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !98, line: 153, baseType: !276)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1157, file: !1158, line: 64, baseType: !1170, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !226, file: !227, line: 1326, baseType: !239, size: 32, offset: 13184)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !226, file: !227, line: 1342, baseType: !99, size: 64, offset: 13248)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !226, file: !227, line: 1343, baseType: !277, size: 64, offset: 13312)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !226, file: !227, line: 1344, baseType: !276, size: 64, offset: 13376)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !226, file: !227, line: 1345, baseType: !277, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !226, file: !227, line: 1346, baseType: !277, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !226, file: !227, line: 1347, baseType: !277, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !226, file: !227, line: 1348, baseType: !759, size: 128, align: 64, offset: 13504)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !226, file: !227, line: 1358, baseType: !1181, size: 34816, offset: 13824)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1182, line: 485, size: 34816, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1213, !1214, !1215, !1216, !1217, !1218, !1221, !1222, !1223}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1181, file: !1182, line: 487, baseType: !1185, size: 192)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 192, elements: !809)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1187, line: 16, size: 64, elements: !1188)
!1187 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1186, file: !1187, line: 17, baseType: !163, size: 16)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1186, file: !1187, line: 18, baseType: !163, size: 16, offset: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1186, file: !1187, line: 19, baseType: !163, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1186, file: !1187, line: 19, baseType: !163, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1186, file: !1187, line: 19, baseType: !163, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1186, file: !1187, line: 19, baseType: !163, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1186, file: !1187, line: 19, baseType: !163, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1186, file: !1187, line: 20, baseType: !163, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1186, file: !1187, line: 20, baseType: !163, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1186, file: !1187, line: 20, baseType: !163, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1186, file: !1187, line: 20, baseType: !163, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1186, file: !1187, line: 20, baseType: !163, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1186, file: !1187, line: 20, baseType: !163, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1181, file: !1182, line: 491, baseType: !96, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1181, file: !1182, line: 495, baseType: !123, size: 16, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1181, file: !1182, line: 496, baseType: !123, size: 16, offset: 272)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1181, file: !1182, line: 497, baseType: !123, size: 16, offset: 288)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1181, file: !1182, line: 498, baseType: !123, size: 16, offset: 304)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1181, file: !1182, line: 502, baseType: !96, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1181, file: !1182, line: 503, baseType: !96, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1181, file: !1182, line: 514, baseType: !1210, size: 256, offset: 448)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 256, elements: !531)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1182, line: 483, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1181, file: !1182, line: 516, baseType: !96, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1181, file: !1182, line: 518, baseType: !96, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1181, file: !1182, line: 520, baseType: !96, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1181, file: !1182, line: 521, baseType: !96, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1181, file: !1182, line: 522, baseType: !96, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1181, file: !1182, line: 528, baseType: !1219, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1182, line: 10, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1181, file: !1182, line: 535, baseType: !96, size: 64, offset: 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1181, file: !1182, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1181, file: !1182, line: 540, baseType: !1224, size: 33280, offset: 1536)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1225, line: 317, size: 33280, elements: !1226)
!1225 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1224, file: !1225, line: 330, baseType: !5, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1224, file: !1225, line: 337, baseType: !96, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1224, file: !1225, line: 348, baseType: !1230, size: 32768, offset: 512)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1225, line: 304, size: 32768, elements: !1231)
!1231 = !{!1232, !1245, !1286, !1336, !1353}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1230, file: !1225, line: 305, baseType: !1233, size: 896)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1225, line: 12, size: 896, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1244}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1233, file: !1225, line: 13, baseType: !178, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1233, file: !1225, line: 14, baseType: !178, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1233, file: !1225, line: 15, baseType: !178, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1233, file: !1225, line: 16, baseType: !178, size: 32, offset: 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1233, file: !1225, line: 17, baseType: !178, size: 32, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1233, file: !1225, line: 18, baseType: !178, size: 32, offset: 160)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1233, file: !1225, line: 19, baseType: !178, size: 32, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1233, file: !1225, line: 22, baseType: !1243, size: 640, offset: 224)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 640, elements: !128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1233, file: !1225, line: 25, baseType: !178, size: 32, offset: 864)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1230, file: !1225, line: 306, baseType: !1246, size: 4096, align: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1225, line: 34, size: 4096, align: 128, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1267, !1268, !1269, !1273, !1277, !1281}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1246, file: !1225, line: 35, baseType: !163, size: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1246, file: !1225, line: 36, baseType: !163, size: 16, offset: 16)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1246, file: !1225, line: 37, baseType: !163, size: 16, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1246, file: !1225, line: 38, baseType: !163, size: 16, offset: 48)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1225, line: 39, baseType: !1253, size: 128, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1225, line: 39, size: 128, elements: !1254)
!1254 = !{!1255, !1260}
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1225, line: 40, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !1225, line: 40, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1256, file: !1225, line: 41, baseType: !276, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1256, file: !1225, line: 42, baseType: !276, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1225, line: 44, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !1225, line: 44, size: 128, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1261, file: !1225, line: 45, baseType: !178, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1261, file: !1225, line: 46, baseType: !178, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1261, file: !1225, line: 47, baseType: !178, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1261, file: !1225, line: 48, baseType: !178, size: 32, offset: 96)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1246, file: !1225, line: 51, baseType: !178, size: 32, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1246, file: !1225, line: 52, baseType: !178, size: 32, offset: 224)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1246, file: !1225, line: 55, baseType: !1270, size: 1024, offset: 256)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 1024, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1246, file: !1225, line: 58, baseType: !1274, size: 2048, offset: 1280)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 2048, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1246, file: !1225, line: 60, baseType: !1278, size: 384, offset: 3328)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 384, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 12)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1225, line: 62, baseType: !1282, size: 384, offset: 3712)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !1225, line: 62, size: 384, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1282, file: !1225, line: 63, baseType: !1278, size: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1282, file: !1225, line: 64, baseType: !1278, size: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1230, file: !1225, line: 307, baseType: !1287, size: 1088)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1225, line: 79, size: 1088, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1335}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1287, file: !1225, line: 80, baseType: !178, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1287, file: !1225, line: 81, baseType: !178, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1287, file: !1225, line: 82, baseType: !178, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1287, file: !1225, line: 83, baseType: !178, size: 32, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1287, file: !1225, line: 84, baseType: !178, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1287, file: !1225, line: 85, baseType: !178, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1287, file: !1225, line: 86, baseType: !178, size: 32, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1287, file: !1225, line: 88, baseType: !1243, size: 640, offset: 224)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1287, file: !1225, line: 89, baseType: !100, size: 8, offset: 864)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1287, file: !1225, line: 90, baseType: !100, size: 8, offset: 872)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1287, file: !1225, line: 91, baseType: !100, size: 8, offset: 880)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1287, file: !1225, line: 92, baseType: !100, size: 8, offset: 888)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1287, file: !1225, line: 93, baseType: !100, size: 8, offset: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1287, file: !1225, line: 94, baseType: !100, size: 8, offset: 904)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1287, file: !1225, line: 95, baseType: !1304, size: 64, offset: 960)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1306, line: 11, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1305, file: !1306, line: 12, baseType: !94, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1305, file: !1306, line: 13, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1312, line: 56, size: 1344, elements: !1313)
!1312 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1311, file: !1312, line: 61, baseType: !96, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1311, file: !1312, line: 62, baseType: !96, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1311, file: !1312, line: 63, baseType: !96, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1311, file: !1312, line: 64, baseType: !96, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1311, file: !1312, line: 65, baseType: !96, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1311, file: !1312, line: 66, baseType: !96, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1311, file: !1312, line: 68, baseType: !96, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1311, file: !1312, line: 69, baseType: !96, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1311, file: !1312, line: 70, baseType: !96, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1311, file: !1312, line: 71, baseType: !96, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1311, file: !1312, line: 72, baseType: !96, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1311, file: !1312, line: 73, baseType: !96, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1311, file: !1312, line: 74, baseType: !96, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1311, file: !1312, line: 75, baseType: !96, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1311, file: !1312, line: 76, baseType: !96, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1311, file: !1312, line: 81, baseType: !96, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1311, file: !1312, line: 83, baseType: !96, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1311, file: !1312, line: 84, baseType: !96, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !1312, line: 85, baseType: !96, size: 64, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1311, file: !1312, line: 86, baseType: !96, size: 64, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1311, file: !1312, line: 87, baseType: !96, size: 64, offset: 1280)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1287, file: !1225, line: 96, baseType: !178, size: 32, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1230, file: !1225, line: 308, baseType: !1337, size: 4608, align: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1225, line: 289, size: 4608, align: 512, elements: !1338)
!1338 = !{!1339, !1340, !1349}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1337, file: !1225, line: 290, baseType: !1246, size: 4096, align: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1337, file: !1225, line: 291, baseType: !1341, size: 512, offset: 4096)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1225, line: 268, size: 512, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1341, file: !1225, line: 269, baseType: !276, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1341, file: !1225, line: 270, baseType: !276, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1341, file: !1225, line: 271, baseType: !1346, size: 384, offset: 128)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 384, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 6)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1337, file: !1225, line: 292, baseType: !1350, offset: 4608)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 0)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1230, file: !1225, line: 309, baseType: !1354, size: 32768)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32768, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 4096)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !132, file: !120, line: 704, baseType: !196, size: 192, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !132, file: !120, line: 706, baseType: !116, size: 32, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !132, file: !120, line: 707, baseType: !116, size: 32, offset: 736)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !132, file: !120, line: 708, baseType: !1361, size: 5568, offset: 768)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !1362)
!1362 = !{!1363, !1696, !1698, !1701, !1702, !1753, !1847, !1848, !1849, !1850, !1851, !1860, !1965, !1978, !2173, !2174, !2178, !2180, !2181, !2182, !2186, !2192, !2193, !2196, !2197, !2198, !2201, !2202, !2203, !2204, !2236, !2237, !2238, !2241, !2244, !2245, !2246, !2247}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1361, file: !28, line: 462, baseType: !1364, size: 512)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1365, line: 64, size: 512, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1370, !1371, !1373, !1414, !1533, !1686, !1691, !1692, !1693, !1694, !1695}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1364, file: !1365, line: 65, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1364, file: !1365, line: 66, baseType: !269, size: 128, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1364, file: !1365, line: 67, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1364, file: !1365, line: 68, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1365, line: 192, size: 704, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1375, file: !1365, line: 193, baseType: !269, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1375, file: !1365, line: 194, baseType: !484, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1375, file: !1365, line: 195, baseType: !1364, size: 512, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1375, file: !1365, line: 196, baseType: !1381, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1365, line: 156, size: 192, elements: !1384)
!1384 = !{!1385, !1390, !1395}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1383, file: !1365, line: 157, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!116, !1374, !1372}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !1365, line: 158, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1368, !1374, !1372}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1383, file: !1365, line: 159, baseType: !1396, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!116, !1374, !1372, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1365, line: 148, size: 20736, elements: !1402)
!1402 = !{!1403, !1406, !1408, !1409, !1413}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1401, file: !1365, line: 149, baseType: !1404, size: 192)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 192, elements: !809)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1401, file: !1365, line: 150, baseType: !1407, size: 4096, offset: 192)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 4096, elements: !1275)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1401, file: !1365, line: 151, baseType: !116, size: 32, offset: 4288)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1401, file: !1365, line: 152, baseType: !1410, size: 16384, offset: 4320)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 2048)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1401, file: !1365, line: 153, baseType: !116, size: 32, offset: 20704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1364, file: !1365, line: 69, baseType: !1415, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1365, line: 138, size: 448, elements: !1417)
!1417 = !{!1418, !1422, !1444, !1446, !1481, !1512, !1516}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1416, file: !1365, line: 139, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1372}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1416, file: !1365, line: 140, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1426, line: 230, size: 128, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1440}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1425, file: !1426, line: 231, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !1372, !1434, !1405}
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 60, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !360, line: 73, baseType: !964)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1426, line: 30, size: 128, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1435, file: !1426, line: 31, baseType: !1368, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1435, file: !1426, line: 32, baseType: !1439, size: 16, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !98, line: 19, baseType: !123)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1425, file: !1426, line: 232, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1432, !1372, !1434, !1368, !868}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1416, file: !1365, line: 141, baseType: !1445, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1416, file: !1365, line: 142, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1426, line: 84, size: 320, elements: !1451)
!1451 = !{!1452, !1453, !1457, !1478, !1479}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1450, file: !1426, line: 85, baseType: !1368, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1450, file: !1426, line: 86, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1439, !1372, !1434, !116}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1450, file: !1426, line: 88, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1439, !1372, !1461, !116}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1426, line: 168, size: 448, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1473, !1474}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1462, file: !1426, line: 169, baseType: !1435, size: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1462, file: !1426, line: 170, baseType: !868, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1462, file: !1426, line: 171, baseType: !99, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1462, file: !1426, line: 172, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1432, !448, !1372, !1461, !1405, !1471, !868}
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !98, line: 46, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !360, line: 88, baseType: !308)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1462, file: !1426, line: 174, baseType: !1468, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1462, file: !1426, line: 176, baseType: !1475, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!116, !448, !1372, !1461, !414}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1450, file: !1426, line: 90, baseType: !1445, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1450, file: !1426, line: 91, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1416, file: !1365, line: 143, baseType: !1482, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1485, !1372}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1488)
!1488 = !{!1489, !1490, !1494, !1498, !1504, !1508}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !16, line: 40, baseType: !15, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1487, file: !16, line: 41, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!619}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1487, file: !16, line: 42, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!99}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1487, file: !16, line: 43, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1170, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1487, file: !16, line: 44, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1170}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1487, file: !16, line: 45, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !99}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1416, file: !1365, line: 144, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1170, !1372}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1416, file: !1365, line: 145, baseType: !1517, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1372, !1520, !1526}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !612, line: 23, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 21, size: 32, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1522, file: !612, line: 22, baseType: !1525, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !98, line: 32, baseType: !936)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !612, line: 28, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !612, line: 26, size: 32, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1528, file: !612, line: 27, baseType: !1531, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !98, line: 33, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !360, line: 50, baseType: !5)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1364, file: !1365, line: 70, baseType: !1534, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1536, line: 123, size: 1024, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1679, !1680, !1681, !1682, !1683}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1535, file: !1536, line: 124, baseType: !244, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1535, file: !1536, line: 125, baseType: !244, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1535, file: !1536, line: 135, baseType: !1534, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1535, file: !1536, line: 136, baseType: !1368, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1535, file: !1536, line: 138, baseType: !218, size: 192, align: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1535, file: !1536, line: 140, baseType: !1170, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1535, file: !1536, line: 141, baseType: !5, size: 32, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 142, baseType: !1546, size: 256, offset: 512)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 142, size: 256, elements: !1547)
!1547 = !{!1548, !1602, !1606}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1546, file: !1536, line: 143, baseType: !1549, size: 192)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1536, line: 91, size: 192, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1549, file: !1536, line: 92, baseType: !96, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1549, file: !1536, line: 94, baseType: !214, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1549, file: !1536, line: 100, baseType: !1554, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1536, line: 180, size: 704, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1572, !1573, !1574, !1600, !1601}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1555, file: !1536, line: 182, baseType: !1534, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !1536, line: 183, baseType: !5, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1555, file: !1536, line: 186, baseType: !1560, size: 192, offset: 128)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1561, line: 19, size: 192, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1570, !1571}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1560, file: !1561, line: 20, baseType: !1564, size: 128)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1565, line: 292, size: 128, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1564, file: !1565, line: 293, baseType: !484)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1564, file: !1565, line: 295, baseType: !97, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1564, file: !1565, line: 296, baseType: !99, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1560, file: !1561, line: 21, baseType: !5, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1560, file: !1561, line: 22, baseType: !5, size: 32, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1555, file: !1536, line: 187, baseType: !178, size: 32, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1555, file: !1536, line: 188, baseType: !178, size: 32, offset: 352)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1555, file: !1536, line: 189, baseType: !1575, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1536, line: 168, size: 320, elements: !1577)
!1577 = !{!1578, !1584, !1588, !1592, !1596}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1576, file: !1536, line: 169, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!116, !1582, !1554}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !426, line: 539, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1576, file: !1536, line: 171, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!116, !1534, !1368, !1439}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1576, file: !1536, line: 173, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!116, !1534}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1576, file: !1536, line: 174, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!116, !1534, !1534, !1368}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1576, file: !1536, line: 176, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!116, !1582, !1534, !1554}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1555, file: !1536, line: 192, baseType: !269, size: 128, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1555, file: !1536, line: 194, baseType: !752, size: 128, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1546, file: !1536, line: 144, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1536, line: 103, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1603, file: !1536, line: 104, baseType: !1534, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1546, file: !1536, line: 145, baseType: !1607, size: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1536, line: 107, size: 256, elements: !1608)
!1608 = !{!1609, !1674, !1677, !1678}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1607, file: !1536, line: 108, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1536, line: 217, size: 768, elements: !1613)
!1613 = !{!1614, !1634, !1638, !1642, !1647, !1651, !1655, !1659, !1660, !1661, !1662, !1670}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1612, file: !1536, line: 222, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!116, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1536, line: 197, size: 1088, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1619, file: !1536, line: 199, baseType: !1534, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1619, file: !1536, line: 200, baseType: !448, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1619, file: !1536, line: 201, baseType: !1582, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1619, file: !1536, line: 202, baseType: !99, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1619, file: !1536, line: 205, baseType: !549, size: 192, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1619, file: !1536, line: 206, baseType: !549, size: 192, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1619, file: !1536, line: 207, baseType: !116, size: 32, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1619, file: !1536, line: 208, baseType: !269, size: 128, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1619, file: !1536, line: 209, baseType: !1405, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1619, file: !1536, line: 211, baseType: !868, size: 64, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1619, file: !1536, line: 212, baseType: !619, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1619, file: !1536, line: 213, baseType: !619, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1619, file: !1536, line: 214, baseType: !443, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1612, file: !1536, line: 223, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1618}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1612, file: !1536, line: 236, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!116, !1582, !99}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1612, file: !1536, line: 238, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!99, !1582, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1612, file: !1536, line: 239, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!99, !1582, !99, !1646}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1612, file: !1536, line: 240, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1582, !99}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1612, file: !1536, line: 242, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1432, !1618, !1405, !868, !1471}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1612, file: !1536, line: 252, baseType: !868, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1612, file: !1536, line: 259, baseType: !619, size: 8, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1612, file: !1536, line: 260, baseType: !1656, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1612, file: !1536, line: 263, baseType: !1663, size: 64, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1618, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1667, line: 52, baseType: !5)
!1667 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1536, line: 27, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1612, file: !1536, line: 266, baseType: !1671, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!116, !1618, !414}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1607, file: !1536, line: 109, baseType: !1675, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1536, line: 31, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1607, file: !1536, line: 110, baseType: !1471, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1607, file: !1536, line: 111, baseType: !1534, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1535, file: !1536, line: 148, baseType: !99, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1535, file: !1536, line: 154, baseType: !276, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 156, baseType: !123, size: 16, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1535, file: !1536, line: 157, baseType: !1439, size: 16, offset: 912)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1535, file: !1536, line: 158, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1536, line: 32, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1364, file: !1365, line: 71, baseType: !1687, size: 32, offset: 448)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1688, line: 19, size: 32, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1687, file: !1688, line: 20, baseType: !239, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1364, file: !1365, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1364, file: !1365, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1364, file: !1365, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1364, file: !1365, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1364, file: !1365, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1361, file: !28, line: 463, baseType: !1697, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1361, file: !28, line: 465, baseType: !1699, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1361, file: !28, line: 467, baseType: !1368, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1361, file: !28, line: 468, baseType: !1703, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1713, !1718, !1722}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !28, line: 88, baseType: !1368, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1705, file: !28, line: 89, baseType: !1447, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1705, file: !28, line: 90, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!116, !1697, !1400}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1705, file: !28, line: 91, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1405, !1697, !1717, !1520, !1526}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1705, file: !28, line: 93, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1697}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1705, file: !28, line: 95, baseType: !1723, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1726)
!1726 = !{!1727, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1725, file: !35, line: 279, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!116, !1697}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1725, file: !35, line: 280, baseType: !1719, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1725, file: !35, line: 281, baseType: !1728, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1725, file: !35, line: 282, baseType: !1728, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1725, file: !35, line: 283, baseType: !1728, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1725, file: !35, line: 284, baseType: !1728, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1725, file: !35, line: 285, baseType: !1728, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1725, file: !35, line: 286, baseType: !1728, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1725, file: !35, line: 287, baseType: !1728, size: 64, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1725, file: !35, line: 288, baseType: !1728, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1725, file: !35, line: 289, baseType: !1728, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1725, file: !35, line: 290, baseType: !1728, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1725, file: !35, line: 291, baseType: !1728, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1725, file: !35, line: 292, baseType: !1728, size: 64, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1725, file: !35, line: 293, baseType: !1728, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1725, file: !35, line: 294, baseType: !1728, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1725, file: !35, line: 295, baseType: !1728, size: 64, offset: 1024)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1725, file: !35, line: 296, baseType: !1728, size: 64, offset: 1088)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1725, file: !35, line: 297, baseType: !1728, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1725, file: !35, line: 298, baseType: !1728, size: 64, offset: 1216)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1725, file: !35, line: 299, baseType: !1728, size: 64, offset: 1280)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1725, file: !35, line: 300, baseType: !1728, size: 64, offset: 1344)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1725, file: !35, line: 301, baseType: !1728, size: 64, offset: 1408)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1361, file: !28, line: 470, baseType: !1754, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1756, line: 82, size: 1408, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1840, !1843, !1846}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1755, file: !1756, line: 83, baseType: !1368, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1755, file: !1756, line: 84, baseType: !1368, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1755, file: !1756, line: 85, baseType: !1697, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1755, file: !1756, line: 86, baseType: !1447, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1755, file: !1756, line: 87, baseType: !1447, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1755, file: !1756, line: 88, baseType: !1447, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1755, file: !1756, line: 90, baseType: !1765, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!116, !1697, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1791, !1804, !1805, !1806, !1807, !1808, !1816, !1817, !1818, !1819, !1820, !1821}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1769, file: !22, line: 96, baseType: !1368, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1769, file: !22, line: 97, baseType: !1754, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1769, file: !22, line: 99, baseType: !135, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1769, file: !22, line: 100, baseType: !1368, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1769, file: !22, line: 102, baseType: !619, size: 8, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1769, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1769, file: !22, line: 105, baseType: !1778, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1781, line: 262, size: 1600, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1785, !1786, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !1781, line: 263, baseType: !1784, size: 256)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1271)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !1781, line: 264, baseType: !1784, size: 256, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1780, file: !1781, line: 265, baseType: !1787, size: 1024, offset: 512)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1780, file: !1781, line: 266, baseType: !1170, size: 64, offset: 1536)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1769, file: !22, line: 106, baseType: !1792, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1781, line: 210, size: 256, elements: !1795)
!1795 = !{!1796, !1800, !1802, !1803}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1794, file: !1781, line: 211, baseType: !1797, size: 72)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 72, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 9)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1794, file: !1781, line: 212, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1781, line: 14, baseType: !96)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1794, file: !1781, line: 213, baseType: !179, size: 32, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1794, file: !1781, line: 214, baseType: !179, size: 32, offset: 224)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1769, file: !22, line: 108, baseType: !1728, size: 64, offset: 448)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1769, file: !22, line: 109, baseType: !1719, size: 64, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1769, file: !22, line: 110, baseType: !1728, size: 64, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1769, file: !22, line: 111, baseType: !1719, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1769, file: !22, line: 112, baseType: !1809, size: 64, offset: 704)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!116, !1697, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1813, file: !35, line: 51, baseType: !116, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1769, file: !22, line: 113, baseType: !1728, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1769, file: !22, line: 114, baseType: !1447, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1769, file: !22, line: 115, baseType: !1447, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1769, file: !22, line: 117, baseType: !1723, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1769, file: !22, line: 118, baseType: !1719, size: 64, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1769, file: !22, line: 120, baseType: !1822, size: 64, offset: 1088)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1755, file: !1756, line: 91, baseType: !1710, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1755, file: !1756, line: 92, baseType: !1728, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1755, file: !1756, line: 93, baseType: !1719, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1755, file: !1756, line: 94, baseType: !1728, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1755, file: !1756, line: 95, baseType: !1719, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1755, file: !1756, line: 97, baseType: !1728, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1755, file: !1756, line: 98, baseType: !1728, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1755, file: !1756, line: 100, baseType: !1809, size: 64, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1755, file: !1756, line: 101, baseType: !1728, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1755, file: !1756, line: 103, baseType: !1728, size: 64, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1755, file: !1756, line: 105, baseType: !1728, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1755, file: !1756, line: 107, baseType: !1723, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1755, file: !1756, line: 109, baseType: !1837, size: 64, offset: 1216)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1756, line: 109, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1755, file: !1756, line: 111, baseType: !1841, size: 64, offset: 1280)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1756, line: 111, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1755, file: !1756, line: 112, baseType: !1844, offset: 1344)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1845, line: 187, elements: !208)
!1845 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1755, file: !1756, line: 114, baseType: !619, size: 8, offset: 1344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1361, file: !28, line: 471, baseType: !1768, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1361, file: !28, line: 473, baseType: !99, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1361, file: !28, line: 475, baseType: !99, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1361, file: !28, line: 480, baseType: !549, size: 192, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1361, file: !28, line: 484, baseType: !1852, size: 576, offset: 1216)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1852, file: !28, line: 362, baseType: !269, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1852, file: !28, line: 363, baseType: !269, size: 128, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1852, file: !28, line: 364, baseType: !269, size: 128, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1852, file: !28, line: 365, baseType: !269, size: 128, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1852, file: !28, line: 366, baseType: !619, size: 8, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1852, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1361, file: !28, line: 485, baseType: !1861, size: 2304, offset: 1792)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1958, !1962}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1861, file: !35, line: 566, baseType: !1812, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1861, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1861, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1861, file: !35, line: 569, baseType: !619, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1861, file: !35, line: 570, baseType: !619, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1861, file: !35, line: 571, baseType: !619, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1861, file: !35, line: 572, baseType: !619, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1861, file: !35, line: 573, baseType: !619, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1861, file: !35, line: 574, baseType: !619, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1861, file: !35, line: 575, baseType: !619, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1861, file: !35, line: 576, baseType: !619, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1861, file: !35, line: 577, baseType: !178, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !35, line: 578, baseType: !484, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1861, file: !35, line: 580, baseType: !269, size: 128, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1861, file: !35, line: 581, baseType: !595, size: 192, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1861, file: !35, line: 582, baseType: !1879, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1881, line: 43, size: 1472, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1890, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !1881, line: 44, baseType: !1368, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1880, file: !1881, line: 45, baseType: !116, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1880, file: !1881, line: 46, baseType: !269, size: 128, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1880, file: !1881, line: 47, baseType: !484, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1880, file: !1881, line: 48, baseType: !1888, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1880, file: !1881, line: 49, baseType: !1891, size: 320, offset: 320)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1892, line: 11, size: 320, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1896, !1901}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1891, file: !1892, line: 16, baseType: !745, size: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1891, file: !1892, line: 17, baseType: !96, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1891, file: !1892, line: 18, baseType: !1897, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !1892, line: 19, baseType: !178, size: 32, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1880, file: !1881, line: 50, baseType: !96, size: 64, offset: 640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1880, file: !1881, line: 51, baseType: !324, size: 64, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1880, file: !1881, line: 52, baseType: !324, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1880, file: !1881, line: 53, baseType: !324, size: 64, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1880, file: !1881, line: 54, baseType: !324, size: 64, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1880, file: !1881, line: 55, baseType: !324, size: 64, offset: 960)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1880, file: !1881, line: 56, baseType: !96, size: 64, offset: 1024)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1880, file: !1881, line: 57, baseType: !96, size: 64, offset: 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1880, file: !1881, line: 58, baseType: !96, size: 64, offset: 1152)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1880, file: !1881, line: 59, baseType: !96, size: 64, offset: 1216)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1880, file: !1881, line: 60, baseType: !96, size: 64, offset: 1280)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1880, file: !1881, line: 61, baseType: !1697, size: 64, offset: 1344)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1880, file: !1881, line: 62, baseType: !619, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1880, file: !1881, line: 63, baseType: !619, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1861, file: !35, line: 583, baseType: !619, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1861, file: !35, line: 584, baseType: !619, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1861, file: !35, line: 585, baseType: !619, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1861, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1861, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1861, file: !35, line: 592, baseType: !316, size: 512, offset: 576)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1861, file: !35, line: 593, baseType: !276, size: 64, offset: 1088)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1861, file: !35, line: 594, baseType: !625, size: 256, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1861, file: !35, line: 595, baseType: !752, size: 128, offset: 1408)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1861, file: !35, line: 596, baseType: !1888, size: 64, offset: 1536)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1861, file: !35, line: 597, baseType: !244, size: 32, offset: 1600)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1861, file: !35, line: 598, baseType: !244, size: 32, offset: 1632)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1861, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1861, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1861, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1861, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1861, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1861, file: !35, line: 604, baseType: !619, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1861, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1861, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1861, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1861, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1861, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1861, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1861, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1861, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1861, file: !35, line: 613, baseType: !116, size: 32, offset: 1792)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1861, file: !35, line: 614, baseType: !116, size: 32, offset: 1824)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1861, file: !35, line: 615, baseType: !276, size: 64, offset: 1856)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1861, file: !35, line: 616, baseType: !276, size: 64, offset: 1920)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1861, file: !35, line: 617, baseType: !276, size: 64, offset: 1984)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1861, file: !35, line: 618, baseType: !276, size: 64, offset: 2048)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1861, file: !35, line: 620, baseType: !1949, size: 64, offset: 2112)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1950, file: !35, line: 537, baseType: !484)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1950, file: !35, line: 538, baseType: !5, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1950, file: !35, line: 540, baseType: !269, size: 128, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1950, file: !35, line: 543, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1861, file: !35, line: 621, baseType: !1959, size: 64, offset: 2176)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1697, !114}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1861, file: !35, line: 622, baseType: !1963, size: 64, offset: 2240)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1361, file: !28, line: 486, baseType: !1966, size: 64, offset: 4096)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1975, !1976, !1977}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1967, file: !35, line: 643, baseType: !1725, size: 1472)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1967, file: !35, line: 644, baseType: !1728, size: 64, offset: 1472)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1967, file: !35, line: 645, baseType: !1972, size: 64, offset: 1536)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1697, !619}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1967, file: !35, line: 646, baseType: !1728, size: 64, offset: 1600)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1967, file: !35, line: 647, baseType: !1719, size: 64, offset: 1664)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1967, file: !35, line: 648, baseType: !1719, size: 64, offset: 1728)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1361, file: !28, line: 493, baseType: !1979, size: 64, offset: 4160)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !49, line: 162, size: 1088, elements: !1981)
!1981 = !{!1982, !1983, !1984, !2157, !2158, !2159, !2160, !2161, !2162, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1980, file: !49, line: 163, baseType: !269, size: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !49, line: 164, baseType: !1368, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1980, file: !49, line: 165, baseType: !1985, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !49, line: 105, size: 640, elements: !1988)
!1988 = !{!1989, !2107, !2118, !2123, !2127, !2134, !2138, !2142, !2149, !2153}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1987, file: !49, line: 106, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!116, !1979, !1993, !48}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1995, line: 51, size: 1344, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998, !2000, !2001, !2091, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !1995, line: 52, baseType: !1368, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1994, file: !1995, line: 53, baseType: !1999, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1995, line: 28, baseType: !178)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1994, file: !1995, line: 54, baseType: !1368, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1994, file: !1995, line: 55, baseType: !2002, size: 192, offset: 192)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2003, line: 17, size: 192, elements: !2004)
!2003 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005, !2007, !2090}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2002, file: !2003, line: 18, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2002, file: !2003, line: 19, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2003, line: 110, size: 1152, elements: !2011)
!2011 = !{!2012, !2016, !2020, !2026, !2032, !2036, !2040, !2045, !2049, !2050, !2054, !2058, !2062, !2073, !2074, !2075, !2076, !2086}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2010, file: !2003, line: 111, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2006, !2006}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2010, file: !2003, line: 112, baseType: !2017, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !2006}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2010, file: !2003, line: 113, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!619, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2010, file: !2003, line: 114, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!1170, !2024, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2010, file: !2003, line: 116, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!619, !2024, !1368}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2010, file: !2003, line: 118, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!116, !2024, !1368, !5, !99, !868}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2010, file: !2003, line: 123, baseType: !2041, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!116, !2024, !1368, !2044, !868}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2010, file: !2003, line: 126, baseType: !2046, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!1368, !2024}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2010, file: !2003, line: 127, baseType: !2046, size: 64, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2010, file: !2003, line: 128, baseType: !2051, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!2006, !2024}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2010, file: !2003, line: 130, baseType: !2055, size: 64, offset: 640)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2006, !2024, !2006}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2010, file: !2003, line: 133, baseType: !2059, size: 64, offset: 704)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2006, !2024, !1368}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2010, file: !2003, line: 135, baseType: !2063, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!116, !2024, !1368, !1368, !5, !5, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2003, line: 43, size: 640, elements: !2068)
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2067, file: !2003, line: 44, baseType: !2006, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2067, file: !2003, line: 45, baseType: !5, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2067, file: !2003, line: 46, baseType: !2072, size: 512, offset: 128)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 512, elements: !354)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2010, file: !2003, line: 140, baseType: !2055, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2010, file: !2003, line: 143, baseType: !2051, size: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2010, file: !2003, line: 145, baseType: !2013, size: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2010, file: !2003, line: 146, baseType: !2077, size: 64, offset: 1024)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!116, !2024, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2003, line: 29, size: 128, elements: !2082)
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2081, file: !2003, line: 30, baseType: !5, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2081, file: !2003, line: 31, baseType: !5, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2081, file: !2003, line: 32, baseType: !2024, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2010, file: !2003, line: 148, baseType: !2087, size: 64, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!116, !2024, !1697}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2002, file: !2003, line: 20, baseType: !1697, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1994, file: !1995, line: 57, baseType: !2092, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1995, line: 31, size: 704, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2093, file: !1995, line: 32, baseType: !1405, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2093, file: !1995, line: 33, baseType: !116, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2093, file: !1995, line: 34, baseType: !99, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2093, file: !1995, line: 35, baseType: !2092, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2093, file: !1995, line: 43, baseType: !1462, size: 448, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1994, file: !1995, line: 58, baseType: !2092, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1994, file: !1995, line: 59, baseType: !1993, size: 64, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1994, file: !1995, line: 60, baseType: !1993, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1994, file: !1995, line: 61, baseType: !1993, size: 64, offset: 640)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1994, file: !1995, line: 63, baseType: !1364, size: 512, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1994, file: !1995, line: 65, baseType: !96, size: 64, offset: 1216)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1994, file: !1995, line: 66, baseType: !99, size: 64, offset: 1280)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1987, file: !49, line: 108, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!116, !1979, !2111, !48}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !49, line: 63, size: 640, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2112, file: !49, line: 64, baseType: !2006, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2112, file: !49, line: 65, baseType: !116, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2112, file: !49, line: 66, baseType: !2117, size: 512, offset: 96)
!2117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 512, elements: !829)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1987, file: !49, line: 110, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!116, !1979, !5, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !98, line: 164, baseType: !96)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1987, file: !49, line: 111, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !1979, !5}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1987, file: !49, line: 112, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!116, !1979, !1993, !2131, !5, !95, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1987, file: !49, line: 117, baseType: !2135, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!116, !1979, !5, !5, !99}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1987, file: !49, line: 119, baseType: !2139, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1979, !5, !5}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1987, file: !49, line: 121, baseType: !2143, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!116, !1979, !2146, !619}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2148, line: 11, flags: DIFlagFwdDecl)
!2148 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1987, file: !49, line: 122, baseType: !2150, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !1979, !2146}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1987, file: !49, line: 123, baseType: !2154, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!116, !1979, !2111, !95, !2133}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1980, file: !49, line: 166, baseType: !99, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !49, line: 167, baseType: !5, size: 32, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1980, file: !49, line: 168, baseType: !5, size: 32, offset: 352)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1980, file: !49, line: 171, baseType: !2006, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1980, file: !49, line: 172, baseType: !48, size: 32, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1980, file: !49, line: 173, baseType: !2163, size: 64, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !49, line: 134, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1980, file: !49, line: 175, baseType: !1979, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1980, file: !49, line: 182, baseType: !2122, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1980, file: !49, line: 183, baseType: !5, size: 32, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1980, file: !49, line: 184, baseType: !5, size: 32, offset: 736)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1980, file: !49, line: 185, baseType: !1564, size: 128, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1980, file: !49, line: 186, baseType: !549, size: 192, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1980, file: !49, line: 187, baseType: !2172, offset: 1088)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !639)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1361, file: !28, line: 499, baseType: !269, size: 128, offset: 4224)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1361, file: !28, line: 502, baseType: !2175, size: 64, offset: 4352)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1361, file: !28, line: 504, baseType: !2179, size: 64, offset: 4416)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1361, file: !28, line: 505, baseType: !276, size: 64, offset: 4480)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1361, file: !28, line: 510, baseType: !276, size: 64, offset: 4544)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1361, file: !28, line: 511, baseType: !2183, size: 64, offset: 4608)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1361, file: !28, line: 513, baseType: !2187, size: 64, offset: 4672)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2188, file: !28, line: 293, baseType: !5, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2188, file: !28, line: 294, baseType: !96, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1361, file: !28, line: 515, baseType: !269, size: 128, offset: 4736)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1361, file: !28, line: 526, baseType: !2194, offset: 4864)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2195, line: 5, elements: !208)
!2195 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1361, file: !28, line: 528, baseType: !1993, size: 64, offset: 4864)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1361, file: !28, line: 529, baseType: !2006, size: 64, offset: 4928)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1361, file: !28, line: 534, baseType: !2199, size: 32, offset: 4992)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 16, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !98, line: 13, baseType: !178)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1361, file: !28, line: 535, baseType: !178, size: 32, offset: 5024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1361, file: !28, line: 537, baseType: !484, offset: 5056)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1361, file: !28, line: 538, baseType: !269, size: 128, offset: 5056)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1361, file: !28, line: 540, baseType: !2205, size: 64, offset: 5184)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2207, line: 54, size: 960, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2219, !2223, !2224, !2225, !2226, !2230, !2234, !2235}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2206, file: !2207, line: 55, baseType: !1368, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2206, file: !2207, line: 56, baseType: !135, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2206, file: !2207, line: 58, baseType: !1447, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2206, file: !2207, line: 59, baseType: !1447, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2206, file: !2207, line: 60, baseType: !1372, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2206, file: !2207, line: 62, baseType: !1710, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2206, file: !2207, line: 63, baseType: !2216, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1405, !1697, !1717}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2206, file: !2207, line: 65, baseType: !2220, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !2205}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2206, file: !2207, line: 66, baseType: !1719, size: 64, offset: 512)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2206, file: !2207, line: 68, baseType: !1728, size: 64, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2206, file: !2207, line: 70, baseType: !1485, size: 64, offset: 640)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2206, file: !2207, line: 71, baseType: !2227, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!1170, !1697}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2206, file: !2207, line: 73, baseType: !2231, size: 64, offset: 768)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !1697, !1520, !1526}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2206, file: !2207, line: 75, baseType: !1723, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2206, file: !2207, line: 77, baseType: !1841, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1361, file: !28, line: 541, baseType: !1447, size: 64, offset: 5248)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1361, file: !28, line: 543, baseType: !1719, size: 64, offset: 5312)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1361, file: !28, line: 544, baseType: !2239, size: 64, offset: 5376)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1361, file: !28, line: 545, baseType: !2242, size: 64, offset: 5440)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1361, file: !28, line: 547, baseType: !619, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1361, file: !28, line: 548, baseType: !619, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1361, file: !28, line: 549, baseType: !619, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1361, file: !28, line: 550, baseType: !619, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !132, file: !120, line: 709, baseType: !96, size: 64, offset: 6336)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !132, file: !120, line: 713, baseType: !116, size: 32, offset: 6400)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !120, line: 714, baseType: !2251, size: 384, offset: 6432)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: 48)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !132, file: !120, line: 715, baseType: !595, size: 192, offset: 6848)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !132, file: !120, line: 717, baseType: !549, size: 192, offset: 7040)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !132, file: !120, line: 718, baseType: !269, size: 128, offset: 7232)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !132, file: !120, line: 720, baseType: !2258, size: 64, offset: 7360)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !120, line: 618, size: 832, elements: !2260)
!2260 = !{!2261, !2265, !2266, !2270, !2271, !2272, !2273, !2277, !2278, !2281, !2282, !2285, !2288}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2259, file: !120, line: 619, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!116, !131}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2259, file: !120, line: 621, baseType: !2262, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2259, file: !120, line: 622, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !131, !116}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2259, file: !120, line: 623, baseType: !2262, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2259, file: !120, line: 624, baseType: !2267, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2259, file: !120, line: 625, baseType: !2262, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2259, file: !120, line: 627, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !131}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2259, file: !120, line: 628, baseType: !2274, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2259, file: !120, line: 631, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !120, line: 631, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2259, file: !120, line: 632, baseType: !2279, size: 64, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2259, file: !120, line: 633, baseType: !2283, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !120, line: 633, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2259, file: !120, line: 634, baseType: !2286, size: 64, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !120, line: 634, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2259, file: !120, line: 635, baseType: !2286, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !132, file: !120, line: 721, baseType: !2290, size: 64, offset: 7424)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !120, line: 664, size: 192, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2292, file: !120, line: 665, baseType: !276, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2292, file: !120, line: 666, baseType: !116, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2292, file: !120, line: 667, baseType: !163, size: 16, offset: 96)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2292, file: !120, line: 668, baseType: !163, size: 16, offset: 112)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2292, file: !120, line: 669, baseType: !163, size: 16, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2292, file: !120, line: 670, baseType: !163, size: 16, offset: 144)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !132, file: !120, line: 723, baseType: !1979, size: 64, offset: 7488)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !119, file: !120, line: 330, baseType: !1361, size: 5568, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !119, file: !120, line: 331, baseType: !116, size: 32, offset: 5824)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !119, file: !120, line: 332, baseType: !116, size: 32, offset: 5856)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !119, file: !120, line: 333, baseType: !269, size: 128, offset: 5888)
!2305 = !DILocalVariable(name: "client", arg: 1, scope: !111, file: !1, line: 93, type: !117)
!2306 = !DILocation(line: 93, column: 50, scope: !111)
!2307 = !DILocalVariable(name: "data", scope: !111, file: !1, line: 95, type: !165)
!2308 = !DILocation(line: 95, column: 23, scope: !111)
!2309 = !DILocalVariable(name: "status", scope: !111, file: !1, line: 96, type: !116)
!2310 = !DILocation(line: 96, column: 6, scope: !111)
!2311 = !DILocation(line: 98, column: 26, scope: !111)
!2312 = !DILocation(line: 98, column: 34, scope: !111)
!2313 = !DILocation(line: 98, column: 43, scope: !111)
!2314 = !DILocation(line: 98, column: 51, scope: !111)
!2315 = !DILocation(line: 98, column: 57, scope: !111)
!2316 = !DILocation(line: 98, column: 65, scope: !111)
!2317 = !DILocation(line: 98, column: 11, scope: !111)
!2318 = !DILocation(line: 98, column: 9, scope: !111)
!2319 = !DILocation(line: 101, column: 10, scope: !111)
!2320 = !DILocation(line: 101, column: 17, scope: !111)
!2321 = !DILocation(line: 101, column: 9, scope: !111)
!2322 = !DILocation(line: 101, column: 24, scope: !111)
!2323 = !DILocation(line: 101, column: 38, scope: !111)
!2324 = !DILocation(line: 101, column: 33, scope: !111)
!2325 = !DILocation(line: 101, column: 2, scope: !111)
!2326 = distinct !DISubprogram(name: "i2c_smbus_xfer", scope: !1, file: !1, line: 532, type: !2327, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!114, !131, !163, !123, !127, !100, !116, !164}
!2329 = !DILocalVariable(name: "adapter", arg: 1, scope: !2326, file: !1, line: 532, type: !131)
!2330 = !DILocation(line: 532, column: 40, scope: !2326)
!2331 = !DILocalVariable(name: "addr", arg: 2, scope: !2326, file: !1, line: 532, type: !163)
!2332 = !DILocation(line: 532, column: 53, scope: !2326)
!2333 = !DILocalVariable(name: "flags", arg: 3, scope: !2326, file: !1, line: 533, type: !123)
!2334 = !DILocation(line: 533, column: 21, scope: !2326)
!2335 = !DILocalVariable(name: "read_write", arg: 4, scope: !2326, file: !1, line: 533, type: !127)
!2336 = !DILocation(line: 533, column: 33, scope: !2326)
!2337 = !DILocalVariable(name: "command", arg: 5, scope: !2326, file: !1, line: 534, type: !100)
!2338 = !DILocation(line: 534, column: 9, scope: !2326)
!2339 = !DILocalVariable(name: "protocol", arg: 6, scope: !2326, file: !1, line: 534, type: !116)
!2340 = !DILocation(line: 534, column: 22, scope: !2326)
!2341 = !DILocalVariable(name: "data", arg: 7, scope: !2326, file: !1, line: 534, type: !164)
!2342 = !DILocation(line: 534, column: 54, scope: !2326)
!2343 = !DILocalVariable(name: "res", scope: !2326, file: !1, line: 536, type: !114)
!2344 = !DILocation(line: 536, column: 6, scope: !2326)
!2345 = !DILocation(line: 538, column: 30, scope: !2326)
!2346 = !DILocation(line: 538, column: 8, scope: !2326)
!2347 = !DILocation(line: 538, column: 6, scope: !2326)
!2348 = !DILocation(line: 539, column: 6, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2326, file: !1, line: 539, column: 6)
!2350 = !DILocation(line: 539, column: 6, scope: !2326)
!2351 = !DILocation(line: 540, column: 10, scope: !2349)
!2352 = !DILocation(line: 540, column: 3, scope: !2349)
!2353 = !DILocation(line: 542, column: 25, scope: !2326)
!2354 = !DILocation(line: 542, column: 34, scope: !2326)
!2355 = !DILocation(line: 542, column: 40, scope: !2326)
!2356 = !DILocation(line: 542, column: 47, scope: !2326)
!2357 = !DILocation(line: 543, column: 11, scope: !2326)
!2358 = !DILocation(line: 543, column: 20, scope: !2326)
!2359 = !DILocation(line: 543, column: 30, scope: !2326)
!2360 = !DILocation(line: 542, column: 8, scope: !2326)
!2361 = !DILocation(line: 542, column: 6, scope: !2326)
!2362 = !DILocation(line: 544, column: 17, scope: !2326)
!2363 = !DILocation(line: 544, column: 2, scope: !2326)
!2364 = !DILocation(line: 546, column: 9, scope: !2326)
!2365 = !DILocation(line: 546, column: 2, scope: !2326)
!2366 = !DILocation(line: 547, column: 1, scope: !2326)
!2367 = distinct !DISubprogram(name: "i2c_smbus_write_byte", scope: !1, file: !1, line: 113, type: !2368, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!114, !117, !100}
!2370 = !DILocalVariable(name: "client", arg: 1, scope: !2367, file: !1, line: 113, type: !117)
!2371 = !DILocation(line: 113, column: 51, scope: !2367)
!2372 = !DILocalVariable(name: "value", arg: 2, scope: !2367, file: !1, line: 113, type: !100)
!2373 = !DILocation(line: 113, column: 62, scope: !2367)
!2374 = !DILocation(line: 115, column: 24, scope: !2367)
!2375 = !DILocation(line: 115, column: 32, scope: !2367)
!2376 = !DILocation(line: 115, column: 41, scope: !2367)
!2377 = !DILocation(line: 115, column: 49, scope: !2367)
!2378 = !DILocation(line: 115, column: 55, scope: !2367)
!2379 = !DILocation(line: 115, column: 63, scope: !2367)
!2380 = !DILocation(line: 116, column: 41, scope: !2367)
!2381 = !DILocation(line: 115, column: 9, scope: !2367)
!2382 = !DILocation(line: 115, column: 2, scope: !2367)
!2383 = distinct !DISubprogram(name: "i2c_smbus_read_byte_data", scope: !1, file: !1, line: 128, type: !2368, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2384 = !DILocalVariable(name: "client", arg: 1, scope: !2383, file: !1, line: 128, type: !117)
!2385 = !DILocation(line: 128, column: 55, scope: !2383)
!2386 = !DILocalVariable(name: "command", arg: 2, scope: !2383, file: !1, line: 128, type: !100)
!2387 = !DILocation(line: 128, column: 66, scope: !2383)
!2388 = !DILocalVariable(name: "data", scope: !2383, file: !1, line: 130, type: !165)
!2389 = !DILocation(line: 130, column: 23, scope: !2383)
!2390 = !DILocalVariable(name: "status", scope: !2383, file: !1, line: 131, type: !116)
!2391 = !DILocation(line: 131, column: 6, scope: !2383)
!2392 = !DILocation(line: 133, column: 26, scope: !2383)
!2393 = !DILocation(line: 133, column: 34, scope: !2383)
!2394 = !DILocation(line: 133, column: 43, scope: !2383)
!2395 = !DILocation(line: 133, column: 51, scope: !2383)
!2396 = !DILocation(line: 133, column: 57, scope: !2383)
!2397 = !DILocation(line: 133, column: 65, scope: !2383)
!2398 = !DILocation(line: 134, column: 21, scope: !2383)
!2399 = !DILocation(line: 133, column: 11, scope: !2383)
!2400 = !DILocation(line: 133, column: 9, scope: !2383)
!2401 = !DILocation(line: 136, column: 10, scope: !2383)
!2402 = !DILocation(line: 136, column: 17, scope: !2383)
!2403 = !DILocation(line: 136, column: 9, scope: !2383)
!2404 = !DILocation(line: 136, column: 24, scope: !2383)
!2405 = !DILocation(line: 136, column: 38, scope: !2383)
!2406 = !DILocation(line: 136, column: 33, scope: !2383)
!2407 = !DILocation(line: 136, column: 2, scope: !2383)
!2408 = distinct !DISubprogram(name: "i2c_smbus_write_byte_data", scope: !1, file: !1, line: 149, type: !2409, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!114, !117, !100, !100}
!2411 = !DILocalVariable(name: "client", arg: 1, scope: !2408, file: !1, line: 149, type: !117)
!2412 = !DILocation(line: 149, column: 56, scope: !2408)
!2413 = !DILocalVariable(name: "command", arg: 2, scope: !2408, file: !1, line: 149, type: !100)
!2414 = !DILocation(line: 149, column: 67, scope: !2408)
!2415 = !DILocalVariable(name: "value", arg: 3, scope: !2408, file: !1, line: 150, type: !100)
!2416 = !DILocation(line: 150, column: 13, scope: !2408)
!2417 = !DILocalVariable(name: "data", scope: !2408, file: !1, line: 152, type: !165)
!2418 = !DILocation(line: 152, column: 23, scope: !2408)
!2419 = !DILocation(line: 153, column: 14, scope: !2408)
!2420 = !DILocation(line: 153, column: 7, scope: !2408)
!2421 = !DILocation(line: 153, column: 12, scope: !2408)
!2422 = !DILocation(line: 154, column: 24, scope: !2408)
!2423 = !DILocation(line: 154, column: 32, scope: !2408)
!2424 = !DILocation(line: 154, column: 41, scope: !2408)
!2425 = !DILocation(line: 154, column: 49, scope: !2408)
!2426 = !DILocation(line: 154, column: 55, scope: !2408)
!2427 = !DILocation(line: 154, column: 63, scope: !2408)
!2428 = !DILocation(line: 155, column: 27, scope: !2408)
!2429 = !DILocation(line: 154, column: 9, scope: !2408)
!2430 = !DILocation(line: 154, column: 2, scope: !2408)
!2431 = distinct !DISubprogram(name: "i2c_smbus_read_word_data", scope: !1, file: !1, line: 168, type: !2368, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2432 = !DILocalVariable(name: "client", arg: 1, scope: !2431, file: !1, line: 168, type: !117)
!2433 = !DILocation(line: 168, column: 55, scope: !2431)
!2434 = !DILocalVariable(name: "command", arg: 2, scope: !2431, file: !1, line: 168, type: !100)
!2435 = !DILocation(line: 168, column: 66, scope: !2431)
!2436 = !DILocalVariable(name: "data", scope: !2431, file: !1, line: 170, type: !165)
!2437 = !DILocation(line: 170, column: 23, scope: !2431)
!2438 = !DILocalVariable(name: "status", scope: !2431, file: !1, line: 171, type: !116)
!2439 = !DILocation(line: 171, column: 6, scope: !2431)
!2440 = !DILocation(line: 173, column: 26, scope: !2431)
!2441 = !DILocation(line: 173, column: 34, scope: !2431)
!2442 = !DILocation(line: 173, column: 43, scope: !2431)
!2443 = !DILocation(line: 173, column: 51, scope: !2431)
!2444 = !DILocation(line: 173, column: 57, scope: !2431)
!2445 = !DILocation(line: 173, column: 65, scope: !2431)
!2446 = !DILocation(line: 174, column: 21, scope: !2431)
!2447 = !DILocation(line: 173, column: 11, scope: !2431)
!2448 = !DILocation(line: 173, column: 9, scope: !2431)
!2449 = !DILocation(line: 176, column: 10, scope: !2431)
!2450 = !DILocation(line: 176, column: 17, scope: !2431)
!2451 = !DILocation(line: 176, column: 9, scope: !2431)
!2452 = !DILocation(line: 176, column: 24, scope: !2431)
!2453 = !DILocation(line: 176, column: 38, scope: !2431)
!2454 = !DILocation(line: 176, column: 33, scope: !2431)
!2455 = !DILocation(line: 176, column: 2, scope: !2431)
!2456 = distinct !DISubprogram(name: "i2c_smbus_write_word_data", scope: !1, file: !1, line: 189, type: !2457, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!114, !117, !100, !163}
!2459 = !DILocalVariable(name: "client", arg: 1, scope: !2456, file: !1, line: 189, type: !117)
!2460 = !DILocation(line: 189, column: 56, scope: !2456)
!2461 = !DILocalVariable(name: "command", arg: 2, scope: !2456, file: !1, line: 189, type: !100)
!2462 = !DILocation(line: 189, column: 67, scope: !2456)
!2463 = !DILocalVariable(name: "value", arg: 3, scope: !2456, file: !1, line: 190, type: !163)
!2464 = !DILocation(line: 190, column: 14, scope: !2456)
!2465 = !DILocalVariable(name: "data", scope: !2456, file: !1, line: 192, type: !165)
!2466 = !DILocation(line: 192, column: 23, scope: !2456)
!2467 = !DILocation(line: 193, column: 14, scope: !2456)
!2468 = !DILocation(line: 193, column: 7, scope: !2456)
!2469 = !DILocation(line: 193, column: 12, scope: !2456)
!2470 = !DILocation(line: 194, column: 24, scope: !2456)
!2471 = !DILocation(line: 194, column: 32, scope: !2456)
!2472 = !DILocation(line: 194, column: 41, scope: !2456)
!2473 = !DILocation(line: 194, column: 49, scope: !2456)
!2474 = !DILocation(line: 194, column: 55, scope: !2456)
!2475 = !DILocation(line: 194, column: 63, scope: !2456)
!2476 = !DILocation(line: 195, column: 27, scope: !2456)
!2477 = !DILocation(line: 194, column: 9, scope: !2456)
!2478 = !DILocation(line: 194, column: 2, scope: !2456)
!2479 = distinct !DISubprogram(name: "i2c_smbus_read_block_data", scope: !1, file: !1, line: 215, type: !2480, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!114, !117, !100, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2483 = !DILocalVariable(name: "client", arg: 1, scope: !2479, file: !1, line: 215, type: !117)
!2484 = !DILocation(line: 215, column: 56, scope: !2479)
!2485 = !DILocalVariable(name: "command", arg: 2, scope: !2479, file: !1, line: 215, type: !100)
!2486 = !DILocation(line: 215, column: 67, scope: !2479)
!2487 = !DILocalVariable(name: "values", arg: 3, scope: !2479, file: !1, line: 216, type: !2482)
!2488 = !DILocation(line: 216, column: 14, scope: !2479)
!2489 = !DILocalVariable(name: "data", scope: !2479, file: !1, line: 218, type: !165)
!2490 = !DILocation(line: 218, column: 23, scope: !2479)
!2491 = !DILocalVariable(name: "status", scope: !2479, file: !1, line: 219, type: !116)
!2492 = !DILocation(line: 219, column: 6, scope: !2479)
!2493 = !DILocation(line: 221, column: 26, scope: !2479)
!2494 = !DILocation(line: 221, column: 34, scope: !2479)
!2495 = !DILocation(line: 221, column: 43, scope: !2479)
!2496 = !DILocation(line: 221, column: 51, scope: !2479)
!2497 = !DILocation(line: 221, column: 57, scope: !2479)
!2498 = !DILocation(line: 221, column: 65, scope: !2479)
!2499 = !DILocation(line: 222, column: 21, scope: !2479)
!2500 = !DILocation(line: 221, column: 11, scope: !2479)
!2501 = !DILocation(line: 221, column: 9, scope: !2479)
!2502 = !DILocation(line: 224, column: 6, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 224, column: 6)
!2504 = !DILocation(line: 224, column: 6, scope: !2479)
!2505 = !DILocation(line: 225, column: 10, scope: !2503)
!2506 = !DILocation(line: 225, column: 3, scope: !2503)
!2507 = !DILocation(line: 227, column: 9, scope: !2479)
!2508 = !DILocation(line: 227, column: 23, scope: !2479)
!2509 = !DILocation(line: 227, column: 18, scope: !2479)
!2510 = !DILocation(line: 227, column: 38, scope: !2479)
!2511 = !DILocation(line: 227, column: 33, scope: !2479)
!2512 = !DILocation(line: 227, column: 2, scope: !2479)
!2513 = !DILocation(line: 228, column: 14, scope: !2479)
!2514 = !DILocation(line: 228, column: 9, scope: !2479)
!2515 = !DILocation(line: 228, column: 2, scope: !2479)
!2516 = !DILocation(line: 229, column: 1, scope: !2479)
!2517 = distinct !DISubprogram(name: "i2c_smbus_write_block_data", scope: !1, file: !1, line: 242, type: !2518, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!114, !117, !100, !100, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!2522 = !DILocalVariable(name: "client", arg: 1, scope: !2517, file: !1, line: 242, type: !117)
!2523 = !DILocation(line: 242, column: 57, scope: !2517)
!2524 = !DILocalVariable(name: "command", arg: 2, scope: !2517, file: !1, line: 242, type: !100)
!2525 = !DILocation(line: 242, column: 68, scope: !2517)
!2526 = !DILocalVariable(name: "length", arg: 3, scope: !2517, file: !1, line: 243, type: !100)
!2527 = !DILocation(line: 243, column: 14, scope: !2517)
!2528 = !DILocalVariable(name: "values", arg: 4, scope: !2517, file: !1, line: 243, type: !2520)
!2529 = !DILocation(line: 243, column: 32, scope: !2517)
!2530 = !DILocalVariable(name: "data", scope: !2517, file: !1, line: 245, type: !165)
!2531 = !DILocation(line: 245, column: 23, scope: !2517)
!2532 = !DILocation(line: 247, column: 6, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 247, column: 6)
!2534 = !DILocation(line: 247, column: 13, scope: !2533)
!2535 = !DILocation(line: 247, column: 6, scope: !2517)
!2536 = !DILocation(line: 248, column: 10, scope: !2533)
!2537 = !DILocation(line: 248, column: 3, scope: !2533)
!2538 = !DILocation(line: 249, column: 18, scope: !2517)
!2539 = !DILocation(line: 249, column: 7, scope: !2517)
!2540 = !DILocation(line: 249, column: 2, scope: !2517)
!2541 = !DILocation(line: 249, column: 16, scope: !2517)
!2542 = !DILocation(line: 250, column: 15, scope: !2517)
!2543 = !DILocation(line: 250, column: 10, scope: !2517)
!2544 = !DILocation(line: 250, column: 25, scope: !2517)
!2545 = !DILocation(line: 250, column: 33, scope: !2517)
!2546 = !DILocation(line: 250, column: 2, scope: !2517)
!2547 = !DILocation(line: 251, column: 24, scope: !2517)
!2548 = !DILocation(line: 251, column: 32, scope: !2517)
!2549 = !DILocation(line: 251, column: 41, scope: !2517)
!2550 = !DILocation(line: 251, column: 49, scope: !2517)
!2551 = !DILocation(line: 251, column: 55, scope: !2517)
!2552 = !DILocation(line: 251, column: 63, scope: !2517)
!2553 = !DILocation(line: 252, column: 27, scope: !2517)
!2554 = !DILocation(line: 251, column: 9, scope: !2517)
!2555 = !DILocation(line: 251, column: 2, scope: !2517)
!2556 = distinct !DISubprogram(name: "i2c_smbus_read_i2c_block_data", scope: !1, file: !1, line: 258, type: !2557, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!114, !117, !100, !100, !2482}
!2559 = !DILocalVariable(name: "client", arg: 1, scope: !2556, file: !1, line: 258, type: !117)
!2560 = !DILocation(line: 258, column: 60, scope: !2556)
!2561 = !DILocalVariable(name: "command", arg: 2, scope: !2556, file: !1, line: 258, type: !100)
!2562 = !DILocation(line: 258, column: 71, scope: !2556)
!2563 = !DILocalVariable(name: "length", arg: 3, scope: !2556, file: !1, line: 259, type: !100)
!2564 = !DILocation(line: 259, column: 10, scope: !2556)
!2565 = !DILocalVariable(name: "values", arg: 4, scope: !2556, file: !1, line: 259, type: !2482)
!2566 = !DILocation(line: 259, column: 22, scope: !2556)
!2567 = !DILocalVariable(name: "data", scope: !2556, file: !1, line: 261, type: !165)
!2568 = !DILocation(line: 261, column: 23, scope: !2556)
!2569 = !DILocalVariable(name: "status", scope: !2556, file: !1, line: 262, type: !116)
!2570 = !DILocation(line: 262, column: 6, scope: !2556)
!2571 = !DILocation(line: 264, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 264, column: 6)
!2573 = !DILocation(line: 264, column: 13, scope: !2572)
!2574 = !DILocation(line: 264, column: 6, scope: !2556)
!2575 = !DILocation(line: 265, column: 10, scope: !2572)
!2576 = !DILocation(line: 265, column: 3, scope: !2572)
!2577 = !DILocation(line: 266, column: 18, scope: !2556)
!2578 = !DILocation(line: 266, column: 7, scope: !2556)
!2579 = !DILocation(line: 266, column: 2, scope: !2556)
!2580 = !DILocation(line: 266, column: 16, scope: !2556)
!2581 = !DILocation(line: 267, column: 26, scope: !2556)
!2582 = !DILocation(line: 267, column: 34, scope: !2556)
!2583 = !DILocation(line: 267, column: 43, scope: !2556)
!2584 = !DILocation(line: 267, column: 51, scope: !2556)
!2585 = !DILocation(line: 267, column: 57, scope: !2556)
!2586 = !DILocation(line: 267, column: 65, scope: !2556)
!2587 = !DILocation(line: 268, column: 21, scope: !2556)
!2588 = !DILocation(line: 267, column: 11, scope: !2556)
!2589 = !DILocation(line: 267, column: 9, scope: !2556)
!2590 = !DILocation(line: 270, column: 6, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 270, column: 6)
!2592 = !DILocation(line: 270, column: 13, scope: !2591)
!2593 = !DILocation(line: 270, column: 6, scope: !2556)
!2594 = !DILocation(line: 271, column: 10, scope: !2591)
!2595 = !DILocation(line: 271, column: 3, scope: !2591)
!2596 = !DILocation(line: 273, column: 9, scope: !2556)
!2597 = !DILocation(line: 273, column: 23, scope: !2556)
!2598 = !DILocation(line: 273, column: 18, scope: !2556)
!2599 = !DILocation(line: 273, column: 38, scope: !2556)
!2600 = !DILocation(line: 273, column: 33, scope: !2556)
!2601 = !DILocation(line: 273, column: 2, scope: !2556)
!2602 = !DILocation(line: 274, column: 14, scope: !2556)
!2603 = !DILocation(line: 274, column: 9, scope: !2556)
!2604 = !DILocation(line: 274, column: 2, scope: !2556)
!2605 = !DILocation(line: 275, column: 1, scope: !2556)
!2606 = distinct !DISubprogram(name: "i2c_smbus_write_i2c_block_data", scope: !1, file: !1, line: 278, type: !2518, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2607 = !DILocalVariable(name: "client", arg: 1, scope: !2606, file: !1, line: 278, type: !117)
!2608 = !DILocation(line: 278, column: 61, scope: !2606)
!2609 = !DILocalVariable(name: "command", arg: 2, scope: !2606, file: !1, line: 278, type: !100)
!2610 = !DILocation(line: 278, column: 72, scope: !2606)
!2611 = !DILocalVariable(name: "length", arg: 3, scope: !2606, file: !1, line: 279, type: !100)
!2612 = !DILocation(line: 279, column: 11, scope: !2606)
!2613 = !DILocalVariable(name: "values", arg: 4, scope: !2606, file: !1, line: 279, type: !2520)
!2614 = !DILocation(line: 279, column: 29, scope: !2606)
!2615 = !DILocalVariable(name: "data", scope: !2606, file: !1, line: 281, type: !165)
!2616 = !DILocation(line: 281, column: 23, scope: !2606)
!2617 = !DILocation(line: 283, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 283, column: 6)
!2619 = !DILocation(line: 283, column: 13, scope: !2618)
!2620 = !DILocation(line: 283, column: 6, scope: !2606)
!2621 = !DILocation(line: 284, column: 10, scope: !2618)
!2622 = !DILocation(line: 284, column: 3, scope: !2618)
!2623 = !DILocation(line: 285, column: 18, scope: !2606)
!2624 = !DILocation(line: 285, column: 7, scope: !2606)
!2625 = !DILocation(line: 285, column: 2, scope: !2606)
!2626 = !DILocation(line: 285, column: 16, scope: !2606)
!2627 = !DILocation(line: 286, column: 14, scope: !2606)
!2628 = !DILocation(line: 286, column: 9, scope: !2606)
!2629 = !DILocation(line: 286, column: 20, scope: !2606)
!2630 = !DILocation(line: 286, column: 25, scope: !2606)
!2631 = !DILocation(line: 286, column: 33, scope: !2606)
!2632 = !DILocation(line: 286, column: 2, scope: !2606)
!2633 = !DILocation(line: 287, column: 24, scope: !2606)
!2634 = !DILocation(line: 287, column: 32, scope: !2606)
!2635 = !DILocation(line: 287, column: 41, scope: !2606)
!2636 = !DILocation(line: 287, column: 49, scope: !2606)
!2637 = !DILocation(line: 287, column: 55, scope: !2606)
!2638 = !DILocation(line: 287, column: 63, scope: !2606)
!2639 = !DILocation(line: 288, column: 27, scope: !2606)
!2640 = !DILocation(line: 287, column: 9, scope: !2606)
!2641 = !DILocation(line: 287, column: 2, scope: !2606)
!2642 = distinct !DISubprogram(name: "__i2c_lock_bus_helper", scope: !2643, file: !2643, line: 35, type: !2263, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2643 = !DIFile(filename: "drivers/i2c/i2c-core.h", directory: "/home/lizy2001/genbc/linux")
!2644 = !DILocalVariable(name: "adap", arg: 1, scope: !2642, file: !2643, line: 35, type: !131)
!2645 = !DILocation(line: 35, column: 61, scope: !2642)
!2646 = !DILocalVariable(name: "ret", scope: !2642, file: !2643, line: 37, type: !116)
!2647 = !DILocation(line: 37, column: 6, scope: !2642)
!2648 = !DILocation(line: 39, column: 6, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !2643, line: 39, column: 6)
!2650 = !DILocation(line: 39, column: 6, scope: !2642)
!2651 = !DILocalVariable(name: "__ret_warn_on", scope: !2652, file: !2643, line: 40, type: !116)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !2643, line: 40, column: 3)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !2643, line: 39, column: 33)
!2654 = !DILocation(line: 40, column: 3, scope: !2652)
!2655 = !DILocation(line: 0, scope: !2652)
!2656 = !DILocation(line: 40, column: 3, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !2643, line: 40, column: 3)
!2658 = !DILocation(line: 40, column: 3, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2657, file: !2643, line: 40, column: 3)
!2660 = !DILocation(line: 40, column: 3, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2659, file: !2643, line: 40, column: 3)
!2662 = !DILocation(line: 40, column: 3, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !2643, line: 40, column: 3)
!2664 = !DILocation(line: 40, column: 3, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2663, file: !2643, line: 40, column: 3)
!2666 = !DILocation(line: 40, column: 3, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !2643, line: 40, column: 3)
!2668 = !{i32 -2142729630, i32 -2142729601, i32 -2142729555, i32 -2142729497, i32 -2142729443, i32 -2142729389, i32 -2142729334, i32 -2142729303}
!2669 = !DILocation(line: 40, column: 3, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2663, file: !2643, line: 40, column: 3)
!2671 = !{i32 -2142728889, i32 -2142728882, i32 -2142728830, i32 -2142728799, i32 -2142728769}
!2672 = !DILocation(line: 40, column: 3, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2663, file: !2643, line: 40, column: 3)
!2674 = !DILocation(line: 40, column: 3, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2659, file: !2643, line: 40, column: 3)
!2676 = !DILocation(line: 42, column: 25, scope: !2653)
!2677 = !DILocation(line: 42, column: 9, scope: !2653)
!2678 = !DILocation(line: 42, column: 7, scope: !2653)
!2679 = !DILocation(line: 43, column: 2, scope: !2653)
!2680 = !DILocation(line: 44, column: 16, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2649, file: !2643, line: 43, column: 9)
!2682 = !DILocation(line: 44, column: 3, scope: !2681)
!2683 = !DILocation(line: 47, column: 9, scope: !2642)
!2684 = !DILocation(line: 47, column: 2, scope: !2642)
!2685 = distinct !DISubprogram(name: "__i2c_smbus_xfer", scope: !1, file: !1, line: 550, type: !2327, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2686 = !DILocalVariable(name: "adapter", arg: 1, scope: !2685, file: !1, line: 550, type: !131)
!2687 = !DILocation(line: 550, column: 42, scope: !2685)
!2688 = !DILocalVariable(name: "addr", arg: 2, scope: !2685, file: !1, line: 550, type: !163)
!2689 = !DILocation(line: 550, column: 55, scope: !2685)
!2690 = !DILocalVariable(name: "flags", arg: 3, scope: !2685, file: !1, line: 551, type: !123)
!2691 = !DILocation(line: 551, column: 23, scope: !2685)
!2692 = !DILocalVariable(name: "read_write", arg: 4, scope: !2685, file: !1, line: 551, type: !127)
!2693 = !DILocation(line: 551, column: 35, scope: !2685)
!2694 = !DILocalVariable(name: "command", arg: 5, scope: !2685, file: !1, line: 552, type: !100)
!2695 = !DILocation(line: 552, column: 11, scope: !2685)
!2696 = !DILocalVariable(name: "protocol", arg: 6, scope: !2685, file: !1, line: 552, type: !116)
!2697 = !DILocation(line: 552, column: 24, scope: !2685)
!2698 = !DILocalVariable(name: "data", arg: 7, scope: !2685, file: !1, line: 552, type: !164)
!2699 = !DILocation(line: 552, column: 56, scope: !2685)
!2700 = !DILocalVariable(name: "xfer_func", scope: !2685, file: !1, line: 554, type: !160)
!2701 = !DILocation(line: 554, column: 8, scope: !2685)
!2702 = !DILocalVariable(name: "orig_jiffies", scope: !2685, file: !1, line: 557, type: !96)
!2703 = !DILocation(line: 557, column: 16, scope: !2685)
!2704 = !DILocalVariable(name: "try", scope: !2685, file: !1, line: 558, type: !116)
!2705 = !DILocation(line: 558, column: 6, scope: !2685)
!2706 = !DILocalVariable(name: "res", scope: !2685, file: !1, line: 559, type: !114)
!2707 = !DILocation(line: 559, column: 6, scope: !2685)
!2708 = !DILocation(line: 561, column: 30, scope: !2685)
!2709 = !DILocation(line: 561, column: 8, scope: !2685)
!2710 = !DILocation(line: 561, column: 6, scope: !2685)
!2711 = !DILocation(line: 562, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 562, column: 6)
!2713 = !DILocation(line: 562, column: 6, scope: !2685)
!2714 = !DILocation(line: 563, column: 10, scope: !2712)
!2715 = !DILocation(line: 563, column: 3, scope: !2712)
!2716 = !DILocation(line: 568, column: 20, scope: !2685)
!2717 = !DILocation(line: 568, column: 29, scope: !2685)
!2718 = !DILocation(line: 568, column: 35, scope: !2685)
!2719 = !DILocation(line: 568, column: 42, scope: !2685)
!2720 = !DILocation(line: 569, column: 6, scope: !2685)
!2721 = !DILocation(line: 569, column: 15, scope: !2685)
!2722 = !DILocation(line: 569, column: 25, scope: !2685)
!2723 = !DILocation(line: 568, column: 2, scope: !2685)
!2724 = !DILocation(line: 570, column: 19, scope: !2685)
!2725 = !DILocation(line: 570, column: 28, scope: !2685)
!2726 = !DILocation(line: 570, column: 34, scope: !2685)
!2727 = !DILocation(line: 570, column: 41, scope: !2685)
!2728 = !DILocation(line: 571, column: 5, scope: !2685)
!2729 = !DILocation(line: 571, column: 14, scope: !2685)
!2730 = !DILocation(line: 570, column: 2, scope: !2685)
!2731 = !DILocation(line: 573, column: 8, scope: !2685)
!2732 = !DILocation(line: 575, column: 14, scope: !2685)
!2733 = !DILocation(line: 575, column: 23, scope: !2685)
!2734 = !DILocation(line: 575, column: 29, scope: !2685)
!2735 = !DILocation(line: 575, column: 12, scope: !2685)
!2736 = !DILocation(line: 576, column: 6, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 576, column: 6)
!2738 = !DILocation(line: 576, column: 6, scope: !2685)
!2739 = !DILocation(line: 577, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !1, line: 577, column: 7)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 576, column: 33)
!2742 = !DILocation(line: 577, column: 16, scope: !2740)
!2743 = !DILocation(line: 577, column: 22, scope: !2740)
!2744 = !DILocation(line: 577, column: 7, scope: !2741)
!2745 = !DILocation(line: 578, column: 16, scope: !2740)
!2746 = !DILocation(line: 578, column: 25, scope: !2740)
!2747 = !DILocation(line: 578, column: 31, scope: !2740)
!2748 = !DILocation(line: 578, column: 14, scope: !2740)
!2749 = !DILocation(line: 578, column: 4, scope: !2740)
!2750 = !DILocation(line: 579, column: 12, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 579, column: 12)
!2752 = !DILocation(line: 579, column: 21, scope: !2751)
!2753 = !DILocation(line: 579, column: 27, scope: !2751)
!2754 = !DILocation(line: 579, column: 12, scope: !2740)
!2755 = !DILocation(line: 580, column: 14, scope: !2751)
!2756 = !DILocation(line: 580, column: 4, scope: !2751)
!2757 = !DILocation(line: 581, column: 2, scope: !2741)
!2758 = !DILocation(line: 583, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 583, column: 6)
!2760 = !DILocation(line: 583, column: 6, scope: !2685)
!2761 = !DILocation(line: 585, column: 18, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 583, column: 17)
!2763 = !DILocation(line: 585, column: 16, scope: !2762)
!2764 = !DILocation(line: 586, column: 12, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 586, column: 3)
!2766 = !DILocation(line: 586, column: 21, scope: !2765)
!2767 = !DILocation(line: 586, column: 8, scope: !2765)
!2768 = !DILocation(line: 586, column: 26, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 586, column: 3)
!2770 = !DILocation(line: 586, column: 33, scope: !2769)
!2771 = !DILocation(line: 586, column: 42, scope: !2769)
!2772 = !DILocation(line: 586, column: 30, scope: !2769)
!2773 = !DILocation(line: 586, column: 3, scope: !2765)
!2774 = !DILocation(line: 587, column: 10, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !1, line: 586, column: 58)
!2776 = !DILocation(line: 587, column: 20, scope: !2775)
!2777 = !DILocation(line: 587, column: 29, scope: !2775)
!2778 = !DILocation(line: 587, column: 35, scope: !2775)
!2779 = !DILocation(line: 587, column: 42, scope: !2775)
!2780 = !DILocation(line: 588, column: 6, scope: !2775)
!2781 = !DILocation(line: 588, column: 15, scope: !2775)
!2782 = !DILocation(line: 588, column: 25, scope: !2775)
!2783 = !DILocation(line: 587, column: 8, scope: !2775)
!2784 = !DILocation(line: 589, column: 8, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 589, column: 8)
!2786 = !DILocation(line: 589, column: 12, scope: !2785)
!2787 = !DILocation(line: 589, column: 8, scope: !2775)
!2788 = !DILocation(line: 590, column: 5, scope: !2785)
!2789 = !DILocation(line: 591, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2775, file: !1, line: 591, column: 8)
!2791 = !DILocation(line: 591, column: 8, scope: !2775)
!2792 = !DILocation(line: 593, column: 5, scope: !2790)
!2793 = !DILocation(line: 594, column: 3, scope: !2775)
!2794 = !DILocation(line: 586, column: 54, scope: !2769)
!2795 = !DILocation(line: 586, column: 3, scope: !2769)
!2796 = distinct !{!2796, !2773, !2797}
!2797 = !DILocation(line: 594, column: 3, scope: !2765)
!2798 = !DILocation(line: 596, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2762, file: !1, line: 596, column: 7)
!2800 = !DILocation(line: 596, column: 11, scope: !2799)
!2801 = !DILocation(line: 596, column: 26, scope: !2799)
!2802 = !DILocation(line: 596, column: 30, scope: !2799)
!2803 = !DILocation(line: 596, column: 39, scope: !2799)
!2804 = !DILocation(line: 596, column: 45, scope: !2799)
!2805 = !DILocation(line: 596, column: 7, scope: !2762)
!2806 = !DILocation(line: 597, column: 4, scope: !2799)
!2807 = !DILocation(line: 602, column: 2, scope: !2762)
!2808 = !DILocation(line: 604, column: 32, scope: !2685)
!2809 = !DILocation(line: 604, column: 41, scope: !2685)
!2810 = !DILocation(line: 604, column: 47, scope: !2685)
!2811 = !DILocation(line: 604, column: 54, scope: !2685)
!2812 = !DILocation(line: 605, column: 11, scope: !2685)
!2813 = !DILocation(line: 605, column: 20, scope: !2685)
!2814 = !DILocation(line: 605, column: 30, scope: !2685)
!2815 = !DILocation(line: 604, column: 8, scope: !2685)
!2816 = !DILocation(line: 604, column: 6, scope: !2685)
!2817 = !DILocation(line: 604, column: 2, scope: !2685)
!2818 = !DILabel(scope: !2685, name: "trace", file: !1, line: 607)
!2819 = !DILocation(line: 607, column: 1, scope: !2685)
!2820 = !DILocation(line: 609, column: 20, scope: !2685)
!2821 = !DILocation(line: 609, column: 29, scope: !2685)
!2822 = !DILocation(line: 609, column: 35, scope: !2685)
!2823 = !DILocation(line: 609, column: 42, scope: !2685)
!2824 = !DILocation(line: 610, column: 6, scope: !2685)
!2825 = !DILocation(line: 610, column: 15, scope: !2685)
!2826 = !DILocation(line: 610, column: 25, scope: !2685)
!2827 = !DILocation(line: 610, column: 31, scope: !2685)
!2828 = !DILocation(line: 609, column: 2, scope: !2685)
!2829 = !DILocation(line: 611, column: 21, scope: !2685)
!2830 = !DILocation(line: 611, column: 30, scope: !2685)
!2831 = !DILocation(line: 611, column: 36, scope: !2685)
!2832 = !DILocation(line: 611, column: 43, scope: !2685)
!2833 = !DILocation(line: 612, column: 7, scope: !2685)
!2834 = !DILocation(line: 612, column: 16, scope: !2685)
!2835 = !DILocation(line: 612, column: 26, scope: !2685)
!2836 = !DILocation(line: 611, column: 2, scope: !2685)
!2837 = !DILocation(line: 614, column: 9, scope: !2685)
!2838 = !DILocation(line: 614, column: 2, scope: !2685)
!2839 = !DILocation(line: 615, column: 1, scope: !2685)
!2840 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !120, file: !120, line: 789, type: !188, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2841 = !DILocalVariable(name: "adapter", arg: 1, scope: !2840, file: !120, line: 789, type: !131)
!2842 = !DILocation(line: 789, column: 36, scope: !2840)
!2843 = !DILocalVariable(name: "flags", arg: 2, scope: !2840, file: !120, line: 789, type: !5)
!2844 = !DILocation(line: 789, column: 58, scope: !2840)
!2845 = !DILocation(line: 791, column: 2, scope: !2840)
!2846 = !DILocation(line: 791, column: 11, scope: !2840)
!2847 = !DILocation(line: 791, column: 21, scope: !2840)
!2848 = !DILocation(line: 791, column: 32, scope: !2840)
!2849 = !DILocation(line: 791, column: 41, scope: !2840)
!2850 = !DILocation(line: 792, column: 1, scope: !2840)
!2851 = distinct !DISubprogram(name: "__i2c_check_suspended", scope: !2643, file: !2643, line: 50, type: !2263, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2852 = !DILocalVariable(name: "adap", arg: 1, scope: !2851, file: !2643, line: 50, type: !131)
!2853 = !DILocation(line: 50, column: 61, scope: !2851)
!2854 = !DILocation(line: 52, column: 38, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !2643, line: 52, column: 6)
!2856 = !DILocation(line: 52, column: 44, scope: !2855)
!2857 = !DILocation(line: 52, column: 6, scope: !2855)
!2858 = !DILocation(line: 52, column: 6, scope: !2851)
!2859 = !DILocation(line: 53, column: 52, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !2643, line: 53, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2855, file: !2643, line: 52, column: 59)
!2862 = !DILocation(line: 53, column: 58, scope: !2860)
!2863 = !DILocation(line: 53, column: 8, scope: !2860)
!2864 = !DILocation(line: 53, column: 7, scope: !2861)
!2865 = !DILocalVariable(name: "__ret_warn_on", scope: !2866, file: !2643, line: 54, type: !116)
!2866 = distinct !DILexicalBlock(scope: !2860, file: !2643, line: 54, column: 4)
!2867 = !DILocation(line: 54, column: 4, scope: !2866)
!2868 = !DILocation(line: 54, column: 4, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !2643, line: 54, column: 4)
!2870 = !DILocation(line: 54, column: 4, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2869, file: !2643, line: 54, column: 4)
!2872 = !DILocation(line: 54, column: 4, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2871, file: !2643, line: 54, column: 4)
!2874 = !DILocation(line: 54, column: 4, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !2643, line: 54, column: 4)
!2876 = !DILocation(line: 54, column: 4, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2875, file: !2643, line: 54, column: 4)
!2878 = !DILocation(line: 54, column: 4, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !2643, line: 54, column: 4)
!2880 = !{i32 -2142727331, i32 -2142727302, i32 -2142727256, i32 -2142727198, i32 -2142727144, i32 -2142727090, i32 -2142727035, i32 -2142727004}
!2881 = !DILocation(line: 54, column: 4, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2875, file: !2643, line: 54, column: 4)
!2883 = !{i32 -2142726590, i32 -2142726583, i32 -2142726531, i32 -2142726500, i32 -2142726470}
!2884 = !DILocation(line: 54, column: 4, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2875, file: !2643, line: 54, column: 4)
!2886 = !DILocation(line: 54, column: 4, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2871, file: !2643, line: 54, column: 4)
!2888 = !DILocation(line: 54, column: 4, scope: !2860)
!2889 = !DILocation(line: 55, column: 3, scope: !2861)
!2890 = !DILocation(line: 58, column: 2, scope: !2851)
!2891 = !DILocation(line: 59, column: 1, scope: !2851)
!2892 = distinct !DISubprogram(name: "trace_smbus_write", scope: !2893, file: !2893, line: 23, type: !2894, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2893 = !DIFile(filename: "./include/trace/events/smbus.h", directory: "/home/lizy2001/genbc/linux")
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896, !163, !123, !127, !100, !116, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!2900 = !DILocalVariable(name: "adap", arg: 1, scope: !2892, file: !2893, line: 23, type: !2896)
!2901 = !DILocation(line: 23, column: 1, scope: !2892)
!2902 = !DILocalVariable(name: "addr", arg: 2, scope: !2892, file: !2893, line: 23, type: !163)
!2903 = !DILocalVariable(name: "flags", arg: 3, scope: !2892, file: !2893, line: 23, type: !123)
!2904 = !DILocalVariable(name: "read_write", arg: 4, scope: !2892, file: !2893, line: 23, type: !127)
!2905 = !DILocalVariable(name: "command", arg: 5, scope: !2892, file: !2893, line: 23, type: !100)
!2906 = !DILocalVariable(name: "protocol", arg: 6, scope: !2892, file: !2893, line: 23, type: !116)
!2907 = !DILocalVariable(name: "data", arg: 7, scope: !2892, file: !2893, line: 23, type: !2898)
!2908 = distinct !DISubprogram(name: "trace_smbus_read", scope: !2893, file: !2893, line: 91, type: !2909, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2896, !163, !123, !127, !100, !116}
!2911 = !DILocalVariable(name: "adap", arg: 1, scope: !2908, file: !2893, line: 91, type: !2896)
!2912 = !DILocation(line: 91, column: 1, scope: !2908)
!2913 = !DILocalVariable(name: "addr", arg: 2, scope: !2908, file: !2893, line: 91, type: !163)
!2914 = !DILocalVariable(name: "flags", arg: 3, scope: !2908, file: !2893, line: 91, type: !123)
!2915 = !DILocalVariable(name: "read_write", arg: 4, scope: !2908, file: !2893, line: 91, type: !127)
!2916 = !DILocalVariable(name: "command", arg: 5, scope: !2908, file: !2893, line: 91, type: !100)
!2917 = !DILocalVariable(name: "protocol", arg: 6, scope: !2908, file: !2893, line: 91, type: !116)
!2918 = distinct !DISubprogram(name: "i2c_in_atomic_xfer_mode", scope: !2643, file: !2643, line: 30, type: !1492, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2919 = !DILocalVariable(name: "flags", arg: 1, scope: !2920, file: !2921, line: 162, type: !96)
!2920 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2921, file: !2921, line: 162, type: !2922, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2921 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!116, !96}
!2924 = !DILocation(line: 162, column: 67, scope: !2920, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 32, column: 42, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !2643, line: 32, column: 42)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !2643, line: 32, column: 42)
!2928 = !DILocation(line: 32, column: 9, scope: !2918)
!2929 = !DILocation(line: 32, column: 22, scope: !2918)
!2930 = !DILocation(line: 32, column: 39, scope: !2918)
!2931 = !DILocalVariable(name: "_flags", scope: !2927, file: !2643, line: 32, type: !96)
!2932 = !DILocation(line: 32, column: 42, scope: !2927)
!2933 = !DILocalVariable(name: "__dummy", scope: !2934, file: !2643, line: 32, type: !96)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2643, line: 32, column: 42)
!2935 = distinct !DILexicalBlock(scope: !2927, file: !2643, line: 32, column: 42)
!2936 = !DILocation(line: 32, column: 42, scope: !2934)
!2937 = !DILocalVariable(name: "__dummy2", scope: !2934, file: !2643, line: 32, type: !96)
!2938 = !DILocation(line: 32, column: 42, scope: !2935)
!2939 = !DILocalVariable(name: "__dummy", scope: !2940, file: !2643, line: 32, type: !96)
!2940 = distinct !DILexicalBlock(scope: !2926, file: !2643, line: 32, column: 42)
!2941 = !DILocation(line: 32, column: 42, scope: !2940)
!2942 = !DILocalVariable(name: "__dummy2", scope: !2940, file: !2643, line: 32, type: !96)
!2943 = !DILocation(line: 32, column: 42, scope: !2926)
!2944 = !DILocation(line: 164, column: 11, scope: !2920, inlinedAt: !2925)
!2945 = !DILocation(line: 164, column: 17, scope: !2920, inlinedAt: !2925)
!2946 = !DILocation(line: 164, column: 9, scope: !2920, inlinedAt: !2925)
!2947 = !DILocation(line: 0, scope: !2918)
!2948 = !DILocation(line: 32, column: 2, scope: !2918)
!2949 = distinct !DISubprogram(name: "i2c_smbus_xfer_emulated", scope: !1, file: !1, line: 313, type: !2327, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!2950 = !DILocalVariable(name: "adapter", arg: 1, scope: !2949, file: !1, line: 313, type: !131)
!2951 = !DILocation(line: 313, column: 56, scope: !2949)
!2952 = !DILocalVariable(name: "addr", arg: 2, scope: !2949, file: !1, line: 313, type: !163)
!2953 = !DILocation(line: 313, column: 69, scope: !2949)
!2954 = !DILocalVariable(name: "flags", arg: 3, scope: !2949, file: !1, line: 314, type: !123)
!2955 = !DILocation(line: 314, column: 23, scope: !2949)
!2956 = !DILocalVariable(name: "read_write", arg: 4, scope: !2949, file: !1, line: 315, type: !127)
!2957 = !DILocation(line: 315, column: 13, scope: !2949)
!2958 = !DILocalVariable(name: "command", arg: 5, scope: !2949, file: !1, line: 315, type: !100)
!2959 = !DILocation(line: 315, column: 28, scope: !2949)
!2960 = !DILocalVariable(name: "size", arg: 6, scope: !2949, file: !1, line: 315, type: !116)
!2961 = !DILocation(line: 315, column: 41, scope: !2949)
!2962 = !DILocalVariable(name: "data", arg: 7, scope: !2949, file: !1, line: 316, type: !164)
!2963 = !DILocation(line: 316, column: 30, scope: !2949)
!2964 = !DILocalVariable(name: "msgbuf0", scope: !2949, file: !1, line: 324, type: !2965)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 280, elements: !2966)
!2966 = !{!2967}
!2967 = !DISubrange(count: 35)
!2968 = !DILocation(line: 324, column: 16, scope: !2949)
!2969 = !DILocalVariable(name: "msgbuf1", scope: !2949, file: !1, line: 325, type: !2970)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 272, elements: !171)
!2971 = !DILocation(line: 325, column: 16, scope: !2949)
!2972 = !DILocalVariable(name: "num", scope: !2949, file: !1, line: 326, type: !116)
!2973 = !DILocation(line: 326, column: 6, scope: !2949)
!2974 = !DILocation(line: 326, column: 12, scope: !2949)
!2975 = !DILocation(line: 326, column: 23, scope: !2949)
!2976 = !DILocalVariable(name: "i", scope: !2949, file: !1, line: 327, type: !116)
!2977 = !DILocation(line: 327, column: 6, scope: !2949)
!2978 = !DILocalVariable(name: "partial_pec", scope: !2949, file: !1, line: 328, type: !100)
!2979 = !DILocation(line: 328, column: 5, scope: !2949)
!2980 = !DILocalVariable(name: "status", scope: !2949, file: !1, line: 329, type: !116)
!2981 = !DILocation(line: 329, column: 6, scope: !2949)
!2982 = !DILocalVariable(name: "msg", scope: !2949, file: !1, line: 330, type: !2983)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1013)
!2984 = !DILocation(line: 330, column: 17, scope: !2949)
!2985 = !DILocation(line: 330, column: 26, scope: !2949)
!2986 = !DILocation(line: 331, column: 3, scope: !2949)
!2987 = !DILocation(line: 332, column: 12, scope: !2949)
!2988 = !DILocation(line: 333, column: 13, scope: !2949)
!2989 = !DILocation(line: 335, column: 11, scope: !2949)
!2990 = !DILocation(line: 336, column: 6, scope: !2949)
!2991 = !DILocation(line: 337, column: 12, scope: !2949)
!2992 = !DILocation(line: 338, column: 13, scope: !2949)
!2993 = !DILocation(line: 338, column: 19, scope: !2949)
!2994 = !DILocation(line: 340, column: 11, scope: !2949)
!2995 = !DILocation(line: 344, column: 15, scope: !2949)
!2996 = !DILocation(line: 344, column: 2, scope: !2949)
!2997 = !DILocation(line: 344, column: 13, scope: !2949)
!2998 = !DILocation(line: 345, column: 10, scope: !2949)
!2999 = !DILocation(line: 345, column: 2, scope: !2949)
!3000 = !DILocation(line: 347, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 345, column: 16)
!3002 = !DILocation(line: 347, column: 10, scope: !3001)
!3003 = !DILocation(line: 347, column: 14, scope: !3001)
!3004 = !DILocation(line: 349, column: 18, scope: !3001)
!3005 = !DILocation(line: 349, column: 27, scope: !3001)
!3006 = !DILocation(line: 349, column: 38, scope: !3001)
!3007 = !DILocation(line: 349, column: 24, scope: !3001)
!3008 = !DILocation(line: 349, column: 3, scope: !3001)
!3009 = !DILocation(line: 349, column: 10, scope: !3001)
!3010 = !DILocation(line: 349, column: 16, scope: !3001)
!3011 = !DILocation(line: 351, column: 7, scope: !3001)
!3012 = !DILocation(line: 352, column: 3, scope: !3001)
!3013 = !DILocation(line: 354, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 354, column: 7)
!3015 = !DILocation(line: 354, column: 18, scope: !3014)
!3016 = !DILocation(line: 354, column: 7, scope: !3001)
!3017 = !DILocation(line: 356, column: 30, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !1, line: 354, column: 37)
!3019 = !DILocation(line: 356, column: 28, scope: !3018)
!3020 = !DILocation(line: 356, column: 19, scope: !3018)
!3021 = !DILocation(line: 356, column: 4, scope: !3018)
!3022 = !DILocation(line: 356, column: 11, scope: !3018)
!3023 = !DILocation(line: 356, column: 17, scope: !3018)
!3024 = !DILocation(line: 357, column: 8, scope: !3018)
!3025 = !DILocation(line: 358, column: 3, scope: !3018)
!3026 = !DILocation(line: 359, column: 3, scope: !3001)
!3027 = !DILocation(line: 361, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 361, column: 7)
!3029 = !DILocation(line: 361, column: 18, scope: !3028)
!3030 = !DILocation(line: 361, column: 7, scope: !3001)
!3031 = !DILocation(line: 362, column: 4, scope: !3028)
!3032 = !DILocation(line: 362, column: 11, scope: !3028)
!3033 = !DILocation(line: 362, column: 15, scope: !3028)
!3034 = !DILocation(line: 364, column: 4, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 363, column: 8)
!3036 = !DILocation(line: 364, column: 11, scope: !3035)
!3037 = !DILocation(line: 364, column: 15, scope: !3035)
!3038 = !DILocation(line: 365, column: 17, scope: !3035)
!3039 = !DILocation(line: 365, column: 23, scope: !3035)
!3040 = !DILocation(line: 365, column: 4, scope: !3035)
!3041 = !DILocation(line: 365, column: 15, scope: !3035)
!3042 = !DILocation(line: 367, column: 3, scope: !3001)
!3043 = !DILocation(line: 369, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 369, column: 7)
!3045 = !DILocation(line: 369, column: 18, scope: !3044)
!3046 = !DILocation(line: 369, column: 7, scope: !3001)
!3047 = !DILocation(line: 370, column: 4, scope: !3044)
!3048 = !DILocation(line: 370, column: 11, scope: !3044)
!3049 = !DILocation(line: 370, column: 15, scope: !3044)
!3050 = !DILocation(line: 372, column: 4, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !1, line: 371, column: 8)
!3052 = !DILocation(line: 372, column: 11, scope: !3051)
!3053 = !DILocation(line: 372, column: 15, scope: !3051)
!3054 = !DILocation(line: 373, column: 17, scope: !3051)
!3055 = !DILocation(line: 373, column: 23, scope: !3051)
!3056 = !DILocation(line: 373, column: 28, scope: !3051)
!3057 = !DILocation(line: 373, column: 4, scope: !3051)
!3058 = !DILocation(line: 373, column: 15, scope: !3051)
!3059 = !DILocation(line: 374, column: 17, scope: !3051)
!3060 = !DILocation(line: 374, column: 23, scope: !3051)
!3061 = !DILocation(line: 374, column: 28, scope: !3051)
!3062 = !DILocation(line: 374, column: 4, scope: !3051)
!3063 = !DILocation(line: 374, column: 15, scope: !3051)
!3064 = !DILocation(line: 376, column: 3, scope: !3001)
!3065 = !DILocation(line: 378, column: 7, scope: !3001)
!3066 = !DILocation(line: 379, column: 14, scope: !3001)
!3067 = !DILocation(line: 380, column: 3, scope: !3001)
!3068 = !DILocation(line: 380, column: 10, scope: !3001)
!3069 = !DILocation(line: 380, column: 14, scope: !3001)
!3070 = !DILocation(line: 381, column: 3, scope: !3001)
!3071 = !DILocation(line: 381, column: 10, scope: !3001)
!3072 = !DILocation(line: 381, column: 14, scope: !3001)
!3073 = !DILocation(line: 382, column: 16, scope: !3001)
!3074 = !DILocation(line: 382, column: 22, scope: !3001)
!3075 = !DILocation(line: 382, column: 27, scope: !3001)
!3076 = !DILocation(line: 382, column: 3, scope: !3001)
!3077 = !DILocation(line: 382, column: 14, scope: !3001)
!3078 = !DILocation(line: 383, column: 16, scope: !3001)
!3079 = !DILocation(line: 383, column: 22, scope: !3001)
!3080 = !DILocation(line: 383, column: 27, scope: !3001)
!3081 = !DILocation(line: 383, column: 3, scope: !3001)
!3082 = !DILocation(line: 383, column: 14, scope: !3001)
!3083 = !DILocation(line: 384, column: 3, scope: !3001)
!3084 = !DILocation(line: 386, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 386, column: 7)
!3086 = !DILocation(line: 386, column: 18, scope: !3085)
!3087 = !DILocation(line: 386, column: 7, scope: !3001)
!3088 = !DILocation(line: 387, column: 4, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 386, column: 37)
!3090 = !DILocation(line: 387, column: 11, scope: !3089)
!3091 = !DILocation(line: 387, column: 17, scope: !3089)
!3092 = !DILocation(line: 388, column: 4, scope: !3089)
!3093 = !DILocation(line: 388, column: 11, scope: !3089)
!3094 = !DILocation(line: 388, column: 15, scope: !3089)
!3095 = !DILocation(line: 390, column: 30, scope: !3089)
!3096 = !DILocation(line: 390, column: 4, scope: !3089)
!3097 = !DILocation(line: 391, column: 3, scope: !3089)
!3098 = !DILocation(line: 392, column: 17, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 391, column: 10)
!3100 = !DILocation(line: 392, column: 23, scope: !3099)
!3101 = !DILocation(line: 392, column: 32, scope: !3099)
!3102 = !DILocation(line: 392, column: 4, scope: !3099)
!3103 = !DILocation(line: 392, column: 11, scope: !3099)
!3104 = !DILocation(line: 392, column: 15, scope: !3099)
!3105 = !DILocation(line: 393, column: 8, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 393, column: 8)
!3107 = !DILocation(line: 393, column: 15, scope: !3106)
!3108 = !DILocation(line: 393, column: 19, scope: !3106)
!3109 = !DILocation(line: 393, column: 8, scope: !3099)
!3110 = !DILocation(line: 394, column: 5, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !1, line: 393, column: 46)
!3112 = !DILocation(line: 397, column: 5, scope: !3111)
!3113 = !DILocation(line: 400, column: 30, scope: !3099)
!3114 = !DILocation(line: 400, column: 38, scope: !3099)
!3115 = !DILocation(line: 400, column: 4, scope: !3099)
!3116 = !DILocation(line: 401, column: 11, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 401, column: 4)
!3118 = !DILocation(line: 401, column: 9, scope: !3117)
!3119 = !DILocation(line: 401, column: 16, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !1, line: 401, column: 4)
!3121 = !DILocation(line: 401, column: 20, scope: !3120)
!3122 = !DILocation(line: 401, column: 27, scope: !3120)
!3123 = !DILocation(line: 401, column: 18, scope: !3120)
!3124 = !DILocation(line: 401, column: 4, scope: !3117)
!3125 = !DILocation(line: 402, column: 21, scope: !3120)
!3126 = !DILocation(line: 402, column: 27, scope: !3120)
!3127 = !DILocation(line: 402, column: 33, scope: !3120)
!3128 = !DILocation(line: 402, column: 35, scope: !3120)
!3129 = !DILocation(line: 402, column: 5, scope: !3120)
!3130 = !DILocation(line: 402, column: 12, scope: !3120)
!3131 = !DILocation(line: 402, column: 16, scope: !3120)
!3132 = !DILocation(line: 402, column: 19, scope: !3120)
!3133 = !DILocation(line: 401, column: 33, scope: !3120)
!3134 = !DILocation(line: 401, column: 4, scope: !3120)
!3135 = distinct !{!3135, !3124, !3136}
!3136 = !DILocation(line: 402, column: 38, scope: !3117)
!3137 = !DILocation(line: 404, column: 3, scope: !3001)
!3138 = !DILocation(line: 406, column: 7, scope: !3001)
!3139 = !DILocation(line: 407, column: 14, scope: !3001)
!3140 = !DILocation(line: 408, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 408, column: 7)
!3142 = !DILocation(line: 408, column: 13, scope: !3141)
!3143 = !DILocation(line: 408, column: 22, scope: !3141)
!3144 = !DILocation(line: 408, column: 7, scope: !3001)
!3145 = !DILocation(line: 409, column: 4, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3141, file: !1, line: 408, column: 45)
!3147 = !DILocation(line: 412, column: 4, scope: !3146)
!3148 = !DILocation(line: 415, column: 16, scope: !3001)
!3149 = !DILocation(line: 415, column: 22, scope: !3001)
!3150 = !DILocation(line: 415, column: 31, scope: !3001)
!3151 = !DILocation(line: 415, column: 3, scope: !3001)
!3152 = !DILocation(line: 415, column: 10, scope: !3001)
!3153 = !DILocation(line: 415, column: 14, scope: !3001)
!3154 = !DILocation(line: 416, column: 29, scope: !3001)
!3155 = !DILocation(line: 416, column: 37, scope: !3001)
!3156 = !DILocation(line: 416, column: 3, scope: !3001)
!3157 = !DILocation(line: 417, column: 10, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 417, column: 3)
!3159 = !DILocation(line: 417, column: 8, scope: !3158)
!3160 = !DILocation(line: 417, column: 15, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !1, line: 417, column: 3)
!3162 = !DILocation(line: 417, column: 19, scope: !3161)
!3163 = !DILocation(line: 417, column: 26, scope: !3161)
!3164 = !DILocation(line: 417, column: 17, scope: !3161)
!3165 = !DILocation(line: 417, column: 3, scope: !3158)
!3166 = !DILocation(line: 418, column: 20, scope: !3161)
!3167 = !DILocation(line: 418, column: 26, scope: !3161)
!3168 = !DILocation(line: 418, column: 32, scope: !3161)
!3169 = !DILocation(line: 418, column: 34, scope: !3161)
!3170 = !DILocation(line: 418, column: 4, scope: !3161)
!3171 = !DILocation(line: 418, column: 11, scope: !3161)
!3172 = !DILocation(line: 418, column: 15, scope: !3161)
!3173 = !DILocation(line: 418, column: 18, scope: !3161)
!3174 = !DILocation(line: 417, column: 32, scope: !3161)
!3175 = !DILocation(line: 417, column: 3, scope: !3161)
!3176 = distinct !{!3176, !3165, !3177}
!3177 = !DILocation(line: 418, column: 37, scope: !3158)
!3178 = !DILocation(line: 420, column: 3, scope: !3001)
!3179 = !DILocation(line: 420, column: 10, scope: !3001)
!3180 = !DILocation(line: 420, column: 16, scope: !3001)
!3181 = !DILocation(line: 421, column: 3, scope: !3001)
!3182 = !DILocation(line: 421, column: 10, scope: !3001)
!3183 = !DILocation(line: 421, column: 14, scope: !3001)
!3184 = !DILocation(line: 423, column: 29, scope: !3001)
!3185 = !DILocation(line: 423, column: 3, scope: !3001)
!3186 = !DILocation(line: 424, column: 3, scope: !3001)
!3187 = !DILocation(line: 426, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 426, column: 7)
!3189 = !DILocation(line: 426, column: 13, scope: !3188)
!3190 = !DILocation(line: 426, column: 22, scope: !3188)
!3191 = !DILocation(line: 426, column: 7, scope: !3001)
!3192 = !DILocation(line: 427, column: 4, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 426, column: 45)
!3194 = !DILocation(line: 430, column: 4, scope: !3193)
!3195 = !DILocation(line: 433, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 433, column: 7)
!3197 = !DILocation(line: 433, column: 18, scope: !3196)
!3198 = !DILocation(line: 433, column: 7, scope: !3001)
!3199 = !DILocation(line: 434, column: 17, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3196, file: !1, line: 433, column: 37)
!3201 = !DILocation(line: 434, column: 23, scope: !3200)
!3202 = !DILocation(line: 434, column: 4, scope: !3200)
!3203 = !DILocation(line: 434, column: 11, scope: !3200)
!3204 = !DILocation(line: 434, column: 15, scope: !3200)
!3205 = !DILocation(line: 435, column: 30, scope: !3200)
!3206 = !DILocation(line: 435, column: 4, scope: !3200)
!3207 = !DILocation(line: 436, column: 3, scope: !3200)
!3208 = !DILocation(line: 437, column: 17, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3196, file: !1, line: 436, column: 10)
!3210 = !DILocation(line: 437, column: 23, scope: !3209)
!3211 = !DILocation(line: 437, column: 32, scope: !3209)
!3212 = !DILocation(line: 437, column: 4, scope: !3209)
!3213 = !DILocation(line: 437, column: 11, scope: !3209)
!3214 = !DILocation(line: 437, column: 15, scope: !3209)
!3215 = !DILocation(line: 439, column: 30, scope: !3209)
!3216 = !DILocation(line: 439, column: 38, scope: !3209)
!3217 = !DILocation(line: 439, column: 4, scope: !3209)
!3218 = !DILocation(line: 440, column: 11, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 440, column: 4)
!3220 = !DILocation(line: 440, column: 9, scope: !3219)
!3221 = !DILocation(line: 440, column: 16, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 440, column: 4)
!3223 = !DILocation(line: 440, column: 21, scope: !3222)
!3224 = !DILocation(line: 440, column: 27, scope: !3222)
!3225 = !DILocation(line: 440, column: 18, scope: !3222)
!3226 = !DILocation(line: 440, column: 4, scope: !3219)
!3227 = !DILocation(line: 441, column: 21, scope: !3222)
!3228 = !DILocation(line: 441, column: 27, scope: !3222)
!3229 = !DILocation(line: 441, column: 33, scope: !3222)
!3230 = !DILocation(line: 441, column: 5, scope: !3222)
!3231 = !DILocation(line: 441, column: 12, scope: !3222)
!3232 = !DILocation(line: 441, column: 16, scope: !3222)
!3233 = !DILocation(line: 441, column: 19, scope: !3222)
!3234 = !DILocation(line: 440, column: 38, scope: !3222)
!3235 = !DILocation(line: 440, column: 4, scope: !3222)
!3236 = distinct !{!3236, !3226, !3237}
!3237 = !DILocation(line: 441, column: 34, scope: !3219)
!3238 = !DILocation(line: 443, column: 3, scope: !3001)
!3239 = !DILocation(line: 445, column: 3, scope: !3001)
!3240 = !DILocation(line: 446, column: 3, scope: !3001)
!3241 = !DILocation(line: 449, column: 8, scope: !2949)
!3242 = !DILocation(line: 449, column: 14, scope: !2949)
!3243 = !DILocation(line: 449, column: 32, scope: !2949)
!3244 = !DILocation(line: 449, column: 35, scope: !2949)
!3245 = !DILocation(line: 449, column: 40, scope: !2949)
!3246 = !DILocation(line: 450, column: 11, scope: !2949)
!3247 = !DILocation(line: 450, column: 14, scope: !2949)
!3248 = !DILocation(line: 450, column: 19, scope: !2949)
!3249 = !DILocation(line: 0, scope: !2949)
!3250 = !DILocation(line: 449, column: 4, scope: !2949)
!3251 = !DILocation(line: 451, column: 6, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 451, column: 6)
!3253 = !DILocation(line: 451, column: 6, scope: !2949)
!3254 = !DILocation(line: 453, column: 9, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 453, column: 7)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !1, line: 451, column: 9)
!3257 = !DILocation(line: 453, column: 16, scope: !3255)
!3258 = !DILocation(line: 453, column: 22, scope: !3255)
!3259 = !DILocation(line: 453, column: 7, scope: !3256)
!3260 = !DILocation(line: 454, column: 8, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !1, line: 454, column: 8)
!3262 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 453, column: 35)
!3263 = !DILocation(line: 454, column: 12, scope: !3261)
!3264 = !DILocation(line: 454, column: 8, scope: !3262)
!3265 = !DILocation(line: 455, column: 24, scope: !3261)
!3266 = !DILocation(line: 455, column: 5, scope: !3261)
!3267 = !DILocation(line: 457, column: 41, scope: !3261)
!3268 = !DILocation(line: 457, column: 19, scope: !3261)
!3269 = !DILocation(line: 457, column: 17, scope: !3261)
!3270 = !DILocation(line: 458, column: 3, scope: !3262)
!3271 = !DILocation(line: 460, column: 11, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 460, column: 7)
!3273 = !DILocation(line: 460, column: 14, scope: !3272)
!3274 = !DILocation(line: 460, column: 7, scope: !3272)
!3275 = !DILocation(line: 460, column: 18, scope: !3272)
!3276 = !DILocation(line: 460, column: 24, scope: !3272)
!3277 = !DILocation(line: 460, column: 7, scope: !3256)
!3278 = !DILocation(line: 461, column: 8, scope: !3272)
!3279 = !DILocation(line: 461, column: 11, scope: !3272)
!3280 = !DILocation(line: 461, column: 4, scope: !3272)
!3281 = !DILocation(line: 461, column: 15, scope: !3272)
!3282 = !DILocation(line: 461, column: 18, scope: !3272)
!3283 = !DILocation(line: 462, column: 2, scope: !3256)
!3284 = !DILocation(line: 464, column: 26, scope: !2949)
!3285 = !DILocation(line: 464, column: 35, scope: !2949)
!3286 = !DILocation(line: 464, column: 40, scope: !2949)
!3287 = !DILocation(line: 464, column: 11, scope: !2949)
!3288 = !DILocation(line: 464, column: 9, scope: !2949)
!3289 = !DILocation(line: 465, column: 6, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 465, column: 6)
!3291 = !DILocation(line: 465, column: 13, scope: !3290)
!3292 = !DILocation(line: 465, column: 6, scope: !2949)
!3293 = !DILocation(line: 466, column: 3, scope: !3290)
!3294 = !DILocation(line: 467, column: 6, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 467, column: 6)
!3296 = !DILocation(line: 467, column: 16, scope: !3295)
!3297 = !DILocation(line: 467, column: 13, scope: !3295)
!3298 = !DILocation(line: 467, column: 6, scope: !2949)
!3299 = !DILocation(line: 468, column: 10, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !1, line: 467, column: 21)
!3301 = !DILocation(line: 469, column: 3, scope: !3300)
!3302 = !DILocation(line: 471, column: 9, scope: !2949)
!3303 = !DILocation(line: 474, column: 6, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 474, column: 6)
!3305 = !DILocation(line: 474, column: 8, scope: !3304)
!3306 = !DILocation(line: 474, column: 16, scope: !3304)
!3307 = !DILocation(line: 474, column: 19, scope: !3304)
!3308 = !DILocation(line: 474, column: 12, scope: !3304)
!3309 = !DILocation(line: 474, column: 23, scope: !3304)
!3310 = !DILocation(line: 474, column: 29, scope: !3304)
!3311 = !DILocation(line: 474, column: 6, scope: !2949)
!3312 = !DILocation(line: 475, column: 32, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3304, file: !1, line: 474, column: 42)
!3314 = !DILocation(line: 475, column: 50, scope: !3313)
!3315 = !DILocation(line: 475, column: 53, scope: !3313)
!3316 = !DILocation(line: 475, column: 46, scope: !3313)
!3317 = !DILocation(line: 475, column: 12, scope: !3313)
!3318 = !DILocation(line: 475, column: 10, scope: !3313)
!3319 = !DILocation(line: 476, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3313, file: !1, line: 476, column: 7)
!3321 = !DILocation(line: 476, column: 14, scope: !3320)
!3322 = !DILocation(line: 476, column: 7, scope: !3313)
!3323 = !DILocation(line: 477, column: 4, scope: !3320)
!3324 = !DILocation(line: 478, column: 2, scope: !3313)
!3325 = !DILocation(line: 480, column: 6, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 480, column: 6)
!3327 = !DILocation(line: 480, column: 17, scope: !3326)
!3328 = !DILocation(line: 480, column: 6, scope: !2949)
!3329 = !DILocation(line: 481, column: 11, scope: !3326)
!3330 = !DILocation(line: 481, column: 3, scope: !3326)
!3331 = !DILocation(line: 483, column: 17, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !1, line: 481, column: 17)
!3333 = !DILocation(line: 483, column: 4, scope: !3332)
!3334 = !DILocation(line: 483, column: 10, scope: !3332)
!3335 = !DILocation(line: 483, column: 15, scope: !3332)
!3336 = !DILocation(line: 484, column: 4, scope: !3332)
!3337 = !DILocation(line: 486, column: 17, scope: !3332)
!3338 = !DILocation(line: 486, column: 4, scope: !3332)
!3339 = !DILocation(line: 486, column: 10, scope: !3332)
!3340 = !DILocation(line: 486, column: 15, scope: !3332)
!3341 = !DILocation(line: 487, column: 4, scope: !3332)
!3342 = !DILocation(line: 490, column: 17, scope: !3332)
!3343 = !DILocation(line: 490, column: 31, scope: !3332)
!3344 = !DILocation(line: 490, column: 42, scope: !3332)
!3345 = !DILocation(line: 490, column: 28, scope: !3332)
!3346 = !DILocation(line: 490, column: 4, scope: !3332)
!3347 = !DILocation(line: 490, column: 10, scope: !3332)
!3348 = !DILocation(line: 490, column: 15, scope: !3332)
!3349 = !DILocation(line: 491, column: 4, scope: !3332)
!3350 = !DILocation(line: 493, column: 11, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 493, column: 4)
!3352 = !DILocation(line: 493, column: 9, scope: !3351)
!3353 = !DILocation(line: 493, column: 16, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 493, column: 4)
!3355 = !DILocation(line: 493, column: 20, scope: !3354)
!3356 = !DILocation(line: 493, column: 26, scope: !3354)
!3357 = !DILocation(line: 493, column: 18, scope: !3354)
!3358 = !DILocation(line: 493, column: 4, scope: !3351)
!3359 = !DILocation(line: 494, column: 26, scope: !3354)
!3360 = !DILocation(line: 494, column: 33, scope: !3354)
!3361 = !DILocation(line: 494, column: 37, scope: !3354)
!3362 = !DILocation(line: 494, column: 5, scope: !3354)
!3363 = !DILocation(line: 494, column: 11, scope: !3354)
!3364 = !DILocation(line: 494, column: 17, scope: !3354)
!3365 = !DILocation(line: 494, column: 19, scope: !3354)
!3366 = !DILocation(line: 494, column: 24, scope: !3354)
!3367 = !DILocation(line: 493, column: 37, scope: !3354)
!3368 = !DILocation(line: 493, column: 4, scope: !3354)
!3369 = distinct !{!3369, !3358, !3370}
!3370 = !DILocation(line: 494, column: 38, scope: !3351)
!3371 = !DILocation(line: 495, column: 4, scope: !3332)
!3372 = !DILocation(line: 498, column: 8, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 498, column: 8)
!3374 = !DILocation(line: 498, column: 15, scope: !3373)
!3375 = !DILocation(line: 498, column: 22, scope: !3373)
!3376 = !DILocation(line: 498, column: 8, scope: !3332)
!3377 = !DILocation(line: 499, column: 5, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3373, file: !1, line: 498, column: 45)
!3379 = !DILocation(line: 502, column: 12, scope: !3378)
!3380 = !DILocation(line: 503, column: 5, scope: !3378)
!3381 = !DILocation(line: 505, column: 11, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 505, column: 4)
!3383 = !DILocation(line: 505, column: 9, scope: !3382)
!3384 = !DILocation(line: 505, column: 16, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 505, column: 4)
!3386 = !DILocation(line: 505, column: 20, scope: !3385)
!3387 = !DILocation(line: 505, column: 27, scope: !3385)
!3388 = !DILocation(line: 505, column: 34, scope: !3385)
!3389 = !DILocation(line: 505, column: 18, scope: !3385)
!3390 = !DILocation(line: 505, column: 4, scope: !3382)
!3391 = !DILocation(line: 506, column: 22, scope: !3385)
!3392 = !DILocation(line: 506, column: 29, scope: !3385)
!3393 = !DILocation(line: 506, column: 33, scope: !3385)
!3394 = !DILocation(line: 506, column: 5, scope: !3385)
!3395 = !DILocation(line: 506, column: 11, scope: !3385)
!3396 = !DILocation(line: 506, column: 17, scope: !3385)
!3397 = !DILocation(line: 506, column: 20, scope: !3385)
!3398 = !DILocation(line: 505, column: 40, scope: !3385)
!3399 = !DILocation(line: 505, column: 4, scope: !3385)
!3400 = distinct !{!3400, !3390, !3401}
!3401 = !DILocation(line: 506, column: 34, scope: !3382)
!3402 = !DILocation(line: 507, column: 4, scope: !3332)
!3403 = !DILocation(line: 508, column: 3, scope: !3332)
!3404 = !DILocation(line: 480, column: 20, scope: !3326)
!3405 = !DILabel(scope: !2949, name: "cleanup", file: !1, line: 510)
!3406 = !DILocation(line: 510, column: 1, scope: !2949)
!3407 = !DILocation(line: 511, column: 6, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 511, column: 6)
!3409 = !DILocation(line: 511, column: 13, scope: !3408)
!3410 = !DILocation(line: 511, column: 19, scope: !3408)
!3411 = !DILocation(line: 511, column: 6, scope: !2949)
!3412 = !DILocation(line: 512, column: 9, scope: !3408)
!3413 = !DILocation(line: 512, column: 16, scope: !3408)
!3414 = !DILocation(line: 512, column: 3, scope: !3408)
!3415 = !DILocation(line: 513, column: 6, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 513, column: 6)
!3417 = !DILocation(line: 513, column: 13, scope: !3416)
!3418 = !DILocation(line: 513, column: 19, scope: !3416)
!3419 = !DILocation(line: 513, column: 6, scope: !2949)
!3420 = !DILocation(line: 514, column: 9, scope: !3416)
!3421 = !DILocation(line: 514, column: 16, scope: !3416)
!3422 = !DILocation(line: 514, column: 3, scope: !3416)
!3423 = !DILocation(line: 516, column: 9, scope: !2949)
!3424 = !DILocation(line: 516, column: 2, scope: !2949)
!3425 = !DILocation(line: 517, column: 1, scope: !2949)
!3426 = distinct !DISubprogram(name: "trace_smbus_reply", scope: !2893, file: !2893, line: 133, type: !3427, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !2896, !163, !123, !127, !100, !116, !2898, !116}
!3429 = !DILocalVariable(name: "adap", arg: 1, scope: !3426, file: !2893, line: 133, type: !2896)
!3430 = !DILocation(line: 133, column: 1, scope: !3426)
!3431 = !DILocalVariable(name: "addr", arg: 2, scope: !3426, file: !2893, line: 133, type: !163)
!3432 = !DILocalVariable(name: "flags", arg: 3, scope: !3426, file: !2893, line: 133, type: !123)
!3433 = !DILocalVariable(name: "read_write", arg: 4, scope: !3426, file: !2893, line: 133, type: !127)
!3434 = !DILocalVariable(name: "command", arg: 5, scope: !3426, file: !2893, line: 133, type: !100)
!3435 = !DILocalVariable(name: "protocol", arg: 6, scope: !3426, file: !2893, line: 133, type: !116)
!3436 = !DILocalVariable(name: "data", arg: 7, scope: !3426, file: !2893, line: 133, type: !2898)
!3437 = !DILocalVariable(name: "res", arg: 8, scope: !3426, file: !2893, line: 133, type: !116)
!3438 = distinct !DISubprogram(name: "trace_smbus_result", scope: !2893, file: !2893, line: 199, type: !3439, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !2896, !163, !123, !127, !100, !116, !116}
!3441 = !DILocalVariable(name: "adap", arg: 1, scope: !3438, file: !2893, line: 199, type: !2896)
!3442 = !DILocation(line: 199, column: 1, scope: !3438)
!3443 = !DILocalVariable(name: "addr", arg: 2, scope: !3438, file: !2893, line: 199, type: !163)
!3444 = !DILocalVariable(name: "flags", arg: 3, scope: !3438, file: !2893, line: 199, type: !123)
!3445 = !DILocalVariable(name: "read_write", arg: 4, scope: !3438, file: !2893, line: 199, type: !127)
!3446 = !DILocalVariable(name: "command", arg: 5, scope: !3438, file: !2893, line: 199, type: !100)
!3447 = !DILocalVariable(name: "protocol", arg: 6, scope: !3438, file: !2893, line: 199, type: !116)
!3448 = !DILocalVariable(name: "res", arg: 7, scope: !3438, file: !2893, line: 199, type: !116)
!3449 = distinct !DISubprogram(name: "i2c_smbus_read_i2c_block_data_or_emulated", scope: !1, file: !1, line: 637, type: !2557, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3450 = !DILocalVariable(name: "client", arg: 1, scope: !3449, file: !1, line: 637, type: !117)
!3451 = !DILocation(line: 637, column: 72, scope: !3449)
!3452 = !DILocalVariable(name: "command", arg: 2, scope: !3449, file: !1, line: 638, type: !100)
!3453 = !DILocation(line: 638, column: 15, scope: !3449)
!3454 = !DILocalVariable(name: "length", arg: 3, scope: !3449, file: !1, line: 638, type: !100)
!3455 = !DILocation(line: 638, column: 27, scope: !3449)
!3456 = !DILocalVariable(name: "values", arg: 4, scope: !3449, file: !1, line: 638, type: !2482)
!3457 = !DILocation(line: 638, column: 39, scope: !3449)
!3458 = !DILocalVariable(name: "i", scope: !3449, file: !1, line: 640, type: !100)
!3459 = !DILocation(line: 640, column: 5, scope: !3449)
!3460 = !DILocalVariable(name: "status", scope: !3449, file: !1, line: 641, type: !116)
!3461 = !DILocation(line: 641, column: 6, scope: !3449)
!3462 = !DILocation(line: 643, column: 6, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 643, column: 6)
!3464 = !DILocation(line: 643, column: 13, scope: !3463)
!3465 = !DILocation(line: 643, column: 6, scope: !3449)
!3466 = !DILocation(line: 644, column: 10, scope: !3463)
!3467 = !DILocation(line: 644, column: 3, scope: !3463)
!3468 = !DILocation(line: 646, column: 30, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 646, column: 6)
!3470 = !DILocation(line: 646, column: 38, scope: !3469)
!3471 = !DILocation(line: 646, column: 6, scope: !3469)
!3472 = !DILocation(line: 646, column: 6, scope: !3449)
!3473 = !DILocation(line: 647, column: 40, scope: !3469)
!3474 = !DILocation(line: 647, column: 48, scope: !3469)
!3475 = !DILocation(line: 647, column: 57, scope: !3469)
!3476 = !DILocation(line: 647, column: 65, scope: !3469)
!3477 = !DILocation(line: 647, column: 10, scope: !3469)
!3478 = !DILocation(line: 647, column: 3, scope: !3469)
!3479 = !DILocation(line: 649, column: 31, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 649, column: 6)
!3481 = !DILocation(line: 649, column: 39, scope: !3480)
!3482 = !DILocation(line: 649, column: 7, scope: !3480)
!3483 = !DILocation(line: 649, column: 6, scope: !3449)
!3484 = !DILocation(line: 650, column: 3, scope: !3480)
!3485 = !DILocation(line: 652, column: 30, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 652, column: 6)
!3487 = !DILocation(line: 652, column: 38, scope: !3486)
!3488 = !DILocation(line: 652, column: 6, scope: !3486)
!3489 = !DILocation(line: 652, column: 6, scope: !3449)
!3490 = !DILocation(line: 653, column: 3, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3486, file: !1, line: 652, column: 79)
!3492 = !DILocation(line: 653, column: 11, scope: !3491)
!3493 = !DILocation(line: 653, column: 13, scope: !3491)
!3494 = !DILocation(line: 653, column: 21, scope: !3491)
!3495 = !DILocation(line: 653, column: 18, scope: !3491)
!3496 = !DILocation(line: 654, column: 38, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3491, file: !1, line: 653, column: 29)
!3498 = !DILocation(line: 654, column: 46, scope: !3497)
!3499 = !DILocation(line: 654, column: 56, scope: !3497)
!3500 = !DILocation(line: 654, column: 54, scope: !3497)
!3501 = !DILocation(line: 654, column: 13, scope: !3497)
!3502 = !DILocation(line: 654, column: 11, scope: !3497)
!3503 = !DILocation(line: 655, column: 8, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3497, file: !1, line: 655, column: 8)
!3505 = !DILocation(line: 655, column: 15, scope: !3504)
!3506 = !DILocation(line: 655, column: 8, scope: !3497)
!3507 = !DILocation(line: 656, column: 12, scope: !3504)
!3508 = !DILocation(line: 656, column: 5, scope: !3504)
!3509 = !DILocation(line: 657, column: 16, scope: !3497)
!3510 = !DILocation(line: 657, column: 23, scope: !3497)
!3511 = !DILocation(line: 657, column: 4, scope: !3497)
!3512 = !DILocation(line: 657, column: 11, scope: !3497)
!3513 = !DILocation(line: 657, column: 14, scope: !3497)
!3514 = !DILocation(line: 658, column: 20, scope: !3497)
!3515 = !DILocation(line: 658, column: 27, scope: !3497)
!3516 = !DILocation(line: 658, column: 4, scope: !3497)
!3517 = !DILocation(line: 658, column: 11, scope: !3497)
!3518 = !DILocation(line: 658, column: 13, scope: !3497)
!3519 = !DILocation(line: 658, column: 18, scope: !3497)
!3520 = !DILocation(line: 659, column: 6, scope: !3497)
!3521 = distinct !{!3521, !3490, !3522}
!3522 = !DILocation(line: 660, column: 3, scope: !3491)
!3523 = !DILocation(line: 661, column: 2, scope: !3491)
!3524 = !DILocation(line: 663, column: 2, scope: !3449)
!3525 = !DILocation(line: 663, column: 9, scope: !3449)
!3526 = !DILocation(line: 663, column: 13, scope: !3449)
!3527 = !DILocation(line: 663, column: 11, scope: !3449)
!3528 = !DILocation(line: 664, column: 37, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 663, column: 21)
!3530 = !DILocation(line: 664, column: 45, scope: !3529)
!3531 = !DILocation(line: 664, column: 55, scope: !3529)
!3532 = !DILocation(line: 664, column: 53, scope: !3529)
!3533 = !DILocation(line: 664, column: 12, scope: !3529)
!3534 = !DILocation(line: 664, column: 10, scope: !3529)
!3535 = !DILocation(line: 665, column: 7, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3529, file: !1, line: 665, column: 7)
!3537 = !DILocation(line: 665, column: 14, scope: !3536)
!3538 = !DILocation(line: 665, column: 7, scope: !3529)
!3539 = !DILocation(line: 666, column: 11, scope: !3536)
!3540 = !DILocation(line: 666, column: 4, scope: !3536)
!3541 = !DILocation(line: 667, column: 15, scope: !3529)
!3542 = !DILocation(line: 667, column: 3, scope: !3529)
!3543 = !DILocation(line: 667, column: 10, scope: !3529)
!3544 = !DILocation(line: 667, column: 13, scope: !3529)
!3545 = !DILocation(line: 668, column: 4, scope: !3529)
!3546 = distinct !{!3546, !3524, !3547}
!3547 = !DILocation(line: 669, column: 2, scope: !3449)
!3548 = !DILocation(line: 671, column: 9, scope: !3449)
!3549 = !DILocation(line: 671, column: 2, scope: !3449)
!3550 = !DILocation(line: 672, column: 1, scope: !3449)
!3551 = distinct !DISubprogram(name: "i2c_check_functionality", scope: !120, file: !120, line: 880, type: !3552, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!116, !131, !178}
!3554 = !DILocalVariable(name: "adap", arg: 1, scope: !3551, file: !120, line: 880, type: !131)
!3555 = !DILocation(line: 880, column: 63, scope: !3551)
!3556 = !DILocalVariable(name: "func", arg: 2, scope: !3551, file: !120, line: 880, type: !178)
!3557 = !DILocation(line: 880, column: 73, scope: !3551)
!3558 = !DILocation(line: 882, column: 10, scope: !3551)
!3559 = !DILocation(line: 882, column: 39, scope: !3551)
!3560 = !DILocation(line: 882, column: 17, scope: !3551)
!3561 = !DILocation(line: 882, column: 15, scope: !3551)
!3562 = !DILocation(line: 882, column: 49, scope: !3551)
!3563 = !DILocation(line: 882, column: 46, scope: !3551)
!3564 = !DILocation(line: 882, column: 2, scope: !3551)
!3565 = distinct !DISubprogram(name: "i2c_new_smbus_alert_device", scope: !1, file: !1, line: 690, type: !3566, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!3568, !131, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_smbus_alert_setup", file: !3571, line: 25, size: 32, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/i2c-smbus.h", directory: "/home/lizy2001/genbc/linux")
!3572 = !{!3573}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3570, file: !3571, line: 26, baseType: !116, size: 32)
!3574 = !DILocalVariable(name: "adapter", arg: 1, scope: !3565, file: !1, line: 690, type: !131)
!3575 = !DILocation(line: 690, column: 67, scope: !3565)
!3576 = !DILocalVariable(name: "setup", arg: 2, scope: !3565, file: !1, line: 691, type: !3569)
!3577 = !DILocation(line: 691, column: 42, scope: !3565)
!3578 = !DILocalVariable(name: "ara_board_info", scope: !3565, file: !1, line: 693, type: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !120, line: 410, size: 640, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3614, !3630, !3631}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3579, file: !120, line: 411, baseType: !126, size: 160)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3579, file: !120, line: 412, baseType: !123, size: 16, offset: 160)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3579, file: !120, line: 413, baseType: !123, size: 16, offset: 176)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3579, file: !120, line: 414, baseType: !1368, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3579, file: !120, line: 415, baseType: !99, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3579, file: !120, line: 416, baseType: !1993, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3579, file: !120, line: 417, baseType: !2006, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3579, file: !120, line: 418, baseType: !3589, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3591)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !63, line: 263, size: 256, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3591, file: !63, line: 264, baseType: !1368, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3591, file: !63, line: 265, baseType: !868, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !3591, file: !63, line: 266, baseType: !619, size: 8, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3591, file: !63, line: 267, baseType: !62, size: 32, offset: 160)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3591, file: !63, line: 268, baseType: !3598, size: 64, offset: 192)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3591, file: !63, line: 268, size: 64, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3598, file: !63, line: 269, baseType: !1170, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3598, file: !63, line: 276, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3598, file: !63, line: 270, size: 64, elements: !3603)
!3603 = !{!3604, !3606, !3608, !3610, !3612}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !3602, file: !63, line: 271, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !354)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !3602, file: !63, line: 272, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !531)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !3602, file: !63, line: 273, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !1013)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !3602, file: !63, line: 274, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !399)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3602, file: !63, line: 275, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 64, elements: !399)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3579, file: !120, line: 419, baseType: !3615, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3618, line: 20, size: 512, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3619 = !{!3620, !3622, !3623, !3624, !3625, !3626, !3628, !3629}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3617, file: !3618, line: 21, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !98, line: 158, baseType: !1168)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3617, file: !3618, line: 22, baseType: !3621, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3617, file: !3618, line: 23, baseType: !1368, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3617, file: !3618, line: 24, baseType: !96, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3617, file: !3618, line: 25, baseType: !96, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3617, file: !3618, line: 26, baseType: !3627, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3617, file: !3618, line: 26, baseType: !3627, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3617, file: !3618, line: 26, baseType: !3627, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !3579, file: !120, line: 420, baseType: !5, size: 32, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3579, file: !120, line: 421, baseType: !116, size: 32, offset: 608)
!3632 = !DILocation(line: 693, column: 24, scope: !3565)
!3633 = !DILocation(line: 693, column: 41, scope: !3565)
!3634 = !DILocation(line: 694, column: 3, scope: !3565)
!3635 = !DILocation(line: 695, column: 20, scope: !3565)
!3636 = !DILocation(line: 698, column: 31, scope: !3565)
!3637 = !DILocation(line: 698, column: 9, scope: !3565)
!3638 = !DILocation(line: 698, column: 2, scope: !3565)
!3639 = distinct !DISubprogram(name: "of_i2c_setup_smbus_alert", scope: !1, file: !1, line: 703, type: !2263, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3640 = !DILocalVariable(name: "adapter", arg: 1, scope: !3639, file: !1, line: 703, type: !131)
!3641 = !DILocation(line: 703, column: 50, scope: !3639)
!3642 = !DILocalVariable(name: "irq", scope: !3639, file: !1, line: 705, type: !116)
!3643 = !DILocation(line: 705, column: 6, scope: !3639)
!3644 = !DILocation(line: 707, column: 33, scope: !3639)
!3645 = !DILocation(line: 707, column: 42, scope: !3639)
!3646 = !DILocation(line: 707, column: 46, scope: !3639)
!3647 = !DILocation(line: 707, column: 8, scope: !3639)
!3648 = !DILocation(line: 707, column: 6, scope: !3639)
!3649 = !DILocation(line: 709, column: 6, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3639, file: !1, line: 709, column: 6)
!3651 = !DILocation(line: 709, column: 10, scope: !3650)
!3652 = !DILocation(line: 709, column: 21, scope: !3650)
!3653 = !DILocation(line: 709, column: 24, scope: !3650)
!3654 = !DILocation(line: 709, column: 28, scope: !3650)
!3655 = !DILocation(line: 709, column: 6, scope: !3639)
!3656 = !DILocation(line: 710, column: 3, scope: !3650)
!3657 = !DILocation(line: 711, column: 11, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 711, column: 11)
!3659 = !DILocation(line: 711, column: 15, scope: !3658)
!3660 = !DILocation(line: 711, column: 11, scope: !3650)
!3661 = !DILocation(line: 712, column: 10, scope: !3658)
!3662 = !DILocation(line: 712, column: 3, scope: !3658)
!3663 = !DILocation(line: 714, column: 52, scope: !3639)
!3664 = !DILocation(line: 714, column: 25, scope: !3639)
!3665 = !DILocation(line: 714, column: 9, scope: !3639)
!3666 = !DILocation(line: 714, column: 2, scope: !3639)
!3667 = !DILocation(line: 715, column: 1, scope: !3639)
!3668 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !3669, file: !3669, line: 57, type: !3670, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3669 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!116, !1170}
!3672 = !DILocalVariable(name: "ptr", arg: 1, scope: !3668, file: !3669, line: 57, type: !1170)
!3673 = !DILocation(line: 57, column: 68, scope: !3668)
!3674 = !DILocation(line: 59, column: 13, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3668, file: !3669, line: 59, column: 6)
!3676 = !DILocation(line: 59, column: 6, scope: !3675)
!3677 = !DILocation(line: 59, column: 6, scope: !3668)
!3678 = !DILocation(line: 60, column: 18, scope: !3675)
!3679 = !DILocation(line: 60, column: 10, scope: !3675)
!3680 = !DILocation(line: 60, column: 3, scope: !3675)
!3681 = !DILocation(line: 62, column: 3, scope: !3675)
!3682 = !DILocation(line: 63, column: 1, scope: !3668)
!3683 = distinct !DISubprogram(name: "dev_name", scope: !28, file: !28, line: 609, type: !3684, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!1368, !2030}
!3686 = !DILocalVariable(name: "dev", arg: 1, scope: !3683, file: !28, line: 609, type: !2030)
!3687 = !DILocation(line: 609, column: 57, scope: !3683)
!3688 = !DILocation(line: 612, column: 6, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3683, file: !28, line: 612, column: 6)
!3690 = !DILocation(line: 612, column: 11, scope: !3689)
!3691 = !DILocation(line: 612, column: 6, scope: !3683)
!3692 = !DILocation(line: 613, column: 10, scope: !3689)
!3693 = !DILocation(line: 613, column: 15, scope: !3689)
!3694 = !DILocation(line: 613, column: 3, scope: !3689)
!3695 = !DILocation(line: 615, column: 23, scope: !3683)
!3696 = !DILocation(line: 615, column: 28, scope: !3683)
!3697 = !DILocation(line: 615, column: 9, scope: !3683)
!3698 = !DILocation(line: 615, column: 2, scope: !3683)
!3699 = !DILocation(line: 616, column: 1, scope: !3683)
!3700 = distinct !DISubprogram(name: "i2c_trylock_bus", scope: !120, file: !120, line: 777, type: !192, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3701 = !DILocalVariable(name: "adapter", arg: 1, scope: !3700, file: !120, line: 777, type: !131)
!3702 = !DILocation(line: 777, column: 37, scope: !3700)
!3703 = !DILocalVariable(name: "flags", arg: 2, scope: !3700, file: !120, line: 777, type: !5)
!3704 = !DILocation(line: 777, column: 59, scope: !3700)
!3705 = !DILocation(line: 779, column: 9, scope: !3700)
!3706 = !DILocation(line: 779, column: 18, scope: !3700)
!3707 = !DILocation(line: 779, column: 28, scope: !3700)
!3708 = !DILocation(line: 779, column: 40, scope: !3700)
!3709 = !DILocation(line: 779, column: 49, scope: !3700)
!3710 = !DILocation(line: 779, column: 2, scope: !3700)
!3711 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !120, file: !120, line: 763, type: !188, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3712 = !DILocalVariable(name: "adapter", arg: 1, scope: !3711, file: !120, line: 763, type: !131)
!3713 = !DILocation(line: 763, column: 34, scope: !3711)
!3714 = !DILocalVariable(name: "flags", arg: 2, scope: !3711, file: !120, line: 763, type: !5)
!3715 = !DILocation(line: 763, column: 56, scope: !3711)
!3716 = !DILocation(line: 765, column: 2, scope: !3711)
!3717 = !DILocation(line: 765, column: 11, scope: !3711)
!3718 = !DILocation(line: 765, column: 21, scope: !3711)
!3719 = !DILocation(line: 765, column: 30, scope: !3711)
!3720 = !DILocation(line: 765, column: 39, scope: !3711)
!3721 = !DILocation(line: 766, column: 1, scope: !3711)
!3722 = distinct !DISubprogram(name: "kobject_name", scope: !1365, file: !1365, line: 88, type: !3723, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!1368, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!3727 = !DILocalVariable(name: "kobj", arg: 1, scope: !3722, file: !1365, line: 88, type: !3725)
!3728 = !DILocation(line: 88, column: 62, scope: !3722)
!3729 = !DILocation(line: 90, column: 9, scope: !3722)
!3730 = !DILocation(line: 90, column: 15, scope: !3722)
!3731 = !DILocation(line: 90, column: 2, scope: !3722)
!3732 = distinct !DISubprogram(name: "test_bit", scope: !3733, file: !3733, line: 132, type: !3734, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3733 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!619, !94, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!3739 = !DILocalVariable(name: "nr", arg: 1, scope: !3740, file: !3741, line: 210, type: !94)
!3740 = distinct !DISubprogram(name: "variable_test_bit", scope: !3741, file: !3741, line: 210, type: !3734, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3741 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3742 = !DILocation(line: 210, column: 52, scope: !3740, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 135, column: 9, scope: !3732)
!3744 = !DILocalVariable(name: "addr", arg: 2, scope: !3740, file: !3741, line: 210, type: !3736)
!3745 = !DILocation(line: 210, column: 86, scope: !3740, inlinedAt: !3743)
!3746 = !DILocalVariable(name: "oldbit", scope: !3740, file: !3741, line: 212, type: !619)
!3747 = !DILocation(line: 212, column: 7, scope: !3740, inlinedAt: !3743)
!3748 = !DILocalVariable(name: "nr", arg: 1, scope: !3749, file: !3741, line: 204, type: !94)
!3749 = distinct !DISubprogram(name: "constant_test_bit", scope: !3741, file: !3741, line: 204, type: !3734, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3750 = !DILocation(line: 204, column: 52, scope: !3749, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 135, column: 9, scope: !3732)
!3752 = !DILocalVariable(name: "addr", arg: 2, scope: !3749, file: !3741, line: 204, type: !3736)
!3753 = !DILocation(line: 204, column: 86, scope: !3749, inlinedAt: !3751)
!3754 = !DILocalVariable(name: "v", arg: 1, scope: !3755, file: !3756, line: 69, type: !3759)
!3755 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3756, file: !3756, line: 69, type: !3757, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3756 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !3759, !868}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3762 = !DILocation(line: 69, column: 73, scope: !3755, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 134, column: 2, scope: !3732)
!3764 = !DILocalVariable(name: "size", arg: 2, scope: !3755, file: !3756, line: 69, type: !868)
!3765 = !DILocation(line: 69, column: 83, scope: !3755, inlinedAt: !3763)
!3766 = !DILocalVariable(name: "nr", arg: 1, scope: !3732, file: !3733, line: 132, type: !94)
!3767 = !DILocation(line: 132, column: 34, scope: !3732)
!3768 = !DILocalVariable(name: "addr", arg: 2, scope: !3732, file: !3733, line: 132, type: !3736)
!3769 = !DILocation(line: 132, column: 68, scope: !3732)
!3770 = !DILocation(line: 134, column: 25, scope: !3732)
!3771 = !DILocation(line: 134, column: 32, scope: !3732)
!3772 = !DILocation(line: 134, column: 30, scope: !3732)
!3773 = !DILocation(line: 71, column: 19, scope: !3755, inlinedAt: !3763)
!3774 = !DILocation(line: 71, column: 22, scope: !3755, inlinedAt: !3763)
!3775 = !DILocation(line: 71, column: 2, scope: !3755, inlinedAt: !3763)
!3776 = !DILocation(line: 72, column: 2, scope: !3755, inlinedAt: !3763)
!3777 = !DILocation(line: 135, column: 9, scope: !3732)
!3778 = !DILocation(line: 206, column: 19, scope: !3749, inlinedAt: !3751)
!3779 = !DILocation(line: 206, column: 22, scope: !3749, inlinedAt: !3751)
!3780 = !DILocation(line: 206, column: 15, scope: !3749, inlinedAt: !3751)
!3781 = !DILocation(line: 207, column: 4, scope: !3749, inlinedAt: !3751)
!3782 = !DILocation(line: 207, column: 9, scope: !3749, inlinedAt: !3751)
!3783 = !DILocation(line: 207, column: 12, scope: !3749, inlinedAt: !3751)
!3784 = !DILocation(line: 206, column: 44, scope: !3749, inlinedAt: !3751)
!3785 = !DILocation(line: 207, column: 37, scope: !3749, inlinedAt: !3751)
!3786 = !DILocation(line: 217, column: 33, scope: !3740, inlinedAt: !3743)
!3787 = !DILocation(line: 217, column: 46, scope: !3740, inlinedAt: !3743)
!3788 = !DILocation(line: 214, column: 2, scope: !3740, inlinedAt: !3743)
!3789 = !{i32 -2147047288, i32 -2147047228}
!3790 = !DILocation(line: 219, column: 9, scope: !3740, inlinedAt: !3743)
!3791 = !DILocation(line: 135, column: 2, scope: !3732)
!3792 = distinct !DISubprogram(name: "test_and_set_bit", scope: !3793, file: !3793, line: 68, type: !3794, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3793 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!619, !94, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3797 = !DILocalVariable(name: "nr", arg: 1, scope: !3798, file: !3741, line: 136, type: !94)
!3798 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !3741, file: !3741, line: 136, type: !3794, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3799 = !DILocation(line: 136, column: 28, scope: !3798, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 71, column: 9, scope: !3792)
!3801 = !DILocalVariable(name: "addr", arg: 2, scope: !3798, file: !3741, line: 136, type: !3796)
!3802 = !DILocation(line: 136, column: 56, scope: !3798, inlinedAt: !3800)
!3803 = !DILocalVariable(name: "c", scope: !3804, file: !3741, line: 138, type: !619)
!3804 = distinct !DILexicalBlock(scope: !3798, file: !3741, line: 138, column: 9)
!3805 = !DILocation(line: 138, column: 9, scope: !3804, inlinedAt: !3800)
!3806 = !DILocalVariable(name: "v", arg: 1, scope: !3807, file: !3756, line: 99, type: !3759)
!3807 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3756, file: !3756, line: 99, type: !3757, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3808 = !DILocation(line: 99, column: 79, scope: !3807, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 70, column: 2, scope: !3792)
!3810 = !DILocalVariable(name: "size", arg: 2, scope: !3807, file: !3756, line: 99, type: !868)
!3811 = !DILocation(line: 99, column: 89, scope: !3807, inlinedAt: !3809)
!3812 = !DILocalVariable(name: "nr", arg: 1, scope: !3792, file: !3793, line: 68, type: !94)
!3813 = !DILocation(line: 68, column: 42, scope: !3792)
!3814 = !DILocalVariable(name: "addr", arg: 2, scope: !3792, file: !3793, line: 68, type: !3796)
!3815 = !DILocation(line: 68, column: 70, scope: !3792)
!3816 = !DILocation(line: 70, column: 31, scope: !3792)
!3817 = !DILocation(line: 70, column: 38, scope: !3792)
!3818 = !DILocation(line: 70, column: 36, scope: !3792)
!3819 = !DILocation(line: 101, column: 20, scope: !3807, inlinedAt: !3809)
!3820 = !DILocation(line: 101, column: 23, scope: !3807, inlinedAt: !3809)
!3821 = !DILocation(line: 101, column: 2, scope: !3807, inlinedAt: !3809)
!3822 = !DILocation(line: 102, column: 2, scope: !3807, inlinedAt: !3809)
!3823 = !DILocation(line: 71, column: 31, scope: !3792)
!3824 = !DILocation(line: 71, column: 35, scope: !3792)
!3825 = !{i32 -2147052050, i32 -2147051954}
!3826 = !DILocation(line: 71, column: 2, scope: !3792)
!3827 = distinct !DISubprogram(name: "kasan_check_read", scope: !3828, file: !3828, line: 34, type: !3829, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3828 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!619, !3759, !5}
!3831 = !DILocalVariable(name: "p", arg: 1, scope: !3827, file: !3828, line: 34, type: !3759)
!3832 = !DILocation(line: 34, column: 58, scope: !3827)
!3833 = !DILocalVariable(name: "size", arg: 2, scope: !3827, file: !3828, line: 34, type: !5)
!3834 = !DILocation(line: 34, column: 74, scope: !3827)
!3835 = !DILocation(line: 36, column: 2, scope: !3827)
!3836 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3837, file: !3837, line: 178, type: !3838, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3837 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3759, !868, !116}
!3840 = !DILocalVariable(name: "ptr", arg: 1, scope: !3836, file: !3837, line: 178, type: !3759)
!3841 = !DILocation(line: 178, column: 60, scope: !3836)
!3842 = !DILocalVariable(name: "size", arg: 2, scope: !3836, file: !3837, line: 178, type: !868)
!3843 = !DILocation(line: 178, column: 72, scope: !3836)
!3844 = !DILocalVariable(name: "type", arg: 3, scope: !3836, file: !3837, line: 179, type: !116)
!3845 = !DILocation(line: 179, column: 15, scope: !3836)
!3846 = !DILocation(line: 179, column: 23, scope: !3836)
!3847 = distinct !DISubprogram(name: "kasan_check_write", scope: !3828, file: !3828, line: 38, type: !3829, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3848 = !DILocalVariable(name: "p", arg: 1, scope: !3847, file: !3828, line: 38, type: !3759)
!3849 = !DILocation(line: 38, column: 59, scope: !3847)
!3850 = !DILocalVariable(name: "size", arg: 2, scope: !3847, file: !3828, line: 38, type: !5)
!3851 = !DILocation(line: 38, column: 75, scope: !3847)
!3852 = !DILocation(line: 40, column: 2, scope: !3847)
!3853 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3854, file: !3854, line: 646, type: !3855, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3854 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!96}
!3857 = !DILocalVariable(name: "__ret", scope: !3858, file: !3854, line: 648, type: !96)
!3858 = distinct !DILexicalBlock(scope: !3853, file: !3854, line: 648, column: 9)
!3859 = !DILocation(line: 648, column: 9, scope: !3858)
!3860 = !DILocalVariable(name: "__edi", scope: !3858, file: !3854, line: 648, type: !96)
!3861 = !DILocalVariable(name: "__esi", scope: !3858, file: !3854, line: 648, type: !96)
!3862 = !DILocalVariable(name: "__edx", scope: !3858, file: !3854, line: 648, type: !96)
!3863 = !DILocalVariable(name: "__ecx", scope: !3858, file: !3854, line: 648, type: !96)
!3864 = !DILocalVariable(name: "__eax", scope: !3858, file: !3854, line: 648, type: !96)
!3865 = !DILocation(line: 648, column: 9, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3854, line: 648, column: 9)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !3854, line: 648, column: 9)
!3868 = !{i32 -2145754763, i32 -2145752448, i32 -2145752214, i32 -2145752163, i32 -2145752135, i32 -2145752110, i32 -2145752426, i32 -2145752413, i32 -2145751975, i32 -2145751856, i32 -2145752321, i32 -2145752294, i32 -2145752266, i32 -2145752236}
!3869 = !DILocalVariable(name: "__mask", scope: !3870, file: !3854, line: 648, type: !96)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !3854, line: 648, column: 9)
!3871 = !DILocation(line: 648, column: 9, scope: !3870)
!3872 = !DILocation(line: 648, column: 9, scope: !3867)
!3873 = !DILocation(line: 648, column: 2, scope: !3853)
!3874 = distinct !DISubprogram(name: "i2c_smbus_try_get_dmabuf", scope: !1, file: !1, line: 293, type: !3875, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !148, !100}
!3877 = !DILocalVariable(name: "msg", arg: 1, scope: !3874, file: !1, line: 293, type: !148)
!3878 = !DILocation(line: 293, column: 54, scope: !3874)
!3879 = !DILocalVariable(name: "init_val", arg: 2, scope: !3874, file: !1, line: 293, type: !100)
!3880 = !DILocation(line: 293, column: 62, scope: !3874)
!3881 = !DILocalVariable(name: "is_read", scope: !3874, file: !1, line: 295, type: !619)
!3882 = !DILocation(line: 295, column: 7, scope: !3874)
!3883 = !DILocation(line: 295, column: 17, scope: !3874)
!3884 = !DILocation(line: 295, column: 22, scope: !3874)
!3885 = !DILocation(line: 295, column: 28, scope: !3874)
!3886 = !DILocalVariable(name: "dma_buf", scope: !3874, file: !1, line: 296, type: !3887)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!3888 = !DILocation(line: 296, column: 17, scope: !3874)
!3889 = !DILocation(line: 298, column: 43, scope: !3874)
!3890 = !DILocation(line: 298, column: 40, scope: !3874)
!3891 = !DILocation(line: 298, column: 20, scope: !3874)
!3892 = !DILocation(line: 298, column: 12, scope: !3874)
!3893 = !DILocation(line: 298, column: 10, scope: !3874)
!3894 = !DILocation(line: 299, column: 7, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 299, column: 6)
!3896 = !DILocation(line: 299, column: 6, scope: !3874)
!3897 = !DILocation(line: 300, column: 3, scope: !3895)
!3898 = !DILocation(line: 302, column: 13, scope: !3874)
!3899 = !DILocation(line: 302, column: 2, scope: !3874)
!3900 = !DILocation(line: 302, column: 7, scope: !3874)
!3901 = !DILocation(line: 302, column: 11, scope: !3874)
!3902 = !DILocation(line: 303, column: 2, scope: !3874)
!3903 = !DILocation(line: 303, column: 7, scope: !3874)
!3904 = !DILocation(line: 303, column: 13, scope: !3874)
!3905 = !DILocation(line: 305, column: 6, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 305, column: 6)
!3907 = !DILocation(line: 305, column: 6, scope: !3874)
!3908 = !DILocation(line: 306, column: 17, scope: !3906)
!3909 = !DILocation(line: 306, column: 3, scope: !3906)
!3910 = !DILocation(line: 306, column: 8, scope: !3906)
!3911 = !DILocation(line: 306, column: 15, scope: !3906)
!3912 = !DILocation(line: 307, column: 1, scope: !3874)
!3913 = distinct !DISubprogram(name: "i2c_smbus_add_pec", scope: !1, file: !1, line: 62, type: !3914, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !148}
!3916 = !DILocalVariable(name: "msg", arg: 1, scope: !3913, file: !1, line: 62, type: !148)
!3917 = !DILocation(line: 62, column: 54, scope: !3913)
!3918 = !DILocation(line: 64, column: 44, scope: !3913)
!3919 = !DILocation(line: 64, column: 23, scope: !3913)
!3920 = !DILocation(line: 64, column: 2, scope: !3913)
!3921 = !DILocation(line: 64, column: 7, scope: !3913)
!3922 = !DILocation(line: 64, column: 11, scope: !3913)
!3923 = !DILocation(line: 64, column: 16, scope: !3913)
!3924 = !DILocation(line: 64, column: 21, scope: !3913)
!3925 = !DILocation(line: 65, column: 2, scope: !3913)
!3926 = !DILocation(line: 65, column: 7, scope: !3913)
!3927 = !DILocation(line: 65, column: 10, scope: !3913)
!3928 = !DILocation(line: 66, column: 1, scope: !3913)
!3929 = distinct !DISubprogram(name: "i2c_smbus_msg_pec", scope: !1, file: !1, line: 51, type: !3930, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!100, !100, !148}
!3932 = !DILocalVariable(name: "pec", arg: 1, scope: !3929, file: !1, line: 51, type: !100)
!3933 = !DILocation(line: 51, column: 32, scope: !3929)
!3934 = !DILocalVariable(name: "msg", arg: 2, scope: !3929, file: !1, line: 51, type: !148)
!3935 = !DILocation(line: 51, column: 53, scope: !3929)
!3936 = !DILocalVariable(name: "addr", scope: !3929, file: !1, line: 54, type: !100)
!3937 = !DILocation(line: 54, column: 5, scope: !3929)
!3938 = !DILocation(line: 54, column: 35, scope: !3929)
!3939 = !DILocation(line: 54, column: 12, scope: !3929)
!3940 = !DILocation(line: 55, column: 22, scope: !3929)
!3941 = !DILocation(line: 55, column: 8, scope: !3929)
!3942 = !DILocation(line: 55, column: 6, scope: !3929)
!3943 = !DILocation(line: 58, column: 23, scope: !3929)
!3944 = !DILocation(line: 58, column: 28, scope: !3929)
!3945 = !DILocation(line: 58, column: 33, scope: !3929)
!3946 = !DILocation(line: 58, column: 38, scope: !3929)
!3947 = !DILocation(line: 58, column: 43, scope: !3929)
!3948 = !DILocation(line: 58, column: 9, scope: !3929)
!3949 = !DILocation(line: 58, column: 2, scope: !3929)
!3950 = distinct !DISubprogram(name: "i2c_smbus_check_pec", scope: !1, file: !1, line: 73, type: !3951, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!116, !100, !148}
!3953 = !DILocalVariable(name: "cpec", arg: 1, scope: !3950, file: !1, line: 73, type: !100)
!3954 = !DILocation(line: 73, column: 35, scope: !3950)
!3955 = !DILocalVariable(name: "msg", arg: 2, scope: !3950, file: !1, line: 73, type: !148)
!3956 = !DILocation(line: 73, column: 57, scope: !3950)
!3957 = !DILocalVariable(name: "rpec", scope: !3950, file: !1, line: 75, type: !100)
!3958 = !DILocation(line: 75, column: 5, scope: !3950)
!3959 = !DILocation(line: 75, column: 12, scope: !3950)
!3960 = !DILocation(line: 75, column: 17, scope: !3950)
!3961 = !DILocation(line: 75, column: 23, scope: !3950)
!3962 = !DILocation(line: 75, column: 28, scope: !3950)
!3963 = !DILocation(line: 75, column: 21, scope: !3950)
!3964 = !DILocation(line: 76, column: 27, scope: !3950)
!3965 = !DILocation(line: 76, column: 33, scope: !3950)
!3966 = !DILocation(line: 76, column: 9, scope: !3950)
!3967 = !DILocation(line: 76, column: 7, scope: !3950)
!3968 = !DILocation(line: 78, column: 6, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3950, file: !1, line: 78, column: 6)
!3970 = !DILocation(line: 78, column: 14, scope: !3969)
!3971 = !DILocation(line: 78, column: 11, scope: !3969)
!3972 = !DILocation(line: 78, column: 6, scope: !3950)
!3973 = !DILocation(line: 79, column: 3, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !1, line: 79, column: 3)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !1, line: 79, column: 3)
!3976 = distinct !DILexicalBlock(scope: !3969, file: !1, line: 78, column: 20)
!3977 = !DILocation(line: 79, column: 3, scope: !3975)
!3978 = !DILocation(line: 81, column: 3, scope: !3976)
!3979 = !DILocation(line: 83, column: 2, scope: !3950)
!3980 = !DILocation(line: 84, column: 1, scope: !3950)
!3981 = distinct !DISubprogram(name: "kzalloc", scope: !87, file: !87, line: 662, type: !3982, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!99, !868, !97}
!3984 = !DILocalVariable(name: "s", arg: 1, scope: !3985, file: !87, line: 445, type: !1089)
!3985 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !87, file: !87, line: 445, type: !3986, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!99, !1089, !97, !868}
!3988 = !DILocation(line: 445, column: 72, scope: !3985, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 552, column: 10, scope: !3990, inlinedAt: !3993)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !87, line: 540, column: 34)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !87, line: 540, column: 6)
!3992 = distinct !DISubprogram(name: "kmalloc", scope: !87, file: !87, line: 538, type: !3982, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!3993 = distinct !DILocation(line: 664, column: 9, scope: !3981)
!3994 = !DILocalVariable(name: "flags", arg: 2, scope: !3985, file: !87, line: 446, type: !97)
!3995 = !DILocation(line: 446, column: 9, scope: !3985, inlinedAt: !3989)
!3996 = !DILocalVariable(name: "size", arg: 3, scope: !3985, file: !87, line: 446, type: !868)
!3997 = !DILocation(line: 446, column: 23, scope: !3985, inlinedAt: !3989)
!3998 = !DILocalVariable(name: "ret", scope: !3985, file: !87, line: 448, type: !99)
!3999 = !DILocation(line: 448, column: 8, scope: !3985, inlinedAt: !3989)
!4000 = !DILocalVariable(name: "flags", arg: 1, scope: !4001, file: !87, line: 318, type: !97)
!4001 = distinct !DISubprogram(name: "kmalloc_type", scope: !87, file: !87, line: 318, type: !4002, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!86, !97}
!4004 = !DILocation(line: 318, column: 67, scope: !4001, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 553, column: 20, scope: !3990, inlinedAt: !3993)
!4006 = !DILocalVariable(name: "size", arg: 1, scope: !4007, file: !87, line: 346, type: !868)
!4007 = distinct !DISubprogram(name: "kmalloc_index", scope: !87, file: !87, line: 346, type: !4008, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!5, !868}
!4010 = !DILocation(line: 346, column: 58, scope: !4007, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 547, column: 11, scope: !3990, inlinedAt: !3993)
!4012 = !DILocalVariable(name: "size", arg: 1, scope: !4013, file: !87, line: 472, type: !868)
!4013 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !87, file: !87, line: 472, type: !4014, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!99, !868, !97, !5}
!4016 = !DILocation(line: 472, column: 28, scope: !4013, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 481, column: 9, scope: !4018, inlinedAt: !4019)
!4018 = distinct !DISubprogram(name: "kmalloc_large", scope: !87, file: !87, line: 478, type: !3982, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4019 = distinct !DILocation(line: 545, column: 11, scope: !4020, inlinedAt: !3993)
!4020 = distinct !DILexicalBlock(scope: !3990, file: !87, line: 544, column: 7)
!4021 = !DILocalVariable(name: "flags", arg: 2, scope: !4013, file: !87, line: 472, type: !97)
!4022 = !DILocation(line: 472, column: 40, scope: !4013, inlinedAt: !4017)
!4023 = !DILocalVariable(name: "order", arg: 3, scope: !4013, file: !87, line: 472, type: !5)
!4024 = !DILocation(line: 472, column: 60, scope: !4013, inlinedAt: !4017)
!4025 = !DILocalVariable(name: "size", arg: 1, scope: !4018, file: !87, line: 478, type: !868)
!4026 = !DILocation(line: 478, column: 51, scope: !4018, inlinedAt: !4019)
!4027 = !DILocalVariable(name: "flags", arg: 2, scope: !4018, file: !87, line: 478, type: !97)
!4028 = !DILocation(line: 478, column: 63, scope: !4018, inlinedAt: !4019)
!4029 = !DILocalVariable(name: "order", scope: !4018, file: !87, line: 480, type: !5)
!4030 = !DILocation(line: 480, column: 15, scope: !4018, inlinedAt: !4019)
!4031 = !DILocalVariable(name: "size", arg: 1, scope: !3992, file: !87, line: 538, type: !868)
!4032 = !DILocation(line: 538, column: 45, scope: !3992, inlinedAt: !3993)
!4033 = !DILocalVariable(name: "flags", arg: 2, scope: !3992, file: !87, line: 538, type: !97)
!4034 = !DILocation(line: 538, column: 57, scope: !3992, inlinedAt: !3993)
!4035 = !DILocalVariable(name: "index", scope: !3990, file: !87, line: 542, type: !5)
!4036 = !DILocation(line: 542, column: 16, scope: !3990, inlinedAt: !3993)
!4037 = !DILocalVariable(name: "size", arg: 1, scope: !3981, file: !87, line: 662, type: !868)
!4038 = !DILocation(line: 662, column: 36, scope: !3981)
!4039 = !DILocalVariable(name: "flags", arg: 2, scope: !3981, file: !87, line: 662, type: !97)
!4040 = !DILocation(line: 662, column: 48, scope: !3981)
!4041 = !DILocation(line: 664, column: 17, scope: !3981)
!4042 = !DILocation(line: 664, column: 23, scope: !3981)
!4043 = !DILocation(line: 664, column: 29, scope: !3981)
!4044 = !DILocation(line: 540, column: 27, scope: !3991, inlinedAt: !3993)
!4045 = !DILocation(line: 540, column: 6, scope: !3991, inlinedAt: !3993)
!4046 = !DILocation(line: 540, column: 6, scope: !3992, inlinedAt: !3993)
!4047 = !DILocation(line: 544, column: 7, scope: !4020, inlinedAt: !3993)
!4048 = !DILocation(line: 544, column: 12, scope: !4020, inlinedAt: !3993)
!4049 = !DILocation(line: 544, column: 7, scope: !3990, inlinedAt: !3993)
!4050 = !DILocation(line: 545, column: 25, scope: !4020, inlinedAt: !3993)
!4051 = !DILocation(line: 545, column: 31, scope: !4020, inlinedAt: !3993)
!4052 = !DILocation(line: 480, column: 33, scope: !4018, inlinedAt: !4019)
!4053 = !DILocation(line: 480, column: 23, scope: !4018, inlinedAt: !4019)
!4054 = !DILocation(line: 481, column: 29, scope: !4018, inlinedAt: !4019)
!4055 = !DILocation(line: 481, column: 35, scope: !4018, inlinedAt: !4019)
!4056 = !DILocation(line: 481, column: 42, scope: !4018, inlinedAt: !4019)
!4057 = !DILocation(line: 474, column: 23, scope: !4013, inlinedAt: !4017)
!4058 = !DILocation(line: 474, column: 29, scope: !4013, inlinedAt: !4017)
!4059 = !DILocation(line: 474, column: 36, scope: !4013, inlinedAt: !4017)
!4060 = !DILocation(line: 474, column: 9, scope: !4013, inlinedAt: !4017)
!4061 = !DILocation(line: 545, column: 4, scope: !4020, inlinedAt: !3993)
!4062 = !DILocation(line: 547, column: 25, scope: !3990, inlinedAt: !3993)
!4063 = !DILocation(line: 348, column: 7, scope: !4064, inlinedAt: !4011)
!4064 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 348, column: 6)
!4065 = !DILocation(line: 348, column: 6, scope: !4007, inlinedAt: !4011)
!4066 = !DILocation(line: 349, column: 3, scope: !4064, inlinedAt: !4011)
!4067 = !DILocation(line: 351, column: 6, scope: !4068, inlinedAt: !4011)
!4068 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 351, column: 6)
!4069 = !DILocation(line: 351, column: 11, scope: !4068, inlinedAt: !4011)
!4070 = !DILocation(line: 351, column: 6, scope: !4007, inlinedAt: !4011)
!4071 = !DILocation(line: 352, column: 3, scope: !4068, inlinedAt: !4011)
!4072 = !DILocation(line: 354, column: 32, scope: !4073, inlinedAt: !4011)
!4073 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 354, column: 6)
!4074 = !DILocation(line: 354, column: 37, scope: !4073, inlinedAt: !4011)
!4075 = !DILocation(line: 354, column: 42, scope: !4073, inlinedAt: !4011)
!4076 = !DILocation(line: 354, column: 45, scope: !4073, inlinedAt: !4011)
!4077 = !DILocation(line: 354, column: 50, scope: !4073, inlinedAt: !4011)
!4078 = !DILocation(line: 354, column: 6, scope: !4007, inlinedAt: !4011)
!4079 = !DILocation(line: 355, column: 3, scope: !4073, inlinedAt: !4011)
!4080 = !DILocation(line: 356, column: 32, scope: !4081, inlinedAt: !4011)
!4081 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 356, column: 6)
!4082 = !DILocation(line: 356, column: 37, scope: !4081, inlinedAt: !4011)
!4083 = !DILocation(line: 356, column: 43, scope: !4081, inlinedAt: !4011)
!4084 = !DILocation(line: 356, column: 46, scope: !4081, inlinedAt: !4011)
!4085 = !DILocation(line: 356, column: 51, scope: !4081, inlinedAt: !4011)
!4086 = !DILocation(line: 356, column: 6, scope: !4007, inlinedAt: !4011)
!4087 = !DILocation(line: 357, column: 3, scope: !4081, inlinedAt: !4011)
!4088 = !DILocation(line: 358, column: 6, scope: !4089, inlinedAt: !4011)
!4089 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 358, column: 6)
!4090 = !DILocation(line: 358, column: 11, scope: !4089, inlinedAt: !4011)
!4091 = !DILocation(line: 358, column: 6, scope: !4007, inlinedAt: !4011)
!4092 = !DILocation(line: 358, column: 26, scope: !4089, inlinedAt: !4011)
!4093 = !DILocation(line: 359, column: 6, scope: !4094, inlinedAt: !4011)
!4094 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 359, column: 6)
!4095 = !DILocation(line: 359, column: 11, scope: !4094, inlinedAt: !4011)
!4096 = !DILocation(line: 359, column: 6, scope: !4007, inlinedAt: !4011)
!4097 = !DILocation(line: 359, column: 26, scope: !4094, inlinedAt: !4011)
!4098 = !DILocation(line: 360, column: 6, scope: !4099, inlinedAt: !4011)
!4099 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 360, column: 6)
!4100 = !DILocation(line: 360, column: 11, scope: !4099, inlinedAt: !4011)
!4101 = !DILocation(line: 360, column: 6, scope: !4007, inlinedAt: !4011)
!4102 = !DILocation(line: 360, column: 26, scope: !4099, inlinedAt: !4011)
!4103 = !DILocation(line: 361, column: 6, scope: !4104, inlinedAt: !4011)
!4104 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 361, column: 6)
!4105 = !DILocation(line: 361, column: 11, scope: !4104, inlinedAt: !4011)
!4106 = !DILocation(line: 361, column: 6, scope: !4007, inlinedAt: !4011)
!4107 = !DILocation(line: 361, column: 26, scope: !4104, inlinedAt: !4011)
!4108 = !DILocation(line: 362, column: 6, scope: !4109, inlinedAt: !4011)
!4109 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 362, column: 6)
!4110 = !DILocation(line: 362, column: 11, scope: !4109, inlinedAt: !4011)
!4111 = !DILocation(line: 362, column: 6, scope: !4007, inlinedAt: !4011)
!4112 = !DILocation(line: 362, column: 26, scope: !4109, inlinedAt: !4011)
!4113 = !DILocation(line: 363, column: 6, scope: !4114, inlinedAt: !4011)
!4114 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 363, column: 6)
!4115 = !DILocation(line: 363, column: 11, scope: !4114, inlinedAt: !4011)
!4116 = !DILocation(line: 363, column: 6, scope: !4007, inlinedAt: !4011)
!4117 = !DILocation(line: 363, column: 26, scope: !4114, inlinedAt: !4011)
!4118 = !DILocation(line: 364, column: 6, scope: !4119, inlinedAt: !4011)
!4119 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 364, column: 6)
!4120 = !DILocation(line: 364, column: 11, scope: !4119, inlinedAt: !4011)
!4121 = !DILocation(line: 364, column: 6, scope: !4007, inlinedAt: !4011)
!4122 = !DILocation(line: 364, column: 26, scope: !4119, inlinedAt: !4011)
!4123 = !DILocation(line: 365, column: 6, scope: !4124, inlinedAt: !4011)
!4124 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 365, column: 6)
!4125 = !DILocation(line: 365, column: 11, scope: !4124, inlinedAt: !4011)
!4126 = !DILocation(line: 365, column: 6, scope: !4007, inlinedAt: !4011)
!4127 = !DILocation(line: 365, column: 26, scope: !4124, inlinedAt: !4011)
!4128 = !DILocation(line: 366, column: 6, scope: !4129, inlinedAt: !4011)
!4129 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 366, column: 6)
!4130 = !DILocation(line: 366, column: 11, scope: !4129, inlinedAt: !4011)
!4131 = !DILocation(line: 366, column: 6, scope: !4007, inlinedAt: !4011)
!4132 = !DILocation(line: 366, column: 26, scope: !4129, inlinedAt: !4011)
!4133 = !DILocation(line: 367, column: 6, scope: !4134, inlinedAt: !4011)
!4134 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 367, column: 6)
!4135 = !DILocation(line: 367, column: 11, scope: !4134, inlinedAt: !4011)
!4136 = !DILocation(line: 367, column: 6, scope: !4007, inlinedAt: !4011)
!4137 = !DILocation(line: 367, column: 26, scope: !4134, inlinedAt: !4011)
!4138 = !DILocation(line: 368, column: 6, scope: !4139, inlinedAt: !4011)
!4139 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 368, column: 6)
!4140 = !DILocation(line: 368, column: 11, scope: !4139, inlinedAt: !4011)
!4141 = !DILocation(line: 368, column: 6, scope: !4007, inlinedAt: !4011)
!4142 = !DILocation(line: 368, column: 26, scope: !4139, inlinedAt: !4011)
!4143 = !DILocation(line: 369, column: 6, scope: !4144, inlinedAt: !4011)
!4144 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 369, column: 6)
!4145 = !DILocation(line: 369, column: 11, scope: !4144, inlinedAt: !4011)
!4146 = !DILocation(line: 369, column: 6, scope: !4007, inlinedAt: !4011)
!4147 = !DILocation(line: 369, column: 26, scope: !4144, inlinedAt: !4011)
!4148 = !DILocation(line: 370, column: 6, scope: !4149, inlinedAt: !4011)
!4149 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 370, column: 6)
!4150 = !DILocation(line: 370, column: 11, scope: !4149, inlinedAt: !4011)
!4151 = !DILocation(line: 370, column: 6, scope: !4007, inlinedAt: !4011)
!4152 = !DILocation(line: 370, column: 26, scope: !4149, inlinedAt: !4011)
!4153 = !DILocation(line: 371, column: 6, scope: !4154, inlinedAt: !4011)
!4154 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 371, column: 6)
!4155 = !DILocation(line: 371, column: 11, scope: !4154, inlinedAt: !4011)
!4156 = !DILocation(line: 371, column: 6, scope: !4007, inlinedAt: !4011)
!4157 = !DILocation(line: 371, column: 26, scope: !4154, inlinedAt: !4011)
!4158 = !DILocation(line: 372, column: 6, scope: !4159, inlinedAt: !4011)
!4159 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 372, column: 6)
!4160 = !DILocation(line: 372, column: 11, scope: !4159, inlinedAt: !4011)
!4161 = !DILocation(line: 372, column: 6, scope: !4007, inlinedAt: !4011)
!4162 = !DILocation(line: 372, column: 26, scope: !4159, inlinedAt: !4011)
!4163 = !DILocation(line: 373, column: 6, scope: !4164, inlinedAt: !4011)
!4164 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 373, column: 6)
!4165 = !DILocation(line: 373, column: 11, scope: !4164, inlinedAt: !4011)
!4166 = !DILocation(line: 373, column: 6, scope: !4007, inlinedAt: !4011)
!4167 = !DILocation(line: 373, column: 26, scope: !4164, inlinedAt: !4011)
!4168 = !DILocation(line: 374, column: 6, scope: !4169, inlinedAt: !4011)
!4169 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 374, column: 6)
!4170 = !DILocation(line: 374, column: 11, scope: !4169, inlinedAt: !4011)
!4171 = !DILocation(line: 374, column: 6, scope: !4007, inlinedAt: !4011)
!4172 = !DILocation(line: 374, column: 26, scope: !4169, inlinedAt: !4011)
!4173 = !DILocation(line: 375, column: 6, scope: !4174, inlinedAt: !4011)
!4174 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 375, column: 6)
!4175 = !DILocation(line: 375, column: 11, scope: !4174, inlinedAt: !4011)
!4176 = !DILocation(line: 375, column: 6, scope: !4007, inlinedAt: !4011)
!4177 = !DILocation(line: 375, column: 27, scope: !4174, inlinedAt: !4011)
!4178 = !DILocation(line: 376, column: 6, scope: !4179, inlinedAt: !4011)
!4179 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 376, column: 6)
!4180 = !DILocation(line: 376, column: 11, scope: !4179, inlinedAt: !4011)
!4181 = !DILocation(line: 376, column: 6, scope: !4007, inlinedAt: !4011)
!4182 = !DILocation(line: 376, column: 32, scope: !4179, inlinedAt: !4011)
!4183 = !DILocation(line: 377, column: 6, scope: !4184, inlinedAt: !4011)
!4184 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 377, column: 6)
!4185 = !DILocation(line: 377, column: 11, scope: !4184, inlinedAt: !4011)
!4186 = !DILocation(line: 377, column: 6, scope: !4007, inlinedAt: !4011)
!4187 = !DILocation(line: 377, column: 32, scope: !4184, inlinedAt: !4011)
!4188 = !DILocation(line: 378, column: 6, scope: !4189, inlinedAt: !4011)
!4189 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 378, column: 6)
!4190 = !DILocation(line: 378, column: 11, scope: !4189, inlinedAt: !4011)
!4191 = !DILocation(line: 378, column: 6, scope: !4007, inlinedAt: !4011)
!4192 = !DILocation(line: 378, column: 32, scope: !4189, inlinedAt: !4011)
!4193 = !DILocation(line: 379, column: 6, scope: !4194, inlinedAt: !4011)
!4194 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 379, column: 6)
!4195 = !DILocation(line: 379, column: 11, scope: !4194, inlinedAt: !4011)
!4196 = !DILocation(line: 379, column: 6, scope: !4007, inlinedAt: !4011)
!4197 = !DILocation(line: 379, column: 33, scope: !4194, inlinedAt: !4011)
!4198 = !DILocation(line: 380, column: 6, scope: !4199, inlinedAt: !4011)
!4199 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 380, column: 6)
!4200 = !DILocation(line: 380, column: 11, scope: !4199, inlinedAt: !4011)
!4201 = !DILocation(line: 380, column: 6, scope: !4007, inlinedAt: !4011)
!4202 = !DILocation(line: 380, column: 33, scope: !4199, inlinedAt: !4011)
!4203 = !DILocation(line: 381, column: 6, scope: !4204, inlinedAt: !4011)
!4204 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 381, column: 6)
!4205 = !DILocation(line: 381, column: 11, scope: !4204, inlinedAt: !4011)
!4206 = !DILocation(line: 381, column: 6, scope: !4007, inlinedAt: !4011)
!4207 = !DILocation(line: 381, column: 33, scope: !4204, inlinedAt: !4011)
!4208 = !DILocation(line: 382, column: 2, scope: !4209, inlinedAt: !4011)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !87, line: 382, column: 2)
!4210 = distinct !DILexicalBlock(scope: !4007, file: !87, line: 382, column: 2)
!4211 = !{i32 -2143502881, i32 -2143502852, i32 -2143502806, i32 -2143502748, i32 -2143502694, i32 -2143502640, i32 -2143502585, i32 -2143502554}
!4212 = !DILocation(line: 382, column: 2, scope: !4213, inlinedAt: !4011)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !87, line: 382, column: 2)
!4214 = distinct !DILexicalBlock(scope: !4210, file: !87, line: 382, column: 2)
!4215 = !{i32 -2143502111, i32 -2143502104, i32 -2143502050, i32 -2143502019, i32 -2143501989}
!4216 = !DILocation(line: 382, column: 2, scope: !4214, inlinedAt: !4011)
!4217 = !DILocation(line: 386, column: 1, scope: !4007, inlinedAt: !4011)
!4218 = !DILocation(line: 547, column: 9, scope: !3990, inlinedAt: !3993)
!4219 = !DILocation(line: 549, column: 8, scope: !4220, inlinedAt: !3993)
!4220 = distinct !DILexicalBlock(scope: !3990, file: !87, line: 549, column: 7)
!4221 = !DILocation(line: 549, column: 7, scope: !3990, inlinedAt: !3993)
!4222 = !DILocation(line: 550, column: 4, scope: !4220, inlinedAt: !3993)
!4223 = !DILocation(line: 553, column: 33, scope: !3990, inlinedAt: !3993)
!4224 = !DILocation(line: 325, column: 6, scope: !4225, inlinedAt: !4005)
!4225 = distinct !DILexicalBlock(scope: !4001, file: !87, line: 325, column: 6)
!4226 = !DILocation(line: 325, column: 6, scope: !4001, inlinedAt: !4005)
!4227 = !DILocation(line: 326, column: 3, scope: !4225, inlinedAt: !4005)
!4228 = !DILocation(line: 332, column: 9, scope: !4001, inlinedAt: !4005)
!4229 = !DILocation(line: 332, column: 15, scope: !4001, inlinedAt: !4005)
!4230 = !DILocation(line: 332, column: 2, scope: !4001, inlinedAt: !4005)
!4231 = !DILocation(line: 336, column: 1, scope: !4001, inlinedAt: !4005)
!4232 = !DILocation(line: 553, column: 5, scope: !3990, inlinedAt: !3993)
!4233 = !DILocation(line: 553, column: 41, scope: !3990, inlinedAt: !3993)
!4234 = !DILocation(line: 554, column: 5, scope: !3990, inlinedAt: !3993)
!4235 = !DILocation(line: 554, column: 12, scope: !3990, inlinedAt: !3993)
!4236 = !DILocation(line: 448, column: 31, scope: !3985, inlinedAt: !3989)
!4237 = !DILocation(line: 448, column: 34, scope: !3985, inlinedAt: !3989)
!4238 = !DILocation(line: 448, column: 14, scope: !3985, inlinedAt: !3989)
!4239 = !DILocation(line: 450, column: 22, scope: !3985, inlinedAt: !3989)
!4240 = !DILocation(line: 450, column: 25, scope: !3985, inlinedAt: !3989)
!4241 = !DILocation(line: 450, column: 30, scope: !3985, inlinedAt: !3989)
!4242 = !DILocation(line: 450, column: 36, scope: !3985, inlinedAt: !3989)
!4243 = !DILocation(line: 450, column: 8, scope: !3985, inlinedAt: !3989)
!4244 = !DILocation(line: 450, column: 6, scope: !3985, inlinedAt: !3989)
!4245 = !DILocation(line: 451, column: 9, scope: !3985, inlinedAt: !3989)
!4246 = !DILocation(line: 552, column: 3, scope: !3990, inlinedAt: !3993)
!4247 = !DILocation(line: 557, column: 19, scope: !3992, inlinedAt: !3993)
!4248 = !DILocation(line: 557, column: 25, scope: !3992, inlinedAt: !3993)
!4249 = !DILocation(line: 557, column: 9, scope: !3992, inlinedAt: !3993)
!4250 = !DILocation(line: 557, column: 2, scope: !3992, inlinedAt: !3993)
!4251 = !DILocation(line: 558, column: 1, scope: !3992, inlinedAt: !3993)
!4252 = !DILocation(line: 664, column: 2, scope: !3981)
!4253 = distinct !DISubprogram(name: "get_order", scope: !4254, file: !4254, line: 29, type: !2922, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4254 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4255 = !DILocalVariable(name: "x", arg: 1, scope: !4256, file: !3741, line: 366, type: !277)
!4256 = distinct !DISubprogram(name: "fls64", scope: !3741, file: !3741, line: 366, type: !4257, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!116, !277}
!4259 = !DILocation(line: 366, column: 40, scope: !4256, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 46, column: 9, scope: !4253)
!4261 = !DILocalVariable(name: "bitpos", scope: !4256, file: !3741, line: 368, type: !116)
!4262 = !DILocation(line: 368, column: 6, scope: !4256, inlinedAt: !4260)
!4263 = !DILocalVariable(name: "size", arg: 1, scope: !4253, file: !4254, line: 29, type: !96)
!4264 = !DILocation(line: 29, column: 63, scope: !4253)
!4265 = !DILocation(line: 31, column: 27, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4253, file: !4254, line: 31, column: 6)
!4267 = !DILocation(line: 31, column: 6, scope: !4266)
!4268 = !DILocation(line: 31, column: 6, scope: !4253)
!4269 = !DILocation(line: 32, column: 8, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !4254, line: 32, column: 7)
!4271 = distinct !DILexicalBlock(scope: !4266, file: !4254, line: 31, column: 34)
!4272 = !DILocation(line: 32, column: 7, scope: !4271)
!4273 = !DILocation(line: 33, column: 4, scope: !4270)
!4274 = !DILocation(line: 35, column: 7, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !4254, line: 35, column: 7)
!4276 = !DILocation(line: 35, column: 12, scope: !4275)
!4277 = !DILocation(line: 35, column: 7, scope: !4271)
!4278 = !DILocation(line: 36, column: 4, scope: !4275)
!4279 = !DILocation(line: 38, column: 10, scope: !4271)
!4280 = !DILocation(line: 38, column: 28, scope: !4271)
!4281 = !DILocation(line: 38, column: 41, scope: !4271)
!4282 = !DILocation(line: 38, column: 3, scope: !4271)
!4283 = !DILocation(line: 41, column: 6, scope: !4253)
!4284 = !DILocation(line: 42, column: 7, scope: !4253)
!4285 = !DILocation(line: 46, column: 15, scope: !4253)
!4286 = !DILocation(line: 374, column: 2, scope: !4256, inlinedAt: !4260)
!4287 = !DILocation(line: 376, column: 14, scope: !4256, inlinedAt: !4260)
!4288 = !{i32 395685}
!4289 = !DILocation(line: 377, column: 9, scope: !4256, inlinedAt: !4260)
!4290 = !DILocation(line: 377, column: 16, scope: !4256, inlinedAt: !4260)
!4291 = !DILocation(line: 46, column: 2, scope: !4253)
!4292 = !DILocation(line: 48, column: 1, scope: !4253)
!4293 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4294, file: !4294, line: 30, type: !4295, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4294 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!116, !276}
!4297 = !DILocation(line: 366, column: 40, scope: !4256, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 32, column: 9, scope: !4293)
!4299 = !DILocation(line: 368, column: 6, scope: !4256, inlinedAt: !4298)
!4300 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !4294, line: 30, type: !276)
!4301 = !DILocation(line: 30, column: 21, scope: !4293)
!4302 = !DILocation(line: 32, column: 15, scope: !4293)
!4303 = !DILocation(line: 374, column: 2, scope: !4256, inlinedAt: !4298)
!4304 = !DILocation(line: 376, column: 14, scope: !4256, inlinedAt: !4298)
!4305 = !DILocation(line: 377, column: 9, scope: !4256, inlinedAt: !4298)
!4306 = !DILocation(line: 377, column: 16, scope: !4256, inlinedAt: !4298)
!4307 = !DILocation(line: 32, column: 18, scope: !4293)
!4308 = !DILocation(line: 32, column: 2, scope: !4293)
!4309 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4310, file: !4310, line: 137, type: !4311, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4310 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!99, !1089, !1170, !868, !97}
!4313 = !DILocalVariable(name: "s", arg: 1, scope: !4309, file: !4310, line: 137, type: !1089)
!4314 = !DILocation(line: 137, column: 54, scope: !4309)
!4315 = !DILocalVariable(name: "object", arg: 2, scope: !4309, file: !4310, line: 137, type: !1170)
!4316 = !DILocation(line: 137, column: 69, scope: !4309)
!4317 = !DILocalVariable(name: "size", arg: 3, scope: !4309, file: !4310, line: 138, type: !868)
!4318 = !DILocation(line: 138, column: 12, scope: !4309)
!4319 = !DILocalVariable(name: "flags", arg: 4, scope: !4309, file: !4310, line: 138, type: !97)
!4320 = !DILocation(line: 138, column: 24, scope: !4309)
!4321 = !DILocation(line: 140, column: 17, scope: !4309)
!4322 = !DILocation(line: 140, column: 2, scope: !4309)
!4323 = distinct !DISubprogram(name: "i2c_8bit_addr_from_msg", scope: !120, file: !120, line: 905, type: !4324, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!100, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!4328 = !DILocalVariable(name: "msg", arg: 1, scope: !4323, file: !120, line: 905, type: !4326)
!4329 = !DILocation(line: 905, column: 63, scope: !4323)
!4330 = !DILocation(line: 907, column: 10, scope: !4323)
!4331 = !DILocation(line: 907, column: 15, scope: !4323)
!4332 = !DILocation(line: 907, column: 20, scope: !4323)
!4333 = !DILocation(line: 907, column: 29, scope: !4323)
!4334 = !DILocation(line: 907, column: 34, scope: !4323)
!4335 = !DILocation(line: 907, column: 40, scope: !4323)
!4336 = !DILocation(line: 907, column: 26, scope: !4323)
!4337 = !DILocation(line: 907, column: 9, scope: !4323)
!4338 = !DILocation(line: 907, column: 2, scope: !4323)
!4339 = distinct !DISubprogram(name: "i2c_smbus_pec", scope: !1, file: !1, line: 41, type: !4340, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!100, !100, !2482, !868}
!4342 = !DILocalVariable(name: "crc", arg: 1, scope: !4339, file: !1, line: 41, type: !100)
!4343 = !DILocation(line: 41, column: 28, scope: !4339)
!4344 = !DILocalVariable(name: "p", arg: 2, scope: !4339, file: !1, line: 41, type: !2482)
!4345 = !DILocation(line: 41, column: 37, scope: !4339)
!4346 = !DILocalVariable(name: "count", arg: 3, scope: !4339, file: !1, line: 41, type: !868)
!4347 = !DILocation(line: 41, column: 47, scope: !4339)
!4348 = !DILocalVariable(name: "i", scope: !4339, file: !1, line: 43, type: !116)
!4349 = !DILocation(line: 43, column: 6, scope: !4339)
!4350 = !DILocation(line: 45, column: 9, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4339, file: !1, line: 45, column: 2)
!4352 = !DILocation(line: 45, column: 7, scope: !4351)
!4353 = !DILocation(line: 45, column: 14, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 45, column: 2)
!4355 = !DILocation(line: 45, column: 18, scope: !4354)
!4356 = !DILocation(line: 45, column: 16, scope: !4354)
!4357 = !DILocation(line: 45, column: 2, scope: !4351)
!4358 = !DILocation(line: 46, column: 15, scope: !4354)
!4359 = !DILocation(line: 46, column: 21, scope: !4354)
!4360 = !DILocation(line: 46, column: 23, scope: !4354)
!4361 = !DILocation(line: 46, column: 19, scope: !4354)
!4362 = !DILocation(line: 46, column: 27, scope: !4354)
!4363 = !DILocation(line: 46, column: 14, scope: !4354)
!4364 = !DILocation(line: 46, column: 9, scope: !4354)
!4365 = !DILocation(line: 46, column: 7, scope: !4354)
!4366 = !DILocation(line: 46, column: 3, scope: !4354)
!4367 = !DILocation(line: 45, column: 26, scope: !4354)
!4368 = !DILocation(line: 45, column: 2, scope: !4354)
!4369 = distinct !{!4369, !4357, !4370}
!4370 = !DILocation(line: 46, column: 31, scope: !4351)
!4371 = !DILocation(line: 47, column: 9, scope: !4339)
!4372 = !DILocation(line: 47, column: 2, scope: !4339)
!4373 = distinct !DISubprogram(name: "crc8", scope: !1, file: !1, line: 28, type: !4374, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!100, !163}
!4376 = !DILocalVariable(name: "data", arg: 1, scope: !4373, file: !1, line: 28, type: !163)
!4377 = !DILocation(line: 28, column: 20, scope: !4373)
!4378 = !DILocalVariable(name: "i", scope: !4373, file: !1, line: 30, type: !116)
!4379 = !DILocation(line: 30, column: 6, scope: !4373)
!4380 = !DILocation(line: 32, column: 9, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4373, file: !1, line: 32, column: 2)
!4382 = !DILocation(line: 32, column: 7, scope: !4381)
!4383 = !DILocation(line: 32, column: 14, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4381, file: !1, line: 32, column: 2)
!4385 = !DILocation(line: 32, column: 16, scope: !4384)
!4386 = !DILocation(line: 32, column: 2, scope: !4381)
!4387 = !DILocation(line: 33, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !1, line: 33, column: 7)
!4389 = distinct !DILexicalBlock(scope: !4384, file: !1, line: 32, column: 26)
!4390 = !DILocation(line: 33, column: 12, scope: !4388)
!4391 = !DILocation(line: 33, column: 7, scope: !4389)
!4392 = !DILocation(line: 34, column: 11, scope: !4388)
!4393 = !DILocation(line: 34, column: 16, scope: !4388)
!4394 = !DILocation(line: 34, column: 9, scope: !4388)
!4395 = !DILocation(line: 34, column: 4, scope: !4388)
!4396 = !DILocation(line: 35, column: 10, scope: !4389)
!4397 = !DILocation(line: 35, column: 15, scope: !4389)
!4398 = !DILocation(line: 35, column: 8, scope: !4389)
!4399 = !DILocation(line: 36, column: 2, scope: !4389)
!4400 = !DILocation(line: 32, column: 22, scope: !4384)
!4401 = !DILocation(line: 32, column: 2, scope: !4384)
!4402 = distinct !{!4402, !4386, !4403}
!4403 = !DILocation(line: 36, column: 2, scope: !4381)
!4404 = !DILocation(line: 37, column: 14, scope: !4373)
!4405 = !DILocation(line: 37, column: 19, scope: !4373)
!4406 = !DILocation(line: 37, column: 9, scope: !4373)
!4407 = !DILocation(line: 37, column: 2, scope: !4373)
!4408 = distinct !DISubprogram(name: "i2c_get_functionality", scope: !120, file: !120, line: 874, type: !176, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4409 = !DILocalVariable(name: "adap", arg: 1, scope: !4408, file: !120, line: 874, type: !131)
!4410 = !DILocation(line: 874, column: 61, scope: !4408)
!4411 = !DILocation(line: 876, column: 9, scope: !4408)
!4412 = !DILocation(line: 876, column: 15, scope: !4408)
!4413 = !DILocation(line: 876, column: 21, scope: !4408)
!4414 = !DILocation(line: 876, column: 35, scope: !4408)
!4415 = !DILocation(line: 876, column: 2, scope: !4408)
!4416 = distinct !DISubprogram(name: "IS_ERR", scope: !3669, file: !3669, line: 34, type: !4417, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!619, !1170}
!4419 = !DILocalVariable(name: "ptr", arg: 1, scope: !4416, file: !3669, line: 34, type: !1170)
!4420 = !DILocation(line: 34, column: 60, scope: !4416)
!4421 = !DILocation(line: 36, column: 9, scope: !4416)
!4422 = !DILocation(line: 36, column: 2, scope: !4416)
!4423 = distinct !DISubprogram(name: "PTR_ERR", scope: !3669, file: !3669, line: 29, type: !4424, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !208)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!94, !1170}
!4426 = !DILocalVariable(name: "ptr", arg: 1, scope: !4423, file: !3669, line: 29, type: !1170)
!4427 = !DILocation(line: 29, column: 61, scope: !4423)
!4428 = !DILocation(line: 31, column: 16, scope: !4423)
!4429 = !DILocation(line: 31, column: 9, scope: !4423)
!4430 = !DILocation(line: 31, column: 2, scope: !4423)
