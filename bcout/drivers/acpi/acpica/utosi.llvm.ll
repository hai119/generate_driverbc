; ModuleID = '../bcout/drivers/acpi/acpica/utosi.llvm.bc'
source_filename = "drivers/acpi/acpica/utosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_interface_info = type { i8*, %struct.acpi_interface_info*, i8, i8 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.0, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.2 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.2 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.23, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.22, i32, [12 x i8] }
%union.anon.22 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.23 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.24, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.37 = type { %struct.atomic_t }
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
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_osi_mutex = external dso_local global i8*, align 8
@acpi_default_supported_interfaces = internal global [26 x %struct.acpi_interface_info] [%struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 1 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 2 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 3 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 4 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 5 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 6 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 7 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 8 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 9 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 10 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 11 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 12 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 13 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 14 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 15 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 16 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 17 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 18 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 19 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct.acpi_interface_info* null, i8 0, i8 20 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), %struct.acpi_interface_info* null, i8 4, i8 0 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct.acpi_interface_info* null, i8 13, i8 0 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), %struct.acpi_interface_info* null, i8 13, i8 0 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), %struct.acpi_interface_info* null, i8 13, i8 0 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), %struct.acpi_interface_info* null, i8 13, i8 0 }, %struct.acpi_interface_info { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), %struct.acpi_interface_info* null, i8 13, i8 0 }], align 16, !dbg !0
@acpi_gbl_supported_interfaces = external dso_local global %struct.acpi_interface_info*, align 8
@_acpi_module_name = internal constant [6 x i8] c"utosi\00", align 1, !dbg !29
@acpi_gbl_osi_data = external dso_local global i8, align 1
@acpi_gbl_interface_handler = external dso_local global i32 (i8*, i32)*, align 8
@.str = private unnamed_addr constant [13 x i8] c"Windows 2000\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Windows 2001\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Windows 2001 SP1\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Windows 2001.1\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Windows 2001 SP2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Windows 2001.1 SP1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Windows 2006\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Windows 2006.1\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Windows 2006 SP1\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Windows 2006 SP2\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Windows 2009\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Windows 2012\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Windows 2013\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Windows 2015\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Windows 2016\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Windows 2017\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Windows 2017.2\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Windows 2018\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Windows 2018.2\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Windows 2019\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Extended Address Space Descriptor\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Module Device\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Processor Device\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"3.0 Thermal Model\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"3.0 _SCP Extensions\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Processor Aggregator Device\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.26 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_initialize_interfaces() #0 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !65
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext -1) #8, !dbg !65
  store i32 %call, i32* %status, align 4, !dbg !66
  %1 = load i32, i32* %status, align 4, !dbg !67
  %tobool = icmp ne i32 %1, 0, !dbg !67
  br i1 %tobool, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !70
  store i32 %2, i32* %retval, align 4, !dbg !72
  br label %return, !dbg !72

if.end:                                           ; preds = %entry
  store %struct.acpi_interface_info* getelementptr inbounds ([26 x %struct.acpi_interface_info], [26 x %struct.acpi_interface_info]* @acpi_default_supported_interfaces, i64 0, i64 0), %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !73
  store i32 0, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !77
  %conv = zext i32 %3 to i64, !dbg !77
  %cmp = icmp ult i64 %conv, 25, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !81
  %conv2 = zext i32 %4 to i64, !dbg !83
  %add = add i64 %conv2, 1, !dbg !84
  %arrayidx = getelementptr [26 x %struct.acpi_interface_info], [26 x %struct.acpi_interface_info]* @acpi_default_supported_interfaces, i64 0, i64 %add, !dbg !85
  %5 = load i32, i32* %i, align 4, !dbg !86
  %idxprom = zext i32 %5 to i64, !dbg !87
  %arrayidx3 = getelementptr [26 x %struct.acpi_interface_info], [26 x %struct.acpi_interface_info]* @acpi_default_supported_interfaces, i64 0, i64 %idxprom, !dbg !87
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %arrayidx3, i32 0, i32 1, !dbg !88
  store %struct.acpi_interface_info* %arrayidx, %struct.acpi_interface_info** %next, align 8, !dbg !89
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !91
  %inc = add i32 %6, 1, !dbg !91
  store i32 %inc, i32* %i, align 4, !dbg !91
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !95
  %call4 = call i32 @acpi_os_signal_semaphore(i8* %7, i32 1) #8, !dbg !95
  store i32 0, i32* %retval, align 4, !dbg !96
  br label %return, !dbg !96

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !97
  ret i32 %8, !dbg !97
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_wait_semaphore(i8*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_interface_terminate() #0 !dbg !98 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %next_interface = alloca %struct.acpi_interface_info*, align 8
  call void @llvm.dbg.declare(metadata i32* %status, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %next_interface, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !103
  %call = call i32 @acpi_os_wait_semaphore(i8* %0, i32 1, i16 zeroext -1) #8, !dbg !103
  store i32 %call, i32* %status, align 4, !dbg !104
  %1 = load i32, i32* %status, align 4, !dbg !105
  %tobool = icmp ne i32 %1, 0, !dbg !105
  br i1 %tobool, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !108
  store i32 %2, i32* %retval, align 4, !dbg !110
  br label %return, !dbg !110

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !111
  store %struct.acpi_interface_info* %3, %struct.acpi_interface_info** %next_interface, align 8, !dbg !112
  br label %while.cond, !dbg !113

while.cond:                                       ; preds = %if.end18, %if.end
  %4 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !114
  %tobool1 = icmp ne %struct.acpi_interface_info* %4, null, !dbg !113
  br i1 %tobool1, label %while.body, label %while.end, !dbg !113

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !115
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %5, i32 0, i32 1, !dbg !117
  %6 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next, align 8, !dbg !117
  store %struct.acpi_interface_info* %6, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !118
  %7 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !119
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %7, i32 0, i32 2, !dbg !121
  %8 = load i8, i8* %flags, align 8, !dbg !121
  %conv = zext i8 %8 to i32, !dbg !119
  %and = and i32 %conv, 2, !dbg !122
  %tobool2 = icmp ne i32 %and, 0, !dbg !122
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !123

if.then3:                                         ; preds = %while.body
  %9 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !124
  %name = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %9, i32 0, i32 0, !dbg !124
  %10 = load i8*, i8** %name, align 8, !dbg !124
  call void @acpi_os_free(i8* %10) #8, !dbg !124
  %11 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !126
  %12 = bitcast %struct.acpi_interface_info* %11 to i8*, !dbg !126
  call void @acpi_os_free(i8* %12) #8, !dbg !126
  br label %if.end18, !dbg !127

if.else:                                          ; preds = %while.body
  %13 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !128
  %flags4 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %13, i32 0, i32 2, !dbg !131
  %14 = load i8, i8* %flags4, align 8, !dbg !131
  %conv5 = zext i8 %14 to i32, !dbg !128
  %and6 = and i32 %conv5, 8, !dbg !132
  %tobool7 = icmp ne i32 %and6, 0, !dbg !132
  br i1 %tobool7, label %if.then8, label %if.else12, !dbg !133

if.then8:                                         ; preds = %if.else
  %15 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !134
  %flags9 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %15, i32 0, i32 2, !dbg !136
  %16 = load i8, i8* %flags9, align 8, !dbg !137
  %conv10 = zext i8 %16 to i32, !dbg !137
  %or = or i32 %conv10, 1, !dbg !137
  %conv11 = trunc i32 %or to i8, !dbg !137
  store i8 %conv11, i8* %flags9, align 8, !dbg !137
  br label %if.end17, !dbg !138

if.else12:                                        ; preds = %if.else
  %17 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !139
  %flags13 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %17, i32 0, i32 2, !dbg !141
  %18 = load i8, i8* %flags13, align 8, !dbg !142
  %conv14 = zext i8 %18 to i32, !dbg !142
  %and15 = and i32 %conv14, -2, !dbg !142
  %conv16 = trunc i32 %and15 to i8, !dbg !142
  store i8 %conv16, i8* %flags13, align 8, !dbg !142
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.then8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then3
  %19 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !143
  store %struct.acpi_interface_info* %19, %struct.acpi_interface_info** %next_interface, align 8, !dbg !144
  br label %while.cond, !dbg !113, !llvm.loop !145

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !147
  %call19 = call i32 @acpi_os_signal_semaphore(i8* %20, i32 1) #8, !dbg !147
  store i32 0, i32* %retval, align 4, !dbg !148
  br label %return, !dbg !148

return:                                           ; preds = %while.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !149
  ret i32 %21, !dbg !149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !150 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !156
  call void @kfree(i8* %0) #8, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_install_interface(i8* %interface_name) #0 !dbg !159 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca i8*, align 8
  %interface_info = alloca %struct.acpi_interface_info*, align 8
  store i8* %interface_name, i8** %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface_name.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %interface_info, metadata !165, metadata !DIExpression()), !dbg !166
  %call = call i8* @acpi_os_allocate_zeroed(i64 24) #8, !dbg !167
  %0 = bitcast i8* %call to %struct.acpi_interface_info*, !dbg !167
  store %struct.acpi_interface_info* %0, %struct.acpi_interface_info** %interface_info, align 8, !dbg !168
  %1 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !169
  %tobool = icmp ne %struct.acpi_interface_info* %1, null, !dbg !169
  br i1 %tobool, label %if.end, label %if.then, !dbg !171

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !172
  br label %return, !dbg !172

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %interface_name.addr, align 8, !dbg !174
  %call1 = call i64 @strlen(i8* %2) #8, !dbg !174
  %add = add i64 %call1, 1, !dbg !174
  %call2 = call i8* @acpi_os_allocate_zeroed(i64 %add) #8, !dbg !174
  %3 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !175
  %name = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %3, i32 0, i32 0, !dbg !176
  store i8* %call2, i8** %name, align 8, !dbg !177
  %4 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !178
  %name3 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %4, i32 0, i32 0, !dbg !180
  %5 = load i8*, i8** %name3, align 8, !dbg !180
  %tobool4 = icmp ne i8* %5, null, !dbg !178
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !181

if.then5:                                         ; preds = %if.end
  %6 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !182
  %7 = bitcast %struct.acpi_interface_info* %6 to i8*, !dbg !182
  call void @acpi_os_free(i8* %7) #8, !dbg !182
  store i32 4, i32* %retval, align 4, !dbg !184
  br label %return, !dbg !184

if.end6:                                          ; preds = %if.end
  %8 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !185
  %name7 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %8, i32 0, i32 0, !dbg !186
  %9 = load i8*, i8** %name7, align 8, !dbg !186
  %10 = load i8*, i8** %interface_name.addr, align 8, !dbg !187
  %call8 = call i8* @strcpy(i8* %9, i8* %10) #8, !dbg !188
  %11 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !189
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %11, i32 0, i32 2, !dbg !190
  store i8 2, i8* %flags, align 8, !dbg !191
  %12 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !192
  %13 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !193
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %13, i32 0, i32 1, !dbg !194
  store %struct.acpi_interface_info* %12, %struct.acpi_interface_info** %next, align 8, !dbg !195
  %14 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !196
  store %struct.acpi_interface_info* %14, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !197
  store i32 0, i32* %retval, align 4, !dbg !198
  br label %return, !dbg !198

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !199
  ret i32 %15, !dbg !199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !200 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !203, metadata !DIExpression()), !dbg !209
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i64, i64* %size.addr, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !216, metadata !DIExpression()), !dbg !217
  br label %do.body, !dbg !217

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !222, metadata !DIExpression()), !dbg !221
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !221
  %conv = zext i1 %cmp to i32, !dbg !221
  store i32 1, i32* %tmp, align 4, !dbg !221
  %1 = load i32, i32* %tmp, align 4, !dbg !221
  %call = call i64 @arch_local_save_flags() #8, !dbg !223
  store i64 %call, i64* %_flags, align 8, !dbg !223
  br label %do.end, !dbg !223

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !227, metadata !DIExpression()), !dbg !226
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !226
  %conv6 = zext i1 %cmp5 to i32, !dbg !226
  store i32 1, i32* %tmp7, align 4, !dbg !226
  %2 = load i32, i32* %tmp7, align 4, !dbg !226
  %3 = load i64, i64* %_flags, align 8, !dbg !228
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !229
  %and.i = and i64 %4, 512, !dbg !230
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !231
  %lnot.i = xor i1 %tobool.i, true, !dbg !231
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !231
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !228
  %5 = load i32, i32* %tmp8, align 4, !dbg !228
  store i32 %5, i32* %tmp1, align 4, !dbg !223
  %6 = load i32, i32* %tmp1, align 4, !dbg !217
  %tobool = icmp ne i32 %6, 0, !dbg !232
  %7 = zext i1 %tobool to i64, !dbg !232
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !232
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !233
  ret i8* %call10, !dbg !234
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_remove_interface(i8* %interface_name) #0 !dbg !235 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca i8*, align 8
  %previous_interface = alloca %struct.acpi_interface_info*, align 8
  %next_interface = alloca %struct.acpi_interface_info*, align 8
  store i8* %interface_name, i8** %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface_name.addr, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %previous_interface, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %next_interface, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !242
  store %struct.acpi_interface_info* %0, %struct.acpi_interface_info** %next_interface, align 8, !dbg !243
  store %struct.acpi_interface_info* %0, %struct.acpi_interface_info** %previous_interface, align 8, !dbg !244
  br label %while.cond, !dbg !245

while.cond:                                       ; preds = %if.end20, %entry
  %1 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !246
  %tobool = icmp ne %struct.acpi_interface_info* %1, null, !dbg !245
  br i1 %tobool, label %while.body, label %while.end, !dbg !245

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %interface_name.addr, align 8, !dbg !247
  %3 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !250
  %name = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %3, i32 0, i32 0, !dbg !251
  %4 = load i8*, i8** %name, align 8, !dbg !251
  %call = call i32 @strcmp(i8* %2, i8* %4) #8, !dbg !252
  %tobool1 = icmp ne i32 %call, 0, !dbg !252
  br i1 %tobool1, label %if.end20, label %if.then, !dbg !253

if.then:                                          ; preds = %while.body
  %5 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !254
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %5, i32 0, i32 2, !dbg !257
  %6 = load i8, i8* %flags, align 8, !dbg !257
  %conv = zext i8 %6 to i32, !dbg !254
  %and = and i32 %conv, 2, !dbg !258
  %tobool2 = icmp ne i32 %and, 0, !dbg !258
  br i1 %tobool2, label %if.then3, label %if.else9, !dbg !259

if.then3:                                         ; preds = %if.then
  %7 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %previous_interface, align 8, !dbg !260
  %8 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !263
  %cmp = icmp eq %struct.acpi_interface_info* %7, %8, !dbg !264
  br i1 %cmp, label %if.then5, label %if.else, !dbg !265

if.then5:                                         ; preds = %if.then3
  %9 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !266
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %9, i32 0, i32 1, !dbg !268
  %10 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next, align 8, !dbg !268
  store %struct.acpi_interface_info* %10, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !269
  br label %if.end, !dbg !270

if.else:                                          ; preds = %if.then3
  %11 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !271
  %next6 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %11, i32 0, i32 1, !dbg !273
  %12 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next6, align 8, !dbg !273
  %13 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %previous_interface, align 8, !dbg !274
  %next7 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %13, i32 0, i32 1, !dbg !275
  store %struct.acpi_interface_info* %12, %struct.acpi_interface_info** %next7, align 8, !dbg !276
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %14 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !277
  %name8 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %14, i32 0, i32 0, !dbg !277
  %15 = load i8*, i8** %name8, align 8, !dbg !277
  call void @acpi_os_free(i8* %15) #8, !dbg !277
  %16 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !278
  %17 = bitcast %struct.acpi_interface_info* %16 to i8*, !dbg !278
  call void @acpi_os_free(i8* %17) #8, !dbg !278
  br label %if.end19, !dbg !279

if.else9:                                         ; preds = %if.then
  %18 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !280
  %flags10 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %18, i32 0, i32 2, !dbg !283
  %19 = load i8, i8* %flags10, align 8, !dbg !283
  %conv11 = zext i8 %19 to i32, !dbg !280
  %and12 = and i32 %conv11, 1, !dbg !284
  %tobool13 = icmp ne i32 %and12, 0, !dbg !284
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !285

if.then14:                                        ; preds = %if.else9
  store i32 6, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

if.end15:                                         ; preds = %if.else9
  %20 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !288
  %flags16 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %20, i32 0, i32 2, !dbg !289
  %21 = load i8, i8* %flags16, align 8, !dbg !290
  %conv17 = zext i8 %21 to i32, !dbg !290
  %or = or i32 %conv17, 1, !dbg !290
  %conv18 = trunc i32 %or to i8, !dbg !290
  store i8 %conv18, i8* %flags16, align 8, !dbg !290
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.end
  store i32 0, i32* %retval, align 4, !dbg !291
  br label %return, !dbg !291

if.end20:                                         ; preds = %while.body
  %22 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !292
  store %struct.acpi_interface_info* %22, %struct.acpi_interface_info** %previous_interface, align 8, !dbg !293
  %23 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !294
  %next21 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %23, i32 0, i32 1, !dbg !295
  %24 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next21, align 8, !dbg !295
  store %struct.acpi_interface_info* %24, %struct.acpi_interface_info** %next_interface, align 8, !dbg !296
  br label %while.cond, !dbg !245, !llvm.loop !297

while.end:                                        ; preds = %while.cond
  store i32 6, i32* %retval, align 4, !dbg !299
  br label %return, !dbg !299

return:                                           ; preds = %while.end, %if.end19, %if.then14
  %25 = load i32, i32* %retval, align 4, !dbg !300
  ret i32 %25, !dbg !300
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_update_interfaces(i8 zeroext %action) #0 !dbg !301 {
entry:
  %action.addr = alloca i8, align 1
  %next_interface = alloca %struct.acpi_interface_info*, align 8
  store i8 %action, i8* %action.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %action.addr, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %next_interface, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !308
  store %struct.acpi_interface_info* %0, %struct.acpi_interface_info** %next_interface, align 8, !dbg !309
  br label %while.cond, !dbg !310

while.cond:                                       ; preds = %if.end24, %entry
  %1 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !311
  %tobool = icmp ne %struct.acpi_interface_info* %1, null, !dbg !310
  br i1 %tobool, label %while.body, label %while.end, !dbg !310

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !312
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %2, i32 0, i32 2, !dbg !315
  %3 = load i8, i8* %flags, align 8, !dbg !315
  %conv = zext i8 %3 to i32, !dbg !312
  %and = and i32 %conv, 4, !dbg !316
  %tobool1 = icmp ne i32 %and, 0, !dbg !316
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false, !dbg !317

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8, i8* %action.addr, align 1, !dbg !318
  %conv2 = zext i8 %4 to i32, !dbg !318
  %and3 = and i32 %conv2, 2, !dbg !319
  %tobool4 = icmp ne i32 %and3, 0, !dbg !319
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !320

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %5 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !321
  %flags5 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %5, i32 0, i32 2, !dbg !322
  %6 = load i8, i8* %flags5, align 8, !dbg !322
  %conv6 = zext i8 %6 to i32, !dbg !321
  %and7 = and i32 %conv6, 4, !dbg !323
  %tobool8 = icmp ne i32 %and7, 0, !dbg !323
  br i1 %tobool8, label %if.end24, label %land.lhs.true9, !dbg !324

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %7 = load i8, i8* %action.addr, align 1, !dbg !325
  %conv10 = zext i8 %7 to i32, !dbg !325
  %and11 = and i32 %conv10, 1, !dbg !326
  %tobool12 = icmp ne i32 %and11, 0, !dbg !326
  br i1 %tobool12, label %if.then, label %if.end24, !dbg !327

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %8 = load i8, i8* %action.addr, align 1, !dbg !328
  %conv13 = zext i8 %8 to i32, !dbg !328
  %and14 = and i32 %conv13, 4, !dbg !331
  %tobool15 = icmp ne i32 %and14, 0, !dbg !331
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !332

if.then16:                                        ; preds = %if.then
  %9 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !333
  %flags17 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %9, i32 0, i32 2, !dbg !335
  %10 = load i8, i8* %flags17, align 8, !dbg !336
  %conv18 = zext i8 %10 to i32, !dbg !336
  %or = or i32 %conv18, 1, !dbg !336
  %conv19 = trunc i32 %or to i8, !dbg !336
  store i8 %conv19, i8* %flags17, align 8, !dbg !336
  br label %if.end, !dbg !337

if.else:                                          ; preds = %if.then
  %11 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !338
  %flags20 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %11, i32 0, i32 2, !dbg !340
  %12 = load i8, i8* %flags20, align 8, !dbg !341
  %conv21 = zext i8 %12 to i32, !dbg !341
  %and22 = and i32 %conv21, -2, !dbg !341
  %conv23 = trunc i32 %and22 to i8, !dbg !341
  store i8 %conv23, i8* %flags20, align 8, !dbg !341
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  br label %if.end24, !dbg !342

if.end24:                                         ; preds = %if.end, %land.lhs.true9, %lor.lhs.false
  %13 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !343
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %13, i32 0, i32 1, !dbg !344
  %14 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next, align 8, !dbg !344
  store %struct.acpi_interface_info* %14, %struct.acpi_interface_info** %next_interface, align 8, !dbg !345
  br label %while.cond, !dbg !310, !llvm.loop !346

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_interface_info* @acpi_ut_get_interface(i8* %interface_name) #0 !dbg !349 {
entry:
  %retval = alloca %struct.acpi_interface_info*, align 8
  %interface_name.addr = alloca i8*, align 8
  %next_interface = alloca %struct.acpi_interface_info*, align 8
  store i8* %interface_name, i8** %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface_name.addr, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %next_interface, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8, !dbg !356
  store %struct.acpi_interface_info* %0, %struct.acpi_interface_info** %next_interface, align 8, !dbg !357
  br label %while.cond, !dbg !358

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !359
  %tobool = icmp ne %struct.acpi_interface_info* %1, null, !dbg !358
  br i1 %tobool, label %while.body, label %while.end, !dbg !358

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %interface_name.addr, align 8, !dbg !360
  %3 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !363
  %name = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %3, i32 0, i32 0, !dbg !364
  %4 = load i8*, i8** %name, align 8, !dbg !364
  %call = call i32 @strcmp(i8* %2, i8* %4) #8, !dbg !365
  %tobool1 = icmp ne i32 %call, 0, !dbg !365
  br i1 %tobool1, label %if.end, label %if.then, !dbg !366

if.then:                                          ; preds = %while.body
  %5 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !367
  store %struct.acpi_interface_info* %5, %struct.acpi_interface_info** %retval, align 8, !dbg !369
  br label %return, !dbg !369

if.end:                                           ; preds = %while.body
  %6 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next_interface, align 8, !dbg !370
  %next = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %6, i32 0, i32 1, !dbg !371
  %7 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %next, align 8, !dbg !371
  store %struct.acpi_interface_info* %7, %struct.acpi_interface_info** %next_interface, align 8, !dbg !372
  br label %while.cond, !dbg !358, !llvm.loop !373

while.end:                                        ; preds = %while.cond
  store %struct.acpi_interface_info* null, %struct.acpi_interface_info** %retval, align 8, !dbg !375
  br label %return, !dbg !375

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %retval, align 8, !dbg !376
  ret %struct.acpi_interface_info* %8, !dbg !376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_osi_implementation(%struct.acpi_walk_state* %walk_state) #0 !dbg !377 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %string_desc = alloca %union.acpi_operand_object*, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %interface_info = alloca %struct.acpi_interface_info*, align 8
  %interface_handler = alloca i32 (i8*, i32)*, align 8
  %status = alloca i32, align 4
  %return_value = alloca i64, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %string_desc, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata %struct.acpi_interface_info** %interface_info, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata i32 (i8*, i32)** %interface_handler, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata i64* %return_value, metadata !1152, metadata !DIExpression()), !dbg !1153
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1154
  %arguments = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 26, !dbg !1155
  %arrayidx = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments, i64 0, i64 0, !dbg !1154
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx, i32 0, i32 0, !dbg !1156
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1156
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %string_desc, align 8, !dbg !1157
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1158
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1158
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1160

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1161
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1162
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1163
  %4 = load i8, i8* %type, align 1, !dbg !1163
  %conv = zext i8 %4 to i32, !dbg !1161
  %cmp = icmp ne i32 %conv, 2, !dbg !1164
  br i1 %cmp, label %if.then, label %if.end, !dbg !1165

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 8, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %lor.lhs.false
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 403, i32 1, i32 1) #8, !dbg !1168
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !1169
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1170
  %tobool2 = icmp ne %union.acpi_operand_object* %5, null, !dbg !1170
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1172

if.then3:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !1173
  br label %return, !dbg !1173

if.end4:                                          ; preds = %if.end
  store i64 0, i64* %return_value, align 8, !dbg !1175
  %6 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !1176
  %call5 = call i32 @acpi_os_wait_semaphore(i8* %6, i32 1, i16 zeroext -1) #8, !dbg !1176
  store i32 %call5, i32* %status, align 4, !dbg !1177
  %7 = load i32, i32* %status, align 4, !dbg !1178
  %tobool6 = icmp ne i32 %7, 0, !dbg !1178
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1180

if.then7:                                         ; preds = %if.end4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1181
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %8) #8, !dbg !1183
  %9 = load i32, i32* %status, align 4, !dbg !1184
  store i32 %9, i32* %retval, align 4, !dbg !1184
  br label %return, !dbg !1184

if.end8:                                          ; preds = %if.end4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1185
  %string = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_string*, !dbg !1186
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1187
  %11 = load i8*, i8** %pointer, align 8, !dbg !1187
  %call9 = call %struct.acpi_interface_info* @acpi_ut_get_interface(i8* %11) #8, !dbg !1188
  store %struct.acpi_interface_info* %call9, %struct.acpi_interface_info** %interface_info, align 8, !dbg !1189
  %12 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !1190
  %tobool10 = icmp ne %struct.acpi_interface_info* %12, null, !dbg !1190
  br i1 %tobool10, label %land.lhs.true, label %if.end21, !dbg !1192

land.lhs.true:                                    ; preds = %if.end8
  %13 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !1193
  %flags = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %13, i32 0, i32 2, !dbg !1194
  %14 = load i8, i8* %flags, align 8, !dbg !1194
  %conv11 = zext i8 %14 to i32, !dbg !1193
  %and = and i32 %conv11, 1, !dbg !1195
  %tobool12 = icmp ne i32 %and, 0, !dbg !1195
  br i1 %tobool12, label %if.end21, label %if.then13, !dbg !1196

if.then13:                                        ; preds = %land.lhs.true
  %15 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !1197
  %value = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %15, i32 0, i32 3, !dbg !1200
  %16 = load i8, i8* %value, align 1, !dbg !1200
  %conv14 = zext i8 %16 to i32, !dbg !1197
  %17 = load i8, i8* @acpi_gbl_osi_data, align 1, !dbg !1201
  %conv15 = zext i8 %17 to i32, !dbg !1201
  %cmp16 = icmp sgt i32 %conv14, %conv15, !dbg !1202
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !1203

if.then18:                                        ; preds = %if.then13
  %18 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %interface_info, align 8, !dbg !1204
  %value19 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %18, i32 0, i32 3, !dbg !1206
  %19 = load i8, i8* %value19, align 1, !dbg !1206
  store i8 %19, i8* @acpi_gbl_osi_data, align 1, !dbg !1207
  br label %if.end20, !dbg !1208

if.end20:                                         ; preds = %if.then18, %if.then13
  store i64 -1, i64* %return_value, align 8, !dbg !1209
  br label %if.end21, !dbg !1210

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end8
  %20 = load i8*, i8** @acpi_gbl_osi_mutex, align 8, !dbg !1211
  %call22 = call i32 @acpi_os_signal_semaphore(i8* %20, i32 1) #8, !dbg !1211
  %21 = load i32 (i8*, i32)*, i32 (i8*, i32)** @acpi_gbl_interface_handler, align 8, !dbg !1212
  store i32 (i8*, i32)* %21, i32 (i8*, i32)** %interface_handler, align 8, !dbg !1213
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %interface_handler, align 8, !dbg !1214
  %tobool23 = icmp ne i32 (i8*, i32)* %22, null, !dbg !1214
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !1216

if.then24:                                        ; preds = %if.end21
  %23 = load i32 (i8*, i32)*, i32 (i8*, i32)** %interface_handler, align 8, !dbg !1217
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1220
  %string25 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_string*, !dbg !1221
  %pointer26 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string25, i32 0, i32 5, !dbg !1222
  %25 = load i8*, i8** %pointer26, align 8, !dbg !1222
  %26 = load i64, i64* %return_value, align 8, !dbg !1223
  %conv27 = trunc i64 %26 to i32, !dbg !1224
  %call28 = call i32 %23(i8* %25, i32 %conv27) #8, !dbg !1217
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1217
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1225

if.then30:                                        ; preds = %if.then24
  store i64 -1, i64* %return_value, align 8, !dbg !1226
  br label %if.end31, !dbg !1228

if.end31:                                         ; preds = %if.then30, %if.then24
  br label %if.end32, !dbg !1229

if.end32:                                         ; preds = %if.end31, %if.end21
  %27 = load i64, i64* %return_value, align 8, !dbg !1230
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1231
  %integer = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_integer*, !dbg !1232
  %value33 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1233
  store i64 %27, i64* %value33, align 8, !dbg !1234
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1235
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1236
  %return_desc34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 45, !dbg !1237
  store %union.acpi_operand_object* %29, %union.acpi_operand_object** %return_desc34, align 8, !dbg !1238
  store i32 0, i32* %retval, align 4, !dbg !1239
  br label %return, !dbg !1239

return:                                           ; preds = %if.end32, %if.then7, %if.then3, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !1240
  ret i32 %31, !dbg !1240
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1241 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1248, metadata !DIExpression()), !dbg !1255
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1261, metadata !DIExpression()), !dbg !1262
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1263, metadata !DIExpression()), !dbg !1264
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1265, metadata !DIExpression()), !dbg !1266
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1267, metadata !DIExpression()), !dbg !1271
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1273, metadata !DIExpression()), !dbg !1277
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1279, metadata !DIExpression()), !dbg !1283
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1288, metadata !DIExpression()), !dbg !1289
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1290, metadata !DIExpression()), !dbg !1291
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1292, metadata !DIExpression()), !dbg !1293
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1294, metadata !DIExpression()), !dbg !1295
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1296, metadata !DIExpression()), !dbg !1297
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1298, metadata !DIExpression()), !dbg !1299
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1300, metadata !DIExpression()), !dbg !1301
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1302, metadata !DIExpression()), !dbg !1303
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  %0 = load i64, i64* %size.addr, align 8, !dbg !1308
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1309
  %or = or i32 %1, 256, !dbg !1310
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1311
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1312
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1313

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1314
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1315
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1316

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1317
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1318
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1319
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1320
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1297
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1321
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1322
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1323
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1324
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1325
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1326
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1327
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1327
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1327
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1327
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1327
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1328
  br label %kmalloc.exit, !dbg !1328

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1329
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1330
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1330
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1332

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1333
  br label %kmalloc_index.exit.i, !dbg !1333

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1334
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1336
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1337

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1338
  br label %kmalloc_index.exit.i, !dbg !1338

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1339
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1341
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1342

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1343
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1344
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1345

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1346
  br label %kmalloc_index.exit.i, !dbg !1346

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1347
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1349
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1350

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1351
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1352
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1353

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1354
  br label %kmalloc_index.exit.i, !dbg !1354

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1355
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1357
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1358

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1359
  br label %kmalloc_index.exit.i, !dbg !1359

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1360
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1362
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1363

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1364
  br label %kmalloc_index.exit.i, !dbg !1364

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1365
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1367
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1368

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1369
  br label %kmalloc_index.exit.i, !dbg !1369

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1370
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1372
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1373

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1374
  br label %kmalloc_index.exit.i, !dbg !1374

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1375
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1377
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1378

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1379
  br label %kmalloc_index.exit.i, !dbg !1379

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1380
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1382
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1383

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1384
  br label %kmalloc_index.exit.i, !dbg !1384

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1385
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1387
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1388

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1389
  br label %kmalloc_index.exit.i, !dbg !1389

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1390
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1392
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1393

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1394
  br label %kmalloc_index.exit.i, !dbg !1394

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1395
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1397
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1398

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1399
  br label %kmalloc_index.exit.i, !dbg !1399

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1400
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1402
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1403

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1404
  br label %kmalloc_index.exit.i, !dbg !1404

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1405
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1407
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1408

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1409
  br label %kmalloc_index.exit.i, !dbg !1409

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1410
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1412
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1413

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1414
  br label %kmalloc_index.exit.i, !dbg !1414

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1415
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1417
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1418

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1419
  br label %kmalloc_index.exit.i, !dbg !1419

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1420
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1422
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1423

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1424
  br label %kmalloc_index.exit.i, !dbg !1424

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1425
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1427
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1428

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1429
  br label %kmalloc_index.exit.i, !dbg !1429

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1430
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1432
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1433

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1434
  br label %kmalloc_index.exit.i, !dbg !1434

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1435
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1437
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1438

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1439
  br label %kmalloc_index.exit.i, !dbg !1439

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1440
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1442
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1443

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1444
  br label %kmalloc_index.exit.i, !dbg !1444

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1445
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1447
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1448

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1449
  br label %kmalloc_index.exit.i, !dbg !1449

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1450
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1452
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1453

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1454
  br label %kmalloc_index.exit.i, !dbg !1454

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1455
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1457
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1458

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1459
  br label %kmalloc_index.exit.i, !dbg !1459

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1460
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1462
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1463

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1464
  br label %kmalloc_index.exit.i, !dbg !1464

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1465
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1467
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1468

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1469
  br label %kmalloc_index.exit.i, !dbg !1469

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1470
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1472
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1473

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1474
  br label %kmalloc_index.exit.i, !dbg !1474

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1475, !srcloc !1478
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1479, !srcloc !1482
  unreachable, !dbg !1483

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1484
  store i32 %45, i32* %index.i, align 4, !dbg !1485
  %46 = load i32, i32* %index.i, align 4, !dbg !1486
  %tobool.i = icmp ne i32 %46, 0, !dbg !1486
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1488

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1489
  br label %kmalloc.exit, !dbg !1489

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1490
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1491
  %and.i.i = and i32 %48, 17, !dbg !1491
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1491
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1491
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1491
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1491
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1493

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1494
  br label %kmalloc_type.exit.i, !dbg !1494

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1495
  %and2.i.i = and i32 %49, 1, !dbg !1496
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1495
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1495
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1495
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1497
  br label %kmalloc_type.exit.i, !dbg !1497

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1498
  %idxprom.i = zext i32 %51 to i64, !dbg !1499
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1499
  %52 = load i32, i32* %index.i, align 4, !dbg !1500
  %idxprom6.i = zext i32 %52 to i64, !dbg !1499
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1499
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1499
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1501
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1502
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1503
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1504
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1505
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1505
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1505
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1505
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1505
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1266
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1506
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1507
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1508
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1509
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1510
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1511
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1512
  store i8* %62, i8** %retval.i, align 8, !dbg !1513
  br label %kmalloc.exit, !dbg !1513

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1514
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1515
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1516
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1516
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1516
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1516
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1516
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1517
  br label %kmalloc.exit, !dbg !1517

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1518
  ret i8* %65, !dbg !1519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1520 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1524, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1527, metadata !DIExpression()), !dbg !1526
  %0 = load i64, i64* %__edi, align 8, !dbg !1526
  store i64 %0, i64* %__edi, align 8, !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1528, metadata !DIExpression()), !dbg !1526
  %1 = load i64, i64* %__esi, align 8, !dbg !1526
  store i64 %1, i64* %__esi, align 8, !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1529, metadata !DIExpression()), !dbg !1526
  %2 = load i64, i64* %__edx, align 8, !dbg !1526
  store i64 %2, i64* %__edx, align 8, !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1530, metadata !DIExpression()), !dbg !1526
  %3 = load i64, i64* %__ecx, align 8, !dbg !1526
  store i64 %3, i64* %__ecx, align 8, !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1531, metadata !DIExpression()), !dbg !1526
  %4 = load i64, i64* %__eax, align 8, !dbg !1526
  store i64 %4, i64* %__eax, align 8, !dbg !1526
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1526
  %6 = call i64 @llvm.read_register.i64(metadata !51), !dbg !1532
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1532, !srcloc !1535
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1532
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1532
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1532
  call void @llvm.write_register.i64(metadata !51, i64 %asmresult1), !dbg !1532
  %8 = load i64, i64* %__eax, align 8, !dbg !1532
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1536, metadata !DIExpression()), !dbg !1538
  store i64 -1, i64* %__mask, align 8, !dbg !1538
  %9 = load i64, i64* %__mask, align 8, !dbg !1538
  store i64 %9, i64* %tmp, align 8, !dbg !1538
  %10 = load i64, i64* %tmp, align 8, !dbg !1538
  %and = and i64 %8, %10, !dbg !1532
  store i64 %and, i64* %__ret, align 8, !dbg !1532
  %11 = load i64, i64* %__ret, align 8, !dbg !1526
  store i64 %11, i64* %tmp2, align 8, !dbg !1539
  %12 = load i64, i64* %tmp2, align 8, !dbg !1526
  ret i64 %12, !dbg !1540
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1541 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1543, metadata !DIExpression()), !dbg !1548
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1550, metadata !DIExpression()), !dbg !1551
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1552, metadata !DIExpression()), !dbg !1553
  %0 = load i64, i64* %size.addr, align 8, !dbg !1554
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1556
  br i1 %1, label %if.then, label %if.end447, !dbg !1557

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1558
  %tobool = icmp ne i64 %2, 0, !dbg !1558
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1561

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1563
  %cmp = icmp ult i64 %3, 4096, !dbg !1565
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1566

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1567
  br label %return, !dbg !1567

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub = sub i64 %4, 1, !dbg !1568
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1568
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1568

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub4 = sub i64 %6, 1, !dbg !1568
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1568
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1568

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub6 = sub i64 %8, 1, !dbg !1568
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1568
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1568

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1568

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub9 = sub i64 %9, 1, !dbg !1568
  %and = and i64 %sub9, -9223372036854775808, !dbg !1568
  %tobool10 = icmp ne i64 %and, 0, !dbg !1568
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1568

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1568

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub13 = sub i64 %10, 1, !dbg !1568
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1568
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1568
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1568

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1568

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub18 = sub i64 %11, 1, !dbg !1568
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1568
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1568
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1568

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1568

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub23 = sub i64 %12, 1, !dbg !1568
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1568
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1568
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1568

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1568

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub28 = sub i64 %13, 1, !dbg !1568
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1568
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1568
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1568

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1568

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub33 = sub i64 %14, 1, !dbg !1568
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1568
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1568
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1568

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1568

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub38 = sub i64 %15, 1, !dbg !1568
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1568
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1568
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1568

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1568

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub43 = sub i64 %16, 1, !dbg !1568
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1568
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1568
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1568

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1568

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub48 = sub i64 %17, 1, !dbg !1568
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1568
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1568
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1568

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1568

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub53 = sub i64 %18, 1, !dbg !1568
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1568
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1568
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1568

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1568

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub58 = sub i64 %19, 1, !dbg !1568
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1568
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1568
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1568

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1568

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub63 = sub i64 %20, 1, !dbg !1568
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1568
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1568
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1568

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1568

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub68 = sub i64 %21, 1, !dbg !1568
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1568
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1568
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1568

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1568

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub73 = sub i64 %22, 1, !dbg !1568
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1568
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1568
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1568

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1568

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub78 = sub i64 %23, 1, !dbg !1568
  %and79 = and i64 %sub78, 562949953421312, !dbg !1568
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1568
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1568

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1568

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub83 = sub i64 %24, 1, !dbg !1568
  %and84 = and i64 %sub83, 281474976710656, !dbg !1568
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1568
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1568

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1568

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub88 = sub i64 %25, 1, !dbg !1568
  %and89 = and i64 %sub88, 140737488355328, !dbg !1568
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1568
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1568

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1568

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub93 = sub i64 %26, 1, !dbg !1568
  %and94 = and i64 %sub93, 70368744177664, !dbg !1568
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1568
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1568

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1568

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub98 = sub i64 %27, 1, !dbg !1568
  %and99 = and i64 %sub98, 35184372088832, !dbg !1568
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1568
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1568

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1568

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub103 = sub i64 %28, 1, !dbg !1568
  %and104 = and i64 %sub103, 17592186044416, !dbg !1568
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1568
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1568

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1568

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub108 = sub i64 %29, 1, !dbg !1568
  %and109 = and i64 %sub108, 8796093022208, !dbg !1568
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1568
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1568

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1568

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub113 = sub i64 %30, 1, !dbg !1568
  %and114 = and i64 %sub113, 4398046511104, !dbg !1568
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1568
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1568

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1568

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub118 = sub i64 %31, 1, !dbg !1568
  %and119 = and i64 %sub118, 2199023255552, !dbg !1568
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1568
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1568

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1568

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub123 = sub i64 %32, 1, !dbg !1568
  %and124 = and i64 %sub123, 1099511627776, !dbg !1568
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1568
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1568

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1568

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub128 = sub i64 %33, 1, !dbg !1568
  %and129 = and i64 %sub128, 549755813888, !dbg !1568
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1568
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1568

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1568

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub133 = sub i64 %34, 1, !dbg !1568
  %and134 = and i64 %sub133, 274877906944, !dbg !1568
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1568
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1568

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1568

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub138 = sub i64 %35, 1, !dbg !1568
  %and139 = and i64 %sub138, 137438953472, !dbg !1568
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1568
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1568

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1568

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub143 = sub i64 %36, 1, !dbg !1568
  %and144 = and i64 %sub143, 68719476736, !dbg !1568
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1568
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1568

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1568

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub148 = sub i64 %37, 1, !dbg !1568
  %and149 = and i64 %sub148, 34359738368, !dbg !1568
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1568
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1568

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1568

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub153 = sub i64 %38, 1, !dbg !1568
  %and154 = and i64 %sub153, 17179869184, !dbg !1568
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1568
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1568

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1568

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub158 = sub i64 %39, 1, !dbg !1568
  %and159 = and i64 %sub158, 8589934592, !dbg !1568
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1568
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1568

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1568

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub163 = sub i64 %40, 1, !dbg !1568
  %and164 = and i64 %sub163, 4294967296, !dbg !1568
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1568
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1568

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1568

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub168 = sub i64 %41, 1, !dbg !1568
  %and169 = and i64 %sub168, 2147483648, !dbg !1568
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1568
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1568

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1568

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub173 = sub i64 %42, 1, !dbg !1568
  %and174 = and i64 %sub173, 1073741824, !dbg !1568
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1568
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1568

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1568

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub178 = sub i64 %43, 1, !dbg !1568
  %and179 = and i64 %sub178, 536870912, !dbg !1568
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1568
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1568

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1568

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub183 = sub i64 %44, 1, !dbg !1568
  %and184 = and i64 %sub183, 268435456, !dbg !1568
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1568
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1568

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1568

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub188 = sub i64 %45, 1, !dbg !1568
  %and189 = and i64 %sub188, 134217728, !dbg !1568
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1568
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1568

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1568

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub193 = sub i64 %46, 1, !dbg !1568
  %and194 = and i64 %sub193, 67108864, !dbg !1568
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1568
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1568

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1568

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub198 = sub i64 %47, 1, !dbg !1568
  %and199 = and i64 %sub198, 33554432, !dbg !1568
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1568
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1568

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1568

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub203 = sub i64 %48, 1, !dbg !1568
  %and204 = and i64 %sub203, 16777216, !dbg !1568
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1568
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1568

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1568

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub208 = sub i64 %49, 1, !dbg !1568
  %and209 = and i64 %sub208, 8388608, !dbg !1568
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1568
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1568

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1568

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub213 = sub i64 %50, 1, !dbg !1568
  %and214 = and i64 %sub213, 4194304, !dbg !1568
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1568
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1568

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1568

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub218 = sub i64 %51, 1, !dbg !1568
  %and219 = and i64 %sub218, 2097152, !dbg !1568
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1568
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1568

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1568

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub223 = sub i64 %52, 1, !dbg !1568
  %and224 = and i64 %sub223, 1048576, !dbg !1568
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1568
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1568

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1568

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub228 = sub i64 %53, 1, !dbg !1568
  %and229 = and i64 %sub228, 524288, !dbg !1568
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1568
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1568

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1568

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub233 = sub i64 %54, 1, !dbg !1568
  %and234 = and i64 %sub233, 262144, !dbg !1568
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1568
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1568

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1568

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub238 = sub i64 %55, 1, !dbg !1568
  %and239 = and i64 %sub238, 131072, !dbg !1568
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1568
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1568

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1568

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub243 = sub i64 %56, 1, !dbg !1568
  %and244 = and i64 %sub243, 65536, !dbg !1568
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1568
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1568

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1568

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub248 = sub i64 %57, 1, !dbg !1568
  %and249 = and i64 %sub248, 32768, !dbg !1568
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1568
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1568

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1568

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub253 = sub i64 %58, 1, !dbg !1568
  %and254 = and i64 %sub253, 16384, !dbg !1568
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1568
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1568

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1568

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub258 = sub i64 %59, 1, !dbg !1568
  %and259 = and i64 %sub258, 8192, !dbg !1568
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1568
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1568

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1568

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub263 = sub i64 %60, 1, !dbg !1568
  %and264 = and i64 %sub263, 4096, !dbg !1568
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1568
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1568

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1568

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub268 = sub i64 %61, 1, !dbg !1568
  %and269 = and i64 %sub268, 2048, !dbg !1568
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1568
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1568

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1568

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub273 = sub i64 %62, 1, !dbg !1568
  %and274 = and i64 %sub273, 1024, !dbg !1568
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1568
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1568

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1568

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub278 = sub i64 %63, 1, !dbg !1568
  %and279 = and i64 %sub278, 512, !dbg !1568
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1568
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1568

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1568

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub283 = sub i64 %64, 1, !dbg !1568
  %and284 = and i64 %sub283, 256, !dbg !1568
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1568
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1568

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1568

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub288 = sub i64 %65, 1, !dbg !1568
  %and289 = and i64 %sub288, 128, !dbg !1568
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1568
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1568

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1568

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub293 = sub i64 %66, 1, !dbg !1568
  %and294 = and i64 %sub293, 64, !dbg !1568
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1568
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1568

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1568

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub298 = sub i64 %67, 1, !dbg !1568
  %and299 = and i64 %sub298, 32, !dbg !1568
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1568
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1568

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1568

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub303 = sub i64 %68, 1, !dbg !1568
  %and304 = and i64 %sub303, 16, !dbg !1568
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1568
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1568

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1568

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub308 = sub i64 %69, 1, !dbg !1568
  %and309 = and i64 %sub308, 8, !dbg !1568
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1568
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1568

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1568

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub313 = sub i64 %70, 1, !dbg !1568
  %and314 = and i64 %sub313, 4, !dbg !1568
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1568
  %71 = zext i1 %tobool315 to i64, !dbg !1568
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1568
  br label %cond.end, !dbg !1568

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1568
  br label %cond.end317, !dbg !1568

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1568
  br label %cond.end319, !dbg !1568

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1568
  br label %cond.end321, !dbg !1568

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1568
  br label %cond.end323, !dbg !1568

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1568
  br label %cond.end325, !dbg !1568

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1568
  br label %cond.end327, !dbg !1568

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1568
  br label %cond.end329, !dbg !1568

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1568
  br label %cond.end331, !dbg !1568

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1568
  br label %cond.end333, !dbg !1568

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1568
  br label %cond.end335, !dbg !1568

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1568
  br label %cond.end337, !dbg !1568

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1568
  br label %cond.end339, !dbg !1568

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1568
  br label %cond.end341, !dbg !1568

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1568
  br label %cond.end343, !dbg !1568

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1568
  br label %cond.end345, !dbg !1568

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1568
  br label %cond.end347, !dbg !1568

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1568
  br label %cond.end349, !dbg !1568

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1568
  br label %cond.end351, !dbg !1568

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1568
  br label %cond.end353, !dbg !1568

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1568
  br label %cond.end355, !dbg !1568

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1568
  br label %cond.end357, !dbg !1568

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1568
  br label %cond.end359, !dbg !1568

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1568
  br label %cond.end361, !dbg !1568

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1568
  br label %cond.end363, !dbg !1568

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1568
  br label %cond.end365, !dbg !1568

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1568
  br label %cond.end367, !dbg !1568

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1568
  br label %cond.end369, !dbg !1568

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1568
  br label %cond.end371, !dbg !1568

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1568
  br label %cond.end373, !dbg !1568

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1568
  br label %cond.end375, !dbg !1568

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1568
  br label %cond.end377, !dbg !1568

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1568
  br label %cond.end379, !dbg !1568

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1568
  br label %cond.end381, !dbg !1568

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1568
  br label %cond.end383, !dbg !1568

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1568
  br label %cond.end385, !dbg !1568

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1568
  br label %cond.end387, !dbg !1568

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1568
  br label %cond.end389, !dbg !1568

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1568
  br label %cond.end391, !dbg !1568

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1568
  br label %cond.end393, !dbg !1568

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1568
  br label %cond.end395, !dbg !1568

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1568
  br label %cond.end397, !dbg !1568

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1568
  br label %cond.end399, !dbg !1568

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1568
  br label %cond.end401, !dbg !1568

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1568
  br label %cond.end403, !dbg !1568

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1568
  br label %cond.end405, !dbg !1568

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1568
  br label %cond.end407, !dbg !1568

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1568
  br label %cond.end409, !dbg !1568

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1568
  br label %cond.end411, !dbg !1568

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1568
  br label %cond.end413, !dbg !1568

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1568
  br label %cond.end415, !dbg !1568

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1568
  br label %cond.end417, !dbg !1568

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1568
  br label %cond.end419, !dbg !1568

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1568
  br label %cond.end421, !dbg !1568

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1568
  br label %cond.end423, !dbg !1568

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1568
  br label %cond.end425, !dbg !1568

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1568
  br label %cond.end427, !dbg !1568

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1568
  br label %cond.end429, !dbg !1568

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1568
  br label %cond.end431, !dbg !1568

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1568
  br label %cond.end433, !dbg !1568

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1568
  br label %cond.end435, !dbg !1568

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1568
  br label %cond.end437, !dbg !1568

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1568
  br label %cond.end440, !dbg !1568

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1568

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1568
  br label %cond.end444, !dbg !1568

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1568
  %sub443 = sub i64 %72, 1, !dbg !1568
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1568
  br label %cond.end444, !dbg !1568

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1568
  %sub446 = sub i32 %cond445, 12, !dbg !1569
  %add = add i32 %sub446, 1, !dbg !1570
  store i32 %add, i32* %retval, align 4, !dbg !1571
  br label %return, !dbg !1571

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1572
  %dec = add i64 %73, -1, !dbg !1572
  store i64 %dec, i64* %size.addr, align 8, !dbg !1572
  %74 = load i64, i64* %size.addr, align 8, !dbg !1573
  %shr = lshr i64 %74, 12, !dbg !1573
  store i64 %shr, i64* %size.addr, align 8, !dbg !1573
  %75 = load i64, i64* %size.addr, align 8, !dbg !1574
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1551
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1575
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1576
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1575, !srcloc !1577
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1575
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1578
  %add.i = add i32 %79, 1, !dbg !1579
  store i32 %add.i, i32* %retval, align 4, !dbg !1580
  br label %return, !dbg !1580

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1581
  ret i32 %80, !dbg !1581
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1582 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1543, metadata !DIExpression()), !dbg !1586
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1550, metadata !DIExpression()), !dbg !1588
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1589, metadata !DIExpression()), !dbg !1590
  %0 = load i64, i64* %n.addr, align 8, !dbg !1591
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1588
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1592
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1593
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1592, !srcloc !1577
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1592
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1594
  %add.i = add i32 %4, 1, !dbg !1595
  %sub = sub i32 %add.i, 1, !dbg !1596
  ret i32 %sub, !dbg !1597
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1598 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1604, metadata !DIExpression()), !dbg !1605
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1606, metadata !DIExpression()), !dbg !1607
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1610, metadata !DIExpression()), !dbg !1611
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1612
  ret i8* %0, !dbg !1613
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_default_supported_interfaces", scope: !2, file: !3, line: 53, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utosi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !21, !16, !22, !24, !26, !27}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 148, baseType: !7)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!0, !29}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 48, elements: !34)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 6)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 4992, elements: !49)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_interface_info", file: !38, line: 1045, size: 192, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !42, !44, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 1046, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !38, line: 1047, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !38, line: 1048, baseType: !45, size: 8, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !38, line: 1049, baseType: !45, size: 8, offset: 136)
!49 = !{!50}
!50 = !DISubrange(count: 26)
!51 = !{!"rsp"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!57 = distinct !DISubprogram(name: "acpi_ut_initialize_interfaces", scope: !3, file: !3, line: 107, type: !58, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!21}
!60 = !{}
!61 = !DILocalVariable(name: "status", scope: !57, file: !3, line: 109, type: !21)
!62 = !DILocation(line: 109, column: 14, scope: !57)
!63 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 110, type: !22)
!64 = !DILocation(line: 110, column: 6, scope: !57)
!65 = !DILocation(line: 112, column: 11, scope: !57)
!66 = !DILocation(line: 112, column: 9, scope: !57)
!67 = !DILocation(line: 113, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 113, column: 6)
!69 = !DILocation(line: 113, column: 6, scope: !57)
!70 = !DILocation(line: 114, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 113, column: 28)
!72 = !DILocation(line: 114, column: 3, scope: !71)
!73 = !DILocation(line: 117, column: 32, scope: !57)
!74 = !DILocation(line: 121, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !57, file: !3, line: 121, column: 2)
!76 = !DILocation(line: 121, column: 7, scope: !75)
!77 = !DILocation(line: 122, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 121, column: 2)
!79 = !DILocation(line: 122, column: 9, scope: !78)
!80 = !DILocation(line: 121, column: 2, scope: !75)
!81 = !DILocation(line: 125, column: 53, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 123, column: 12)
!83 = !DILocation(line: 125, column: 42, scope: !82)
!84 = !DILocation(line: 125, column: 55, scope: !82)
!85 = !DILocation(line: 125, column: 8, scope: !82)
!86 = !DILocation(line: 124, column: 37, scope: !82)
!87 = !DILocation(line: 124, column: 3, scope: !82)
!88 = !DILocation(line: 124, column: 40, scope: !82)
!89 = !DILocation(line: 124, column: 45, scope: !82)
!90 = !DILocation(line: 126, column: 2, scope: !82)
!91 = !DILocation(line: 123, column: 8, scope: !78)
!92 = !DILocation(line: 121, column: 2, scope: !78)
!93 = distinct !{!93, !80, !94}
!94 = !DILocation(line: 126, column: 2, scope: !75)
!95 = !DILocation(line: 128, column: 2, scope: !57)
!96 = !DILocation(line: 129, column: 2, scope: !57)
!97 = !DILocation(line: 130, column: 1, scope: !57)
!98 = distinct !DISubprogram(name: "acpi_ut_interface_terminate", scope: !3, file: !3, line: 145, type: !58, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!99 = !DILocalVariable(name: "status", scope: !98, file: !3, line: 147, type: !21)
!100 = !DILocation(line: 147, column: 14, scope: !98)
!101 = !DILocalVariable(name: "next_interface", scope: !98, file: !3, line: 148, type: !43)
!102 = !DILocation(line: 148, column: 30, scope: !98)
!103 = !DILocation(line: 150, column: 11, scope: !98)
!104 = !DILocation(line: 150, column: 9, scope: !98)
!105 = !DILocation(line: 151, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !3, line: 151, column: 6)
!107 = !DILocation(line: 151, column: 6, scope: !98)
!108 = !DILocation(line: 152, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !3, line: 151, column: 28)
!110 = !DILocation(line: 152, column: 3, scope: !109)
!111 = !DILocation(line: 155, column: 19, scope: !98)
!112 = !DILocation(line: 155, column: 17, scope: !98)
!113 = !DILocation(line: 156, column: 2, scope: !98)
!114 = !DILocation(line: 156, column: 9, scope: !98)
!115 = !DILocation(line: 157, column: 35, scope: !116)
!116 = distinct !DILexicalBlock(scope: !98, file: !3, line: 156, column: 25)
!117 = !DILocation(line: 157, column: 51, scope: !116)
!118 = !DILocation(line: 157, column: 33, scope: !116)
!119 = !DILocation(line: 159, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !3, line: 159, column: 7)
!121 = !DILocation(line: 159, column: 23, scope: !120)
!122 = !DILocation(line: 159, column: 29, scope: !120)
!123 = !DILocation(line: 159, column: 7, scope: !116)
!124 = !DILocation(line: 163, column: 4, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !3, line: 159, column: 49)
!126 = !DILocation(line: 164, column: 4, scope: !125)
!127 = !DILocation(line: 165, column: 3, scope: !125)
!128 = !DILocation(line: 168, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 168, column: 8)
!130 = distinct !DILexicalBlock(scope: !120, file: !3, line: 165, column: 10)
!131 = !DILocation(line: 168, column: 24, scope: !129)
!132 = !DILocation(line: 168, column: 30, scope: !129)
!133 = !DILocation(line: 168, column: 8, scope: !130)
!134 = !DILocation(line: 169, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !3, line: 168, column: 58)
!136 = !DILocation(line: 169, column: 21, scope: !135)
!137 = !DILocation(line: 169, column: 27, scope: !135)
!138 = !DILocation(line: 170, column: 4, scope: !135)
!139 = !DILocation(line: 171, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !3, line: 170, column: 11)
!141 = !DILocation(line: 171, column: 21, scope: !140)
!142 = !DILocation(line: 171, column: 27, scope: !140)
!143 = !DILocation(line: 175, column: 20, scope: !116)
!144 = !DILocation(line: 175, column: 18, scope: !116)
!145 = distinct !{!145, !113, !146}
!146 = !DILocation(line: 176, column: 2, scope: !98)
!147 = !DILocation(line: 178, column: 2, scope: !98)
!148 = !DILocation(line: 179, column: 2, scope: !98)
!149 = !DILocation(line: 180, column: 1, scope: !98)
!150 = distinct !DISubprogram(name: "acpi_os_free", scope: !151, file: !151, line: 60, type: !152, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!151 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DISubroutineType(types: !153)
!153 = !{null, !26}
!154 = !DILocalVariable(name: "memory", arg: 1, scope: !150, file: !151, line: 60, type: !26)
!155 = !DILocation(line: 60, column: 39, scope: !150)
!156 = !DILocation(line: 62, column: 8, scope: !150)
!157 = !DILocation(line: 62, column: 2, scope: !150)
!158 = !DILocation(line: 63, column: 1, scope: !150)
!159 = distinct !DISubprogram(name: "acpi_ut_install_interface", scope: !3, file: !3, line: 195, type: !160, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!160 = !DISubroutineType(types: !161)
!161 = !{!21, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !15, line: 423, baseType: !41)
!163 = !DILocalVariable(name: "interface_name", arg: 1, scope: !159, file: !3, line: 195, type: !162)
!164 = !DILocation(line: 195, column: 51, scope: !159)
!165 = !DILocalVariable(name: "interface_info", scope: !159, file: !3, line: 197, type: !43)
!166 = !DILocation(line: 197, column: 30, scope: !159)
!167 = !DILocation(line: 202, column: 6, scope: !159)
!168 = !DILocation(line: 201, column: 17, scope: !159)
!169 = !DILocation(line: 203, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !159, file: !3, line: 203, column: 6)
!171 = !DILocation(line: 203, column: 6, scope: !159)
!172 = !DILocation(line: 204, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 203, column: 23)
!174 = !DILocation(line: 207, column: 25, scope: !159)
!175 = !DILocation(line: 207, column: 2, scope: !159)
!176 = !DILocation(line: 207, column: 18, scope: !159)
!177 = !DILocation(line: 207, column: 23, scope: !159)
!178 = !DILocation(line: 208, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !159, file: !3, line: 208, column: 6)
!180 = !DILocation(line: 208, column: 23, scope: !179)
!181 = !DILocation(line: 208, column: 6, scope: !159)
!182 = !DILocation(line: 209, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 208, column: 29)
!184 = !DILocation(line: 210, column: 3, scope: !183)
!185 = !DILocation(line: 215, column: 9, scope: !159)
!186 = !DILocation(line: 215, column: 25, scope: !159)
!187 = !DILocation(line: 215, column: 31, scope: !159)
!188 = !DILocation(line: 215, column: 2, scope: !159)
!189 = !DILocation(line: 216, column: 2, scope: !159)
!190 = !DILocation(line: 216, column: 18, scope: !159)
!191 = !DILocation(line: 216, column: 24, scope: !159)
!192 = !DILocation(line: 217, column: 25, scope: !159)
!193 = !DILocation(line: 217, column: 2, scope: !159)
!194 = !DILocation(line: 217, column: 18, scope: !159)
!195 = !DILocation(line: 217, column: 23, scope: !159)
!196 = !DILocation(line: 219, column: 34, scope: !159)
!197 = !DILocation(line: 219, column: 32, scope: !159)
!198 = !DILocation(line: 220, column: 2, scope: !159)
!199 = !DILocation(line: 221, column: 1, scope: !159)
!200 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !151, file: !151, line: 55, type: !201, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!201 = !DISubroutineType(types: !202)
!202 = !{!26, !14}
!203 = !DILocalVariable(name: "flags", arg: 1, scope: !204, file: !205, line: 162, type: !27)
!204 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !205, file: !205, line: 162, type: !206, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!205 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !27}
!208 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!209 = !DILocation(line: 162, column: 67, scope: !204, inlinedAt: !210)
!210 = distinct !DILocation(line: 57, column: 23, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !151, line: 57, column: 23)
!212 = distinct !DILexicalBlock(scope: !200, file: !151, line: 57, column: 23)
!213 = !DILocalVariable(name: "size", arg: 1, scope: !200, file: !151, line: 55, type: !14)
!214 = !DILocation(line: 55, column: 55, scope: !200)
!215 = !DILocation(line: 57, column: 17, scope: !200)
!216 = !DILocalVariable(name: "_flags", scope: !212, file: !151, line: 57, type: !27)
!217 = !DILocation(line: 57, column: 23, scope: !212)
!218 = !DILocalVariable(name: "__dummy", scope: !219, file: !151, line: 57, type: !27)
!219 = distinct !DILexicalBlock(scope: !220, file: !151, line: 57, column: 23)
!220 = distinct !DILexicalBlock(scope: !212, file: !151, line: 57, column: 23)
!221 = !DILocation(line: 57, column: 23, scope: !219)
!222 = !DILocalVariable(name: "__dummy2", scope: !219, file: !151, line: 57, type: !27)
!223 = !DILocation(line: 57, column: 23, scope: !220)
!224 = !DILocalVariable(name: "__dummy", scope: !225, file: !151, line: 57, type: !27)
!225 = distinct !DILexicalBlock(scope: !211, file: !151, line: 57, column: 23)
!226 = !DILocation(line: 57, column: 23, scope: !225)
!227 = !DILocalVariable(name: "__dummy2", scope: !225, file: !151, line: 57, type: !27)
!228 = !DILocation(line: 57, column: 23, scope: !211)
!229 = !DILocation(line: 164, column: 11, scope: !204, inlinedAt: !210)
!230 = !DILocation(line: 164, column: 17, scope: !204, inlinedAt: !210)
!231 = !DILocation(line: 164, column: 9, scope: !204, inlinedAt: !210)
!232 = !DILocation(line: 57, column: 23, scope: !200)
!233 = !DILocation(line: 57, column: 9, scope: !200)
!234 = !DILocation(line: 57, column: 2, scope: !200)
!235 = distinct !DISubprogram(name: "acpi_ut_remove_interface", scope: !3, file: !3, line: 236, type: !160, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!236 = !DILocalVariable(name: "interface_name", arg: 1, scope: !235, file: !3, line: 236, type: !162)
!237 = !DILocation(line: 236, column: 50, scope: !235)
!238 = !DILocalVariable(name: "previous_interface", scope: !235, file: !3, line: 238, type: !43)
!239 = !DILocation(line: 238, column: 30, scope: !235)
!240 = !DILocalVariable(name: "next_interface", scope: !235, file: !3, line: 239, type: !43)
!241 = !DILocation(line: 239, column: 30, scope: !235)
!242 = !DILocation(line: 241, column: 40, scope: !235)
!243 = !DILocation(line: 241, column: 38, scope: !235)
!244 = !DILocation(line: 241, column: 21, scope: !235)
!245 = !DILocation(line: 242, column: 2, scope: !235)
!246 = !DILocation(line: 242, column: 9, scope: !235)
!247 = !DILocation(line: 243, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 243, column: 7)
!249 = distinct !DILexicalBlock(scope: !235, file: !3, line: 242, column: 25)
!250 = !DILocation(line: 243, column: 31, scope: !248)
!251 = !DILocation(line: 243, column: 47, scope: !248)
!252 = !DILocation(line: 243, column: 8, scope: !248)
!253 = !DILocation(line: 243, column: 7, scope: !249)
!254 = !DILocation(line: 248, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 248, column: 8)
!256 = distinct !DILexicalBlock(scope: !248, file: !3, line: 243, column: 54)
!257 = !DILocation(line: 248, column: 24, scope: !255)
!258 = !DILocation(line: 248, column: 30, scope: !255)
!259 = !DILocation(line: 248, column: 8, scope: !256)
!260 = !DILocation(line: 252, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 252, column: 9)
!262 = distinct !DILexicalBlock(scope: !255, file: !3, line: 248, column: 50)
!263 = !DILocation(line: 252, column: 31, scope: !261)
!264 = !DILocation(line: 252, column: 28, scope: !261)
!265 = !DILocation(line: 252, column: 9, scope: !262)
!266 = !DILocation(line: 254, column: 10, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !3, line: 252, column: 47)
!268 = !DILocation(line: 254, column: 26, scope: !267)
!269 = !DILocation(line: 253, column: 36, scope: !267)
!270 = !DILocation(line: 255, column: 5, scope: !267)
!271 = !DILocation(line: 257, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !261, file: !3, line: 255, column: 12)
!273 = !DILocation(line: 257, column: 26, scope: !272)
!274 = !DILocation(line: 256, column: 6, scope: !272)
!275 = !DILocation(line: 256, column: 26, scope: !272)
!276 = !DILocation(line: 256, column: 31, scope: !272)
!277 = !DILocation(line: 260, column: 5, scope: !262)
!278 = !DILocation(line: 261, column: 5, scope: !262)
!279 = !DILocation(line: 262, column: 4, scope: !262)
!280 = !DILocation(line: 267, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 267, column: 9)
!282 = distinct !DILexicalBlock(scope: !255, file: !3, line: 262, column: 11)
!283 = !DILocation(line: 267, column: 25, scope: !281)
!284 = !DILocation(line: 267, column: 31, scope: !281)
!285 = !DILocation(line: 267, column: 9, scope: !282)
!286 = !DILocation(line: 268, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !3, line: 267, column: 51)
!288 = !DILocation(line: 271, column: 5, scope: !282)
!289 = !DILocation(line: 271, column: 21, scope: !282)
!290 = !DILocation(line: 271, column: 27, scope: !282)
!291 = !DILocation(line: 274, column: 4, scope: !256)
!292 = !DILocation(line: 277, column: 24, scope: !249)
!293 = !DILocation(line: 277, column: 22, scope: !249)
!294 = !DILocation(line: 278, column: 20, scope: !249)
!295 = !DILocation(line: 278, column: 36, scope: !249)
!296 = !DILocation(line: 278, column: 18, scope: !249)
!297 = distinct !{!297, !245, !298}
!298 = !DILocation(line: 279, column: 2, scope: !235)
!299 = !DILocation(line: 283, column: 2, scope: !235)
!300 = !DILocation(line: 284, column: 1, scope: !235)
!301 = distinct !DISubprogram(name: "acpi_ut_update_interfaces", scope: !3, file: !3, line: 301, type: !302, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!302 = !DISubroutineType(types: !303)
!303 = !{!21, !45}
!304 = !DILocalVariable(name: "action", arg: 1, scope: !301, file: !3, line: 301, type: !45)
!305 = !DILocation(line: 301, column: 42, scope: !301)
!306 = !DILocalVariable(name: "next_interface", scope: !301, file: !3, line: 303, type: !43)
!307 = !DILocation(line: 303, column: 30, scope: !301)
!308 = !DILocation(line: 305, column: 19, scope: !301)
!309 = !DILocation(line: 305, column: 17, scope: !301)
!310 = !DILocation(line: 306, column: 2, scope: !301)
!311 = !DILocation(line: 306, column: 9, scope: !301)
!312 = !DILocation(line: 307, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 307, column: 7)
!314 = distinct !DILexicalBlock(scope: !301, file: !3, line: 306, column: 25)
!315 = !DILocation(line: 307, column: 25, scope: !313)
!316 = !DILocation(line: 307, column: 31, scope: !313)
!317 = !DILocation(line: 307, column: 51, scope: !313)
!318 = !DILocation(line: 308, column: 9, scope: !313)
!319 = !DILocation(line: 308, column: 16, scope: !313)
!320 = !DILocation(line: 308, column: 41, scope: !313)
!321 = !DILocation(line: 309, column: 10, scope: !313)
!322 = !DILocation(line: 309, column: 26, scope: !313)
!323 = !DILocation(line: 309, column: 32, scope: !313)
!324 = !DILocation(line: 309, column: 52, scope: !313)
!325 = !DILocation(line: 310, column: 9, scope: !313)
!326 = !DILocation(line: 310, column: 16, scope: !313)
!327 = !DILocation(line: 307, column: 7, scope: !314)
!328 = !DILocation(line: 311, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 311, column: 8)
!330 = distinct !DILexicalBlock(scope: !313, file: !3, line: 310, column: 41)
!331 = !DILocation(line: 311, column: 15, scope: !329)
!332 = !DILocation(line: 311, column: 8, scope: !330)
!333 = !DILocation(line: 315, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !3, line: 311, column: 42)
!335 = !DILocation(line: 315, column: 21, scope: !334)
!336 = !DILocation(line: 315, column: 27, scope: !334)
!337 = !DILocation(line: 316, column: 4, scope: !334)
!338 = !DILocation(line: 319, column: 5, scope: !339)
!339 = distinct !DILexicalBlock(scope: !329, file: !3, line: 316, column: 11)
!340 = !DILocation(line: 319, column: 21, scope: !339)
!341 = !DILocation(line: 319, column: 27, scope: !339)
!342 = !DILocation(line: 321, column: 3, scope: !330)
!343 = !DILocation(line: 323, column: 20, scope: !314)
!344 = !DILocation(line: 323, column: 36, scope: !314)
!345 = !DILocation(line: 323, column: 18, scope: !314)
!346 = distinct !{!346, !310, !347}
!347 = !DILocation(line: 324, column: 2, scope: !301)
!348 = !DILocation(line: 326, column: 2, scope: !301)
!349 = distinct !DISubprogram(name: "acpi_ut_get_interface", scope: !3, file: !3, line: 342, type: !350, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!350 = !DISubroutineType(types: !351)
!351 = !{!43, !162}
!352 = !DILocalVariable(name: "interface_name", arg: 1, scope: !349, file: !3, line: 342, type: !162)
!353 = !DILocation(line: 342, column: 63, scope: !349)
!354 = !DILocalVariable(name: "next_interface", scope: !349, file: !3, line: 344, type: !43)
!355 = !DILocation(line: 344, column: 30, scope: !349)
!356 = !DILocation(line: 346, column: 19, scope: !349)
!357 = !DILocation(line: 346, column: 17, scope: !349)
!358 = !DILocation(line: 347, column: 2, scope: !349)
!359 = !DILocation(line: 347, column: 9, scope: !349)
!360 = !DILocation(line: 348, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 348, column: 7)
!362 = distinct !DILexicalBlock(scope: !349, file: !3, line: 347, column: 25)
!363 = !DILocation(line: 348, column: 31, scope: !361)
!364 = !DILocation(line: 348, column: 47, scope: !361)
!365 = !DILocation(line: 348, column: 8, scope: !361)
!366 = !DILocation(line: 348, column: 7, scope: !362)
!367 = !DILocation(line: 349, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !3, line: 348, column: 54)
!369 = !DILocation(line: 349, column: 4, scope: !368)
!370 = !DILocation(line: 352, column: 20, scope: !362)
!371 = !DILocation(line: 352, column: 36, scope: !362)
!372 = !DILocation(line: 352, column: 18, scope: !362)
!373 = distinct !{!373, !358, !374}
!374 = !DILocation(line: 353, column: 2, scope: !349)
!375 = !DILocation(line: 355, column: 2, scope: !349)
!376 = !DILocation(line: 356, column: 1, scope: !349)
!377 = distinct !DISubprogram(name: "acpi_ut_osi_implementation", scope: !3, file: !3, line: 383, type: !378, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!378 = !DISubroutineType(types: !379)
!379 = !{!21, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !382, line: 37, size: 9024, elements: !383)
!382 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !385, !386, !387, !391, !392, !393, !394, !396, !397, !398, !399, !400, !401, !402, !403, !404, !406, !407, !408, !409, !410, !1083, !1084, !1085, !1086, !1087, !1091, !1093, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1134}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !382, line: 38, baseType: !380, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !382, line: 39, baseType: !45, size: 8, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !381, file: !382, line: 40, baseType: !45, size: 8, offset: 72)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !381, file: !382, line: 41, baseType: !388, size: 16, offset: 80)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !390)
!390 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !381, file: !382, line: 42, baseType: !45, size: 8, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !381, file: !382, line: 43, baseType: !45, size: 8, offset: 104)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !381, file: !382, line: 44, baseType: !45, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !381, file: !382, line: 45, baseType: !395, size: 16, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !388)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !381, file: !382, line: 46, baseType: !45, size: 8, offset: 144)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !381, file: !382, line: 47, baseType: !45, size: 8, offset: 152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !381, file: !382, line: 48, baseType: !45, size: 8, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !381, file: !382, line: 49, baseType: !45, size: 8, offset: 168)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !381, file: !382, line: 50, baseType: !45, size: 8, offset: 176)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !381, file: !382, line: 51, baseType: !45, size: 8, offset: 184)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !381, file: !382, line: 52, baseType: !45, size: 8, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !381, file: !382, line: 53, baseType: !45, size: 8, offset: 200)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !381, file: !382, line: 54, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !381, file: !382, line: 55, baseType: !22, size: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !381, file: !382, line: 56, baseType: !22, size: 32, offset: 352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !381, file: !382, line: 57, baseType: !22, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !381, file: !382, line: 58, baseType: !22, size: 32, offset: 416)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !381, file: !382, line: 60, baseType: !411, size: 640, offset: 448)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !38, line: 893, size: 640, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !980, !981, !1081, !1082}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !411, file: !38, line: 894, baseType: !405, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !411, file: !38, line: 895, baseType: !405, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !411, file: !38, line: 896, baseType: !405, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !411, file: !38, line: 897, baseType: !405, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !411, file: !38, line: 898, baseType: !405, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !411, file: !38, line: 899, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !38, line: 875, size: 1600, elements: !421)
!421 = !{!422, !923, !939}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !420, file: !38, line: 876, baseType: !423, size: 448)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !38, line: 828, size: 448, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !913, !922}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !423, file: !38, line: 829, baseType: !419, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !423, file: !38, line: 829, baseType: !45, size: 8, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !38, line: 829, baseType: !45, size: 8, offset: 72)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !423, file: !38, line: 829, baseType: !388, size: 16, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !423, file: !38, line: 829, baseType: !405, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !38, line: 829, baseType: !419, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !423, file: !38, line: 829, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !38, line: 133, size: 384, elements: !434)
!434 = !{!435, !897, !898, !899, !900, !909, !910, !911, !912}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !433, file: !38, line: 134, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !438, line: 367, size: 576, elements: !439)
!438 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !448, !461, !471, !484, !498, !507, !531, !560, !575, !588, !667, !679, !693, !703, !721, !743, !762, !781, !800, !817, !843, !860, !873, !887, !896}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !437, file: !438, line: 368, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !438, line: 73, size: 128, elements: !442)
!442 = !{!443, !444, !445, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !438, line: 74, baseType: !436, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !438, line: 74, baseType: !45, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !438, line: 74, baseType: !45, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !438, line: 74, baseType: !388, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !438, line: 74, baseType: !45, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !437, file: !438, line: 369, baseType: !449, size: 192)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !438, line: 76, size: 192, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !438, line: 77, baseType: !436, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !438, line: 77, baseType: !45, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !438, line: 77, baseType: !45, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !438, line: 77, baseType: !388, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !438, line: 77, baseType: !45, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !449, file: !438, line: 77, baseType: !457, size: 24, offset: 104)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 3)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !449, file: !438, line: 78, baseType: !16, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !437, file: !438, line: 370, baseType: !462, size: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !438, line: 93, size: 256, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !438, line: 94, baseType: !436, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !438, line: 94, baseType: !45, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !438, line: 94, baseType: !45, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !438, line: 94, baseType: !388, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !438, line: 94, baseType: !45, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !462, file: !438, line: 94, baseType: !41, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !462, file: !438, line: 94, baseType: !22, size: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !437, file: !438, line: 371, baseType: !472, size: 384)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !438, line: 97, size: 384, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !438, line: 98, baseType: !436, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !438, line: 98, baseType: !45, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !438, line: 98, baseType: !45, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !438, line: 98, baseType: !388, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !438, line: 98, baseType: !45, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !472, file: !438, line: 98, baseType: !405, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !472, file: !438, line: 98, baseType: !22, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !472, file: !438, line: 99, baseType: !22, size: 32, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !472, file: !438, line: 100, baseType: !405, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !472, file: !438, line: 101, baseType: !432, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !437, file: !438, line: 372, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !438, line: 104, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !495, !496, !497}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !438, line: 105, baseType: !436, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !438, line: 105, baseType: !45, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !438, line: 105, baseType: !45, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !438, line: 105, baseType: !388, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !438, line: 105, baseType: !45, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !438, line: 105, baseType: !432, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !485, file: !438, line: 106, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !485, file: !438, line: 107, baseType: !405, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !485, file: !438, line: 108, baseType: !22, size: 32, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !485, file: !438, line: 109, baseType: !22, size: 32, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !437, file: !438, line: 373, baseType: !499, size: 192)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !438, line: 118, size: 192, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !438, line: 119, baseType: !436, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !438, line: 119, baseType: !45, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !438, line: 119, baseType: !45, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !438, line: 119, baseType: !388, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !438, line: 119, baseType: !45, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !499, file: !438, line: 119, baseType: !26, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !437, file: !438, line: 374, baseType: !508, size: 448)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !438, line: 143, size: 448, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !528, !529, !530}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !438, line: 144, baseType: !436, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !438, line: 144, baseType: !45, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !438, line: 144, baseType: !45, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !438, line: 144, baseType: !388, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !438, line: 144, baseType: !45, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !508, file: !438, line: 144, baseType: !45, size: 8, offset: 104)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !508, file: !438, line: 145, baseType: !45, size: 8, offset: 112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !508, file: !438, line: 146, baseType: !45, size: 8, offset: 120)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !508, file: !438, line: 147, baseType: !436, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !438, line: 148, baseType: !436, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !508, file: !438, line: 149, baseType: !405, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !508, file: !438, line: 153, baseType: !522, size: 64, offset: 320)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !438, line: 150, size: 64, elements: !523)
!523 = !{!524, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !522, file: !438, line: 151, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !38, line: 248, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !522, file: !438, line: 152, baseType: !436, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !508, file: !438, line: 155, baseType: !22, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !508, file: !438, line: 156, baseType: !395, size: 16, offset: 416)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !508, file: !438, line: 157, baseType: !45, size: 8, offset: 432)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !437, file: !438, line: 375, baseType: !532, size: 576)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !438, line: 122, size: 576, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !556, !557, !558, !559}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !438, line: 123, baseType: !436, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !438, line: 123, baseType: !45, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !438, line: 123, baseType: !45, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !438, line: 123, baseType: !388, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !438, line: 123, baseType: !45, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !532, file: !438, line: 123, baseType: !45, size: 8, offset: 104)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !532, file: !438, line: 124, baseType: !388, size: 16, offset: 112)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !532, file: !438, line: 125, baseType: !26, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !532, file: !438, line: 126, baseType: !16, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !532, file: !438, line: 127, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !38, line: 620, size: 320, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !38, line: 621, baseType: !26, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !545, file: !38, line: 621, baseType: !45, size: 8, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !38, line: 621, baseType: !45, size: 8, offset: 72)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !545, file: !38, line: 621, baseType: !388, size: 16, offset: 80)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !545, file: !38, line: 621, baseType: !388, size: 16, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !545, file: !38, line: 621, baseType: !45, size: 8, offset: 112)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !545, file: !38, line: 622, baseType: !380, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !545, file: !38, line: 623, baseType: !436, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !545, file: !38, line: 624, baseType: !16, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !532, file: !438, line: 128, baseType: !436, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !438, line: 129, baseType: !436, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !438, line: 130, baseType: !432, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !532, file: !438, line: 131, baseType: !45, size: 8, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !437, file: !438, line: 376, baseType: !561, size: 448)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !438, line: 134, size: 448, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !574}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !438, line: 135, baseType: !436, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !438, line: 135, baseType: !45, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !438, line: 135, baseType: !45, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !438, line: 135, baseType: !388, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !438, line: 135, baseType: !45, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !561, file: !438, line: 135, baseType: !45, size: 8, offset: 104)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !438, line: 136, baseType: !432, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !438, line: 137, baseType: !436, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !438, line: 138, baseType: !436, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !561, file: !438, line: 139, baseType: !573, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !16)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !561, file: !438, line: 140, baseType: !22, size: 32, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !437, file: !438, line: 377, baseType: !576, size: 320)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !438, line: 184, size: 320, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !438, line: 185, baseType: !436, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !438, line: 185, baseType: !45, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !438, line: 185, baseType: !45, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !438, line: 185, baseType: !388, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !438, line: 185, baseType: !45, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !438, line: 185, baseType: !584, size: 128, offset: 128)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 128, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 2)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !438, line: 185, baseType: !436, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !437, file: !438, line: 378, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !438, line: 187, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !438, line: 188, baseType: !436, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !438, line: 188, baseType: !45, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !438, line: 188, baseType: !45, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !438, line: 188, baseType: !388, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !438, line: 188, baseType: !45, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !438, line: 189, baseType: !584, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !438, line: 189, baseType: !436, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !589, file: !438, line: 189, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !38, line: 480, size: 576, elements: !601)
!601 = !{!602, !603, !604, !605, !613, !628, !661, !662, !663, !664, !665, !666}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !38, line: 481, baseType: !432, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !600, file: !38, line: 482, baseType: !599, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !38, line: 483, baseType: !599, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !600, file: !38, line: 484, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !38, line: 497, size: 256, elements: !608)
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !607, file: !38, line: 498, baseType: !606, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !38, line: 499, baseType: !606, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !607, file: !38, line: 500, baseType: !599, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !607, file: !38, line: 501, baseType: !22, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !600, file: !38, line: 485, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !38, line: 466, size: 320, elements: !616)
!616 = !{!617, !622, !623, !624, !625, !626, !627}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !615, file: !38, line: 467, baseType: !618, size: 128)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !38, line: 459, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !618, file: !38, line: 460, baseType: !45, size: 8)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !618, file: !38, line: 461, baseType: !16, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !615, file: !38, line: 468, baseType: !618, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !615, file: !38, line: 469, baseType: !388, size: 16, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !615, file: !38, line: 470, baseType: !45, size: 8, offset: 272)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !615, file: !38, line: 471, baseType: !45, size: 8, offset: 280)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !615, file: !38, line: 472, baseType: !45, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !615, file: !38, line: 473, baseType: !45, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !600, file: !38, line: 486, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !38, line: 448, size: 192, elements: !631)
!631 = !{!632, !656, !657, !658, !659, !660}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !630, file: !38, line: 449, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !38, line: 438, size: 64, elements: !634)
!634 = !{!635, !636, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !633, file: !38, line: 439, baseType: !432, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !38, line: 440, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !38, line: 419, size: 256, elements: !639)
!639 = !{!640, !646, !647, !648, !649}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !638, file: !38, line: 420, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!22, !645, !22, !26}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !26)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !638, file: !38, line: 421, baseType: !26, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !638, file: !38, line: 422, baseType: !432, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !638, file: !38, line: 423, baseType: !45, size: 8, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !638, file: !38, line: 424, baseType: !45, size: 8, offset: 200)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !38, line: 441, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !38, line: 429, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !652, file: !38, line: 430, baseType: !432, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !38, line: 431, baseType: !651, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !630, file: !38, line: 450, baseType: !614, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !38, line: 451, baseType: !45, size: 8, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !630, file: !38, line: 452, baseType: !45, size: 8, offset: 136)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !630, file: !38, line: 453, baseType: !45, size: 8, offset: 144)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !630, file: !38, line: 454, baseType: !45, size: 8, offset: 152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !600, file: !38, line: 487, baseType: !16, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !600, file: !38, line: 488, baseType: !22, size: 32, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !600, file: !38, line: 489, baseType: !388, size: 16, offset: 480)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !600, file: !38, line: 490, baseType: !388, size: 16, offset: 496)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !600, file: !38, line: 491, baseType: !45, size: 8, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !600, file: !38, line: 492, baseType: !45, size: 8, offset: 520)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !437, file: !438, line: 379, baseType: !668, size: 384)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !438, line: 192, size: 384, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !438, line: 193, baseType: !436, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !438, line: 193, baseType: !45, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !438, line: 193, baseType: !45, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !438, line: 193, baseType: !388, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !438, line: 193, baseType: !45, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !668, file: !438, line: 193, baseType: !584, size: 128, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !668, file: !438, line: 193, baseType: !436, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !668, file: !438, line: 193, baseType: !22, size: 32, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !668, file: !438, line: 194, baseType: !22, size: 32, offset: 352)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !437, file: !438, line: 380, baseType: !680, size: 384)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !438, line: 197, size: 384, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !438, line: 198, baseType: !436, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !438, line: 198, baseType: !45, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !438, line: 198, baseType: !45, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !438, line: 198, baseType: !388, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !438, line: 198, baseType: !45, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !680, file: !438, line: 200, baseType: !45, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !680, file: !438, line: 201, baseType: !45, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !680, file: !438, line: 202, baseType: !584, size: 128, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !680, file: !438, line: 202, baseType: !436, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !680, file: !438, line: 202, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !16)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !437, file: !438, line: 381, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !438, line: 205, size: 320, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !438, line: 206, baseType: !436, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !438, line: 206, baseType: !45, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !438, line: 206, baseType: !45, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !438, line: 206, baseType: !388, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !438, line: 206, baseType: !45, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !694, file: !438, line: 206, baseType: !584, size: 128, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !694, file: !438, line: 206, baseType: !436, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !437, file: !438, line: 382, baseType: !704, size: 384)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !438, line: 233, size: 384, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !438, line: 234, baseType: !436, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !438, line: 234, baseType: !388, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 104)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 120)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !438, line: 234, baseType: !432, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !704, file: !438, line: 234, baseType: !22, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !704, file: !438, line: 234, baseType: !22, size: 32, offset: 224)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !704, file: !438, line: 234, baseType: !22, size: 32, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 288)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !704, file: !438, line: 234, baseType: !45, size: 8, offset: 296)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !704, file: !438, line: 234, baseType: !436, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !437, file: !438, line: 383, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !438, line: 237, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !438, line: 238, baseType: !436, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !438, line: 238, baseType: !388, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 120)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !438, line: 238, baseType: !432, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !722, file: !438, line: 238, baseType: !22, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !722, file: !438, line: 238, baseType: !22, size: 32, offset: 224)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !722, file: !438, line: 238, baseType: !22, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !722, file: !438, line: 238, baseType: !45, size: 8, offset: 296)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !722, file: !438, line: 238, baseType: !388, size: 16, offset: 304)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !722, file: !438, line: 239, baseType: !436, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !722, file: !438, line: 240, baseType: !405, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !722, file: !438, line: 241, baseType: !388, size: 16, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !722, file: !438, line: 242, baseType: !405, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !437, file: !438, line: 384, baseType: !744, size: 384)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !438, line: 262, size: 384, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !438, line: 263, baseType: !436, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !438, line: 263, baseType: !388, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !438, line: 263, baseType: !432, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !744, file: !438, line: 263, baseType: !22, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !744, file: !438, line: 263, baseType: !22, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !438, line: 263, baseType: !22, size: 32, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 288)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 296)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !744, file: !438, line: 263, baseType: !45, size: 8, offset: 304)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !744, file: !438, line: 264, baseType: !436, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !437, file: !438, line: 385, baseType: !763, size: 448)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !438, line: 245, size: 448, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !438, line: 246, baseType: !436, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !438, line: 246, baseType: !388, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 104)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 112)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 120)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !763, file: !438, line: 246, baseType: !432, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !763, file: !438, line: 246, baseType: !22, size: 32, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !763, file: !438, line: 246, baseType: !22, size: 32, offset: 224)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !763, file: !438, line: 246, baseType: !22, size: 32, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 288)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !763, file: !438, line: 246, baseType: !45, size: 8, offset: 296)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !763, file: !438, line: 246, baseType: !436, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !763, file: !438, line: 247, baseType: !436, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !437, file: !438, line: 386, baseType: !782, size: 448)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !438, line: 250, size: 448, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !438, line: 251, baseType: !436, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !438, line: 251, baseType: !388, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 104)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 120)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !782, file: !438, line: 251, baseType: !432, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !782, file: !438, line: 251, baseType: !22, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !782, file: !438, line: 251, baseType: !22, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !782, file: !438, line: 251, baseType: !22, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 288)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !782, file: !438, line: 251, baseType: !45, size: 8, offset: 296)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !782, file: !438, line: 256, baseType: !436, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !782, file: !438, line: 257, baseType: !436, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !437, file: !438, line: 387, baseType: !801, size: 512)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !438, line: 273, size: 512, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808, !809, !810, !815, !816}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !801, file: !438, line: 274, baseType: !436, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !438, line: 274, baseType: !45, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !438, line: 274, baseType: !45, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !801, file: !438, line: 274, baseType: !388, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !438, line: 274, baseType: !45, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !801, file: !438, line: 274, baseType: !432, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !801, file: !438, line: 275, baseType: !22, size: 32, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !801, file: !438, line: 276, baseType: !811, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !645, !22, !26}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !801, file: !438, line: 277, baseType: !26, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !438, line: 278, baseType: !584, size: 128, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !437, file: !438, line: 388, baseType: !818, size: 512)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !438, line: 281, size: 512, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !833, !834, !835, !841, !842}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !818, file: !438, line: 282, baseType: !436, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !818, file: !438, line: 282, baseType: !45, size: 8, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !818, file: !438, line: 282, baseType: !45, size: 8, offset: 72)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !818, file: !438, line: 282, baseType: !388, size: 16, offset: 80)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !438, line: 282, baseType: !45, size: 8, offset: 96)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !818, file: !438, line: 282, baseType: !45, size: 8, offset: 104)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !818, file: !438, line: 283, baseType: !45, size: 8, offset: 112)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !818, file: !438, line: 284, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!21, !22, !573, !22, !832, !26, !26}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !818, file: !438, line: 285, baseType: !432, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !818, file: !438, line: 286, baseType: !26, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !818, file: !438, line: 287, baseType: !836, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!21, !645, !22, !26, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !818, file: !438, line: 288, baseType: !436, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !438, line: 289, baseType: !436, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !437, file: !438, line: 389, baseType: !844, size: 512)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !438, line: 307, size: 512, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !844, file: !438, line: 308, baseType: !436, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !844, file: !438, line: 308, baseType: !45, size: 8, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !438, line: 308, baseType: !45, size: 8, offset: 72)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !844, file: !438, line: 308, baseType: !388, size: 16, offset: 80)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !438, line: 308, baseType: !45, size: 8, offset: 96)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !844, file: !438, line: 308, baseType: !45, size: 8, offset: 104)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !844, file: !438, line: 309, baseType: !45, size: 8, offset: 112)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !844, file: !438, line: 310, baseType: !45, size: 8, offset: 120)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !844, file: !438, line: 311, baseType: !26, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !844, file: !438, line: 312, baseType: !432, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !844, file: !438, line: 313, baseType: !494, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !844, file: !438, line: 314, baseType: !405, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !844, file: !438, line: 315, baseType: !405, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !844, file: !438, line: 316, baseType: !22, size: 32, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !437, file: !438, line: 390, baseType: !861, size: 448)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !438, line: 340, size: 448, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !861, file: !438, line: 341, baseType: !436, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !861, file: !438, line: 341, baseType: !45, size: 8, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !861, file: !438, line: 341, baseType: !45, size: 8, offset: 72)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !861, file: !438, line: 341, baseType: !388, size: 16, offset: 80)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !438, line: 341, baseType: !45, size: 8, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !861, file: !438, line: 341, baseType: !432, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !861, file: !438, line: 342, baseType: !432, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !861, file: !438, line: 343, baseType: !26, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !861, file: !438, line: 344, baseType: !405, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !861, file: !438, line: 345, baseType: !22, size: 32, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !438, line: 391, baseType: !874, size: 256)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !438, line: 350, size: 256, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !886}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !874, file: !438, line: 351, baseType: !436, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !874, file: !438, line: 351, baseType: !45, size: 8, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !438, line: 351, baseType: !45, size: 8, offset: 72)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !874, file: !438, line: 351, baseType: !388, size: 16, offset: 80)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !438, line: 351, baseType: !45, size: 8, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !874, file: !438, line: 351, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !645, !26}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !874, file: !438, line: 352, baseType: !26, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !437, file: !438, line: 392, baseType: !888, size: 192)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !438, line: 357, size: 192, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !888, file: !438, line: 358, baseType: !436, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !888, file: !438, line: 358, baseType: !45, size: 8, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !438, line: 358, baseType: !45, size: 8, offset: 72)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !888, file: !438, line: 358, baseType: !388, size: 16, offset: 80)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !438, line: 358, baseType: !45, size: 8, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !438, line: 358, baseType: !436, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !438, line: 399, baseType: !433, size: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !38, line: 135, baseType: !45, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !38, line: 136, baseType: !45, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !38, line: 137, baseType: !388, size: 16, offset: 80)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !38, line: 138, baseType: !901, size: 32, offset: 96)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !902, line: 327, size: 32, elements: !903)
!902 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !901, file: !902, line: 328, baseType: !22, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !901, file: !902, line: 329, baseType: !906, size: 32)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 4)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !433, file: !38, line: 139, baseType: !432, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !433, file: !38, line: 140, baseType: !432, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !433, file: !38, line: 141, baseType: !432, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !433, file: !38, line: 142, baseType: !395, size: 16, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !423, file: !38, line: 829, baseType: !914, size: 64, offset: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !38, line: 716, size: 64, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !914, file: !38, line: 717, baseType: !16, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !914, file: !38, line: 718, baseType: !22, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !914, file: !38, line: 719, baseType: !41, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !914, file: !38, line: 720, baseType: !405, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !914, file: !38, line: 721, baseType: !41, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !914, file: !38, line: 722, baseType: !419, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !423, file: !38, line: 829, baseType: !45, size: 8, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !420, file: !38, line: 877, baseType: !924, size: 640)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !38, line: 835, size: 640, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !924, file: !38, line: 836, baseType: !419, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !924, file: !38, line: 836, baseType: !45, size: 8, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !38, line: 836, baseType: !45, size: 8, offset: 72)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !924, file: !38, line: 836, baseType: !388, size: 16, offset: 80)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !924, file: !38, line: 836, baseType: !405, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !38, line: 836, baseType: !419, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !38, line: 836, baseType: !432, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !924, file: !38, line: 836, baseType: !914, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !924, file: !38, line: 836, baseType: !45, size: 8, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !924, file: !38, line: 836, baseType: !41, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !924, file: !38, line: 837, baseType: !405, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !924, file: !38, line: 838, baseType: !22, size: 32, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !924, file: !38, line: 839, baseType: !22, size: 32, offset: 608)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !420, file: !38, line: 878, baseType: !940, size: 1600)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !38, line: 846, size: 1600, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !940, file: !38, line: 847, baseType: !419, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !940, file: !38, line: 847, baseType: !45, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !38, line: 847, baseType: !45, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !940, file: !38, line: 847, baseType: !388, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !940, file: !38, line: 847, baseType: !405, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !38, line: 847, baseType: !419, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !940, file: !38, line: 847, baseType: !432, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !940, file: !38, line: 847, baseType: !914, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !940, file: !38, line: 847, baseType: !45, size: 8, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !940, file: !38, line: 847, baseType: !419, size: 64, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !940, file: !38, line: 848, baseType: !419, size: 64, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !940, file: !38, line: 849, baseType: !41, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !940, file: !38, line: 850, baseType: !45, size: 8, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !940, file: !38, line: 851, baseType: !41, size: 64, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !940, file: !38, line: 852, baseType: !41, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !940, file: !38, line: 853, baseType: !41, size: 64, offset: 832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !940, file: !38, line: 854, baseType: !906, size: 32, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !940, file: !38, line: 855, baseType: !22, size: 32, offset: 928)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !940, file: !38, line: 856, baseType: !22, size: 32, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !940, file: !38, line: 857, baseType: !22, size: 32, offset: 992)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !940, file: !38, line: 858, baseType: !22, size: 32, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !940, file: !38, line: 859, baseType: !22, size: 32, offset: 1056)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !940, file: !38, line: 860, baseType: !22, size: 32, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !940, file: !38, line: 861, baseType: !22, size: 32, offset: 1120)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !940, file: !38, line: 862, baseType: !22, size: 32, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !940, file: !38, line: 863, baseType: !22, size: 32, offset: 1184)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !940, file: !38, line: 864, baseType: !22, size: 32, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !940, file: !38, line: 865, baseType: !22, size: 32, offset: 1248)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !940, file: !38, line: 866, baseType: !22, size: 32, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !940, file: !38, line: 867, baseType: !22, size: 32, offset: 1312)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !940, file: !38, line: 868, baseType: !388, size: 16, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !940, file: !38, line: 869, baseType: !45, size: 8, offset: 1360)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !940, file: !38, line: 870, baseType: !45, size: 8, offset: 1368)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !940, file: !38, line: 871, baseType: !45, size: 8, offset: 1376)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !940, file: !38, line: 872, baseType: !977, size: 160, offset: 1384)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 20)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !411, file: !38, line: 900, baseType: !432, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !411, file: !38, line: 901, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !38, line: 663, size: 640, elements: !984)
!984 = !{!985, !993, !1006, !1015, !1024, !1037, !1051, !1052, !1064}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !983, file: !38, line: 664, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !38, line: 567, size: 128, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !38, line: 568, baseType: !26, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !986, file: !38, line: 568, baseType: !45, size: 8, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !38, line: 568, baseType: !45, size: 8, offset: 72)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !986, file: !38, line: 568, baseType: !388, size: 16, offset: 80)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !986, file: !38, line: 568, baseType: !388, size: 16, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !983, file: !38, line: 665, baseType: !994, size: 384)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !38, line: 593, size: 384, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !994, file: !38, line: 594, baseType: !26, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !994, file: !38, line: 594, baseType: !45, size: 8, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !38, line: 594, baseType: !45, size: 8, offset: 72)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !994, file: !38, line: 594, baseType: !388, size: 16, offset: 80)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !994, file: !38, line: 594, baseType: !388, size: 16, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !994, file: !38, line: 594, baseType: !388, size: 16, offset: 112)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !994, file: !38, line: 595, baseType: !419, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !994, file: !38, line: 596, baseType: !405, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !994, file: !38, line: 597, baseType: !405, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !994, file: !38, line: 598, baseType: !16, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !983, file: !38, line: 666, baseType: !1007, size: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !38, line: 573, size: 192, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !38, line: 574, baseType: !26, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1007, file: !38, line: 574, baseType: !45, size: 8, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !38, line: 574, baseType: !45, size: 8, offset: 72)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1007, file: !38, line: 574, baseType: !388, size: 16, offset: 80)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1007, file: !38, line: 574, baseType: !388, size: 16, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1007, file: !38, line: 574, baseType: !436, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !983, file: !38, line: 667, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !38, line: 604, size: 192, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !38, line: 605, baseType: !26, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1016, file: !38, line: 605, baseType: !45, size: 8, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !38, line: 605, baseType: !45, size: 8, offset: 72)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1016, file: !38, line: 605, baseType: !388, size: 16, offset: 80)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1016, file: !38, line: 605, baseType: !388, size: 16, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !38, line: 605, baseType: !432, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !983, file: !38, line: 668, baseType: !1025, size: 448)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !38, line: 608, size: 448, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1025, file: !38, line: 609, baseType: !26, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1025, file: !38, line: 609, baseType: !45, size: 8, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !38, line: 609, baseType: !45, size: 8, offset: 72)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1025, file: !38, line: 609, baseType: !388, size: 16, offset: 80)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1025, file: !38, line: 609, baseType: !388, size: 16, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1025, file: !38, line: 609, baseType: !22, size: 32, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1025, file: !38, line: 610, baseType: !419, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1025, file: !38, line: 611, baseType: !405, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1025, file: !38, line: 612, baseType: !405, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1025, file: !38, line: 613, baseType: !22, size: 32, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !983, file: !38, line: 669, baseType: !1038, size: 512)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !38, line: 580, size: 512, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !38, line: 581, baseType: !26, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1038, file: !38, line: 581, baseType: !45, size: 8, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !38, line: 581, baseType: !45, size: 8, offset: 72)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1038, file: !38, line: 581, baseType: !388, size: 16, offset: 80)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1038, file: !38, line: 581, baseType: !388, size: 16, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1038, file: !38, line: 581, baseType: !22, size: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1038, file: !38, line: 582, baseType: !436, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1038, file: !38, line: 583, baseType: !436, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1038, file: !38, line: 584, baseType: !380, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1038, file: !38, line: 585, baseType: !26, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1038, file: !38, line: 586, baseType: !22, size: 32, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !983, file: !38, line: 670, baseType: !545, size: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !983, file: !38, line: 671, baseType: !1053, size: 640)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !38, line: 631, size: 640, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1053, file: !38, line: 632, baseType: !26, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1053, file: !38, line: 632, baseType: !45, size: 8, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !38, line: 632, baseType: !45, size: 8, offset: 72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1053, file: !38, line: 632, baseType: !388, size: 16, offset: 80)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1053, file: !38, line: 632, baseType: !388, size: 16, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1053, file: !38, line: 633, baseType: !1061, size: 512, offset: 128)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 512, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 8)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !983, file: !38, line: 672, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !38, line: 654, size: 320, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !38, line: 655, baseType: !26, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1065, file: !38, line: 655, baseType: !45, size: 8, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !38, line: 655, baseType: !45, size: 8, offset: 72)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1065, file: !38, line: 655, baseType: !388, size: 16, offset: 80)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1065, file: !38, line: 655, baseType: !388, size: 16, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1065, file: !38, line: 655, baseType: !45, size: 8, offset: 112)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !38, line: 656, baseType: !432, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1065, file: !38, line: 657, baseType: !436, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1065, file: !38, line: 658, baseType: !1076, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !38, line: 645, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1077, file: !38, line: 646, baseType: !811, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1077, file: !38, line: 647, baseType: !26, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !411, file: !38, line: 902, baseType: !419, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !411, file: !38, line: 903, baseType: !22, size: 32, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !381, file: !382, line: 61, baseType: !22, size: 32, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !381, file: !382, line: 62, baseType: !22, size: 32, offset: 1120)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !381, file: !382, line: 63, baseType: !388, size: 16, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !381, file: !382, line: 64, baseType: !45, size: 8, offset: 1168)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !381, file: !382, line: 66, baseType: !1088, size: 2688, offset: 1216)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2688, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 7)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !381, file: !382, line: 67, baseType: !1092, size: 3072, offset: 3904)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 3072, elements: !1062)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !381, file: !382, line: 68, baseType: !1094, size: 576, offset: 6976)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 576, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 9)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !381, file: !382, line: 69, baseType: !494, size: 64, offset: 7552)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !381, file: !382, line: 71, baseType: !405, size: 64, offset: 7616)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !381, file: !382, line: 72, baseType: !494, size: 64, offset: 7680)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !381, file: !382, line: 73, baseType: !982, size: 64, offset: 7744)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !381, file: !382, line: 74, baseType: !432, size: 64, offset: 7808)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !381, file: !382, line: 75, baseType: !436, size: 64, offset: 7872)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !381, file: !382, line: 76, baseType: !432, size: 64, offset: 7936)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !381, file: !382, line: 77, baseType: !419, size: 64, offset: 8000)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !381, file: !382, line: 78, baseType: !436, size: 64, offset: 8064)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !381, file: !382, line: 79, baseType: !432, size: 64, offset: 8128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !381, file: !382, line: 80, baseType: !41, size: 64, offset: 8192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !381, file: !382, line: 81, baseType: !419, size: 64, offset: 8256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !381, file: !382, line: 82, baseType: !1110, size: 64, offset: 8320)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !38, line: 702, size: 128, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1112, file: !38, line: 706, baseType: !22, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1112, file: !38, line: 707, baseType: !22, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !38, line: 708, baseType: !388, size: 16, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1112, file: !38, line: 709, baseType: !45, size: 8, offset: 80)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1112, file: !38, line: 710, baseType: !45, size: 8, offset: 88)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1112, file: !38, line: 711, baseType: !45, size: 8, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !381, file: !382, line: 83, baseType: !419, size: 64, offset: 8384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !381, file: !382, line: 84, baseType: !436, size: 64, offset: 8448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !381, file: !382, line: 85, baseType: !982, size: 64, offset: 8512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !381, file: !382, line: 86, baseType: !436, size: 64, offset: 8576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !381, file: !382, line: 87, baseType: !982, size: 64, offset: 8640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !381, file: !382, line: 88, baseType: !419, size: 64, offset: 8704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !381, file: !382, line: 89, baseType: !419, size: 64, offset: 8768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !381, file: !382, line: 90, baseType: !544, size: 64, offset: 8832)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !381, file: !382, line: 91, baseType: !1129, size: 64, offset: 8896)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !38, line: 637, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!21, !380, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !381, file: !382, line: 92, baseType: !1135, size: 64, offset: 8960)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !38, line: 641, baseType: !526)
!1136 = !DILocalVariable(name: "walk_state", arg: 1, scope: !377, file: !3, line: 383, type: !380)
!1137 = !DILocation(line: 383, column: 64, scope: !377)
!1138 = !DILocalVariable(name: "string_desc", scope: !377, file: !3, line: 385, type: !436)
!1139 = !DILocation(line: 385, column: 29, scope: !377)
!1140 = !DILocalVariable(name: "return_desc", scope: !377, file: !3, line: 386, type: !436)
!1141 = !DILocation(line: 386, column: 29, scope: !377)
!1142 = !DILocalVariable(name: "interface_info", scope: !377, file: !3, line: 387, type: !43)
!1143 = !DILocation(line: 387, column: 30, scope: !377)
!1144 = !DILocalVariable(name: "interface_handler", scope: !377, file: !3, line: 388, type: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interface_handler", file: !15, line: 1116, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!22, !162, !22}
!1149 = !DILocation(line: 388, column: 25, scope: !377)
!1150 = !DILocalVariable(name: "status", scope: !377, file: !3, line: 389, type: !21)
!1151 = !DILocation(line: 389, column: 14, scope: !377)
!1152 = !DILocalVariable(name: "return_value", scope: !377, file: !3, line: 390, type: !16)
!1153 = !DILocation(line: 390, column: 6, scope: !377)
!1154 = !DILocation(line: 396, column: 16, scope: !377)
!1155 = !DILocation(line: 396, column: 28, scope: !377)
!1156 = !DILocation(line: 396, column: 41, scope: !377)
!1157 = !DILocation(line: 396, column: 14, scope: !377)
!1158 = !DILocation(line: 397, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !377, file: !3, line: 397, column: 6)
!1160 = !DILocation(line: 397, column: 19, scope: !1159)
!1161 = !DILocation(line: 397, column: 23, scope: !1159)
!1162 = !DILocation(line: 397, column: 36, scope: !1159)
!1163 = !DILocation(line: 397, column: 43, scope: !1159)
!1164 = !DILocation(line: 397, column: 48, scope: !1159)
!1165 = !DILocation(line: 397, column: 6, scope: !377)
!1166 = !DILocation(line: 398, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 397, column: 70)
!1168 = !DILocation(line: 403, column: 16, scope: !377)
!1169 = !DILocation(line: 403, column: 14, scope: !377)
!1170 = !DILocation(line: 404, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !377, file: !3, line: 404, column: 6)
!1172 = !DILocation(line: 404, column: 6, scope: !377)
!1173 = !DILocation(line: 405, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 404, column: 20)
!1175 = !DILocation(line: 410, column: 15, scope: !377)
!1176 = !DILocation(line: 411, column: 11, scope: !377)
!1177 = !DILocation(line: 411, column: 9, scope: !377)
!1178 = !DILocation(line: 412, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !377, file: !3, line: 412, column: 6)
!1180 = !DILocation(line: 412, column: 6, scope: !377)
!1181 = !DILocation(line: 413, column: 28, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 412, column: 28)
!1183 = !DILocation(line: 413, column: 3, scope: !1182)
!1184 = !DILocation(line: 414, column: 3, scope: !1182)
!1185 = !DILocation(line: 419, column: 41, scope: !377)
!1186 = !DILocation(line: 419, column: 54, scope: !377)
!1187 = !DILocation(line: 419, column: 61, scope: !377)
!1188 = !DILocation(line: 419, column: 19, scope: !377)
!1189 = !DILocation(line: 419, column: 17, scope: !377)
!1190 = !DILocation(line: 420, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !377, file: !3, line: 420, column: 6)
!1192 = !DILocation(line: 420, column: 21, scope: !1191)
!1193 = !DILocation(line: 420, column: 26, scope: !1191)
!1194 = !DILocation(line: 420, column: 42, scope: !1191)
!1195 = !DILocation(line: 420, column: 48, scope: !1191)
!1196 = !DILocation(line: 420, column: 6, scope: !377)
!1197 = !DILocation(line: 426, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 426, column: 7)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 420, column: 69)
!1200 = !DILocation(line: 426, column: 23, scope: !1198)
!1201 = !DILocation(line: 426, column: 31, scope: !1198)
!1202 = !DILocation(line: 426, column: 29, scope: !1198)
!1203 = !DILocation(line: 426, column: 7, scope: !1199)
!1204 = !DILocation(line: 427, column: 24, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 426, column: 50)
!1206 = !DILocation(line: 427, column: 40, scope: !1205)
!1207 = !DILocation(line: 427, column: 22, scope: !1205)
!1208 = !DILocation(line: 428, column: 3, scope: !1205)
!1209 = !DILocation(line: 430, column: 16, scope: !1199)
!1210 = !DILocation(line: 431, column: 2, scope: !1199)
!1211 = !DILocation(line: 433, column: 2, scope: !377)
!1212 = !DILocation(line: 440, column: 22, scope: !377)
!1213 = !DILocation(line: 440, column: 20, scope: !377)
!1214 = !DILocation(line: 441, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !377, file: !3, line: 441, column: 6)
!1216 = !DILocation(line: 441, column: 6, scope: !377)
!1217 = !DILocation(line: 442, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 442, column: 7)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 441, column: 25)
!1220 = !DILocation(line: 443, column: 8, scope: !1218)
!1221 = !DILocation(line: 443, column: 21, scope: !1218)
!1222 = !DILocation(line: 443, column: 28, scope: !1218)
!1223 = !DILocation(line: 443, column: 42, scope: !1218)
!1224 = !DILocation(line: 443, column: 37, scope: !1218)
!1225 = !DILocation(line: 442, column: 7, scope: !1219)
!1226 = !DILocation(line: 444, column: 17, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 443, column: 57)
!1228 = !DILocation(line: 445, column: 3, scope: !1227)
!1229 = !DILocation(line: 446, column: 2, scope: !1219)
!1230 = !DILocation(line: 455, column: 31, scope: !377)
!1231 = !DILocation(line: 455, column: 2, scope: !377)
!1232 = !DILocation(line: 455, column: 15, scope: !377)
!1233 = !DILocation(line: 455, column: 23, scope: !377)
!1234 = !DILocation(line: 455, column: 29, scope: !377)
!1235 = !DILocation(line: 456, column: 28, scope: !377)
!1236 = !DILocation(line: 456, column: 2, scope: !377)
!1237 = !DILocation(line: 456, column: 14, scope: !377)
!1238 = !DILocation(line: 456, column: 26, scope: !377)
!1239 = !DILocation(line: 457, column: 2, scope: !377)
!1240 = !DILocation(line: 458, column: 1, scope: !377)
!1241 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1242, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!26, !1244, !24}
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 55, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1246, line: 72, baseType: !1247)
!1246 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1246, line: 16, baseType: !27)
!1248 = !DILocalVariable(name: "s", arg: 1, scope: !1249, file: !6, line: 445, type: !1252)
!1249 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1250, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!26, !1252, !24, !1244}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1254, line: 117, flags: DIFlagFwdDecl)
!1254 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !DILocation(line: 445, column: 72, scope: !1249, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 552, column: 10, scope: !1257, inlinedAt: !1260)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !6, line: 540, column: 34)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !6, line: 540, column: 6)
!1259 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1242, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1260 = distinct !DILocation(line: 664, column: 9, scope: !1241)
!1261 = !DILocalVariable(name: "flags", arg: 2, scope: !1249, file: !6, line: 446, type: !24)
!1262 = !DILocation(line: 446, column: 9, scope: !1249, inlinedAt: !1256)
!1263 = !DILocalVariable(name: "size", arg: 3, scope: !1249, file: !6, line: 446, type: !1244)
!1264 = !DILocation(line: 446, column: 23, scope: !1249, inlinedAt: !1256)
!1265 = !DILocalVariable(name: "ret", scope: !1249, file: !6, line: 448, type: !26)
!1266 = !DILocation(line: 448, column: 8, scope: !1249, inlinedAt: !1256)
!1267 = !DILocalVariable(name: "flags", arg: 1, scope: !1268, file: !6, line: 318, type: !24)
!1268 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1269, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!5, !24}
!1271 = !DILocation(line: 318, column: 67, scope: !1268, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 553, column: 20, scope: !1257, inlinedAt: !1260)
!1273 = !DILocalVariable(name: "size", arg: 1, scope: !1274, file: !6, line: 346, type: !1244)
!1274 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1275, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!7, !1244}
!1277 = !DILocation(line: 346, column: 58, scope: !1274, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 547, column: 11, scope: !1257, inlinedAt: !1260)
!1279 = !DILocalVariable(name: "size", arg: 1, scope: !1280, file: !6, line: 472, type: !1244)
!1280 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1281, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!26, !1244, !24, !7}
!1283 = !DILocation(line: 472, column: 28, scope: !1280, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 481, column: 9, scope: !1285, inlinedAt: !1286)
!1285 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1242, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1286 = distinct !DILocation(line: 545, column: 11, scope: !1287, inlinedAt: !1260)
!1287 = distinct !DILexicalBlock(scope: !1257, file: !6, line: 544, column: 7)
!1288 = !DILocalVariable(name: "flags", arg: 2, scope: !1280, file: !6, line: 472, type: !24)
!1289 = !DILocation(line: 472, column: 40, scope: !1280, inlinedAt: !1284)
!1290 = !DILocalVariable(name: "order", arg: 3, scope: !1280, file: !6, line: 472, type: !7)
!1291 = !DILocation(line: 472, column: 60, scope: !1280, inlinedAt: !1284)
!1292 = !DILocalVariable(name: "size", arg: 1, scope: !1285, file: !6, line: 478, type: !1244)
!1293 = !DILocation(line: 478, column: 51, scope: !1285, inlinedAt: !1286)
!1294 = !DILocalVariable(name: "flags", arg: 2, scope: !1285, file: !6, line: 478, type: !24)
!1295 = !DILocation(line: 478, column: 63, scope: !1285, inlinedAt: !1286)
!1296 = !DILocalVariable(name: "order", scope: !1285, file: !6, line: 480, type: !7)
!1297 = !DILocation(line: 480, column: 15, scope: !1285, inlinedAt: !1286)
!1298 = !DILocalVariable(name: "size", arg: 1, scope: !1259, file: !6, line: 538, type: !1244)
!1299 = !DILocation(line: 538, column: 45, scope: !1259, inlinedAt: !1260)
!1300 = !DILocalVariable(name: "flags", arg: 2, scope: !1259, file: !6, line: 538, type: !24)
!1301 = !DILocation(line: 538, column: 57, scope: !1259, inlinedAt: !1260)
!1302 = !DILocalVariable(name: "index", scope: !1257, file: !6, line: 542, type: !7)
!1303 = !DILocation(line: 542, column: 16, scope: !1257, inlinedAt: !1260)
!1304 = !DILocalVariable(name: "size", arg: 1, scope: !1241, file: !6, line: 662, type: !1244)
!1305 = !DILocation(line: 662, column: 36, scope: !1241)
!1306 = !DILocalVariable(name: "flags", arg: 2, scope: !1241, file: !6, line: 662, type: !24)
!1307 = !DILocation(line: 662, column: 48, scope: !1241)
!1308 = !DILocation(line: 664, column: 17, scope: !1241)
!1309 = !DILocation(line: 664, column: 23, scope: !1241)
!1310 = !DILocation(line: 664, column: 29, scope: !1241)
!1311 = !DILocation(line: 540, column: 27, scope: !1258, inlinedAt: !1260)
!1312 = !DILocation(line: 540, column: 6, scope: !1258, inlinedAt: !1260)
!1313 = !DILocation(line: 540, column: 6, scope: !1259, inlinedAt: !1260)
!1314 = !DILocation(line: 544, column: 7, scope: !1287, inlinedAt: !1260)
!1315 = !DILocation(line: 544, column: 12, scope: !1287, inlinedAt: !1260)
!1316 = !DILocation(line: 544, column: 7, scope: !1257, inlinedAt: !1260)
!1317 = !DILocation(line: 545, column: 25, scope: !1287, inlinedAt: !1260)
!1318 = !DILocation(line: 545, column: 31, scope: !1287, inlinedAt: !1260)
!1319 = !DILocation(line: 480, column: 33, scope: !1285, inlinedAt: !1286)
!1320 = !DILocation(line: 480, column: 23, scope: !1285, inlinedAt: !1286)
!1321 = !DILocation(line: 481, column: 29, scope: !1285, inlinedAt: !1286)
!1322 = !DILocation(line: 481, column: 35, scope: !1285, inlinedAt: !1286)
!1323 = !DILocation(line: 481, column: 42, scope: !1285, inlinedAt: !1286)
!1324 = !DILocation(line: 474, column: 23, scope: !1280, inlinedAt: !1284)
!1325 = !DILocation(line: 474, column: 29, scope: !1280, inlinedAt: !1284)
!1326 = !DILocation(line: 474, column: 36, scope: !1280, inlinedAt: !1284)
!1327 = !DILocation(line: 474, column: 9, scope: !1280, inlinedAt: !1284)
!1328 = !DILocation(line: 545, column: 4, scope: !1287, inlinedAt: !1260)
!1329 = !DILocation(line: 547, column: 25, scope: !1257, inlinedAt: !1260)
!1330 = !DILocation(line: 348, column: 7, scope: !1331, inlinedAt: !1278)
!1331 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 348, column: 6)
!1332 = !DILocation(line: 348, column: 6, scope: !1274, inlinedAt: !1278)
!1333 = !DILocation(line: 349, column: 3, scope: !1331, inlinedAt: !1278)
!1334 = !DILocation(line: 351, column: 6, scope: !1335, inlinedAt: !1278)
!1335 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 351, column: 6)
!1336 = !DILocation(line: 351, column: 11, scope: !1335, inlinedAt: !1278)
!1337 = !DILocation(line: 351, column: 6, scope: !1274, inlinedAt: !1278)
!1338 = !DILocation(line: 352, column: 3, scope: !1335, inlinedAt: !1278)
!1339 = !DILocation(line: 354, column: 32, scope: !1340, inlinedAt: !1278)
!1340 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 354, column: 6)
!1341 = !DILocation(line: 354, column: 37, scope: !1340, inlinedAt: !1278)
!1342 = !DILocation(line: 354, column: 42, scope: !1340, inlinedAt: !1278)
!1343 = !DILocation(line: 354, column: 45, scope: !1340, inlinedAt: !1278)
!1344 = !DILocation(line: 354, column: 50, scope: !1340, inlinedAt: !1278)
!1345 = !DILocation(line: 354, column: 6, scope: !1274, inlinedAt: !1278)
!1346 = !DILocation(line: 355, column: 3, scope: !1340, inlinedAt: !1278)
!1347 = !DILocation(line: 356, column: 32, scope: !1348, inlinedAt: !1278)
!1348 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 356, column: 6)
!1349 = !DILocation(line: 356, column: 37, scope: !1348, inlinedAt: !1278)
!1350 = !DILocation(line: 356, column: 43, scope: !1348, inlinedAt: !1278)
!1351 = !DILocation(line: 356, column: 46, scope: !1348, inlinedAt: !1278)
!1352 = !DILocation(line: 356, column: 51, scope: !1348, inlinedAt: !1278)
!1353 = !DILocation(line: 356, column: 6, scope: !1274, inlinedAt: !1278)
!1354 = !DILocation(line: 357, column: 3, scope: !1348, inlinedAt: !1278)
!1355 = !DILocation(line: 358, column: 6, scope: !1356, inlinedAt: !1278)
!1356 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 358, column: 6)
!1357 = !DILocation(line: 358, column: 11, scope: !1356, inlinedAt: !1278)
!1358 = !DILocation(line: 358, column: 6, scope: !1274, inlinedAt: !1278)
!1359 = !DILocation(line: 358, column: 26, scope: !1356, inlinedAt: !1278)
!1360 = !DILocation(line: 359, column: 6, scope: !1361, inlinedAt: !1278)
!1361 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 359, column: 6)
!1362 = !DILocation(line: 359, column: 11, scope: !1361, inlinedAt: !1278)
!1363 = !DILocation(line: 359, column: 6, scope: !1274, inlinedAt: !1278)
!1364 = !DILocation(line: 359, column: 26, scope: !1361, inlinedAt: !1278)
!1365 = !DILocation(line: 360, column: 6, scope: !1366, inlinedAt: !1278)
!1366 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 360, column: 6)
!1367 = !DILocation(line: 360, column: 11, scope: !1366, inlinedAt: !1278)
!1368 = !DILocation(line: 360, column: 6, scope: !1274, inlinedAt: !1278)
!1369 = !DILocation(line: 360, column: 26, scope: !1366, inlinedAt: !1278)
!1370 = !DILocation(line: 361, column: 6, scope: !1371, inlinedAt: !1278)
!1371 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 361, column: 6)
!1372 = !DILocation(line: 361, column: 11, scope: !1371, inlinedAt: !1278)
!1373 = !DILocation(line: 361, column: 6, scope: !1274, inlinedAt: !1278)
!1374 = !DILocation(line: 361, column: 26, scope: !1371, inlinedAt: !1278)
!1375 = !DILocation(line: 362, column: 6, scope: !1376, inlinedAt: !1278)
!1376 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 362, column: 6)
!1377 = !DILocation(line: 362, column: 11, scope: !1376, inlinedAt: !1278)
!1378 = !DILocation(line: 362, column: 6, scope: !1274, inlinedAt: !1278)
!1379 = !DILocation(line: 362, column: 26, scope: !1376, inlinedAt: !1278)
!1380 = !DILocation(line: 363, column: 6, scope: !1381, inlinedAt: !1278)
!1381 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 363, column: 6)
!1382 = !DILocation(line: 363, column: 11, scope: !1381, inlinedAt: !1278)
!1383 = !DILocation(line: 363, column: 6, scope: !1274, inlinedAt: !1278)
!1384 = !DILocation(line: 363, column: 26, scope: !1381, inlinedAt: !1278)
!1385 = !DILocation(line: 364, column: 6, scope: !1386, inlinedAt: !1278)
!1386 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 364, column: 6)
!1387 = !DILocation(line: 364, column: 11, scope: !1386, inlinedAt: !1278)
!1388 = !DILocation(line: 364, column: 6, scope: !1274, inlinedAt: !1278)
!1389 = !DILocation(line: 364, column: 26, scope: !1386, inlinedAt: !1278)
!1390 = !DILocation(line: 365, column: 6, scope: !1391, inlinedAt: !1278)
!1391 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 365, column: 6)
!1392 = !DILocation(line: 365, column: 11, scope: !1391, inlinedAt: !1278)
!1393 = !DILocation(line: 365, column: 6, scope: !1274, inlinedAt: !1278)
!1394 = !DILocation(line: 365, column: 26, scope: !1391, inlinedAt: !1278)
!1395 = !DILocation(line: 366, column: 6, scope: !1396, inlinedAt: !1278)
!1396 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 366, column: 6)
!1397 = !DILocation(line: 366, column: 11, scope: !1396, inlinedAt: !1278)
!1398 = !DILocation(line: 366, column: 6, scope: !1274, inlinedAt: !1278)
!1399 = !DILocation(line: 366, column: 26, scope: !1396, inlinedAt: !1278)
!1400 = !DILocation(line: 367, column: 6, scope: !1401, inlinedAt: !1278)
!1401 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 367, column: 6)
!1402 = !DILocation(line: 367, column: 11, scope: !1401, inlinedAt: !1278)
!1403 = !DILocation(line: 367, column: 6, scope: !1274, inlinedAt: !1278)
!1404 = !DILocation(line: 367, column: 26, scope: !1401, inlinedAt: !1278)
!1405 = !DILocation(line: 368, column: 6, scope: !1406, inlinedAt: !1278)
!1406 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 368, column: 6)
!1407 = !DILocation(line: 368, column: 11, scope: !1406, inlinedAt: !1278)
!1408 = !DILocation(line: 368, column: 6, scope: !1274, inlinedAt: !1278)
!1409 = !DILocation(line: 368, column: 26, scope: !1406, inlinedAt: !1278)
!1410 = !DILocation(line: 369, column: 6, scope: !1411, inlinedAt: !1278)
!1411 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 369, column: 6)
!1412 = !DILocation(line: 369, column: 11, scope: !1411, inlinedAt: !1278)
!1413 = !DILocation(line: 369, column: 6, scope: !1274, inlinedAt: !1278)
!1414 = !DILocation(line: 369, column: 26, scope: !1411, inlinedAt: !1278)
!1415 = !DILocation(line: 370, column: 6, scope: !1416, inlinedAt: !1278)
!1416 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 370, column: 6)
!1417 = !DILocation(line: 370, column: 11, scope: !1416, inlinedAt: !1278)
!1418 = !DILocation(line: 370, column: 6, scope: !1274, inlinedAt: !1278)
!1419 = !DILocation(line: 370, column: 26, scope: !1416, inlinedAt: !1278)
!1420 = !DILocation(line: 371, column: 6, scope: !1421, inlinedAt: !1278)
!1421 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 371, column: 6)
!1422 = !DILocation(line: 371, column: 11, scope: !1421, inlinedAt: !1278)
!1423 = !DILocation(line: 371, column: 6, scope: !1274, inlinedAt: !1278)
!1424 = !DILocation(line: 371, column: 26, scope: !1421, inlinedAt: !1278)
!1425 = !DILocation(line: 372, column: 6, scope: !1426, inlinedAt: !1278)
!1426 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 372, column: 6)
!1427 = !DILocation(line: 372, column: 11, scope: !1426, inlinedAt: !1278)
!1428 = !DILocation(line: 372, column: 6, scope: !1274, inlinedAt: !1278)
!1429 = !DILocation(line: 372, column: 26, scope: !1426, inlinedAt: !1278)
!1430 = !DILocation(line: 373, column: 6, scope: !1431, inlinedAt: !1278)
!1431 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 373, column: 6)
!1432 = !DILocation(line: 373, column: 11, scope: !1431, inlinedAt: !1278)
!1433 = !DILocation(line: 373, column: 6, scope: !1274, inlinedAt: !1278)
!1434 = !DILocation(line: 373, column: 26, scope: !1431, inlinedAt: !1278)
!1435 = !DILocation(line: 374, column: 6, scope: !1436, inlinedAt: !1278)
!1436 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 374, column: 6)
!1437 = !DILocation(line: 374, column: 11, scope: !1436, inlinedAt: !1278)
!1438 = !DILocation(line: 374, column: 6, scope: !1274, inlinedAt: !1278)
!1439 = !DILocation(line: 374, column: 26, scope: !1436, inlinedAt: !1278)
!1440 = !DILocation(line: 375, column: 6, scope: !1441, inlinedAt: !1278)
!1441 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 375, column: 6)
!1442 = !DILocation(line: 375, column: 11, scope: !1441, inlinedAt: !1278)
!1443 = !DILocation(line: 375, column: 6, scope: !1274, inlinedAt: !1278)
!1444 = !DILocation(line: 375, column: 27, scope: !1441, inlinedAt: !1278)
!1445 = !DILocation(line: 376, column: 6, scope: !1446, inlinedAt: !1278)
!1446 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 376, column: 6)
!1447 = !DILocation(line: 376, column: 11, scope: !1446, inlinedAt: !1278)
!1448 = !DILocation(line: 376, column: 6, scope: !1274, inlinedAt: !1278)
!1449 = !DILocation(line: 376, column: 32, scope: !1446, inlinedAt: !1278)
!1450 = !DILocation(line: 377, column: 6, scope: !1451, inlinedAt: !1278)
!1451 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 377, column: 6)
!1452 = !DILocation(line: 377, column: 11, scope: !1451, inlinedAt: !1278)
!1453 = !DILocation(line: 377, column: 6, scope: !1274, inlinedAt: !1278)
!1454 = !DILocation(line: 377, column: 32, scope: !1451, inlinedAt: !1278)
!1455 = !DILocation(line: 378, column: 6, scope: !1456, inlinedAt: !1278)
!1456 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 378, column: 6)
!1457 = !DILocation(line: 378, column: 11, scope: !1456, inlinedAt: !1278)
!1458 = !DILocation(line: 378, column: 6, scope: !1274, inlinedAt: !1278)
!1459 = !DILocation(line: 378, column: 32, scope: !1456, inlinedAt: !1278)
!1460 = !DILocation(line: 379, column: 6, scope: !1461, inlinedAt: !1278)
!1461 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 379, column: 6)
!1462 = !DILocation(line: 379, column: 11, scope: !1461, inlinedAt: !1278)
!1463 = !DILocation(line: 379, column: 6, scope: !1274, inlinedAt: !1278)
!1464 = !DILocation(line: 379, column: 33, scope: !1461, inlinedAt: !1278)
!1465 = !DILocation(line: 380, column: 6, scope: !1466, inlinedAt: !1278)
!1466 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 380, column: 6)
!1467 = !DILocation(line: 380, column: 11, scope: !1466, inlinedAt: !1278)
!1468 = !DILocation(line: 380, column: 6, scope: !1274, inlinedAt: !1278)
!1469 = !DILocation(line: 380, column: 33, scope: !1466, inlinedAt: !1278)
!1470 = !DILocation(line: 381, column: 6, scope: !1471, inlinedAt: !1278)
!1471 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 381, column: 6)
!1472 = !DILocation(line: 381, column: 11, scope: !1471, inlinedAt: !1278)
!1473 = !DILocation(line: 381, column: 6, scope: !1274, inlinedAt: !1278)
!1474 = !DILocation(line: 381, column: 33, scope: !1471, inlinedAt: !1278)
!1475 = !DILocation(line: 382, column: 2, scope: !1476, inlinedAt: !1278)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !6, line: 382, column: 2)
!1477 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 382, column: 2)
!1478 = !{i32 -2144104882, i32 -2144104853, i32 -2144104807, i32 -2144104749, i32 -2144104695, i32 -2144104641, i32 -2144104586, i32 -2144104555}
!1479 = !DILocation(line: 382, column: 2, scope: !1480, inlinedAt: !1278)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !6, line: 382, column: 2)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !6, line: 382, column: 2)
!1482 = !{i32 -2144104112, i32 -2144104105, i32 -2144104051, i32 -2144104020, i32 -2144103990}
!1483 = !DILocation(line: 382, column: 2, scope: !1481, inlinedAt: !1278)
!1484 = !DILocation(line: 386, column: 1, scope: !1274, inlinedAt: !1278)
!1485 = !DILocation(line: 547, column: 9, scope: !1257, inlinedAt: !1260)
!1486 = !DILocation(line: 549, column: 8, scope: !1487, inlinedAt: !1260)
!1487 = distinct !DILexicalBlock(scope: !1257, file: !6, line: 549, column: 7)
!1488 = !DILocation(line: 549, column: 7, scope: !1257, inlinedAt: !1260)
!1489 = !DILocation(line: 550, column: 4, scope: !1487, inlinedAt: !1260)
!1490 = !DILocation(line: 553, column: 33, scope: !1257, inlinedAt: !1260)
!1491 = !DILocation(line: 325, column: 6, scope: !1492, inlinedAt: !1272)
!1492 = distinct !DILexicalBlock(scope: !1268, file: !6, line: 325, column: 6)
!1493 = !DILocation(line: 325, column: 6, scope: !1268, inlinedAt: !1272)
!1494 = !DILocation(line: 326, column: 3, scope: !1492, inlinedAt: !1272)
!1495 = !DILocation(line: 332, column: 9, scope: !1268, inlinedAt: !1272)
!1496 = !DILocation(line: 332, column: 15, scope: !1268, inlinedAt: !1272)
!1497 = !DILocation(line: 332, column: 2, scope: !1268, inlinedAt: !1272)
!1498 = !DILocation(line: 336, column: 1, scope: !1268, inlinedAt: !1272)
!1499 = !DILocation(line: 553, column: 5, scope: !1257, inlinedAt: !1260)
!1500 = !DILocation(line: 553, column: 41, scope: !1257, inlinedAt: !1260)
!1501 = !DILocation(line: 554, column: 5, scope: !1257, inlinedAt: !1260)
!1502 = !DILocation(line: 554, column: 12, scope: !1257, inlinedAt: !1260)
!1503 = !DILocation(line: 448, column: 31, scope: !1249, inlinedAt: !1256)
!1504 = !DILocation(line: 448, column: 34, scope: !1249, inlinedAt: !1256)
!1505 = !DILocation(line: 448, column: 14, scope: !1249, inlinedAt: !1256)
!1506 = !DILocation(line: 450, column: 22, scope: !1249, inlinedAt: !1256)
!1507 = !DILocation(line: 450, column: 25, scope: !1249, inlinedAt: !1256)
!1508 = !DILocation(line: 450, column: 30, scope: !1249, inlinedAt: !1256)
!1509 = !DILocation(line: 450, column: 36, scope: !1249, inlinedAt: !1256)
!1510 = !DILocation(line: 450, column: 8, scope: !1249, inlinedAt: !1256)
!1511 = !DILocation(line: 450, column: 6, scope: !1249, inlinedAt: !1256)
!1512 = !DILocation(line: 451, column: 9, scope: !1249, inlinedAt: !1256)
!1513 = !DILocation(line: 552, column: 3, scope: !1257, inlinedAt: !1260)
!1514 = !DILocation(line: 557, column: 19, scope: !1259, inlinedAt: !1260)
!1515 = !DILocation(line: 557, column: 25, scope: !1259, inlinedAt: !1260)
!1516 = !DILocation(line: 557, column: 9, scope: !1259, inlinedAt: !1260)
!1517 = !DILocation(line: 557, column: 2, scope: !1259, inlinedAt: !1260)
!1518 = !DILocation(line: 558, column: 1, scope: !1259, inlinedAt: !1260)
!1519 = !DILocation(line: 664, column: 2, scope: !1241)
!1520 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1521, file: !1521, line: 646, type: !1522, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1521 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!27}
!1524 = !DILocalVariable(name: "__ret", scope: !1525, file: !1521, line: 648, type: !27)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !1521, line: 648, column: 9)
!1526 = !DILocation(line: 648, column: 9, scope: !1525)
!1527 = !DILocalVariable(name: "__edi", scope: !1525, file: !1521, line: 648, type: !27)
!1528 = !DILocalVariable(name: "__esi", scope: !1525, file: !1521, line: 648, type: !27)
!1529 = !DILocalVariable(name: "__edx", scope: !1525, file: !1521, line: 648, type: !27)
!1530 = !DILocalVariable(name: "__ecx", scope: !1525, file: !1521, line: 648, type: !27)
!1531 = !DILocalVariable(name: "__eax", scope: !1525, file: !1521, line: 648, type: !27)
!1532 = !DILocation(line: 648, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1521, line: 648, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1525, file: !1521, line: 648, column: 9)
!1535 = !{i32 -2145778488, i32 -2145776173, i32 -2145775939, i32 -2145775888, i32 -2145775860, i32 -2145775835, i32 -2145776151, i32 -2145776138, i32 -2145775700, i32 -2145775581, i32 -2145776046, i32 -2145776019, i32 -2145775991, i32 -2145775961}
!1536 = !DILocalVariable(name: "__mask", scope: !1537, file: !1521, line: 648, type: !27)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !1521, line: 648, column: 9)
!1538 = !DILocation(line: 648, column: 9, scope: !1537)
!1539 = !DILocation(line: 648, column: 9, scope: !1534)
!1540 = !DILocation(line: 648, column: 2, scope: !1520)
!1541 = distinct !DISubprogram(name: "get_order", scope: !1542, file: !1542, line: 29, type: !206, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1542 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !DILocalVariable(name: "x", arg: 1, scope: !1544, file: !1545, line: 366, type: !18)
!1544 = distinct !DISubprogram(name: "fls64", scope: !1545, file: !1545, line: 366, type: !1546, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1545 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!208, !18}
!1548 = !DILocation(line: 366, column: 40, scope: !1544, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 46, column: 9, scope: !1541)
!1550 = !DILocalVariable(name: "bitpos", scope: !1544, file: !1545, line: 368, type: !208)
!1551 = !DILocation(line: 368, column: 6, scope: !1544, inlinedAt: !1549)
!1552 = !DILocalVariable(name: "size", arg: 1, scope: !1541, file: !1542, line: 29, type: !27)
!1553 = !DILocation(line: 29, column: 63, scope: !1541)
!1554 = !DILocation(line: 31, column: 27, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1541, file: !1542, line: 31, column: 6)
!1556 = !DILocation(line: 31, column: 6, scope: !1555)
!1557 = !DILocation(line: 31, column: 6, scope: !1541)
!1558 = !DILocation(line: 32, column: 8, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1542, line: 32, column: 7)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !1542, line: 31, column: 34)
!1561 = !DILocation(line: 32, column: 7, scope: !1560)
!1562 = !DILocation(line: 33, column: 4, scope: !1559)
!1563 = !DILocation(line: 35, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !1542, line: 35, column: 7)
!1565 = !DILocation(line: 35, column: 12, scope: !1564)
!1566 = !DILocation(line: 35, column: 7, scope: !1560)
!1567 = !DILocation(line: 36, column: 4, scope: !1564)
!1568 = !DILocation(line: 38, column: 10, scope: !1560)
!1569 = !DILocation(line: 38, column: 28, scope: !1560)
!1570 = !DILocation(line: 38, column: 41, scope: !1560)
!1571 = !DILocation(line: 38, column: 3, scope: !1560)
!1572 = !DILocation(line: 41, column: 6, scope: !1541)
!1573 = !DILocation(line: 42, column: 7, scope: !1541)
!1574 = !DILocation(line: 46, column: 15, scope: !1541)
!1575 = !DILocation(line: 374, column: 2, scope: !1544, inlinedAt: !1549)
!1576 = !DILocation(line: 376, column: 14, scope: !1544, inlinedAt: !1549)
!1577 = !{i32 666320}
!1578 = !DILocation(line: 377, column: 9, scope: !1544, inlinedAt: !1549)
!1579 = !DILocation(line: 377, column: 16, scope: !1544, inlinedAt: !1549)
!1580 = !DILocation(line: 46, column: 2, scope: !1541)
!1581 = !DILocation(line: 48, column: 1, scope: !1541)
!1582 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1583, file: !1583, line: 30, type: !1584, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1583 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!208, !16}
!1586 = !DILocation(line: 366, column: 40, scope: !1544, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 32, column: 9, scope: !1582)
!1588 = !DILocation(line: 368, column: 6, scope: !1544, inlinedAt: !1587)
!1589 = !DILocalVariable(name: "n", arg: 1, scope: !1582, file: !1583, line: 30, type: !16)
!1590 = !DILocation(line: 30, column: 21, scope: !1582)
!1591 = !DILocation(line: 32, column: 15, scope: !1582)
!1592 = !DILocation(line: 374, column: 2, scope: !1544, inlinedAt: !1587)
!1593 = !DILocation(line: 376, column: 14, scope: !1544, inlinedAt: !1587)
!1594 = !DILocation(line: 377, column: 9, scope: !1544, inlinedAt: !1587)
!1595 = !DILocation(line: 377, column: 16, scope: !1544, inlinedAt: !1587)
!1596 = !DILocation(line: 32, column: 18, scope: !1582)
!1597 = !DILocation(line: 32, column: 2, scope: !1582)
!1598 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1599, file: !1599, line: 137, type: !1600, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1599 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!26, !1252, !1602, !1244, !24}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1604 = !DILocalVariable(name: "s", arg: 1, scope: !1598, file: !1599, line: 137, type: !1252)
!1605 = !DILocation(line: 137, column: 54, scope: !1598)
!1606 = !DILocalVariable(name: "object", arg: 2, scope: !1598, file: !1599, line: 137, type: !1602)
!1607 = !DILocation(line: 137, column: 69, scope: !1598)
!1608 = !DILocalVariable(name: "size", arg: 3, scope: !1598, file: !1599, line: 138, type: !1244)
!1609 = !DILocation(line: 138, column: 12, scope: !1598)
!1610 = !DILocalVariable(name: "flags", arg: 4, scope: !1598, file: !1599, line: 138, type: !24)
!1611 = !DILocation(line: 138, column: 24, scope: !1598)
!1612 = !DILocation(line: 140, column: 17, scope: !1598)
!1613 = !DILocation(line: 140, column: 2, scope: !1598)
