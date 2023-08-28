; ModuleID = '../bcout/drivers/acpi/acpica/hwxface.llvm.bc'
source_filename = "drivers/acpi/acpica/hwxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.kmem_cache = type opaque
%struct.acpi_bit_register_info = type { i8, i8, i16 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_hardware_lock = external dso_local global %struct.raw_spinlock*, align 8
@acpi_gbl_sleep_state_names = external dso_local global [6 x i8*], align 16
@_acpi_module_name = internal constant [8 x i8] c"hwxface\00", align 1, !dbg !0
@.str = private unnamed_addr constant [41 x i8] c"No Sleep State object returned from [%s]\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Sleep State return object is not a Package\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"While evaluating Sleep State [%s]\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_reset() #0 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %reset_reg = alloca %struct.acpi_generic_address*, align 8
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reset_reg, metadata !49, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %status, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 39), %struct.acpi_generic_address** %reset_reg, align 8, !dbg !62
  %0 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !63
  %and = and i32 %0, 1024, !dbg !65
  %tobool = icmp ne i32 %and, 0, !dbg !65
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !66

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reset_reg, align 8, !dbg !67
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %1, i32 0, i32 4, !dbg !68
  %2 = load i64, i64* %address, align 1, !dbg !68
  %tobool1 = icmp ne i64 %2, 0, !dbg !67
  br i1 %tobool1, label %if.end, label %if.then, !dbg !69

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 6, i32* %retval, align 4, !dbg !70
  br label %return, !dbg !70

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reset_reg, align 8, !dbg !72
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %3, i32 0, i32 0, !dbg !74
  %4 = load i8, i8* %space_id, align 1, !dbg !74
  %conv = zext i8 %4 to i32, !dbg !72
  %cmp = icmp eq i32 %conv, 1, !dbg !75
  br i1 %cmp, label %if.then3, label %if.else, !dbg !76

if.then3:                                         ; preds = %if.end
  %5 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reset_reg, align 8, !dbg !77
  %address4 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %5, i32 0, i32 4, !dbg !79
  %6 = load i64, i64* %address4, align 1, !dbg !79
  %7 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 40), align 1, !dbg !80
  %conv5 = zext i8 %7 to i32, !dbg !81
  %call = call i32 @acpi_os_write_port(i64 %6, i32 %conv5, i32 8) #8, !dbg !82
  store i32 %call, i32* %status, align 4, !dbg !83
  br label %if.end8, !dbg !84

if.else:                                          ; preds = %if.end
  %8 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 40), align 1, !dbg !85
  %conv6 = zext i8 %8 to i64, !dbg !87
  %9 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reset_reg, align 8, !dbg !88
  %call7 = call i32 @acpi_hw_write(i64 %conv6, %struct.acpi_generic_address* %9) #8, !dbg !89
  store i32 %call7, i32* %status, align 4, !dbg !90
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %10 = load i32, i32* %status, align 4, !dbg !91
  store i32 %10, i32* %retval, align 4, !dbg !91
  br label %return, !dbg !91

return:                                           ; preds = %if.end8, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !92
  ret i32 %11, !dbg !92
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_port(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write(i64, %struct.acpi_generic_address*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_read(i64* %return_value, %struct.acpi_generic_address* %reg) #0 !dbg !93 {
entry:
  %return_value.addr = alloca i64*, align 8
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %status = alloca i32, align 4
  store i64* %return_value, i64** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %return_value.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %status, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i64*, i64** %return_value.addr, align 8, !dbg !103
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !104
  %call = call i32 @acpi_hw_read(i64* %0, %struct.acpi_generic_address* %1) #8, !dbg !105
  store i32 %call, i32* %status, align 4, !dbg !106
  %2 = load i32, i32* %status, align 4, !dbg !107
  ret i32 %2, !dbg !108
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_read(i64*, %struct.acpi_generic_address*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_write(i64 %value, %struct.acpi_generic_address* %reg) #0 !dbg !109 {
entry:
  %value.addr = alloca i64, align 8
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %status = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !112, metadata !DIExpression()), !dbg !113
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %status, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i64, i64* %value.addr, align 8, !dbg !118
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !119
  %call = call i32 @acpi_hw_write(i64 %0, %struct.acpi_generic_address* %1) #8, !dbg !120
  store i32 %call, i32* %status, align 4, !dbg !121
  %2 = load i32, i32* %status, align 4, !dbg !122
  ret i32 %2, !dbg !123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_read_bit_register(i32 %register_id, i32* %return_value) #0 !dbg !124 {
entry:
  %retval = alloca i32, align 4
  %register_id.addr = alloca i32, align 4
  %return_value.addr = alloca i32*, align 8
  %bit_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %register_value = alloca i32, align 4
  %value = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %register_id, i32* %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_id.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i32* %return_value, i32** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %return_value.addr, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %bit_reg_info, metadata !132, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %register_value, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %value, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %status, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load i32, i32* %register_id.addr, align 4, !dbg !150
  %call = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %0) #8, !dbg !151
  store %struct.acpi_bit_register_info* %call, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !152
  %1 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !153
  %tobool = icmp ne %struct.acpi_bit_register_info* %1, null, !dbg !153
  br i1 %tobool, label %if.end, label %if.then, !dbg !155

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !156
  br label %return, !dbg !156

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !158
  %parent_register = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %2, i32 0, i32 0, !dbg !159
  %3 = load i8, i8* %parent_register, align 2, !dbg !159
  %conv = zext i8 %3 to i32, !dbg !158
  %call1 = call i32 @acpi_hw_register_read(i32 %conv, i32* %register_value) #8, !dbg !160
  store i32 %call1, i32* %status, align 4, !dbg !161
  %4 = load i32, i32* %status, align 4, !dbg !162
  %tobool2 = icmp ne i32 %4, 0, !dbg !162
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !164

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !165
  store i32 %5, i32* %retval, align 4, !dbg !165
  br label %return, !dbg !165

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %register_value, align 4, !dbg !167
  %7 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !168
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %7, i32 0, i32 2, !dbg !169
  %8 = load i16, i16* %access_bit_mask, align 2, !dbg !169
  %conv5 = zext i16 %8 to i32, !dbg !168
  %and = and i32 %6, %conv5, !dbg !170
  %9 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !171
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %9, i32 0, i32 1, !dbg !172
  %10 = load i8, i8* %bit_position, align 1, !dbg !172
  %conv6 = zext i8 %10 to i32, !dbg !171
  %shr = lshr i32 %and, %conv6, !dbg !173
  store i32 %shr, i32* %value, align 4, !dbg !174
  %11 = load i32, i32* %value, align 4, !dbg !175
  %12 = load i32*, i32** %return_value.addr, align 8, !dbg !176
  store i32 %11, i32* %12, align 4, !dbg !177
  store i32 0, i32* %retval, align 4, !dbg !178
  br label %return, !dbg !178

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !179
  ret i32 %13, !dbg !179
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_register_read(i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_write_bit_register(i32 %register_id, i32 %value) #0 !dbg !180 {
entry:
  %retval = alloca i32, align 4
  %register_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %bit_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %lock_flags = alloca i64, align 8
  %register_value = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %register_id, i32* %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_id.addr, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %bit_reg_info, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i64* %lock_flags, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %register_value, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %status, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 0, i32* %status, align 4, !dbg !194
  %0 = load i32, i32* %register_id.addr, align 4, !dbg !195
  %call = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %0) #8, !dbg !196
  store %struct.acpi_bit_register_info* %call, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !197
  %1 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !198
  %tobool = icmp ne %struct.acpi_bit_register_info* %1, null, !dbg !198
  br i1 %tobool, label %if.end, label %if.then, !dbg !200

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !201
  br label %return, !dbg !201

if.end:                                           ; preds = %entry
  %2 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !203
  %call1 = call i64 @acpi_os_acquire_raw_lock(%struct.raw_spinlock* %2) #8, !dbg !204
  store i64 %call1, i64* %lock_flags, align 8, !dbg !205
  %3 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !206
  %parent_register = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %3, i32 0, i32 0, !dbg !208
  %4 = load i8, i8* %parent_register, align 2, !dbg !208
  %conv = zext i8 %4 to i32, !dbg !206
  %cmp = icmp ne i32 %conv, 1, !dbg !209
  br i1 %cmp, label %if.then3, label %if.else, !dbg !210

if.then3:                                         ; preds = %if.end
  %5 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !211
  %parent_register4 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %5, i32 0, i32 0, !dbg !213
  %6 = load i8, i8* %parent_register4, align 2, !dbg !213
  %conv5 = zext i8 %6 to i32, !dbg !211
  %call6 = call i32 @acpi_hw_register_read(i32 %conv5, i32* %register_value) #8, !dbg !214
  store i32 %call6, i32* %status, align 4, !dbg !215
  %7 = load i32, i32* %status, align 4, !dbg !216
  %tobool7 = icmp ne i32 %7, 0, !dbg !216
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !218

if.then8:                                         ; preds = %if.then3
  br label %unlock_and_exit, !dbg !219

if.end9:                                          ; preds = %if.then3
  %8 = load i32, i32* %register_value, align 4, !dbg !221
  %9 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !221
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %9, i32 0, i32 2, !dbg !221
  %10 = load i16, i16* %access_bit_mask, align 2, !dbg !221
  %conv10 = zext i16 %10 to i32, !dbg !221
  %neg = xor i32 %conv10, -1, !dbg !221
  %and = and i32 %8, %neg, !dbg !221
  %11 = load i32, i32* %value.addr, align 4, !dbg !221
  %12 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !221
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %12, i32 0, i32 1, !dbg !221
  %13 = load i8, i8* %bit_position, align 1, !dbg !221
  %conv11 = zext i8 %13 to i32, !dbg !221
  %shl = shl i32 %11, %conv11, !dbg !221
  %14 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !221
  %access_bit_mask12 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %14, i32 0, i32 2, !dbg !221
  %15 = load i16, i16* %access_bit_mask12, align 2, !dbg !221
  %conv13 = zext i16 %15 to i32, !dbg !221
  %and14 = and i32 %shl, %conv13, !dbg !221
  %or = or i32 %and, %and14, !dbg !221
  store i32 %or, i32* %register_value, align 4, !dbg !221
  %16 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !222
  %parent_register15 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %16, i32 0, i32 0, !dbg !223
  %17 = load i8, i8* %parent_register15, align 2, !dbg !223
  %conv16 = zext i8 %17 to i32, !dbg !222
  %18 = load i32, i32* %register_value, align 4, !dbg !224
  %call17 = call i32 @acpi_hw_register_write(i32 %conv16, i32 %18) #8, !dbg !225
  store i32 %call17, i32* %status, align 4, !dbg !226
  br label %if.end28, !dbg !227

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %value.addr, align 4, !dbg !228
  %20 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !228
  %bit_position18 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %20, i32 0, i32 1, !dbg !228
  %21 = load i8, i8* %bit_position18, align 1, !dbg !228
  %conv19 = zext i8 %21 to i32, !dbg !228
  %shl20 = shl i32 %19, %conv19, !dbg !228
  %22 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %bit_reg_info, align 8, !dbg !228
  %access_bit_mask21 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %22, i32 0, i32 2, !dbg !228
  %23 = load i16, i16* %access_bit_mask21, align 2, !dbg !228
  %conv22 = zext i16 %23 to i32, !dbg !228
  %and23 = and i32 %shl20, %conv22, !dbg !228
  store i32 %and23, i32* %register_value, align 4, !dbg !230
  %24 = load i32, i32* %register_value, align 4, !dbg !231
  %tobool24 = icmp ne i32 %24, 0, !dbg !231
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !233

if.then25:                                        ; preds = %if.else
  %25 = load i32, i32* %register_value, align 4, !dbg !234
  %call26 = call i32 @acpi_hw_register_write(i32 1, i32 %25) #8, !dbg !236
  store i32 %call26, i32* %status, align 4, !dbg !237
  br label %if.end27, !dbg !238

if.end27:                                         ; preds = %if.then25, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end9
  br label %unlock_and_exit, !dbg !239

unlock_and_exit:                                  ; preds = %if.end28, %if.then8
  call void @llvm.dbg.label(metadata !240), !dbg !241
  %26 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !242
  %27 = load i64, i64* %lock_flags, align 8, !dbg !243
  call void @acpi_os_release_raw_lock(%struct.raw_spinlock* %26, i64 %27) #8, !dbg !244
  %28 = load i32, i32* %status, align 4, !dbg !245
  store i32 %28, i32* %retval, align 4, !dbg !245
  br label %return, !dbg !245

return:                                           ; preds = %unlock_and_exit, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !246
  ret i32 %29, !dbg !246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_os_acquire_raw_lock(%struct.raw_spinlock* %lockp) #0 !dbg !247 {
entry:
  %lockp.addr = alloca %struct.raw_spinlock*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store %struct.raw_spinlock* %lockp, %struct.raw_spinlock** %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %lockp.addr, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !262, metadata !DIExpression()), !dbg !263
  br label %do.body, !dbg !264

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !269, metadata !DIExpression()), !dbg !268
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !268
  %conv = zext i1 %cmp to i32, !dbg !268
  store i32 1, i32* %tmp, align 4, !dbg !268
  %0 = load i32, i32* %tmp, align 4, !dbg !268
  br label %do.body1, !dbg !270

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !271

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !273

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !279, metadata !DIExpression()), !dbg !278
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !278
  %conv7 = zext i1 %cmp6 to i32, !dbg !278
  store i32 1, i32* %tmp8, align 4, !dbg !278
  %1 = load i32, i32* %tmp8, align 4, !dbg !278
  %call = call i64 @arch_local_irq_save() #8, !dbg !280
  store i64 %call, i64* %flags, align 8, !dbg !280
  br label %do.end, !dbg !280

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !273

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !271

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !281, !srcloc !283
  br label %do.body11, !dbg !281

do.body11:                                        ; preds = %do.body10
  %2 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lockp.addr, align 8, !dbg !284
  br label %do.end12, !dbg !284

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !281

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !271

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !270

do.end15:                                         ; preds = %do.end14
  %3 = load i64, i64* %flags, align 8, !dbg !286
  ret i64 %3, !dbg !287
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_register_write(i32, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_release_raw_lock(%struct.raw_spinlock* %lockp, i64 %flags) #0 !dbg !288 {
entry:
  %lockp.addr = alloca %struct.raw_spinlock*, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store %struct.raw_spinlock* %lockp, %struct.raw_spinlock** %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %lockp.addr, metadata !291, metadata !DIExpression()), !dbg !292
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !293, metadata !DIExpression()), !dbg !294
  br label %do.body, !dbg !295

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !296, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !300, metadata !DIExpression()), !dbg !299
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !299
  %conv = zext i1 %cmp to i32, !dbg !299
  store i32 1, i32* %tmp, align 4, !dbg !299
  %0 = load i32, i32* %tmp, align 4, !dbg !299
  br label %do.body1, !dbg !301

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !302

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !304

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !310, metadata !DIExpression()), !dbg !309
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !309
  %conv7 = zext i1 %cmp6 to i32, !dbg !309
  store i32 1, i32* %tmp8, align 4, !dbg !309
  %1 = load i32, i32* %tmp8, align 4, !dbg !309
  %2 = load i64, i64* %flags.addr, align 8, !dbg !311
  call void @arch_local_irq_restore(i64 %2) #8, !dbg !311
  br label %do.end, !dbg !311

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !304

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !302

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !312, !srcloc !314
  br label %do.body11, !dbg !312

do.body11:                                        ; preds = %do.body10
  %3 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lockp.addr, align 8, !dbg !315
  br label %do.end12, !dbg !315

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !312

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !302

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !301

do.end15:                                         ; preds = %do.end14
  ret void, !dbg !317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_sleep_type_data(i8 zeroext %sleep_state, i8* %sleep_type_a, i8* %sleep_type_b) #0 !dbg !318 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %sleep_type_a.addr = alloca i8*, align 8
  %sleep_type_b.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %elements = alloca %union.acpi_operand_object**, align 8
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !322, metadata !DIExpression()), !dbg !323
  store i8* %sleep_type_a, i8** %sleep_type_a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sleep_type_a.addr, metadata !324, metadata !DIExpression()), !dbg !325
  store i8* %sleep_type_b, i8** %sleep_type_b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sleep_type_b.addr, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %status, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !330, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements, metadata !1147, metadata !DIExpression()), !dbg !1148
  %0 = load i8, i8* %sleep_state.addr, align 1, !dbg !1149
  %conv = zext i8 %0 to i32, !dbg !1149
  %cmp = icmp sgt i32 %conv, 5, !dbg !1151
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1152

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %sleep_type_a.addr, align 8, !dbg !1153
  %tobool = icmp ne i8* %1, null, !dbg !1153
  br i1 %tobool, label %lor.lhs.false2, label %if.then, !dbg !1154

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %sleep_type_b.addr, align 8, !dbg !1155
  %tobool3 = icmp ne i8* %2, null, !dbg !1155
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1156

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1157
  br label %return, !dbg !1157

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !1159
  %3 = bitcast i8* %call to %struct.acpi_evaluate_info*, !dbg !1159
  store %struct.acpi_evaluate_info* %3, %struct.acpi_evaluate_info** %info, align 8, !dbg !1160
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1161
  %tobool4 = icmp ne %struct.acpi_evaluate_info* %4, null, !dbg !1161
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1163

if.then5:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end6:                                          ; preds = %if.end
  %5 = load i8, i8* %sleep_state.addr, align 1, !dbg !1166
  %idxprom = zext i8 %5 to i64, !dbg !1167
  %arrayidx = getelementptr [6 x i8*], [6 x i8*]* @acpi_gbl_sleep_state_names, i64 0, i64 %idxprom, !dbg !1167
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !1167
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1168
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 1, !dbg !1169
  store i8* %6, i8** %relative_pathname, align 8, !dbg !1170
  %8 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1171
  %call7 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %8) #8, !dbg !1172
  store i32 %call7, i32* %status, align 4, !dbg !1173
  %9 = load i32, i32* %status, align 4, !dbg !1174
  %tobool8 = icmp ne i32 %9, 0, !dbg !1174
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !1176

if.then9:                                         ; preds = %if.end6
  %10 = load i32, i32* %status, align 4, !dbg !1177
  %cmp10 = icmp eq i32 %10, 5, !dbg !1180
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1181

if.then12:                                        ; preds = %if.then9
  br label %final_cleanup, !dbg !1182

if.end13:                                         ; preds = %if.then9
  br label %warning_cleanup, !dbg !1184

if.end14:                                         ; preds = %if.end6
  %11 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1185
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %11, i32 0, i32 7, !dbg !1187
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1187
  %tobool15 = icmp ne %union.acpi_operand_object* %12, null, !dbg !1185
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1188

if.then16:                                        ; preds = %if.end14
  %13 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1189
  %relative_pathname17 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %13, i32 0, i32 1, !dbg !1189
  %14 = load i8*, i8** %relative_pathname17, align 8, !dbg !1189
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 377, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %14) #8, !dbg !1189
  store i32 12306, i32* %status, align 4, !dbg !1191
  br label %warning_cleanup, !dbg !1192

if.end18:                                         ; preds = %if.end14
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1193
  %return_object19 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 7, !dbg !1195
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object19, align 8, !dbg !1195
  %common = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !1196
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1197
  %17 = load i8, i8* %type, align 1, !dbg !1197
  %conv20 = zext i8 %17 to i32, !dbg !1193
  %cmp21 = icmp ne i32 %conv20, 4, !dbg !1198
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1199

if.then23:                                        ; preds = %if.end18
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1200
  store i32 12291, i32* %status, align 4, !dbg !1202
  br label %return_value_cleanup, !dbg !1203

if.end24:                                         ; preds = %if.end18
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1204
  %return_object25 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 7, !dbg !1205
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object25, align 8, !dbg !1205
  %package = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_package*, !dbg !1206
  %elements26 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1207
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements26, align 8, !dbg !1207
  store %union.acpi_operand_object** %20, %union.acpi_operand_object*** %elements, align 8, !dbg !1208
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1209
  %return_object27 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %21, i32 0, i32 7, !dbg !1210
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object27, align 8, !dbg !1210
  %package28 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !1211
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package28, i32 0, i32 9, !dbg !1212
  %23 = load i32, i32* %count, align 4, !dbg !1212
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb44
  ], !dbg !1213

sw.bb:                                            ; preds = %if.end24
  store i32 12299, i32* %status, align 4, !dbg !1214
  br label %sw.epilog, !dbg !1216

sw.bb29:                                          ; preds = %if.end24
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1217
  %arrayidx30 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 0, !dbg !1217
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx30, align 8, !dbg !1217
  %common31 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_common*, !dbg !1219
  %type32 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common31, i32 0, i32 2, !dbg !1220
  %26 = load i8, i8* %type32, align 1, !dbg !1220
  %conv33 = zext i8 %26 to i32, !dbg !1217
  %cmp34 = icmp ne i32 %conv33, 1, !dbg !1221
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1222

if.then36:                                        ; preds = %sw.bb29
  store i32 12291, i32* %status, align 4, !dbg !1223
  br label %sw.epilog, !dbg !1225

if.end37:                                         ; preds = %sw.bb29
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1226
  %arrayidx38 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 0, !dbg !1226
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 8, !dbg !1226
  %integer = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_integer*, !dbg !1227
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1228
  %29 = load i64, i64* %value, align 8, !dbg !1228
  %conv39 = trunc i64 %29 to i8, !dbg !1229
  %30 = load i8*, i8** %sleep_type_a.addr, align 8, !dbg !1230
  store i8 %conv39, i8* %30, align 1, !dbg !1231
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1232
  %arrayidx40 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %31, i64 0, !dbg !1232
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx40, align 8, !dbg !1232
  %integer41 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_integer*, !dbg !1233
  %value42 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer41, i32 0, i32 6, !dbg !1234
  %33 = load i64, i64* %value42, align 8, !dbg !1234
  %shr = lshr i64 %33, 8, !dbg !1235
  %conv43 = trunc i64 %shr to i8, !dbg !1236
  %34 = load i8*, i8** %sleep_type_b.addr, align 8, !dbg !1237
  store i8 %conv43, i8* %34, align 1, !dbg !1238
  br label %sw.epilog, !dbg !1239

sw.bb44:                                          ; preds = %if.end24
  br label %sw.default, !dbg !1239

sw.default:                                       ; preds = %if.end24, %sw.bb44
  %35 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1240
  %arrayidx45 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %35, i64 0, !dbg !1240
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx45, align 8, !dbg !1240
  %common46 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_common*, !dbg !1242
  %type47 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common46, i32 0, i32 2, !dbg !1243
  %37 = load i8, i8* %type47, align 1, !dbg !1243
  %conv48 = zext i8 %37 to i32, !dbg !1240
  %cmp49 = icmp ne i32 %conv48, 1, !dbg !1244
  br i1 %cmp49, label %if.then58, label %lor.lhs.false51, !dbg !1245

lor.lhs.false51:                                  ; preds = %sw.default
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1246
  %arrayidx52 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %38, i64 1, !dbg !1246
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx52, align 8, !dbg !1246
  %common53 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_common*, !dbg !1247
  %type54 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common53, i32 0, i32 2, !dbg !1248
  %40 = load i8, i8* %type54, align 1, !dbg !1248
  %conv55 = zext i8 %40 to i32, !dbg !1246
  %cmp56 = icmp ne i32 %conv55, 1, !dbg !1249
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1250

if.then58:                                        ; preds = %lor.lhs.false51, %sw.default
  store i32 12291, i32* %status, align 4, !dbg !1251
  br label %sw.epilog, !dbg !1253

if.end59:                                         ; preds = %lor.lhs.false51
  %41 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1254
  %arrayidx60 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %41, i64 0, !dbg !1254
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx60, align 8, !dbg !1254
  %integer61 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_integer*, !dbg !1255
  %value62 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer61, i32 0, i32 6, !dbg !1256
  %43 = load i64, i64* %value62, align 8, !dbg !1256
  %conv63 = trunc i64 %43 to i8, !dbg !1257
  %44 = load i8*, i8** %sleep_type_a.addr, align 8, !dbg !1258
  store i8 %conv63, i8* %44, align 1, !dbg !1259
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1260
  %arrayidx64 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 1, !dbg !1260
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx64, align 8, !dbg !1260
  %integer65 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_integer*, !dbg !1261
  %value66 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer65, i32 0, i32 6, !dbg !1262
  %47 = load i64, i64* %value66, align 8, !dbg !1262
  %conv67 = trunc i64 %47 to i8, !dbg !1263
  %48 = load i8*, i8** %sleep_type_b.addr, align 8, !dbg !1264
  store i8 %conv67, i8* %48, align 1, !dbg !1265
  br label %sw.epilog, !dbg !1266

sw.epilog:                                        ; preds = %if.end59, %if.then58, %if.end37, %if.then36, %sw.bb
  br label %return_value_cleanup, !dbg !1267

return_value_cleanup:                             ; preds = %sw.epilog, %if.then23
  call void @llvm.dbg.label(metadata !1268), !dbg !1269
  %49 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1270
  %return_object68 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %49, i32 0, i32 7, !dbg !1271
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object68, align 8, !dbg !1271
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %50) #8, !dbg !1272
  br label %warning_cleanup, !dbg !1272

warning_cleanup:                                  ; preds = %return_value_cleanup, %if.then16, %if.end13
  call void @llvm.dbg.label(metadata !1273), !dbg !1274
  %51 = load i32, i32* %status, align 4, !dbg !1275
  %tobool69 = icmp ne i32 %51, 0, !dbg !1275
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !1277

if.then70:                                        ; preds = %warning_cleanup
  %52 = load i32, i32* %status, align 4, !dbg !1278
  %53 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1278
  %relative_pathname71 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %53, i32 0, i32 1, !dbg !1278
  %54 = load i8*, i8** %relative_pathname71, align 8, !dbg !1278
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 438, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %54) #8, !dbg !1278
  br label %if.end72, !dbg !1280

if.end72:                                         ; preds = %if.then70, %warning_cleanup
  br label %final_cleanup, !dbg !1275

final_cleanup:                                    ; preds = %if.end72, %if.then12
  call void @llvm.dbg.label(metadata !1281), !dbg !1282
  %55 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1283
  %56 = bitcast %struct.acpi_evaluate_info* %55 to i8*, !dbg !1283
  call void @acpi_os_free(i8* %56) #8, !dbg !1283
  %57 = load i32, i32* %status, align 4, !dbg !1284
  store i32 %57, i32* %retval, align 4, !dbg !1284
  br label %return, !dbg !1284

return:                                           ; preds = %final_cleanup, %if.then5, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !1285
  ret i32 %58, !dbg !1285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1286 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1289, metadata !DIExpression()), !dbg !1295
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1299, metadata !DIExpression()), !dbg !1300
  %0 = load i64, i64* %size.addr, align 8, !dbg !1301
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1302, metadata !DIExpression()), !dbg !1303
  br label %do.body, !dbg !1303

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1304, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1308, metadata !DIExpression()), !dbg !1307
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1307
  %conv = zext i1 %cmp to i32, !dbg !1307
  store i32 1, i32* %tmp, align 4, !dbg !1307
  %1 = load i32, i32* %tmp, align 4, !dbg !1307
  %call = call i64 @arch_local_save_flags() #8, !dbg !1309
  store i64 %call, i64* %_flags, align 8, !dbg !1309
  br label %do.end, !dbg !1309

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1310, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1313, metadata !DIExpression()), !dbg !1312
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1312
  %conv6 = zext i1 %cmp5 to i32, !dbg !1312
  store i32 1, i32* %tmp7, align 4, !dbg !1312
  %2 = load i32, i32* %tmp7, align 4, !dbg !1312
  %3 = load i64, i64* %_flags, align 8, !dbg !1314
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1315
  %and.i = and i64 %4, 512, !dbg !1316
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1317
  %lnot.i = xor i1 %tobool.i, true, !dbg !1317
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1317
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1314
  %5 = load i32, i32* %tmp8, align 4, !dbg !1314
  store i32 %5, i32* %tmp1, align 4, !dbg !1309
  %6 = load i32, i32* %tmp1, align 4, !dbg !1303
  %tobool = icmp ne i32 %6, 0, !dbg !1318
  %7 = zext i1 %tobool to i64, !dbg !1318
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1318
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1319
  ret i8* %call10, !dbg !1320
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1321 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1324, metadata !DIExpression()), !dbg !1325
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1326
  call void @kfree(i8* %0) #8, !dbg !1327
  ret void, !dbg !1328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !1329 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !1333, metadata !DIExpression()), !dbg !1334
  %call = call i64 @arch_local_save_flags() #8, !dbg !1335
  store i64 %call, i64* %f, align 8, !dbg !1336
  call void @arch_local_irq_disable() #8, !dbg !1337
  %0 = load i64, i64* %f, align 8, !dbg !1338
  ret i64 %0, !dbg !1339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1340 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1341, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1344, metadata !DIExpression()), !dbg !1343
  %0 = load i64, i64* %__edi, align 8, !dbg !1343
  store i64 %0, i64* %__edi, align 8, !dbg !1343
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1345, metadata !DIExpression()), !dbg !1343
  %1 = load i64, i64* %__esi, align 8, !dbg !1343
  store i64 %1, i64* %__esi, align 8, !dbg !1343
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1346, metadata !DIExpression()), !dbg !1343
  %2 = load i64, i64* %__edx, align 8, !dbg !1343
  store i64 %2, i64* %__edx, align 8, !dbg !1343
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1347, metadata !DIExpression()), !dbg !1343
  %3 = load i64, i64* %__ecx, align 8, !dbg !1343
  store i64 %3, i64* %__ecx, align 8, !dbg !1343
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1348, metadata !DIExpression()), !dbg !1343
  %4 = load i64, i64* %__eax, align 8, !dbg !1343
  store i64 %4, i64* %__eax, align 8, !dbg !1343
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1343
  %6 = call i64 @llvm.read_register.i64(metadata !39), !dbg !1349
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !1349, !srcloc !1352
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1349
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1349
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1349
  call void @llvm.write_register.i64(metadata !39, i64 %asmresult1), !dbg !1349
  %8 = load i64, i64* %__eax, align 8, !dbg !1349
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1353, metadata !DIExpression()), !dbg !1355
  store i64 -1, i64* %__mask, align 8, !dbg !1355
  %9 = load i64, i64* %__mask, align 8, !dbg !1355
  store i64 %9, i64* %tmp, align 8, !dbg !1355
  %10 = load i64, i64* %tmp, align 8, !dbg !1355
  %and = and i64 %8, %10, !dbg !1349
  store i64 %and, i64* %__ret, align 8, !dbg !1349
  %11 = load i64, i64* %__ret, align 8, !dbg !1343
  store i64 %11, i64* %tmp2, align 8, !dbg !1356
  %12 = load i64, i64* %tmp2, align 8, !dbg !1343
  ret i64 %12, !dbg !1357
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1358 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1361, metadata !DIExpression()), !dbg !1363
  %0 = load i64, i64* %__edi, align 8, !dbg !1363
  store i64 %0, i64* %__edi, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1364, metadata !DIExpression()), !dbg !1363
  %1 = load i64, i64* %__esi, align 8, !dbg !1363
  store i64 %1, i64* %__esi, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1365, metadata !DIExpression()), !dbg !1363
  %2 = load i64, i64* %__edx, align 8, !dbg !1363
  store i64 %2, i64* %__edx, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1366, metadata !DIExpression()), !dbg !1363
  %3 = load i64, i64* %__ecx, align 8, !dbg !1363
  store i64 %3, i64* %__ecx, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1367, metadata !DIExpression()), !dbg !1363
  %4 = load i64, i64* %__eax, align 8, !dbg !1363
  store i64 %4, i64* %__eax, align 8, !dbg !1363
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1363
  %6 = call i64 @llvm.read_register.i64(metadata !39), !dbg !1363
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !1363, !srcloc !1368
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1363
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1363
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1363
  call void @llvm.write_register.i64(metadata !39, i64 %asmresult1), !dbg !1363
  ret void, !dbg !1369
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1370 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1375, metadata !DIExpression()), !dbg !1377
  %0 = load i64, i64* %__edi, align 8, !dbg !1377
  store i64 %0, i64* %__edi, align 8, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1378, metadata !DIExpression()), !dbg !1377
  %1 = load i64, i64* %__esi, align 8, !dbg !1377
  store i64 %1, i64* %__esi, align 8, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1379, metadata !DIExpression()), !dbg !1377
  %2 = load i64, i64* %__edx, align 8, !dbg !1377
  store i64 %2, i64* %__edx, align 8, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1380, metadata !DIExpression()), !dbg !1377
  %3 = load i64, i64* %__ecx, align 8, !dbg !1377
  store i64 %3, i64* %__ecx, align 8, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1381, metadata !DIExpression()), !dbg !1377
  %4 = load i64, i64* %__eax, align 8, !dbg !1377
  store i64 %4, i64* %__eax, align 8, !dbg !1377
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1377
  %6 = call i64 @llvm.read_register.i64(metadata !39), !dbg !1377
  %7 = load i64, i64* %f.addr, align 8, !dbg !1377
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !1377, !srcloc !1382
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1377
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1377
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1377
  call void @llvm.write_register.i64(metadata !39, i64 %asmresult1), !dbg !1377
  ret void, !dbg !1383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1384 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1391, metadata !DIExpression()), !dbg !1398
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1404, metadata !DIExpression()), !dbg !1405
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1406, metadata !DIExpression()), !dbg !1407
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1408, metadata !DIExpression()), !dbg !1409
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1410, metadata !DIExpression()), !dbg !1414
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1416, metadata !DIExpression()), !dbg !1420
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1422, metadata !DIExpression()), !dbg !1426
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1431, metadata !DIExpression()), !dbg !1432
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1433, metadata !DIExpression()), !dbg !1434
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1435, metadata !DIExpression()), !dbg !1436
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1437, metadata !DIExpression()), !dbg !1438
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1439, metadata !DIExpression()), !dbg !1440
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1441, metadata !DIExpression()), !dbg !1442
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1443, metadata !DIExpression()), !dbg !1444
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1445, metadata !DIExpression()), !dbg !1446
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1449, metadata !DIExpression()), !dbg !1450
  %0 = load i64, i64* %size.addr, align 8, !dbg !1451
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1452
  %or = or i32 %1, 256, !dbg !1453
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1454
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #4, !dbg !1455
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1456

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1457
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1458
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1459

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1460
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1461
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1462
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1463
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1440
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1464
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1465
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1466
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1467
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1468
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1469
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1470
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1470
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1470
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1470
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !1470
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1471
  br label %kmalloc.exit, !dbg !1471

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1472
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1473
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1473
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1475

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1476
  br label %kmalloc_index.exit.i, !dbg !1476

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1477
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1479
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1480

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1481
  br label %kmalloc_index.exit.i, !dbg !1481

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1482
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1484
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1485

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1486
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1487
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1488

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1489
  br label %kmalloc_index.exit.i, !dbg !1489

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1490
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1492
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1493

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1494
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1495
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1496

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1497
  br label %kmalloc_index.exit.i, !dbg !1497

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1498
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1500
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1501

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1502
  br label %kmalloc_index.exit.i, !dbg !1502

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1503
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1505
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1506

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1507
  br label %kmalloc_index.exit.i, !dbg !1507

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1508
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1510
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1511

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1512
  br label %kmalloc_index.exit.i, !dbg !1512

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1513
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1515
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1516

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1517
  br label %kmalloc_index.exit.i, !dbg !1517

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1518
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1520
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1521

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1522
  br label %kmalloc_index.exit.i, !dbg !1522

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1523
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1525
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1526

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1527
  br label %kmalloc_index.exit.i, !dbg !1527

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1528
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1530
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1531

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1532
  br label %kmalloc_index.exit.i, !dbg !1532

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1533
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1535
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1536

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1537
  br label %kmalloc_index.exit.i, !dbg !1537

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1538
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1540
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1541

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1542
  br label %kmalloc_index.exit.i, !dbg !1542

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1543
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1545
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1546

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1547
  br label %kmalloc_index.exit.i, !dbg !1547

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1548
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1550
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1551

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1552
  br label %kmalloc_index.exit.i, !dbg !1552

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1553
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1555
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1556

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1557
  br label %kmalloc_index.exit.i, !dbg !1557

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1558
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1560
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1561

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1562
  br label %kmalloc_index.exit.i, !dbg !1562

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1563
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1565
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1566

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1567
  br label %kmalloc_index.exit.i, !dbg !1567

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1568
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1570
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1571

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1572
  br label %kmalloc_index.exit.i, !dbg !1572

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1573
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1575
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1576

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1577
  br label %kmalloc_index.exit.i, !dbg !1577

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1578
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1580
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1581

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1582
  br label %kmalloc_index.exit.i, !dbg !1582

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1583
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1585
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1586

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1587
  br label %kmalloc_index.exit.i, !dbg !1587

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1588
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1590
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1591

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1592
  br label %kmalloc_index.exit.i, !dbg !1592

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1593
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1595
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1596

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1597
  br label %kmalloc_index.exit.i, !dbg !1597

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1598
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1600
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1601

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1602
  br label %kmalloc_index.exit.i, !dbg !1602

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1603
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1605
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1606

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1607
  br label %kmalloc_index.exit.i, !dbg !1607

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1608
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1610
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1611

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1612
  br label %kmalloc_index.exit.i, !dbg !1612

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1613
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1615
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1616

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1617
  br label %kmalloc_index.exit.i, !dbg !1617

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !1618, !srcloc !1621
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #4, !dbg !1622, !srcloc !1625
  unreachable, !dbg !1626

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1627
  store i32 %45, i32* %index.i, align 4, !dbg !1628
  %46 = load i32, i32* %index.i, align 4, !dbg !1629
  %tobool.i = icmp ne i32 %46, 0, !dbg !1629
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1631

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1632
  br label %kmalloc.exit, !dbg !1632

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1633
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1634
  %and.i.i = and i32 %48, 17, !dbg !1634
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1634
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1634
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1634
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1634
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1636

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1637
  br label %kmalloc_type.exit.i, !dbg !1637

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1638
  %and2.i.i = and i32 %49, 1, !dbg !1639
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1638
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1638
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1638
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1640
  br label %kmalloc_type.exit.i, !dbg !1640

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1641
  %idxprom.i = zext i32 %51 to i64, !dbg !1642
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1642
  %52 = load i32, i32* %index.i, align 4, !dbg !1643
  %idxprom6.i = zext i32 %52 to i64, !dbg !1642
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1642
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1642
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1644
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1645
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1646
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1647
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1648
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1648
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1648
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1648
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !1648
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1409
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1649
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1650
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1651
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1652
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1653
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1654
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1655
  store i8* %62, i8** %retval.i, align 8, !dbg !1656
  br label %kmalloc.exit, !dbg !1656

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1657
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1658
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1659
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1659
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1659
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1659
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !1659
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1660
  br label %kmalloc.exit, !dbg !1660

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1661
  ret i8* %65, !dbg !1662
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !1663 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1665, metadata !DIExpression()), !dbg !1670
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1672, metadata !DIExpression()), !dbg !1673
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1674, metadata !DIExpression()), !dbg !1675
  %0 = load i64, i64* %size.addr, align 8, !dbg !1676
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1678
  br i1 %1, label %if.then, label %if.end447, !dbg !1679

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1680
  %tobool = icmp ne i64 %2, 0, !dbg !1680
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1683

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1684
  br label %return, !dbg !1684

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1685
  %cmp = icmp ult i64 %3, 4096, !dbg !1687
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1688

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1689
  br label %return, !dbg !1689

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub = sub i64 %4, 1, !dbg !1690
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1690
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1690

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub4 = sub i64 %6, 1, !dbg !1690
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1690
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1690

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub6 = sub i64 %8, 1, !dbg !1690
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1690
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1690

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1690

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub9 = sub i64 %9, 1, !dbg !1690
  %and = and i64 %sub9, -9223372036854775808, !dbg !1690
  %tobool10 = icmp ne i64 %and, 0, !dbg !1690
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1690

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1690

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub13 = sub i64 %10, 1, !dbg !1690
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1690
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1690
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1690

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1690

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub18 = sub i64 %11, 1, !dbg !1690
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1690
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1690
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1690

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1690

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub23 = sub i64 %12, 1, !dbg !1690
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1690
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1690
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1690

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1690

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub28 = sub i64 %13, 1, !dbg !1690
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1690
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1690
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1690

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1690

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub33 = sub i64 %14, 1, !dbg !1690
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1690
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1690
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1690

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1690

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub38 = sub i64 %15, 1, !dbg !1690
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1690
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1690
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1690

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1690

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub43 = sub i64 %16, 1, !dbg !1690
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1690
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1690
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1690

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1690

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub48 = sub i64 %17, 1, !dbg !1690
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1690
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1690
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1690

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1690

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub53 = sub i64 %18, 1, !dbg !1690
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1690
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1690
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1690

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1690

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub58 = sub i64 %19, 1, !dbg !1690
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1690
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1690
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1690

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1690

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub63 = sub i64 %20, 1, !dbg !1690
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1690
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1690
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1690

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1690

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub68 = sub i64 %21, 1, !dbg !1690
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1690
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1690
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1690

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1690

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub73 = sub i64 %22, 1, !dbg !1690
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1690
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1690
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1690

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1690

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub78 = sub i64 %23, 1, !dbg !1690
  %and79 = and i64 %sub78, 562949953421312, !dbg !1690
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1690
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1690

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1690

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub83 = sub i64 %24, 1, !dbg !1690
  %and84 = and i64 %sub83, 281474976710656, !dbg !1690
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1690
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1690

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1690

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub88 = sub i64 %25, 1, !dbg !1690
  %and89 = and i64 %sub88, 140737488355328, !dbg !1690
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1690
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1690

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1690

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub93 = sub i64 %26, 1, !dbg !1690
  %and94 = and i64 %sub93, 70368744177664, !dbg !1690
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1690
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1690

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1690

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub98 = sub i64 %27, 1, !dbg !1690
  %and99 = and i64 %sub98, 35184372088832, !dbg !1690
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1690
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1690

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1690

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub103 = sub i64 %28, 1, !dbg !1690
  %and104 = and i64 %sub103, 17592186044416, !dbg !1690
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1690
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1690

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1690

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub108 = sub i64 %29, 1, !dbg !1690
  %and109 = and i64 %sub108, 8796093022208, !dbg !1690
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1690
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1690

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1690

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub113 = sub i64 %30, 1, !dbg !1690
  %and114 = and i64 %sub113, 4398046511104, !dbg !1690
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1690
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1690

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1690

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub118 = sub i64 %31, 1, !dbg !1690
  %and119 = and i64 %sub118, 2199023255552, !dbg !1690
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1690
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1690

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1690

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub123 = sub i64 %32, 1, !dbg !1690
  %and124 = and i64 %sub123, 1099511627776, !dbg !1690
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1690
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1690

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1690

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub128 = sub i64 %33, 1, !dbg !1690
  %and129 = and i64 %sub128, 549755813888, !dbg !1690
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1690
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1690

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1690

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub133 = sub i64 %34, 1, !dbg !1690
  %and134 = and i64 %sub133, 274877906944, !dbg !1690
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1690
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1690

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1690

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub138 = sub i64 %35, 1, !dbg !1690
  %and139 = and i64 %sub138, 137438953472, !dbg !1690
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1690
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1690

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1690

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub143 = sub i64 %36, 1, !dbg !1690
  %and144 = and i64 %sub143, 68719476736, !dbg !1690
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1690
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1690

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1690

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub148 = sub i64 %37, 1, !dbg !1690
  %and149 = and i64 %sub148, 34359738368, !dbg !1690
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1690
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1690

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1690

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub153 = sub i64 %38, 1, !dbg !1690
  %and154 = and i64 %sub153, 17179869184, !dbg !1690
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1690
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1690

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1690

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub158 = sub i64 %39, 1, !dbg !1690
  %and159 = and i64 %sub158, 8589934592, !dbg !1690
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1690
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1690

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1690

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub163 = sub i64 %40, 1, !dbg !1690
  %and164 = and i64 %sub163, 4294967296, !dbg !1690
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1690
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1690

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1690

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub168 = sub i64 %41, 1, !dbg !1690
  %and169 = and i64 %sub168, 2147483648, !dbg !1690
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1690
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1690

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1690

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub173 = sub i64 %42, 1, !dbg !1690
  %and174 = and i64 %sub173, 1073741824, !dbg !1690
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1690
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1690

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1690

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub178 = sub i64 %43, 1, !dbg !1690
  %and179 = and i64 %sub178, 536870912, !dbg !1690
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1690
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1690

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1690

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub183 = sub i64 %44, 1, !dbg !1690
  %and184 = and i64 %sub183, 268435456, !dbg !1690
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1690
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1690

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1690

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub188 = sub i64 %45, 1, !dbg !1690
  %and189 = and i64 %sub188, 134217728, !dbg !1690
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1690
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1690

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1690

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub193 = sub i64 %46, 1, !dbg !1690
  %and194 = and i64 %sub193, 67108864, !dbg !1690
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1690
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1690

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1690

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub198 = sub i64 %47, 1, !dbg !1690
  %and199 = and i64 %sub198, 33554432, !dbg !1690
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1690
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1690

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1690

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub203 = sub i64 %48, 1, !dbg !1690
  %and204 = and i64 %sub203, 16777216, !dbg !1690
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1690
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1690

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1690

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub208 = sub i64 %49, 1, !dbg !1690
  %and209 = and i64 %sub208, 8388608, !dbg !1690
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1690
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1690

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1690

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub213 = sub i64 %50, 1, !dbg !1690
  %and214 = and i64 %sub213, 4194304, !dbg !1690
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1690
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1690

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1690

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub218 = sub i64 %51, 1, !dbg !1690
  %and219 = and i64 %sub218, 2097152, !dbg !1690
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1690
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1690

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1690

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub223 = sub i64 %52, 1, !dbg !1690
  %and224 = and i64 %sub223, 1048576, !dbg !1690
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1690
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1690

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1690

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub228 = sub i64 %53, 1, !dbg !1690
  %and229 = and i64 %sub228, 524288, !dbg !1690
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1690
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1690

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1690

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub233 = sub i64 %54, 1, !dbg !1690
  %and234 = and i64 %sub233, 262144, !dbg !1690
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1690
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1690

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1690

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub238 = sub i64 %55, 1, !dbg !1690
  %and239 = and i64 %sub238, 131072, !dbg !1690
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1690
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1690

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1690

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub243 = sub i64 %56, 1, !dbg !1690
  %and244 = and i64 %sub243, 65536, !dbg !1690
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1690
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1690

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1690

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub248 = sub i64 %57, 1, !dbg !1690
  %and249 = and i64 %sub248, 32768, !dbg !1690
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1690
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1690

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1690

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub253 = sub i64 %58, 1, !dbg !1690
  %and254 = and i64 %sub253, 16384, !dbg !1690
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1690
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1690

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1690

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub258 = sub i64 %59, 1, !dbg !1690
  %and259 = and i64 %sub258, 8192, !dbg !1690
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1690
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1690

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1690

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub263 = sub i64 %60, 1, !dbg !1690
  %and264 = and i64 %sub263, 4096, !dbg !1690
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1690
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1690

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1690

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub268 = sub i64 %61, 1, !dbg !1690
  %and269 = and i64 %sub268, 2048, !dbg !1690
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1690
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1690

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1690

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub273 = sub i64 %62, 1, !dbg !1690
  %and274 = and i64 %sub273, 1024, !dbg !1690
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1690
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1690

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1690

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub278 = sub i64 %63, 1, !dbg !1690
  %and279 = and i64 %sub278, 512, !dbg !1690
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1690
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1690

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1690

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub283 = sub i64 %64, 1, !dbg !1690
  %and284 = and i64 %sub283, 256, !dbg !1690
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1690
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1690

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1690

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub288 = sub i64 %65, 1, !dbg !1690
  %and289 = and i64 %sub288, 128, !dbg !1690
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1690
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1690

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1690

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub293 = sub i64 %66, 1, !dbg !1690
  %and294 = and i64 %sub293, 64, !dbg !1690
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1690
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1690

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1690

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub298 = sub i64 %67, 1, !dbg !1690
  %and299 = and i64 %sub298, 32, !dbg !1690
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1690
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1690

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1690

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub303 = sub i64 %68, 1, !dbg !1690
  %and304 = and i64 %sub303, 16, !dbg !1690
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1690
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1690

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1690

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub308 = sub i64 %69, 1, !dbg !1690
  %and309 = and i64 %sub308, 8, !dbg !1690
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1690
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1690

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1690

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub313 = sub i64 %70, 1, !dbg !1690
  %and314 = and i64 %sub313, 4, !dbg !1690
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1690
  %71 = zext i1 %tobool315 to i64, !dbg !1690
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1690
  br label %cond.end, !dbg !1690

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1690
  br label %cond.end317, !dbg !1690

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1690
  br label %cond.end319, !dbg !1690

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1690
  br label %cond.end321, !dbg !1690

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1690
  br label %cond.end323, !dbg !1690

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1690
  br label %cond.end325, !dbg !1690

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1690
  br label %cond.end327, !dbg !1690

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1690
  br label %cond.end329, !dbg !1690

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1690
  br label %cond.end331, !dbg !1690

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1690
  br label %cond.end333, !dbg !1690

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1690
  br label %cond.end335, !dbg !1690

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1690
  br label %cond.end337, !dbg !1690

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1690
  br label %cond.end339, !dbg !1690

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1690
  br label %cond.end341, !dbg !1690

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1690
  br label %cond.end343, !dbg !1690

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1690
  br label %cond.end345, !dbg !1690

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1690
  br label %cond.end347, !dbg !1690

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1690
  br label %cond.end349, !dbg !1690

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1690
  br label %cond.end351, !dbg !1690

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1690
  br label %cond.end353, !dbg !1690

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1690
  br label %cond.end355, !dbg !1690

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1690
  br label %cond.end357, !dbg !1690

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1690
  br label %cond.end359, !dbg !1690

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1690
  br label %cond.end361, !dbg !1690

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1690
  br label %cond.end363, !dbg !1690

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1690
  br label %cond.end365, !dbg !1690

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1690
  br label %cond.end367, !dbg !1690

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1690
  br label %cond.end369, !dbg !1690

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1690
  br label %cond.end371, !dbg !1690

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1690
  br label %cond.end373, !dbg !1690

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1690
  br label %cond.end375, !dbg !1690

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1690
  br label %cond.end377, !dbg !1690

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1690
  br label %cond.end379, !dbg !1690

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1690
  br label %cond.end381, !dbg !1690

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1690
  br label %cond.end383, !dbg !1690

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1690
  br label %cond.end385, !dbg !1690

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1690
  br label %cond.end387, !dbg !1690

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1690
  br label %cond.end389, !dbg !1690

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1690
  br label %cond.end391, !dbg !1690

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1690
  br label %cond.end393, !dbg !1690

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1690
  br label %cond.end395, !dbg !1690

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1690
  br label %cond.end397, !dbg !1690

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1690
  br label %cond.end399, !dbg !1690

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1690
  br label %cond.end401, !dbg !1690

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1690
  br label %cond.end403, !dbg !1690

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1690
  br label %cond.end405, !dbg !1690

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1690
  br label %cond.end407, !dbg !1690

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1690
  br label %cond.end409, !dbg !1690

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1690
  br label %cond.end411, !dbg !1690

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1690
  br label %cond.end413, !dbg !1690

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1690
  br label %cond.end415, !dbg !1690

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1690
  br label %cond.end417, !dbg !1690

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1690
  br label %cond.end419, !dbg !1690

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1690
  br label %cond.end421, !dbg !1690

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1690
  br label %cond.end423, !dbg !1690

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1690
  br label %cond.end425, !dbg !1690

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1690
  br label %cond.end427, !dbg !1690

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1690
  br label %cond.end429, !dbg !1690

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1690
  br label %cond.end431, !dbg !1690

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1690
  br label %cond.end433, !dbg !1690

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1690
  br label %cond.end435, !dbg !1690

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1690
  br label %cond.end437, !dbg !1690

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1690
  br label %cond.end440, !dbg !1690

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1690

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1690
  br label %cond.end444, !dbg !1690

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1690
  %sub443 = sub i64 %72, 1, !dbg !1690
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1690
  br label %cond.end444, !dbg !1690

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1690
  %sub446 = sub i32 %cond445, 12, !dbg !1691
  %add = add i32 %sub446, 1, !dbg !1692
  store i32 %add, i32* %retval, align 4, !dbg !1693
  br label %return, !dbg !1693

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1694
  %dec = add i64 %73, -1, !dbg !1694
  store i64 %dec, i64* %size.addr, align 8, !dbg !1694
  %74 = load i64, i64* %size.addr, align 8, !dbg !1695
  %shr = lshr i64 %74, 12, !dbg !1695
  store i64 %shr, i64* %size.addr, align 8, !dbg !1695
  %75 = load i64, i64* %size.addr, align 8, !dbg !1696
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1673
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1697
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1698
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #3, !dbg !1697, !srcloc !1699
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1697
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1700
  %add.i = add i32 %79, 1, !dbg !1701
  store i32 %add.i, i32* %retval, align 4, !dbg !1702
  br label %return, !dbg !1702

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1703
  ret i32 %80, !dbg !1703
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !1704 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1665, metadata !DIExpression()), !dbg !1708
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1672, metadata !DIExpression()), !dbg !1710
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1711, metadata !DIExpression()), !dbg !1712
  %0 = load i64, i64* %n.addr, align 8, !dbg !1713
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1710
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1714
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1715
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #3, !dbg !1714, !srcloc !1699
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1714
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1716
  %add.i = add i32 %4, 1, !dbg !1717
  %sub = sub i32 %add.i, 1, !dbg !1718
  ret i32 %sub, !dbg !1719
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1720 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1728, metadata !DIExpression()), !dbg !1729
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1734
  ret i8* %0, !dbg !1735
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwxface.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !24, !21, !28, !29, !30, !32}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !15, line: 805, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !27)
!27 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !25)
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 148, baseType: !7)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{!0}
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !37)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38}
!38 = !DISubrange(count: 8)
!39 = !{!"rsp"}
!40 = !{i32 7, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!45 = distinct !DISubprogram(name: "acpi_reset", scope: !3, file: !3, line: 32, type: !46, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!14}
!48 = !{}
!49 = !DILocalVariable(name: "reset_reg", scope: !45, file: !3, line: 34, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !52, line: 90, size: 96, elements: !53)
!52 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !51, file: !52, line: 91, baseType: !21, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !51, file: !52, line: 92, baseType: !21, size: 8, offset: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !51, file: !52, line: 93, baseType: !21, size: 8, offset: 16)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !51, file: !52, line: 94, baseType: !21, size: 8, offset: 24)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !52, line: 95, baseType: !25, size: 64, offset: 32)
!59 = !DILocation(line: 34, column: 31, scope: !45)
!60 = !DILocalVariable(name: "status", scope: !45, file: !3, line: 35, type: !14)
!61 = !DILocation(line: 35, column: 14, scope: !45)
!62 = !DILocation(line: 39, column: 12, scope: !45)
!63 = !DILocation(line: 43, column: 22, scope: !64)
!64 = distinct !DILexicalBlock(scope: !45, file: !3, line: 43, column: 6)
!65 = !DILocation(line: 43, column: 28, scope: !64)
!66 = !DILocation(line: 43, column: 56, scope: !64)
!67 = !DILocation(line: 44, column: 7, scope: !64)
!68 = !DILocation(line: 44, column: 18, scope: !64)
!69 = !DILocation(line: 43, column: 6, scope: !45)
!70 = !DILocation(line: 45, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !64, file: !3, line: 44, column: 27)
!72 = !DILocation(line: 48, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !45, file: !3, line: 48, column: 6)
!74 = !DILocation(line: 48, column: 17, scope: !73)
!75 = !DILocation(line: 48, column: 26, scope: !73)
!76 = !DILocation(line: 48, column: 6, scope: !45)
!77 = !DILocation(line: 60, column: 48, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 48, column: 55)
!79 = !DILocation(line: 60, column: 59, scope: !78)
!80 = !DILocation(line: 61, column: 24, scope: !78)
!81 = !DILocation(line: 61, column: 10, scope: !78)
!82 = !DILocation(line: 60, column: 12, scope: !78)
!83 = !DILocation(line: 60, column: 10, scope: !78)
!84 = !DILocation(line: 63, column: 2, scope: !78)
!85 = !DILocation(line: 66, column: 40, scope: !86)
!86 = distinct !DILexicalBlock(scope: !73, file: !3, line: 63, column: 9)
!87 = !DILocation(line: 66, column: 26, scope: !86)
!88 = !DILocation(line: 66, column: 53, scope: !86)
!89 = !DILocation(line: 66, column: 12, scope: !86)
!90 = !DILocation(line: 66, column: 10, scope: !86)
!91 = !DILocation(line: 69, column: 2, scope: !45)
!92 = !DILocation(line: 70, column: 1, scope: !45)
!93 = distinct !DISubprogram(name: "acpi_read", scope: !3, file: !3, line: 92, type: !94, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!94 = !DISubroutineType(types: !95)
!95 = !{!14, !96, !50}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!97 = !DILocalVariable(name: "return_value", arg: 1, scope: !93, file: !3, line: 92, type: !96)
!98 = !DILocation(line: 92, column: 28, scope: !93)
!99 = !DILocalVariable(name: "reg", arg: 2, scope: !93, file: !3, line: 92, type: !50)
!100 = !DILocation(line: 92, column: 71, scope: !93)
!101 = !DILocalVariable(name: "status", scope: !93, file: !3, line: 94, type: !14)
!102 = !DILocation(line: 94, column: 14, scope: !93)
!103 = !DILocation(line: 98, column: 24, scope: !93)
!104 = !DILocation(line: 98, column: 38, scope: !93)
!105 = !DILocation(line: 98, column: 11, scope: !93)
!106 = !DILocation(line: 98, column: 9, scope: !93)
!107 = !DILocation(line: 99, column: 10, scope: !93)
!108 = !DILocation(line: 99, column: 2, scope: !93)
!109 = distinct !DISubprogram(name: "acpi_write", scope: !3, file: !3, line: 116, type: !110, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!110 = !DISubroutineType(types: !111)
!111 = !{!14, !25, !50}
!112 = !DILocalVariable(name: "value", arg: 1, scope: !109, file: !3, line: 116, type: !25)
!113 = !DILocation(line: 116, column: 28, scope: !109)
!114 = !DILocalVariable(name: "reg", arg: 2, scope: !109, file: !3, line: 116, type: !50)
!115 = !DILocation(line: 116, column: 64, scope: !109)
!116 = !DILocalVariable(name: "status", scope: !109, file: !3, line: 118, type: !14)
!117 = !DILocation(line: 118, column: 14, scope: !109)
!118 = !DILocation(line: 122, column: 25, scope: !109)
!119 = !DILocation(line: 122, column: 32, scope: !109)
!120 = !DILocation(line: 122, column: 11, scope: !109)
!121 = !DILocation(line: 122, column: 9, scope: !109)
!122 = !DILocation(line: 123, column: 10, scope: !109)
!123 = !DILocation(line: 123, column: 2, scope: !109)
!124 = distinct !DISubprogram(name: "acpi_read_bit_register", scope: !3, file: !3, line: 153, type: !125, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!125 = !DISubroutineType(types: !126)
!126 = !{!14, !16, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!128 = !DILocalVariable(name: "register_id", arg: 1, scope: !124, file: !3, line: 153, type: !16)
!129 = !DILocation(line: 153, column: 40, scope: !124)
!130 = !DILocalVariable(name: "return_value", arg: 2, scope: !124, file: !3, line: 153, type: !127)
!131 = !DILocation(line: 153, column: 58, scope: !124)
!132 = !DILocalVariable(name: "bit_reg_info", scope: !124, file: !3, line: 155, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !135, line: 934, size: 32, elements: !136)
!135 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !134, file: !135, line: 935, baseType: !21, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !134, file: !135, line: 936, baseType: !21, size: 8, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !134, file: !135, line: 937, baseType: !140, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !142)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DILocation(line: 155, column: 33, scope: !124)
!144 = !DILocalVariable(name: "register_value", scope: !124, file: !3, line: 156, type: !16)
!145 = !DILocation(line: 156, column: 6, scope: !124)
!146 = !DILocalVariable(name: "value", scope: !124, file: !3, line: 157, type: !16)
!147 = !DILocation(line: 157, column: 6, scope: !124)
!148 = !DILocalVariable(name: "status", scope: !124, file: !3, line: 158, type: !14)
!149 = !DILocation(line: 158, column: 14, scope: !124)
!150 = !DILocation(line: 164, column: 47, scope: !124)
!151 = !DILocation(line: 164, column: 17, scope: !124)
!152 = !DILocation(line: 164, column: 15, scope: !124)
!153 = !DILocation(line: 165, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !124, file: !3, line: 165, column: 6)
!155 = !DILocation(line: 165, column: 6, scope: !124)
!156 = !DILocation(line: 166, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 165, column: 21)
!158 = !DILocation(line: 171, column: 33, scope: !124)
!159 = !DILocation(line: 171, column: 47, scope: !124)
!160 = !DILocation(line: 171, column: 11, scope: !124)
!161 = !DILocation(line: 171, column: 9, scope: !124)
!162 = !DILocation(line: 173, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !124, file: !3, line: 173, column: 6)
!164 = !DILocation(line: 173, column: 6, scope: !124)
!165 = !DILocation(line: 174, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 173, column: 28)
!167 = !DILocation(line: 179, column: 12, scope: !124)
!168 = !DILocation(line: 179, column: 29, scope: !124)
!169 = !DILocation(line: 179, column: 43, scope: !124)
!170 = !DILocation(line: 179, column: 27, scope: !124)
!171 = !DILocation(line: 180, column: 7, scope: !124)
!172 = !DILocation(line: 180, column: 21, scope: !124)
!173 = !DILocation(line: 180, column: 4, scope: !124)
!174 = !DILocation(line: 179, column: 8, scope: !124)
!175 = !DILocation(line: 187, column: 18, scope: !124)
!176 = !DILocation(line: 187, column: 3, scope: !124)
!177 = !DILocation(line: 187, column: 16, scope: !124)
!178 = !DILocation(line: 188, column: 2, scope: !124)
!179 = !DILocation(line: 189, column: 1, scope: !124)
!180 = distinct !DISubprogram(name: "acpi_write_bit_register", scope: !3, file: !3, line: 214, type: !181, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!181 = !DISubroutineType(types: !182)
!182 = !{!14, !16, !16}
!183 = !DILocalVariable(name: "register_id", arg: 1, scope: !180, file: !3, line: 214, type: !16)
!184 = !DILocation(line: 214, column: 41, scope: !180)
!185 = !DILocalVariable(name: "value", arg: 2, scope: !180, file: !3, line: 214, type: !16)
!186 = !DILocation(line: 214, column: 58, scope: !180)
!187 = !DILocalVariable(name: "bit_reg_info", scope: !180, file: !3, line: 216, type: !133)
!188 = !DILocation(line: 216, column: 33, scope: !180)
!189 = !DILocalVariable(name: "lock_flags", scope: !180, file: !3, line: 217, type: !29)
!190 = !DILocation(line: 217, column: 17, scope: !180)
!191 = !DILocalVariable(name: "register_value", scope: !180, file: !3, line: 218, type: !16)
!192 = !DILocation(line: 218, column: 6, scope: !180)
!193 = !DILocalVariable(name: "status", scope: !180, file: !3, line: 219, type: !14)
!194 = !DILocation(line: 219, column: 14, scope: !180)
!195 = !DILocation(line: 225, column: 47, scope: !180)
!196 = !DILocation(line: 225, column: 17, scope: !180)
!197 = !DILocation(line: 225, column: 15, scope: !180)
!198 = !DILocation(line: 226, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !180, file: !3, line: 226, column: 6)
!200 = !DILocation(line: 226, column: 6, scope: !180)
!201 = !DILocation(line: 227, column: 3, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 226, column: 21)
!203 = !DILocation(line: 230, column: 40, scope: !180)
!204 = !DILocation(line: 230, column: 15, scope: !180)
!205 = !DILocation(line: 230, column: 13, scope: !180)
!206 = !DILocation(line: 236, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !180, file: !3, line: 236, column: 6)
!208 = !DILocation(line: 236, column: 20, scope: !207)
!209 = !DILocation(line: 236, column: 36, scope: !207)
!210 = !DILocation(line: 236, column: 6, scope: !180)
!211 = !DILocation(line: 243, column: 34, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 236, column: 65)
!213 = !DILocation(line: 243, column: 48, scope: !212)
!214 = !DILocation(line: 243, column: 12, scope: !212)
!215 = !DILocation(line: 243, column: 10, scope: !212)
!216 = !DILocation(line: 245, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 245, column: 7)
!218 = !DILocation(line: 245, column: 7, scope: !212)
!219 = !DILocation(line: 246, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 245, column: 29)
!221 = !DILocation(line: 253, column: 3, scope: !212)
!222 = !DILocation(line: 258, column: 35, scope: !212)
!223 = !DILocation(line: 258, column: 49, scope: !212)
!224 = !DILocation(line: 259, column: 7, scope: !212)
!225 = !DILocation(line: 258, column: 12, scope: !212)
!226 = !DILocation(line: 258, column: 10, scope: !212)
!227 = !DILocation(line: 260, column: 2, scope: !212)
!228 = !DILocation(line: 269, column: 20, scope: !229)
!229 = distinct !DILexicalBlock(scope: !207, file: !3, line: 260, column: 9)
!230 = !DILocation(line: 269, column: 18, scope: !229)
!231 = !DILocation(line: 277, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 277, column: 7)
!233 = !DILocation(line: 277, column: 7, scope: !229)
!234 = !DILocation(line: 280, column: 10, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 277, column: 23)
!236 = !DILocation(line: 279, column: 8, scope: !235)
!237 = !DILocation(line: 278, column: 11, scope: !235)
!238 = !DILocation(line: 281, column: 3, scope: !235)
!239 = !DILocation(line: 236, column: 39, scope: !207)
!240 = !DILabel(scope: !180, name: "unlock_and_exit", file: !3, line: 289)
!241 = !DILocation(line: 289, column: 1, scope: !180)
!242 = !DILocation(line: 291, column: 27, scope: !180)
!243 = !DILocation(line: 291, column: 51, scope: !180)
!244 = !DILocation(line: 291, column: 2, scope: !180)
!245 = !DILocation(line: 292, column: 2, scope: !180)
!246 = !DILocation(line: 293, column: 1, scope: !180)
!247 = distinct !DISubprogram(name: "acpi_os_acquire_raw_lock", scope: !248, file: !248, line: 104, type: !249, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!248 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DISubroutineType(types: !250)
!250 = !{!29, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !253, line: 29, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !253, line: 20, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !254, file: !253, line: 21, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !258, line: 25, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 25, elements: !48)
!260 = !DILocalVariable(name: "lockp", arg: 1, scope: !247, file: !248, line: 104, type: !251)
!261 = !DILocation(line: 104, column: 73, scope: !247)
!262 = !DILocalVariable(name: "flags", scope: !247, file: !248, line: 106, type: !29)
!263 = !DILocation(line: 106, column: 17, scope: !247)
!264 = !DILocation(line: 108, column: 2, scope: !247)
!265 = !DILocalVariable(name: "__dummy", scope: !266, file: !248, line: 108, type: !29)
!266 = distinct !DILexicalBlock(scope: !267, file: !248, line: 108, column: 2)
!267 = distinct !DILexicalBlock(scope: !247, file: !248, line: 108, column: 2)
!268 = !DILocation(line: 108, column: 2, scope: !266)
!269 = !DILocalVariable(name: "__dummy2", scope: !266, file: !248, line: 108, type: !29)
!270 = !DILocation(line: 108, column: 2, scope: !267)
!271 = !DILocation(line: 108, column: 2, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !248, line: 108, column: 2)
!273 = !DILocation(line: 108, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !272, file: !248, line: 108, column: 2)
!275 = !DILocalVariable(name: "__dummy", scope: !276, file: !248, line: 108, type: !29)
!276 = distinct !DILexicalBlock(scope: !277, file: !248, line: 108, column: 2)
!277 = distinct !DILexicalBlock(scope: !274, file: !248, line: 108, column: 2)
!278 = !DILocation(line: 108, column: 2, scope: !276)
!279 = !DILocalVariable(name: "__dummy2", scope: !276, file: !248, line: 108, type: !29)
!280 = !DILocation(line: 108, column: 2, scope: !277)
!281 = !DILocation(line: 108, column: 2, scope: !282)
!282 = distinct !DILexicalBlock(scope: !272, file: !248, line: 108, column: 2)
!283 = !{i32 -2143875997}
!284 = !DILocation(line: 108, column: 2, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !248, line: 108, column: 2)
!286 = !DILocation(line: 109, column: 9, scope: !247)
!287 = !DILocation(line: 109, column: 2, scope: !247)
!288 = distinct !DISubprogram(name: "acpi_os_release_raw_lock", scope: !248, file: !248, line: 112, type: !289, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !251, !29}
!291 = !DILocalVariable(name: "lockp", arg: 1, scope: !288, file: !248, line: 112, type: !251)
!292 = !DILocation(line: 112, column: 63, scope: !288)
!293 = !DILocalVariable(name: "flags", arg: 2, scope: !288, file: !248, line: 113, type: !29)
!294 = !DILocation(line: 113, column: 25, scope: !288)
!295 = !DILocation(line: 115, column: 2, scope: !288)
!296 = !DILocalVariable(name: "__dummy", scope: !297, file: !248, line: 115, type: !29)
!297 = distinct !DILexicalBlock(scope: !298, file: !248, line: 115, column: 2)
!298 = distinct !DILexicalBlock(scope: !288, file: !248, line: 115, column: 2)
!299 = !DILocation(line: 115, column: 2, scope: !297)
!300 = !DILocalVariable(name: "__dummy2", scope: !297, file: !248, line: 115, type: !29)
!301 = !DILocation(line: 115, column: 2, scope: !298)
!302 = !DILocation(line: 115, column: 2, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !248, line: 115, column: 2)
!304 = !DILocation(line: 115, column: 2, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !248, line: 115, column: 2)
!306 = !DILocalVariable(name: "__dummy", scope: !307, file: !248, line: 115, type: !29)
!307 = distinct !DILexicalBlock(scope: !308, file: !248, line: 115, column: 2)
!308 = distinct !DILexicalBlock(scope: !305, file: !248, line: 115, column: 2)
!309 = !DILocation(line: 115, column: 2, scope: !307)
!310 = !DILocalVariable(name: "__dummy2", scope: !307, file: !248, line: 115, type: !29)
!311 = !DILocation(line: 115, column: 2, scope: !308)
!312 = !DILocation(line: 115, column: 2, scope: !313)
!313 = distinct !DILexicalBlock(scope: !303, file: !248, line: 115, column: 2)
!314 = !{i32 -2143875006}
!315 = !DILocation(line: 115, column: 2, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !248, line: 115, column: 2)
!317 = !DILocation(line: 116, column: 1, scope: !288)
!318 = distinct !DISubprogram(name: "acpi_get_sleep_type_data", scope: !3, file: !3, line: 335, type: !319, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !48)
!319 = !DISubroutineType(types: !320)
!320 = !{!14, !21, !321, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!322 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !318, file: !3, line: 335, type: !21)
!323 = !DILocation(line: 335, column: 29, scope: !318)
!324 = !DILocalVariable(name: "sleep_type_a", arg: 2, scope: !318, file: !3, line: 335, type: !321)
!325 = !DILocation(line: 335, column: 46, scope: !318)
!326 = !DILocalVariable(name: "sleep_type_b", arg: 3, scope: !318, file: !3, line: 335, type: !321)
!327 = !DILocation(line: 335, column: 64, scope: !318)
!328 = !DILocalVariable(name: "status", scope: !318, file: !3, line: 337, type: !14)
!329 = !DILocation(line: 337, column: 14, scope: !318)
!330 = !DILocalVariable(name: "info", scope: !318, file: !3, line: 338, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !333, line: 152, size: 704, elements: !334)
!333 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !1085, !1087, !1088, !1089, !1090, !1091, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !332, file: !333, line: 155, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !135, line: 133, size: 384, elements: !338)
!338 = !{!339, !1073, !1074, !1075, !1076, !1081, !1082, !1083, !1084}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !337, file: !135, line: 134, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !342, line: 367, size: 576, elements: !343)
!342 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !352, !365, !376, !389, !403, !412, !726, !743, !758, !771, !849, !861, !874, !884, !902, !924, !943, !962, !981, !994, !1019, !1036, !1049, !1063, !1072}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !341, file: !342, line: 368, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !342, line: 73, size: 128, elements: !346)
!346 = !{!347, !348, !349, !350, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !345, file: !342, line: 74, baseType: !340, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !342, line: 74, baseType: !21, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !345, file: !342, line: 74, baseType: !21, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !345, file: !342, line: 74, baseType: !140, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !342, line: 74, baseType: !21, size: 8, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !341, file: !342, line: 369, baseType: !353, size: 192)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !342, line: 76, size: 192, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !364}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !353, file: !342, line: 77, baseType: !340, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !342, line: 77, baseType: !21, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !353, file: !342, line: 77, baseType: !21, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !353, file: !342, line: 77, baseType: !140, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !342, line: 77, baseType: !21, size: 8, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !353, file: !342, line: 77, baseType: !361, size: 24, offset: 104)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 3)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !342, line: 78, baseType: !25, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !341, file: !342, line: 370, baseType: !366, size: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !342, line: 93, size: 256, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !366, file: !342, line: 94, baseType: !340, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !342, line: 94, baseType: !21, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !342, line: 94, baseType: !21, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !366, file: !342, line: 94, baseType: !140, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !342, line: 94, baseType: !21, size: 8, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !366, file: !342, line: 94, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !366, file: !342, line: 94, baseType: !16, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !341, file: !342, line: 371, baseType: !377, size: 384)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !342, line: 97, size: 384, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !377, file: !342, line: 98, baseType: !340, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !342, line: 98, baseType: !21, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !342, line: 98, baseType: !21, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !377, file: !342, line: 98, baseType: !140, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !342, line: 98, baseType: !21, size: 8, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !377, file: !342, line: 98, baseType: !321, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !377, file: !342, line: 98, baseType: !16, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !377, file: !342, line: 99, baseType: !16, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !377, file: !342, line: 100, baseType: !321, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !342, line: 101, baseType: !336, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !341, file: !342, line: 372, baseType: !390, size: 384)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !342, line: 104, size: 384, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !400, !401, !402}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !390, file: !342, line: 105, baseType: !340, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !390, file: !342, line: 105, baseType: !21, size: 8, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !342, line: 105, baseType: !21, size: 8, offset: 72)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !390, file: !342, line: 105, baseType: !140, size: 16, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !342, line: 105, baseType: !21, size: 8, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !390, file: !342, line: 105, baseType: !336, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !390, file: !342, line: 106, baseType: !399, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !390, file: !342, line: 107, baseType: !321, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !390, file: !342, line: 108, baseType: !16, size: 32, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !342, line: 109, baseType: !16, size: 32, offset: 352)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !341, file: !342, line: 373, baseType: !404, size: 192)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !342, line: 118, size: 192, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !404, file: !342, line: 119, baseType: !340, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !404, file: !342, line: 119, baseType: !21, size: 8, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !342, line: 119, baseType: !21, size: 8, offset: 72)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !404, file: !342, line: 119, baseType: !140, size: 16, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !342, line: 119, baseType: !21, size: 8, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !404, file: !342, line: 119, baseType: !32, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !341, file: !342, line: 374, baseType: !413, size: 448)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !342, line: 143, size: 448, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !723, !724, !725}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !413, file: !342, line: 144, baseType: !340, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !413, file: !342, line: 144, baseType: !21, size: 8, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !413, file: !342, line: 144, baseType: !21, size: 8, offset: 72)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !413, file: !342, line: 144, baseType: !140, size: 16, offset: 80)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !342, line: 144, baseType: !21, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !413, file: !342, line: 144, baseType: !21, size: 8, offset: 104)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !413, file: !342, line: 145, baseType: !21, size: 8, offset: 112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !413, file: !342, line: 146, baseType: !21, size: 8, offset: 120)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !413, file: !342, line: 147, baseType: !340, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !413, file: !342, line: 148, baseType: !340, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !413, file: !342, line: 149, baseType: !321, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !413, file: !342, line: 153, baseType: !427, size: 64, offset: 320)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !342, line: 150, size: 64, elements: !428)
!428 = !{!429, !722}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !427, file: !342, line: 151, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !135, line: 248, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!14, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !333, line: 37, size: 9024, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !668, !669, !670, !671, !672, !676, !678, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !705, !706, !707, !708, !709, !710, !711, !712, !714, !720}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !333, line: 38, baseType: !434, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !435, file: !333, line: 39, baseType: !21, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !435, file: !333, line: 40, baseType: !21, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !435, file: !333, line: 41, baseType: !140, size: 16, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !435, file: !333, line: 42, baseType: !21, size: 8, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !435, file: !333, line: 43, baseType: !21, size: 8, offset: 104)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !435, file: !333, line: 44, baseType: !21, size: 8, offset: 112)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !435, file: !333, line: 45, baseType: !445, size: 16, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !140)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !435, file: !333, line: 46, baseType: !21, size: 8, offset: 144)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !435, file: !333, line: 47, baseType: !21, size: 8, offset: 152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !435, file: !333, line: 48, baseType: !21, size: 8, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !435, file: !333, line: 49, baseType: !21, size: 8, offset: 168)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !435, file: !333, line: 50, baseType: !21, size: 8, offset: 176)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !435, file: !333, line: 51, baseType: !21, size: 8, offset: 184)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !435, file: !333, line: 52, baseType: !21, size: 8, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !435, file: !333, line: 53, baseType: !21, size: 8, offset: 200)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !435, file: !333, line: 54, baseType: !321, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !435, file: !333, line: 55, baseType: !16, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !435, file: !333, line: 56, baseType: !16, size: 32, offset: 352)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !435, file: !333, line: 57, baseType: !16, size: 32, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !435, file: !333, line: 58, baseType: !16, size: 32, offset: 416)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !435, file: !333, line: 60, baseType: !460, size: 640, offset: 448)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !135, line: 893, size: 640, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !551, !552, !666, !667}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !460, file: !135, line: 894, baseType: !321, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !460, file: !135, line: 895, baseType: !321, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !460, file: !135, line: 896, baseType: !321, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !460, file: !135, line: 897, baseType: !321, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !460, file: !135, line: 898, baseType: !321, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !460, file: !135, line: 899, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !135, line: 875, size: 1600, elements: !470)
!470 = !{!471, !491, !507}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !469, file: !135, line: 876, baseType: !472, size: 448)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !135, line: 828, size: 448, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !490}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !472, file: !135, line: 829, baseType: !468, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !135, line: 829, baseType: !21, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !135, line: 829, baseType: !21, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !472, file: !135, line: 829, baseType: !140, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !472, file: !135, line: 829, baseType: !321, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !135, line: 829, baseType: !468, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !472, file: !135, line: 829, baseType: !336, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !472, file: !135, line: 829, baseType: !482, size: 64, offset: 320)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !135, line: 716, size: 64, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !482, file: !135, line: 717, baseType: !25, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !482, file: !135, line: 718, baseType: !16, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !482, file: !135, line: 719, baseType: !374, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !482, file: !135, line: 720, baseType: !321, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !135, line: 721, baseType: !374, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !482, file: !135, line: 722, baseType: !468, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !472, file: !135, line: 829, baseType: !21, size: 8, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !469, file: !135, line: 877, baseType: !492, size: 640)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !135, line: 835, size: 640, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !492, file: !135, line: 836, baseType: !468, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !492, file: !135, line: 836, baseType: !21, size: 8, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !135, line: 836, baseType: !21, size: 8, offset: 72)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !492, file: !135, line: 836, baseType: !140, size: 16, offset: 80)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !492, file: !135, line: 836, baseType: !321, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !135, line: 836, baseType: !468, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !135, line: 836, baseType: !336, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !492, file: !135, line: 836, baseType: !482, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !492, file: !135, line: 836, baseType: !21, size: 8, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !492, file: !135, line: 836, baseType: !374, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !492, file: !135, line: 837, baseType: !321, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !492, file: !135, line: 838, baseType: !16, size: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !135, line: 839, baseType: !16, size: 32, offset: 608)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !469, file: !135, line: 878, baseType: !508, size: 1600)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !135, line: 846, size: 1600, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !508, file: !135, line: 847, baseType: !468, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !135, line: 847, baseType: !21, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !135, line: 847, baseType: !21, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !508, file: !135, line: 847, baseType: !140, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !508, file: !135, line: 847, baseType: !321, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !135, line: 847, baseType: !468, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !135, line: 847, baseType: !336, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !508, file: !135, line: 847, baseType: !482, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !508, file: !135, line: 847, baseType: !21, size: 8, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !508, file: !135, line: 847, baseType: !468, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !508, file: !135, line: 848, baseType: !468, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !508, file: !135, line: 849, baseType: !374, size: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !508, file: !135, line: 850, baseType: !21, size: 8, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !508, file: !135, line: 851, baseType: !374, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !508, file: !135, line: 852, baseType: !374, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !508, file: !135, line: 853, baseType: !374, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !508, file: !135, line: 854, baseType: !527, size: 32, offset: 896)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 4)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !508, file: !135, line: 855, baseType: !16, size: 32, offset: 928)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !508, file: !135, line: 856, baseType: !16, size: 32, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !508, file: !135, line: 857, baseType: !16, size: 32, offset: 992)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !508, file: !135, line: 858, baseType: !16, size: 32, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !508, file: !135, line: 859, baseType: !16, size: 32, offset: 1056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !508, file: !135, line: 860, baseType: !16, size: 32, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !508, file: !135, line: 861, baseType: !16, size: 32, offset: 1120)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !508, file: !135, line: 862, baseType: !16, size: 32, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !508, file: !135, line: 863, baseType: !16, size: 32, offset: 1184)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !508, file: !135, line: 864, baseType: !16, size: 32, offset: 1216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !508, file: !135, line: 865, baseType: !16, size: 32, offset: 1248)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !508, file: !135, line: 866, baseType: !16, size: 32, offset: 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !508, file: !135, line: 867, baseType: !16, size: 32, offset: 1312)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !508, file: !135, line: 868, baseType: !140, size: 16, offset: 1344)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !508, file: !135, line: 869, baseType: !21, size: 8, offset: 1360)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !508, file: !135, line: 870, baseType: !21, size: 8, offset: 1368)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !508, file: !135, line: 871, baseType: !21, size: 8, offset: 1376)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !508, file: !135, line: 872, baseType: !548, size: 160, offset: 1384)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 20)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !460, file: !135, line: 900, baseType: !336, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !460, file: !135, line: 901, baseType: !553, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !135, line: 663, size: 640, elements: !555)
!555 = !{!556, !564, !577, !586, !595, !608, !622, !634, !644}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !554, file: !135, line: 664, baseType: !557, size: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !135, line: 567, size: 128, elements: !558)
!558 = !{!559, !560, !561, !562, !563}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !135, line: 568, baseType: !32, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !135, line: 568, baseType: !21, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !135, line: 568, baseType: !21, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !557, file: !135, line: 568, baseType: !140, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !557, file: !135, line: 568, baseType: !140, size: 16, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !554, file: !135, line: 665, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !135, line: 593, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !135, line: 594, baseType: !32, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !135, line: 594, baseType: !21, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !135, line: 594, baseType: !21, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !565, file: !135, line: 594, baseType: !140, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !565, file: !135, line: 594, baseType: !140, size: 16, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !565, file: !135, line: 594, baseType: !140, size: 16, offset: 112)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !565, file: !135, line: 595, baseType: !468, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !565, file: !135, line: 596, baseType: !321, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !565, file: !135, line: 597, baseType: !321, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !565, file: !135, line: 598, baseType: !25, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !554, file: !135, line: 666, baseType: !578, size: 192)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !135, line: 573, size: 192, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !135, line: 574, baseType: !32, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !135, line: 574, baseType: !21, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !135, line: 574, baseType: !21, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !578, file: !135, line: 574, baseType: !140, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !578, file: !135, line: 574, baseType: !140, size: 16, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !578, file: !135, line: 574, baseType: !340, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !554, file: !135, line: 667, baseType: !587, size: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !135, line: 604, size: 192, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !135, line: 605, baseType: !32, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !135, line: 605, baseType: !21, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !135, line: 605, baseType: !21, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !587, file: !135, line: 605, baseType: !140, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !587, file: !135, line: 605, baseType: !140, size: 16, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !135, line: 605, baseType: !336, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !554, file: !135, line: 668, baseType: !596, size: 448)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !135, line: 608, size: 448, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !135, line: 609, baseType: !32, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !135, line: 609, baseType: !21, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !135, line: 609, baseType: !21, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !596, file: !135, line: 609, baseType: !140, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !596, file: !135, line: 609, baseType: !140, size: 16, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !596, file: !135, line: 609, baseType: !16, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !596, file: !135, line: 610, baseType: !468, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !596, file: !135, line: 611, baseType: !321, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !596, file: !135, line: 612, baseType: !321, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !596, file: !135, line: 613, baseType: !16, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !554, file: !135, line: 669, baseType: !609, size: 512)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !135, line: 580, size: 512, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !135, line: 581, baseType: !32, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !135, line: 581, baseType: !21, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !135, line: 581, baseType: !21, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !135, line: 581, baseType: !140, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !609, file: !135, line: 581, baseType: !140, size: 16, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !609, file: !135, line: 581, baseType: !16, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !609, file: !135, line: 582, baseType: !340, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !609, file: !135, line: 583, baseType: !340, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !609, file: !135, line: 584, baseType: !434, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !609, file: !135, line: 585, baseType: !32, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !609, file: !135, line: 586, baseType: !16, size: 32, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !554, file: !135, line: 670, baseType: !623, size: 320)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !135, line: 620, size: 320, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !135, line: 621, baseType: !32, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !135, line: 621, baseType: !21, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !135, line: 621, baseType: !21, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !135, line: 621, baseType: !140, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !623, file: !135, line: 621, baseType: !140, size: 16, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !623, file: !135, line: 621, baseType: !21, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !623, file: !135, line: 622, baseType: !434, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !623, file: !135, line: 623, baseType: !340, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !623, file: !135, line: 624, baseType: !25, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !554, file: !135, line: 671, baseType: !635, size: 640)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !135, line: 631, size: 640, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !135, line: 632, baseType: !32, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !135, line: 632, baseType: !21, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !135, line: 632, baseType: !21, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !635, file: !135, line: 632, baseType: !140, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !635, file: !135, line: 632, baseType: !140, size: 16, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !635, file: !135, line: 633, baseType: !643, size: 512, offset: 128)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 512, elements: !37)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !554, file: !135, line: 672, baseType: !645, size: 320)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !135, line: 654, size: 320, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !135, line: 655, baseType: !32, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !135, line: 655, baseType: !21, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !135, line: 655, baseType: !21, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !135, line: 655, baseType: !140, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !645, file: !135, line: 655, baseType: !140, size: 16, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !645, file: !135, line: 655, baseType: !21, size: 8, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !135, line: 656, baseType: !336, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !645, file: !135, line: 657, baseType: !340, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !645, file: !135, line: 658, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !135, line: 645, size: 128, elements: !658)
!658 = !{!659, !665}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !657, file: !135, line: 646, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664, !16, !32}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !657, file: !135, line: 647, baseType: !32, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !460, file: !135, line: 902, baseType: !468, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !460, file: !135, line: 903, baseType: !16, size: 32, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !435, file: !333, line: 61, baseType: !16, size: 32, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !435, file: !333, line: 62, baseType: !16, size: 32, offset: 1120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !435, file: !333, line: 63, baseType: !140, size: 16, offset: 1152)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !435, file: !333, line: 64, baseType: !21, size: 8, offset: 1168)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !435, file: !333, line: 66, baseType: !673, size: 2688, offset: 1216)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 2688, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 7)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !435, file: !333, line: 67, baseType: !677, size: 3072, offset: 3904)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 3072, elements: !37)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !435, file: !333, line: 68, baseType: !679, size: 576, offset: 6976)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 576, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 9)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !435, file: !333, line: 69, baseType: !399, size: 64, offset: 7552)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !435, file: !333, line: 71, baseType: !321, size: 64, offset: 7616)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !435, file: !333, line: 72, baseType: !399, size: 64, offset: 7680)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !435, file: !333, line: 73, baseType: !553, size: 64, offset: 7744)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !435, file: !333, line: 74, baseType: !336, size: 64, offset: 7808)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !435, file: !333, line: 75, baseType: !340, size: 64, offset: 7872)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !435, file: !333, line: 76, baseType: !336, size: 64, offset: 7936)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !435, file: !333, line: 77, baseType: !468, size: 64, offset: 8000)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !435, file: !333, line: 78, baseType: !340, size: 64, offset: 8064)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !435, file: !333, line: 79, baseType: !336, size: 64, offset: 8128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !435, file: !333, line: 80, baseType: !374, size: 64, offset: 8192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !435, file: !333, line: 81, baseType: !468, size: 64, offset: 8256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !435, file: !333, line: 82, baseType: !695, size: 64, offset: 8320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !135, line: 702, size: 128, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !697, file: !135, line: 706, baseType: !16, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !697, file: !135, line: 707, baseType: !16, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !135, line: 708, baseType: !140, size: 16, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !697, file: !135, line: 709, baseType: !21, size: 8, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !697, file: !135, line: 710, baseType: !21, size: 8, offset: 88)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !135, line: 711, baseType: !21, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !435, file: !333, line: 83, baseType: !468, size: 64, offset: 8384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !435, file: !333, line: 84, baseType: !340, size: 64, offset: 8448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !435, file: !333, line: 85, baseType: !553, size: 64, offset: 8512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !435, file: !333, line: 86, baseType: !340, size: 64, offset: 8576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !435, file: !333, line: 87, baseType: !553, size: 64, offset: 8640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !435, file: !333, line: 88, baseType: !468, size: 64, offset: 8704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !435, file: !333, line: 89, baseType: !468, size: 64, offset: 8768)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !435, file: !333, line: 90, baseType: !713, size: 64, offset: 8832)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !435, file: !333, line: 91, baseType: !715, size: 64, offset: 8896)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !135, line: 637, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!14, !434, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !435, file: !333, line: 92, baseType: !721, size: 64, offset: 8960)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !135, line: 641, baseType: !431)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !427, file: !342, line: 152, baseType: !340, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !413, file: !342, line: 155, baseType: !16, size: 32, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !413, file: !342, line: 156, baseType: !445, size: 16, offset: 416)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !413, file: !342, line: 157, baseType: !21, size: 8, offset: 432)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !341, file: !342, line: 375, baseType: !727, size: 576)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !342, line: 122, size: 576, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !342, line: 123, baseType: !340, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !342, line: 123, baseType: !21, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !342, line: 123, baseType: !21, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !342, line: 123, baseType: !140, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !342, line: 123, baseType: !21, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !727, file: !342, line: 123, baseType: !21, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !727, file: !342, line: 124, baseType: !140, size: 16, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !727, file: !342, line: 125, baseType: !32, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !727, file: !342, line: 126, baseType: !25, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !727, file: !342, line: 127, baseType: !713, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !727, file: !342, line: 128, baseType: !340, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !342, line: 129, baseType: !340, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !342, line: 130, baseType: !336, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !727, file: !342, line: 131, baseType: !21, size: 8, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !341, file: !342, line: 376, baseType: !744, size: 448)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !342, line: 134, size: 448, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !757}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !342, line: 135, baseType: !340, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !342, line: 135, baseType: !21, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !342, line: 135, baseType: !21, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !342, line: 135, baseType: !140, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !342, line: 135, baseType: !21, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !744, file: !342, line: 135, baseType: !21, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !342, line: 136, baseType: !336, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !744, file: !342, line: 137, baseType: !340, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !342, line: 138, baseType: !340, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !744, file: !342, line: 139, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !25)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !744, file: !342, line: 140, baseType: !16, size: 32, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !341, file: !342, line: 377, baseType: !759, size: 320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !342, line: 184, size: 320, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !770}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !342, line: 185, baseType: !340, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !342, line: 185, baseType: !21, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !342, line: 185, baseType: !21, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !342, line: 185, baseType: !140, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !342, line: 185, baseType: !21, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !759, file: !342, line: 185, baseType: !767, size: 128, offset: 128)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 2)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !759, file: !342, line: 185, baseType: !340, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !341, file: !342, line: 378, baseType: !772, size: 384)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !342, line: 187, size: 384, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !342, line: 188, baseType: !340, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !342, line: 188, baseType: !21, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !342, line: 188, baseType: !21, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !342, line: 188, baseType: !140, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !342, line: 188, baseType: !21, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !772, file: !342, line: 189, baseType: !767, size: 128, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !772, file: !342, line: 189, baseType: !340, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !772, file: !342, line: 189, baseType: !782, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !135, line: 480, size: 576, elements: !784)
!784 = !{!785, !786, !787, !788, !796, !811, !843, !844, !845, !846, !847, !848}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !783, file: !135, line: 481, baseType: !336, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !783, file: !135, line: 482, baseType: !782, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !135, line: 483, baseType: !782, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !783, file: !135, line: 484, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !135, line: 497, size: 256, elements: !791)
!791 = !{!792, !793, !794, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !790, file: !135, line: 498, baseType: !789, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !135, line: 499, baseType: !789, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !790, file: !135, line: 500, baseType: !782, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !790, file: !135, line: 501, baseType: !16, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !783, file: !135, line: 485, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !135, line: 466, size: 320, elements: !799)
!799 = !{!800, !805, !806, !807, !808, !809, !810}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !798, file: !135, line: 467, baseType: !801, size: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !135, line: 459, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !801, file: !135, line: 460, baseType: !21, size: 8)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !801, file: !135, line: 461, baseType: !25, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !798, file: !135, line: 468, baseType: !801, size: 128, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !798, file: !135, line: 469, baseType: !140, size: 16, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !798, file: !135, line: 470, baseType: !21, size: 8, offset: 272)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !798, file: !135, line: 471, baseType: !21, size: 8, offset: 280)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !798, file: !135, line: 472, baseType: !21, size: 8, offset: 288)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !798, file: !135, line: 473, baseType: !21, size: 8, offset: 296)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !783, file: !135, line: 486, baseType: !812, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !135, line: 448, size: 192, elements: !814)
!814 = !{!815, !838, !839, !840, !841, !842}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !813, file: !135, line: 449, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !135, line: 438, size: 64, elements: !817)
!817 = !{!818, !819, !832}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !816, file: !135, line: 439, baseType: !336, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !816, file: !135, line: 440, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !135, line: 419, size: 256, elements: !822)
!822 = !{!823, !828, !829, !830, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !821, file: !135, line: 420, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!16, !664, !16, !32}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !821, file: !135, line: 421, baseType: !32, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !821, file: !135, line: 422, baseType: !336, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !821, file: !135, line: 423, baseType: !21, size: 8, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !821, file: !135, line: 424, baseType: !21, size: 8, offset: 200)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !816, file: !135, line: 441, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !135, line: 429, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !834, file: !135, line: 430, baseType: !336, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !135, line: 431, baseType: !833, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !813, file: !135, line: 450, baseType: !797, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !135, line: 451, baseType: !21, size: 8, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !813, file: !135, line: 452, baseType: !21, size: 8, offset: 136)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !813, file: !135, line: 453, baseType: !21, size: 8, offset: 144)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !813, file: !135, line: 454, baseType: !21, size: 8, offset: 152)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !783, file: !135, line: 487, baseType: !25, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !783, file: !135, line: 488, baseType: !16, size: 32, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !783, file: !135, line: 489, baseType: !140, size: 16, offset: 480)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !783, file: !135, line: 490, baseType: !140, size: 16, offset: 496)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !783, file: !135, line: 491, baseType: !21, size: 8, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !783, file: !135, line: 492, baseType: !21, size: 8, offset: 520)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !341, file: !342, line: 379, baseType: !850, size: 384)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !342, line: 192, size: 384, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !850, file: !342, line: 193, baseType: !340, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !850, file: !342, line: 193, baseType: !21, size: 8, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !342, line: 193, baseType: !21, size: 8, offset: 72)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !850, file: !342, line: 193, baseType: !140, size: 16, offset: 80)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !342, line: 193, baseType: !21, size: 8, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !850, file: !342, line: 193, baseType: !767, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !850, file: !342, line: 193, baseType: !340, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !850, file: !342, line: 193, baseType: !16, size: 32, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !850, file: !342, line: 194, baseType: !16, size: 32, offset: 352)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !341, file: !342, line: 380, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !342, line: 197, size: 384, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !862, file: !342, line: 198, baseType: !340, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !862, file: !342, line: 198, baseType: !21, size: 8, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !342, line: 198, baseType: !21, size: 8, offset: 72)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !862, file: !342, line: 198, baseType: !140, size: 16, offset: 80)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !342, line: 198, baseType: !21, size: 8, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !862, file: !342, line: 200, baseType: !21, size: 8, offset: 104)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !862, file: !342, line: 201, baseType: !21, size: 8, offset: 112)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !862, file: !342, line: 202, baseType: !767, size: 128, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !862, file: !342, line: 202, baseType: !340, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !862, file: !342, line: 202, baseType: !24, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !341, file: !342, line: 381, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !342, line: 205, size: 320, elements: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !883}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !875, file: !342, line: 206, baseType: !340, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !875, file: !342, line: 206, baseType: !21, size: 8, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !342, line: 206, baseType: !21, size: 8, offset: 72)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !875, file: !342, line: 206, baseType: !140, size: 16, offset: 80)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !342, line: 206, baseType: !21, size: 8, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !875, file: !342, line: 206, baseType: !767, size: 128, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !875, file: !342, line: 206, baseType: !340, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !341, file: !342, line: 382, baseType: !885, size: 384)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !342, line: 233, size: 384, elements: !886)
!886 = !{!887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !885, file: !342, line: 234, baseType: !340, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 72)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !885, file: !342, line: 234, baseType: !140, size: 16, offset: 80)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 104)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 120)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !885, file: !342, line: 234, baseType: !336, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !885, file: !342, line: 234, baseType: !16, size: 32, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !885, file: !342, line: 234, baseType: !16, size: 32, offset: 224)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !885, file: !342, line: 234, baseType: !16, size: 32, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 288)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !885, file: !342, line: 234, baseType: !21, size: 8, offset: 296)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !885, file: !342, line: 234, baseType: !340, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !341, file: !342, line: 383, baseType: !903, size: 576)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !342, line: 237, size: 576, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !903, file: !342, line: 238, baseType: !340, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 72)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !903, file: !342, line: 238, baseType: !140, size: 16, offset: 80)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 104)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 112)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 120)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !903, file: !342, line: 238, baseType: !336, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !903, file: !342, line: 238, baseType: !16, size: 32, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !903, file: !342, line: 238, baseType: !16, size: 32, offset: 224)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !903, file: !342, line: 238, baseType: !16, size: 32, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 288)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !903, file: !342, line: 238, baseType: !21, size: 8, offset: 296)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !903, file: !342, line: 238, baseType: !140, size: 16, offset: 304)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !903, file: !342, line: 239, baseType: !340, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !903, file: !342, line: 240, baseType: !321, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !903, file: !342, line: 241, baseType: !140, size: 16, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !903, file: !342, line: 242, baseType: !321, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !341, file: !342, line: 384, baseType: !925, size: 384)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !342, line: 262, size: 384, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !925, file: !342, line: 263, baseType: !340, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 72)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !925, file: !342, line: 263, baseType: !140, size: 16, offset: 80)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 104)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 112)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 120)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !925, file: !342, line: 263, baseType: !336, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !925, file: !342, line: 263, baseType: !16, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !925, file: !342, line: 263, baseType: !16, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !925, file: !342, line: 263, baseType: !16, size: 32, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 288)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 296)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !925, file: !342, line: 263, baseType: !21, size: 8, offset: 304)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !925, file: !342, line: 264, baseType: !340, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !341, file: !342, line: 385, baseType: !944, size: 448)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !342, line: 245, size: 448, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !944, file: !342, line: 246, baseType: !340, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 72)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !944, file: !342, line: 246, baseType: !140, size: 16, offset: 80)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 104)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 112)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 120)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !944, file: !342, line: 246, baseType: !336, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !944, file: !342, line: 246, baseType: !16, size: 32, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !944, file: !342, line: 246, baseType: !16, size: 32, offset: 224)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !944, file: !342, line: 246, baseType: !16, size: 32, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 288)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !944, file: !342, line: 246, baseType: !21, size: 8, offset: 296)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !944, file: !342, line: 246, baseType: !340, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !944, file: !342, line: 247, baseType: !340, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !341, file: !342, line: 386, baseType: !963, size: 448)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !342, line: 250, size: 448, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !963, file: !342, line: 251, baseType: !340, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 72)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !963, file: !342, line: 251, baseType: !140, size: 16, offset: 80)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 96)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 104)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 112)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 120)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !963, file: !342, line: 251, baseType: !336, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !963, file: !342, line: 251, baseType: !16, size: 32, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !963, file: !342, line: 251, baseType: !16, size: 32, offset: 224)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !963, file: !342, line: 251, baseType: !16, size: 32, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 288)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !963, file: !342, line: 251, baseType: !21, size: 8, offset: 296)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !963, file: !342, line: 256, baseType: !340, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !963, file: !342, line: 257, baseType: !340, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !341, file: !342, line: 387, baseType: !982, size: 512)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !342, line: 273, size: 512, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !982, file: !342, line: 274, baseType: !340, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !982, file: !342, line: 274, baseType: !21, size: 8, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !342, line: 274, baseType: !21, size: 8, offset: 72)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !982, file: !342, line: 274, baseType: !140, size: 16, offset: 80)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !342, line: 274, baseType: !21, size: 8, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !982, file: !342, line: 274, baseType: !336, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !982, file: !342, line: 275, baseType: !16, size: 32, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !982, file: !342, line: 276, baseType: !660, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !982, file: !342, line: 277, baseType: !32, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !342, line: 278, baseType: !767, size: 128, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !341, file: !342, line: 388, baseType: !995, size: 512)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !342, line: 281, size: 512, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1009, !1010, !1011, !1017, !1018}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !995, file: !342, line: 282, baseType: !340, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !995, file: !342, line: 282, baseType: !21, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !995, file: !342, line: 282, baseType: !21, size: 8, offset: 72)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !995, file: !342, line: 282, baseType: !140, size: 16, offset: 80)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !342, line: 282, baseType: !21, size: 8, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !995, file: !342, line: 282, baseType: !21, size: 8, offset: 104)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !995, file: !342, line: 283, baseType: !21, size: 8, offset: 112)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !995, file: !342, line: 284, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!14, !16, !756, !16, !96, !32, !32}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !995, file: !342, line: 285, baseType: !336, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !995, file: !342, line: 286, baseType: !32, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !995, file: !342, line: 287, baseType: !1012, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!14, !664, !16, !32, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !995, file: !342, line: 288, baseType: !340, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !995, file: !342, line: 289, baseType: !340, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !341, file: !342, line: 389, baseType: !1020, size: 512)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !342, line: 307, size: 512, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1020, file: !342, line: 308, baseType: !340, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1020, file: !342, line: 308, baseType: !21, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1020, file: !342, line: 308, baseType: !21, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1020, file: !342, line: 308, baseType: !140, size: 16, offset: 80)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !342, line: 308, baseType: !21, size: 8, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1020, file: !342, line: 308, baseType: !21, size: 8, offset: 104)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1020, file: !342, line: 309, baseType: !21, size: 8, offset: 112)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1020, file: !342, line: 310, baseType: !21, size: 8, offset: 120)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1020, file: !342, line: 311, baseType: !32, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1020, file: !342, line: 312, baseType: !336, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1020, file: !342, line: 313, baseType: !399, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1020, file: !342, line: 314, baseType: !321, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1020, file: !342, line: 315, baseType: !321, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1020, file: !342, line: 316, baseType: !16, size: 32, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !341, file: !342, line: 390, baseType: !1037, size: 448)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !342, line: 340, size: 448, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1037, file: !342, line: 341, baseType: !340, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1037, file: !342, line: 341, baseType: !21, size: 8, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1037, file: !342, line: 341, baseType: !21, size: 8, offset: 72)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1037, file: !342, line: 341, baseType: !140, size: 16, offset: 80)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !342, line: 341, baseType: !21, size: 8, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1037, file: !342, line: 341, baseType: !336, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1037, file: !342, line: 342, baseType: !336, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1037, file: !342, line: 343, baseType: !32, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1037, file: !342, line: 344, baseType: !321, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1037, file: !342, line: 345, baseType: !16, size: 32, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !341, file: !342, line: 391, baseType: !1050, size: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !342, line: 350, size: 256, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1062}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1050, file: !342, line: 351, baseType: !340, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1050, file: !342, line: 351, baseType: !21, size: 8, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1050, file: !342, line: 351, baseType: !21, size: 8, offset: 72)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1050, file: !342, line: 351, baseType: !140, size: 16, offset: 80)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !342, line: 351, baseType: !21, size: 8, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1050, file: !342, line: 351, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !664, !32}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1050, file: !342, line: 352, baseType: !32, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !341, file: !342, line: 392, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !342, line: 357, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1064, file: !342, line: 358, baseType: !340, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1064, file: !342, line: 358, baseType: !21, size: 8, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1064, file: !342, line: 358, baseType: !21, size: 8, offset: 72)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1064, file: !342, line: 358, baseType: !140, size: 16, offset: 80)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !342, line: 358, baseType: !21, size: 8, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1064, file: !342, line: 358, baseType: !340, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !341, file: !342, line: 399, baseType: !337, size: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !135, line: 135, baseType: !21, size: 8, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !135, line: 136, baseType: !21, size: 8, offset: 72)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !135, line: 137, baseType: !140, size: 16, offset: 80)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !135, line: 138, baseType: !1077, size: 32, offset: 96)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !52, line: 327, size: 32, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1077, file: !52, line: 328, baseType: !16, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1077, file: !52, line: 329, baseType: !527, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !337, file: !135, line: 139, baseType: !336, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !337, file: !135, line: 140, baseType: !336, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !337, file: !135, line: 141, baseType: !336, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !337, file: !135, line: 142, baseType: !445, size: 16, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !332, file: !333, line: 156, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !332, file: !333, line: 157, baseType: !399, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !332, file: !333, line: 159, baseType: !336, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !332, file: !333, line: 160, baseType: !340, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !332, file: !333, line: 161, baseType: !374, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !332, file: !333, line: 163, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !135, line: 351, size: 56, elements: !1095)
!1095 = !{!1096, !1102, !1111, !1119, !1128}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1094, file: !135, line: 352, baseType: !1097, size: 56)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !135, line: 295, size: 56, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1097, file: !135, line: 296, baseType: !527, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1097, file: !135, line: 297, baseType: !140, size: 16, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1097, file: !135, line: 298, baseType: !21, size: 8, offset: 48)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1094, file: !135, line: 353, baseType: !1103, size: 56)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !135, line: 314, size: 56, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !135, line: 315, baseType: !21, size: 8)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1103, file: !135, line: 316, baseType: !21, size: 8, offset: 8)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1103, file: !135, line: 317, baseType: !21, size: 8, offset: 16)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1103, file: !135, line: 318, baseType: !21, size: 8, offset: 24)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1103, file: !135, line: 319, baseType: !21, size: 8, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1103, file: !135, line: 320, baseType: !140, size: 16, offset: 40)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1094, file: !135, line: 354, baseType: !1112, size: 56)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !135, line: 325, size: 56, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1118}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1112, file: !135, line: 326, baseType: !21, size: 8)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1112, file: !135, line: 327, baseType: !21, size: 8, offset: 8)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1112, file: !135, line: 328, baseType: !1117, size: 32, offset: 16)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !528)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1112, file: !135, line: 329, baseType: !21, size: 8, offset: 48)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1094, file: !135, line: 355, baseType: !1120, size: 56)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !135, line: 334, size: 56, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1126, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1120, file: !135, line: 335, baseType: !21, size: 8)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1120, file: !135, line: 336, baseType: !21, size: 8, offset: 8)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1120, file: !135, line: 337, baseType: !1125, size: 16, offset: 16)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !768)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1120, file: !135, line: 338, baseType: !21, size: 8, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1120, file: !135, line: 339, baseType: !140, size: 16, offset: 40)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1094, file: !135, line: 356, baseType: !1129, size: 56)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !135, line: 342, size: 56, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1129, file: !135, line: 343, baseType: !21, size: 8)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1129, file: !135, line: 344, baseType: !21, size: 8, offset: 8)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1129, file: !135, line: 345, baseType: !21, size: 8, offset: 16)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1129, file: !135, line: 346, baseType: !21, size: 8, offset: 24)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1129, file: !135, line: 347, baseType: !21, size: 8, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1129, file: !135, line: 348, baseType: !140, size: 16, offset: 40)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !332, file: !333, line: 164, baseType: !340, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !332, file: !333, line: 165, baseType: !340, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !332, file: !333, line: 167, baseType: !16, size: 32, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !332, file: !333, line: 168, baseType: !16, size: 32, offset: 608)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !332, file: !333, line: 169, baseType: !140, size: 16, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !332, file: !333, line: 170, baseType: !140, size: 16, offset: 656)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !332, file: !333, line: 171, baseType: !21, size: 8, offset: 672)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !332, file: !333, line: 172, baseType: !21, size: 8, offset: 680)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !333, line: 173, baseType: !21, size: 8, offset: 688)
!1146 = !DILocation(line: 338, column: 29, scope: !318)
!1147 = !DILocalVariable(name: "elements", scope: !318, file: !3, line: 339, type: !399)
!1148 = !DILocation(line: 339, column: 30, scope: !318)
!1149 = !DILocation(line: 345, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !318, file: !3, line: 345, column: 6)
!1151 = !DILocation(line: 345, column: 19, scope: !1150)
!1152 = !DILocation(line: 345, column: 40, scope: !1150)
!1153 = !DILocation(line: 345, column: 44, scope: !1150)
!1154 = !DILocation(line: 345, column: 57, scope: !1150)
!1155 = !DILocation(line: 345, column: 61, scope: !1150)
!1156 = !DILocation(line: 345, column: 6, scope: !318)
!1157 = !DILocation(line: 346, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 345, column: 75)
!1159 = !DILocation(line: 351, column: 9, scope: !318)
!1160 = !DILocation(line: 351, column: 7, scope: !318)
!1161 = !DILocation(line: 352, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !318, file: !3, line: 352, column: 6)
!1163 = !DILocation(line: 352, column: 6, scope: !318)
!1164 = !DILocation(line: 353, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 352, column: 13)
!1166 = !DILocation(line: 360, column: 55, scope: !318)
!1167 = !DILocation(line: 360, column: 28, scope: !318)
!1168 = !DILocation(line: 360, column: 2, scope: !318)
!1169 = !DILocation(line: 360, column: 8, scope: !318)
!1170 = !DILocation(line: 360, column: 26, scope: !318)
!1171 = !DILocation(line: 362, column: 28, scope: !318)
!1172 = !DILocation(line: 362, column: 11, scope: !318)
!1173 = !DILocation(line: 362, column: 9, scope: !318)
!1174 = !DILocation(line: 363, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !318, file: !3, line: 363, column: 6)
!1176 = !DILocation(line: 363, column: 6, scope: !318)
!1177 = !DILocation(line: 364, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 364, column: 7)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 363, column: 28)
!1180 = !DILocation(line: 364, column: 14, scope: !1178)
!1181 = !DILocation(line: 364, column: 7, scope: !1179)
!1182 = !DILocation(line: 368, column: 4, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 364, column: 31)
!1184 = !DILocation(line: 371, column: 3, scope: !1179)
!1185 = !DILocation(line: 376, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !318, file: !3, line: 376, column: 6)
!1187 = !DILocation(line: 376, column: 13, scope: !1186)
!1188 = !DILocation(line: 376, column: 6, scope: !318)
!1189 = !DILocation(line: 377, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 376, column: 28)
!1191 = !DILocation(line: 379, column: 10, scope: !1190)
!1192 = !DILocation(line: 380, column: 3, scope: !1190)
!1193 = !DILocation(line: 385, column: 6, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !318, file: !3, line: 385, column: 6)
!1195 = !DILocation(line: 385, column: 12, scope: !1194)
!1196 = !DILocation(line: 385, column: 27, scope: !1194)
!1197 = !DILocation(line: 385, column: 34, scope: !1194)
!1198 = !DILocation(line: 385, column: 39, scope: !1194)
!1199 = !DILocation(line: 385, column: 6, scope: !318)
!1200 = !DILocation(line: 386, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 385, column: 61)
!1202 = !DILocation(line: 388, column: 10, scope: !1201)
!1203 = !DILocation(line: 389, column: 3, scope: !1201)
!1204 = !DILocation(line: 397, column: 13, scope: !318)
!1205 = !DILocation(line: 397, column: 19, scope: !318)
!1206 = !DILocation(line: 397, column: 34, scope: !318)
!1207 = !DILocation(line: 397, column: 42, scope: !318)
!1208 = !DILocation(line: 397, column: 11, scope: !318)
!1209 = !DILocation(line: 398, column: 10, scope: !318)
!1210 = !DILocation(line: 398, column: 16, scope: !318)
!1211 = !DILocation(line: 398, column: 31, scope: !318)
!1212 = !DILocation(line: 398, column: 39, scope: !318)
!1213 = !DILocation(line: 398, column: 2, scope: !318)
!1214 = !DILocation(line: 401, column: 10, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !318, file: !3, line: 398, column: 46)
!1216 = !DILocation(line: 402, column: 3, scope: !1215)
!1217 = !DILocation(line: 406, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 406, column: 7)
!1219 = !DILocation(line: 406, column: 20, scope: !1218)
!1220 = !DILocation(line: 406, column: 27, scope: !1218)
!1221 = !DILocation(line: 406, column: 32, scope: !1218)
!1222 = !DILocation(line: 406, column: 7, scope: !1215)
!1223 = !DILocation(line: 407, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 406, column: 54)
!1225 = !DILocation(line: 408, column: 4, scope: !1224)
!1226 = !DILocation(line: 413, column: 23, scope: !1215)
!1227 = !DILocation(line: 413, column: 36, scope: !1215)
!1228 = !DILocation(line: 413, column: 44, scope: !1215)
!1229 = !DILocation(line: 413, column: 19, scope: !1215)
!1230 = !DILocation(line: 413, column: 4, scope: !1215)
!1231 = !DILocation(line: 413, column: 17, scope: !1215)
!1232 = !DILocation(line: 414, column: 24, scope: !1215)
!1233 = !DILocation(line: 414, column: 37, scope: !1215)
!1234 = !DILocation(line: 414, column: 45, scope: !1215)
!1235 = !DILocation(line: 414, column: 51, scope: !1215)
!1236 = !DILocation(line: 414, column: 19, scope: !1215)
!1237 = !DILocation(line: 414, column: 4, scope: !1215)
!1238 = !DILocation(line: 414, column: 17, scope: !1215)
!1239 = !DILocation(line: 415, column: 3, scope: !1215)
!1240 = !DILocation(line: 420, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 420, column: 7)
!1242 = !DILocation(line: 420, column: 21, scope: !1241)
!1243 = !DILocation(line: 420, column: 28, scope: !1241)
!1244 = !DILocation(line: 420, column: 33, scope: !1241)
!1245 = !DILocation(line: 420, column: 55, scope: !1241)
!1246 = !DILocation(line: 421, column: 8, scope: !1241)
!1247 = !DILocation(line: 421, column: 21, scope: !1241)
!1248 = !DILocation(line: 421, column: 28, scope: !1241)
!1249 = !DILocation(line: 421, column: 33, scope: !1241)
!1250 = !DILocation(line: 420, column: 7, scope: !1215)
!1251 = !DILocation(line: 422, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 421, column: 56)
!1253 = !DILocation(line: 423, column: 4, scope: !1252)
!1254 = !DILocation(line: 428, column: 23, scope: !1215)
!1255 = !DILocation(line: 428, column: 36, scope: !1215)
!1256 = !DILocation(line: 428, column: 44, scope: !1215)
!1257 = !DILocation(line: 428, column: 19, scope: !1215)
!1258 = !DILocation(line: 428, column: 4, scope: !1215)
!1259 = !DILocation(line: 428, column: 17, scope: !1215)
!1260 = !DILocation(line: 429, column: 23, scope: !1215)
!1261 = !DILocation(line: 429, column: 36, scope: !1215)
!1262 = !DILocation(line: 429, column: 44, scope: !1215)
!1263 = !DILocation(line: 429, column: 19, scope: !1215)
!1264 = !DILocation(line: 429, column: 4, scope: !1215)
!1265 = !DILocation(line: 429, column: 17, scope: !1215)
!1266 = !DILocation(line: 430, column: 3, scope: !1215)
!1267 = !DILocation(line: 431, column: 2, scope: !1215)
!1268 = !DILabel(scope: !318, name: "return_value_cleanup", file: !3, line: 433)
!1269 = !DILocation(line: 433, column: 1, scope: !318)
!1270 = !DILocation(line: 434, column: 27, scope: !318)
!1271 = !DILocation(line: 434, column: 33, scope: !318)
!1272 = !DILocation(line: 434, column: 2, scope: !318)
!1273 = !DILabel(scope: !318, name: "warning_cleanup", file: !3, line: 436)
!1274 = !DILocation(line: 436, column: 1, scope: !318)
!1275 = !DILocation(line: 437, column: 6, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !318, file: !3, line: 437, column: 6)
!1277 = !DILocation(line: 437, column: 6, scope: !318)
!1278 = !DILocation(line: 438, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 437, column: 28)
!1280 = !DILocation(line: 441, column: 2, scope: !1279)
!1281 = !DILabel(scope: !318, name: "final_cleanup", file: !3, line: 443)
!1282 = !DILocation(line: 443, column: 1, scope: !318)
!1283 = !DILocation(line: 444, column: 2, scope: !318)
!1284 = !DILocation(line: 445, column: 2, scope: !318)
!1285 = !DILocation(line: 446, column: 1, scope: !318)
!1286 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !248, file: !248, line: 55, type: !1287, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!32, !28}
!1289 = !DILocalVariable(name: "flags", arg: 1, scope: !1290, file: !1291, line: 162, type: !29)
!1290 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1291, file: !1291, line: 162, type: !1292, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1291 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294, !29}
!1294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1295 = !DILocation(line: 162, column: 67, scope: !1290, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 57, column: 23, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 57, column: 23)
!1298 = distinct !DILexicalBlock(scope: !1286, file: !248, line: 57, column: 23)
!1299 = !DILocalVariable(name: "size", arg: 1, scope: !1286, file: !248, line: 55, type: !28)
!1300 = !DILocation(line: 55, column: 55, scope: !1286)
!1301 = !DILocation(line: 57, column: 17, scope: !1286)
!1302 = !DILocalVariable(name: "_flags", scope: !1298, file: !248, line: 57, type: !29)
!1303 = !DILocation(line: 57, column: 23, scope: !1298)
!1304 = !DILocalVariable(name: "__dummy", scope: !1305, file: !248, line: 57, type: !29)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !248, line: 57, column: 23)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 57, column: 23)
!1307 = !DILocation(line: 57, column: 23, scope: !1305)
!1308 = !DILocalVariable(name: "__dummy2", scope: !1305, file: !248, line: 57, type: !29)
!1309 = !DILocation(line: 57, column: 23, scope: !1306)
!1310 = !DILocalVariable(name: "__dummy", scope: !1311, file: !248, line: 57, type: !29)
!1311 = distinct !DILexicalBlock(scope: !1297, file: !248, line: 57, column: 23)
!1312 = !DILocation(line: 57, column: 23, scope: !1311)
!1313 = !DILocalVariable(name: "__dummy2", scope: !1311, file: !248, line: 57, type: !29)
!1314 = !DILocation(line: 57, column: 23, scope: !1297)
!1315 = !DILocation(line: 164, column: 11, scope: !1290, inlinedAt: !1296)
!1316 = !DILocation(line: 164, column: 17, scope: !1290, inlinedAt: !1296)
!1317 = !DILocation(line: 164, column: 9, scope: !1290, inlinedAt: !1296)
!1318 = !DILocation(line: 57, column: 23, scope: !1286)
!1319 = !DILocation(line: 57, column: 9, scope: !1286)
!1320 = !DILocation(line: 57, column: 2, scope: !1286)
!1321 = distinct !DISubprogram(name: "acpi_os_free", scope: !248, file: !248, line: 60, type: !1322, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !32}
!1324 = !DILocalVariable(name: "memory", arg: 1, scope: !1321, file: !248, line: 60, type: !32)
!1325 = !DILocation(line: 60, column: 39, scope: !1321)
!1326 = !DILocation(line: 62, column: 8, scope: !1321)
!1327 = !DILocation(line: 62, column: 2, scope: !1321)
!1328 = !DILocation(line: 63, column: 1, scope: !1321)
!1329 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1330, file: !1330, line: 666, type: !1331, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1330 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!29}
!1333 = !DILocalVariable(name: "f", scope: !1329, file: !1330, line: 668, type: !29)
!1334 = !DILocation(line: 668, column: 16, scope: !1329)
!1335 = !DILocation(line: 670, column: 6, scope: !1329)
!1336 = !DILocation(line: 670, column: 4, scope: !1329)
!1337 = !DILocation(line: 671, column: 2, scope: !1329)
!1338 = !DILocation(line: 672, column: 9, scope: !1329)
!1339 = !DILocation(line: 672, column: 2, scope: !1329)
!1340 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1330, file: !1330, line: 646, type: !1331, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1341 = !DILocalVariable(name: "__ret", scope: !1342, file: !1330, line: 648, type: !29)
!1342 = distinct !DILexicalBlock(scope: !1340, file: !1330, line: 648, column: 9)
!1343 = !DILocation(line: 648, column: 9, scope: !1342)
!1344 = !DILocalVariable(name: "__edi", scope: !1342, file: !1330, line: 648, type: !29)
!1345 = !DILocalVariable(name: "__esi", scope: !1342, file: !1330, line: 648, type: !29)
!1346 = !DILocalVariable(name: "__edx", scope: !1342, file: !1330, line: 648, type: !29)
!1347 = !DILocalVariable(name: "__ecx", scope: !1342, file: !1330, line: 648, type: !29)
!1348 = !DILocalVariable(name: "__eax", scope: !1342, file: !1330, line: 648, type: !29)
!1349 = !DILocation(line: 648, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !1330, line: 648, column: 9)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !1330, line: 648, column: 9)
!1352 = !{i32 -2145780254, i32 -2145777939, i32 -2145777705, i32 -2145777654, i32 -2145777626, i32 -2145777601, i32 -2145777917, i32 -2145777904, i32 -2145777466, i32 -2145777347, i32 -2145777812, i32 -2145777785, i32 -2145777757, i32 -2145777727}
!1353 = !DILocalVariable(name: "__mask", scope: !1354, file: !1330, line: 648, type: !29)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !1330, line: 648, column: 9)
!1355 = !DILocation(line: 648, column: 9, scope: !1354)
!1356 = !DILocation(line: 648, column: 9, scope: !1351)
!1357 = !DILocation(line: 648, column: 2, scope: !1340)
!1358 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1330, file: !1330, line: 656, type: !1359, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null}
!1361 = !DILocalVariable(name: "__edi", scope: !1362, file: !1330, line: 658, type: !29)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !1330, line: 658, column: 2)
!1363 = !DILocation(line: 658, column: 2, scope: !1362)
!1364 = !DILocalVariable(name: "__esi", scope: !1362, file: !1330, line: 658, type: !29)
!1365 = !DILocalVariable(name: "__edx", scope: !1362, file: !1330, line: 658, type: !29)
!1366 = !DILocalVariable(name: "__ecx", scope: !1362, file: !1330, line: 658, type: !29)
!1367 = !DILocalVariable(name: "__eax", scope: !1362, file: !1330, line: 658, type: !29)
!1368 = !{i32 -2145773160, i32 -2145772428, i32 -2145772194, i32 -2145772143, i32 -2145772115, i32 -2145772090, i32 -2145772406, i32 -2145772393, i32 -2145771955, i32 -2145771836, i32 -2145772301, i32 -2145772274, i32 -2145772246, i32 -2145772216}
!1369 = !DILocation(line: 659, column: 1, scope: !1358)
!1370 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1330, file: !1330, line: 651, type: !1371, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !29}
!1373 = !DILocalVariable(name: "f", arg: 1, scope: !1370, file: !1330, line: 651, type: !29)
!1374 = !DILocation(line: 651, column: 65, scope: !1370)
!1375 = !DILocalVariable(name: "__edi", scope: !1376, file: !1330, line: 653, type: !29)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !1330, line: 653, column: 2)
!1377 = !DILocation(line: 653, column: 2, scope: !1376)
!1378 = !DILocalVariable(name: "__esi", scope: !1376, file: !1330, line: 653, type: !29)
!1379 = !DILocalVariable(name: "__edx", scope: !1376, file: !1330, line: 653, type: !29)
!1380 = !DILocalVariable(name: "__ecx", scope: !1376, file: !1330, line: 653, type: !29)
!1381 = !DILocalVariable(name: "__eax", scope: !1376, file: !1330, line: 653, type: !29)
!1382 = !{i32 -2145775787, i32 -2145775037, i32 -2145774803, i32 -2145774752, i32 -2145774724, i32 -2145774699, i32 -2145775015, i32 -2145775002, i32 -2145774564, i32 -2145774445, i32 -2145774910, i32 -2145774883, i32 -2145774855, i32 -2145774825}
!1383 = !DILocation(line: 654, column: 1, scope: !1370)
!1384 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1385, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!32, !1387, !30}
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 55, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1389, line: 72, baseType: !1390)
!1389 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1389, line: 16, baseType: !29)
!1391 = !DILocalVariable(name: "s", arg: 1, scope: !1392, file: !6, line: 445, type: !1395)
!1392 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1393, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!32, !1395, !30, !1387}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1397, line: 117, flags: DIFlagFwdDecl)
!1397 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !DILocation(line: 445, column: 72, scope: !1392, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 552, column: 10, scope: !1400, inlinedAt: !1403)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !6, line: 540, column: 34)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !6, line: 540, column: 6)
!1402 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1385, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1403 = distinct !DILocation(line: 664, column: 9, scope: !1384)
!1404 = !DILocalVariable(name: "flags", arg: 2, scope: !1392, file: !6, line: 446, type: !30)
!1405 = !DILocation(line: 446, column: 9, scope: !1392, inlinedAt: !1399)
!1406 = !DILocalVariable(name: "size", arg: 3, scope: !1392, file: !6, line: 446, type: !1387)
!1407 = !DILocation(line: 446, column: 23, scope: !1392, inlinedAt: !1399)
!1408 = !DILocalVariable(name: "ret", scope: !1392, file: !6, line: 448, type: !32)
!1409 = !DILocation(line: 448, column: 8, scope: !1392, inlinedAt: !1399)
!1410 = !DILocalVariable(name: "flags", arg: 1, scope: !1411, file: !6, line: 318, type: !30)
!1411 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1412, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!5, !30}
!1414 = !DILocation(line: 318, column: 67, scope: !1411, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 553, column: 20, scope: !1400, inlinedAt: !1403)
!1416 = !DILocalVariable(name: "size", arg: 1, scope: !1417, file: !6, line: 346, type: !1387)
!1417 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1418, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!7, !1387}
!1420 = !DILocation(line: 346, column: 58, scope: !1417, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 547, column: 11, scope: !1400, inlinedAt: !1403)
!1422 = !DILocalVariable(name: "size", arg: 1, scope: !1423, file: !6, line: 472, type: !1387)
!1423 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1424, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!32, !1387, !30, !7}
!1426 = !DILocation(line: 472, column: 28, scope: !1423, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 481, column: 9, scope: !1428, inlinedAt: !1429)
!1428 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1385, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1429 = distinct !DILocation(line: 545, column: 11, scope: !1430, inlinedAt: !1403)
!1430 = distinct !DILexicalBlock(scope: !1400, file: !6, line: 544, column: 7)
!1431 = !DILocalVariable(name: "flags", arg: 2, scope: !1423, file: !6, line: 472, type: !30)
!1432 = !DILocation(line: 472, column: 40, scope: !1423, inlinedAt: !1427)
!1433 = !DILocalVariable(name: "order", arg: 3, scope: !1423, file: !6, line: 472, type: !7)
!1434 = !DILocation(line: 472, column: 60, scope: !1423, inlinedAt: !1427)
!1435 = !DILocalVariable(name: "size", arg: 1, scope: !1428, file: !6, line: 478, type: !1387)
!1436 = !DILocation(line: 478, column: 51, scope: !1428, inlinedAt: !1429)
!1437 = !DILocalVariable(name: "flags", arg: 2, scope: !1428, file: !6, line: 478, type: !30)
!1438 = !DILocation(line: 478, column: 63, scope: !1428, inlinedAt: !1429)
!1439 = !DILocalVariable(name: "order", scope: !1428, file: !6, line: 480, type: !7)
!1440 = !DILocation(line: 480, column: 15, scope: !1428, inlinedAt: !1429)
!1441 = !DILocalVariable(name: "size", arg: 1, scope: !1402, file: !6, line: 538, type: !1387)
!1442 = !DILocation(line: 538, column: 45, scope: !1402, inlinedAt: !1403)
!1443 = !DILocalVariable(name: "flags", arg: 2, scope: !1402, file: !6, line: 538, type: !30)
!1444 = !DILocation(line: 538, column: 57, scope: !1402, inlinedAt: !1403)
!1445 = !DILocalVariable(name: "index", scope: !1400, file: !6, line: 542, type: !7)
!1446 = !DILocation(line: 542, column: 16, scope: !1400, inlinedAt: !1403)
!1447 = !DILocalVariable(name: "size", arg: 1, scope: !1384, file: !6, line: 662, type: !1387)
!1448 = !DILocation(line: 662, column: 36, scope: !1384)
!1449 = !DILocalVariable(name: "flags", arg: 2, scope: !1384, file: !6, line: 662, type: !30)
!1450 = !DILocation(line: 662, column: 48, scope: !1384)
!1451 = !DILocation(line: 664, column: 17, scope: !1384)
!1452 = !DILocation(line: 664, column: 23, scope: !1384)
!1453 = !DILocation(line: 664, column: 29, scope: !1384)
!1454 = !DILocation(line: 540, column: 27, scope: !1401, inlinedAt: !1403)
!1455 = !DILocation(line: 540, column: 6, scope: !1401, inlinedAt: !1403)
!1456 = !DILocation(line: 540, column: 6, scope: !1402, inlinedAt: !1403)
!1457 = !DILocation(line: 544, column: 7, scope: !1430, inlinedAt: !1403)
!1458 = !DILocation(line: 544, column: 12, scope: !1430, inlinedAt: !1403)
!1459 = !DILocation(line: 544, column: 7, scope: !1400, inlinedAt: !1403)
!1460 = !DILocation(line: 545, column: 25, scope: !1430, inlinedAt: !1403)
!1461 = !DILocation(line: 545, column: 31, scope: !1430, inlinedAt: !1403)
!1462 = !DILocation(line: 480, column: 33, scope: !1428, inlinedAt: !1429)
!1463 = !DILocation(line: 480, column: 23, scope: !1428, inlinedAt: !1429)
!1464 = !DILocation(line: 481, column: 29, scope: !1428, inlinedAt: !1429)
!1465 = !DILocation(line: 481, column: 35, scope: !1428, inlinedAt: !1429)
!1466 = !DILocation(line: 481, column: 42, scope: !1428, inlinedAt: !1429)
!1467 = !DILocation(line: 474, column: 23, scope: !1423, inlinedAt: !1427)
!1468 = !DILocation(line: 474, column: 29, scope: !1423, inlinedAt: !1427)
!1469 = !DILocation(line: 474, column: 36, scope: !1423, inlinedAt: !1427)
!1470 = !DILocation(line: 474, column: 9, scope: !1423, inlinedAt: !1427)
!1471 = !DILocation(line: 545, column: 4, scope: !1430, inlinedAt: !1403)
!1472 = !DILocation(line: 547, column: 25, scope: !1400, inlinedAt: !1403)
!1473 = !DILocation(line: 348, column: 7, scope: !1474, inlinedAt: !1421)
!1474 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 348, column: 6)
!1475 = !DILocation(line: 348, column: 6, scope: !1417, inlinedAt: !1421)
!1476 = !DILocation(line: 349, column: 3, scope: !1474, inlinedAt: !1421)
!1477 = !DILocation(line: 351, column: 6, scope: !1478, inlinedAt: !1421)
!1478 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 351, column: 6)
!1479 = !DILocation(line: 351, column: 11, scope: !1478, inlinedAt: !1421)
!1480 = !DILocation(line: 351, column: 6, scope: !1417, inlinedAt: !1421)
!1481 = !DILocation(line: 352, column: 3, scope: !1478, inlinedAt: !1421)
!1482 = !DILocation(line: 354, column: 32, scope: !1483, inlinedAt: !1421)
!1483 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 354, column: 6)
!1484 = !DILocation(line: 354, column: 37, scope: !1483, inlinedAt: !1421)
!1485 = !DILocation(line: 354, column: 42, scope: !1483, inlinedAt: !1421)
!1486 = !DILocation(line: 354, column: 45, scope: !1483, inlinedAt: !1421)
!1487 = !DILocation(line: 354, column: 50, scope: !1483, inlinedAt: !1421)
!1488 = !DILocation(line: 354, column: 6, scope: !1417, inlinedAt: !1421)
!1489 = !DILocation(line: 355, column: 3, scope: !1483, inlinedAt: !1421)
!1490 = !DILocation(line: 356, column: 32, scope: !1491, inlinedAt: !1421)
!1491 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 356, column: 6)
!1492 = !DILocation(line: 356, column: 37, scope: !1491, inlinedAt: !1421)
!1493 = !DILocation(line: 356, column: 43, scope: !1491, inlinedAt: !1421)
!1494 = !DILocation(line: 356, column: 46, scope: !1491, inlinedAt: !1421)
!1495 = !DILocation(line: 356, column: 51, scope: !1491, inlinedAt: !1421)
!1496 = !DILocation(line: 356, column: 6, scope: !1417, inlinedAt: !1421)
!1497 = !DILocation(line: 357, column: 3, scope: !1491, inlinedAt: !1421)
!1498 = !DILocation(line: 358, column: 6, scope: !1499, inlinedAt: !1421)
!1499 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 358, column: 6)
!1500 = !DILocation(line: 358, column: 11, scope: !1499, inlinedAt: !1421)
!1501 = !DILocation(line: 358, column: 6, scope: !1417, inlinedAt: !1421)
!1502 = !DILocation(line: 358, column: 26, scope: !1499, inlinedAt: !1421)
!1503 = !DILocation(line: 359, column: 6, scope: !1504, inlinedAt: !1421)
!1504 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 359, column: 6)
!1505 = !DILocation(line: 359, column: 11, scope: !1504, inlinedAt: !1421)
!1506 = !DILocation(line: 359, column: 6, scope: !1417, inlinedAt: !1421)
!1507 = !DILocation(line: 359, column: 26, scope: !1504, inlinedAt: !1421)
!1508 = !DILocation(line: 360, column: 6, scope: !1509, inlinedAt: !1421)
!1509 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 360, column: 6)
!1510 = !DILocation(line: 360, column: 11, scope: !1509, inlinedAt: !1421)
!1511 = !DILocation(line: 360, column: 6, scope: !1417, inlinedAt: !1421)
!1512 = !DILocation(line: 360, column: 26, scope: !1509, inlinedAt: !1421)
!1513 = !DILocation(line: 361, column: 6, scope: !1514, inlinedAt: !1421)
!1514 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 361, column: 6)
!1515 = !DILocation(line: 361, column: 11, scope: !1514, inlinedAt: !1421)
!1516 = !DILocation(line: 361, column: 6, scope: !1417, inlinedAt: !1421)
!1517 = !DILocation(line: 361, column: 26, scope: !1514, inlinedAt: !1421)
!1518 = !DILocation(line: 362, column: 6, scope: !1519, inlinedAt: !1421)
!1519 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 362, column: 6)
!1520 = !DILocation(line: 362, column: 11, scope: !1519, inlinedAt: !1421)
!1521 = !DILocation(line: 362, column: 6, scope: !1417, inlinedAt: !1421)
!1522 = !DILocation(line: 362, column: 26, scope: !1519, inlinedAt: !1421)
!1523 = !DILocation(line: 363, column: 6, scope: !1524, inlinedAt: !1421)
!1524 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 363, column: 6)
!1525 = !DILocation(line: 363, column: 11, scope: !1524, inlinedAt: !1421)
!1526 = !DILocation(line: 363, column: 6, scope: !1417, inlinedAt: !1421)
!1527 = !DILocation(line: 363, column: 26, scope: !1524, inlinedAt: !1421)
!1528 = !DILocation(line: 364, column: 6, scope: !1529, inlinedAt: !1421)
!1529 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 364, column: 6)
!1530 = !DILocation(line: 364, column: 11, scope: !1529, inlinedAt: !1421)
!1531 = !DILocation(line: 364, column: 6, scope: !1417, inlinedAt: !1421)
!1532 = !DILocation(line: 364, column: 26, scope: !1529, inlinedAt: !1421)
!1533 = !DILocation(line: 365, column: 6, scope: !1534, inlinedAt: !1421)
!1534 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 365, column: 6)
!1535 = !DILocation(line: 365, column: 11, scope: !1534, inlinedAt: !1421)
!1536 = !DILocation(line: 365, column: 6, scope: !1417, inlinedAt: !1421)
!1537 = !DILocation(line: 365, column: 26, scope: !1534, inlinedAt: !1421)
!1538 = !DILocation(line: 366, column: 6, scope: !1539, inlinedAt: !1421)
!1539 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 366, column: 6)
!1540 = !DILocation(line: 366, column: 11, scope: !1539, inlinedAt: !1421)
!1541 = !DILocation(line: 366, column: 6, scope: !1417, inlinedAt: !1421)
!1542 = !DILocation(line: 366, column: 26, scope: !1539, inlinedAt: !1421)
!1543 = !DILocation(line: 367, column: 6, scope: !1544, inlinedAt: !1421)
!1544 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 367, column: 6)
!1545 = !DILocation(line: 367, column: 11, scope: !1544, inlinedAt: !1421)
!1546 = !DILocation(line: 367, column: 6, scope: !1417, inlinedAt: !1421)
!1547 = !DILocation(line: 367, column: 26, scope: !1544, inlinedAt: !1421)
!1548 = !DILocation(line: 368, column: 6, scope: !1549, inlinedAt: !1421)
!1549 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 368, column: 6)
!1550 = !DILocation(line: 368, column: 11, scope: !1549, inlinedAt: !1421)
!1551 = !DILocation(line: 368, column: 6, scope: !1417, inlinedAt: !1421)
!1552 = !DILocation(line: 368, column: 26, scope: !1549, inlinedAt: !1421)
!1553 = !DILocation(line: 369, column: 6, scope: !1554, inlinedAt: !1421)
!1554 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 369, column: 6)
!1555 = !DILocation(line: 369, column: 11, scope: !1554, inlinedAt: !1421)
!1556 = !DILocation(line: 369, column: 6, scope: !1417, inlinedAt: !1421)
!1557 = !DILocation(line: 369, column: 26, scope: !1554, inlinedAt: !1421)
!1558 = !DILocation(line: 370, column: 6, scope: !1559, inlinedAt: !1421)
!1559 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 370, column: 6)
!1560 = !DILocation(line: 370, column: 11, scope: !1559, inlinedAt: !1421)
!1561 = !DILocation(line: 370, column: 6, scope: !1417, inlinedAt: !1421)
!1562 = !DILocation(line: 370, column: 26, scope: !1559, inlinedAt: !1421)
!1563 = !DILocation(line: 371, column: 6, scope: !1564, inlinedAt: !1421)
!1564 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 371, column: 6)
!1565 = !DILocation(line: 371, column: 11, scope: !1564, inlinedAt: !1421)
!1566 = !DILocation(line: 371, column: 6, scope: !1417, inlinedAt: !1421)
!1567 = !DILocation(line: 371, column: 26, scope: !1564, inlinedAt: !1421)
!1568 = !DILocation(line: 372, column: 6, scope: !1569, inlinedAt: !1421)
!1569 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 372, column: 6)
!1570 = !DILocation(line: 372, column: 11, scope: !1569, inlinedAt: !1421)
!1571 = !DILocation(line: 372, column: 6, scope: !1417, inlinedAt: !1421)
!1572 = !DILocation(line: 372, column: 26, scope: !1569, inlinedAt: !1421)
!1573 = !DILocation(line: 373, column: 6, scope: !1574, inlinedAt: !1421)
!1574 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 373, column: 6)
!1575 = !DILocation(line: 373, column: 11, scope: !1574, inlinedAt: !1421)
!1576 = !DILocation(line: 373, column: 6, scope: !1417, inlinedAt: !1421)
!1577 = !DILocation(line: 373, column: 26, scope: !1574, inlinedAt: !1421)
!1578 = !DILocation(line: 374, column: 6, scope: !1579, inlinedAt: !1421)
!1579 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 374, column: 6)
!1580 = !DILocation(line: 374, column: 11, scope: !1579, inlinedAt: !1421)
!1581 = !DILocation(line: 374, column: 6, scope: !1417, inlinedAt: !1421)
!1582 = !DILocation(line: 374, column: 26, scope: !1579, inlinedAt: !1421)
!1583 = !DILocation(line: 375, column: 6, scope: !1584, inlinedAt: !1421)
!1584 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 375, column: 6)
!1585 = !DILocation(line: 375, column: 11, scope: !1584, inlinedAt: !1421)
!1586 = !DILocation(line: 375, column: 6, scope: !1417, inlinedAt: !1421)
!1587 = !DILocation(line: 375, column: 27, scope: !1584, inlinedAt: !1421)
!1588 = !DILocation(line: 376, column: 6, scope: !1589, inlinedAt: !1421)
!1589 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 376, column: 6)
!1590 = !DILocation(line: 376, column: 11, scope: !1589, inlinedAt: !1421)
!1591 = !DILocation(line: 376, column: 6, scope: !1417, inlinedAt: !1421)
!1592 = !DILocation(line: 376, column: 32, scope: !1589, inlinedAt: !1421)
!1593 = !DILocation(line: 377, column: 6, scope: !1594, inlinedAt: !1421)
!1594 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 377, column: 6)
!1595 = !DILocation(line: 377, column: 11, scope: !1594, inlinedAt: !1421)
!1596 = !DILocation(line: 377, column: 6, scope: !1417, inlinedAt: !1421)
!1597 = !DILocation(line: 377, column: 32, scope: !1594, inlinedAt: !1421)
!1598 = !DILocation(line: 378, column: 6, scope: !1599, inlinedAt: !1421)
!1599 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 378, column: 6)
!1600 = !DILocation(line: 378, column: 11, scope: !1599, inlinedAt: !1421)
!1601 = !DILocation(line: 378, column: 6, scope: !1417, inlinedAt: !1421)
!1602 = !DILocation(line: 378, column: 32, scope: !1599, inlinedAt: !1421)
!1603 = !DILocation(line: 379, column: 6, scope: !1604, inlinedAt: !1421)
!1604 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 379, column: 6)
!1605 = !DILocation(line: 379, column: 11, scope: !1604, inlinedAt: !1421)
!1606 = !DILocation(line: 379, column: 6, scope: !1417, inlinedAt: !1421)
!1607 = !DILocation(line: 379, column: 33, scope: !1604, inlinedAt: !1421)
!1608 = !DILocation(line: 380, column: 6, scope: !1609, inlinedAt: !1421)
!1609 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 380, column: 6)
!1610 = !DILocation(line: 380, column: 11, scope: !1609, inlinedAt: !1421)
!1611 = !DILocation(line: 380, column: 6, scope: !1417, inlinedAt: !1421)
!1612 = !DILocation(line: 380, column: 33, scope: !1609, inlinedAt: !1421)
!1613 = !DILocation(line: 381, column: 6, scope: !1614, inlinedAt: !1421)
!1614 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 381, column: 6)
!1615 = !DILocation(line: 381, column: 11, scope: !1614, inlinedAt: !1421)
!1616 = !DILocation(line: 381, column: 6, scope: !1417, inlinedAt: !1421)
!1617 = !DILocation(line: 381, column: 33, scope: !1614, inlinedAt: !1421)
!1618 = !DILocation(line: 382, column: 2, scope: !1619, inlinedAt: !1421)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !6, line: 382, column: 2)
!1620 = distinct !DILexicalBlock(scope: !1417, file: !6, line: 382, column: 2)
!1621 = !{i32 -2144106648, i32 -2144106619, i32 -2144106573, i32 -2144106515, i32 -2144106461, i32 -2144106407, i32 -2144106352, i32 -2144106321}
!1622 = !DILocation(line: 382, column: 2, scope: !1623, inlinedAt: !1421)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !6, line: 382, column: 2)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !6, line: 382, column: 2)
!1625 = !{i32 -2144105878, i32 -2144105871, i32 -2144105817, i32 -2144105786, i32 -2144105756}
!1626 = !DILocation(line: 382, column: 2, scope: !1624, inlinedAt: !1421)
!1627 = !DILocation(line: 386, column: 1, scope: !1417, inlinedAt: !1421)
!1628 = !DILocation(line: 547, column: 9, scope: !1400, inlinedAt: !1403)
!1629 = !DILocation(line: 549, column: 8, scope: !1630, inlinedAt: !1403)
!1630 = distinct !DILexicalBlock(scope: !1400, file: !6, line: 549, column: 7)
!1631 = !DILocation(line: 549, column: 7, scope: !1400, inlinedAt: !1403)
!1632 = !DILocation(line: 550, column: 4, scope: !1630, inlinedAt: !1403)
!1633 = !DILocation(line: 553, column: 33, scope: !1400, inlinedAt: !1403)
!1634 = !DILocation(line: 325, column: 6, scope: !1635, inlinedAt: !1415)
!1635 = distinct !DILexicalBlock(scope: !1411, file: !6, line: 325, column: 6)
!1636 = !DILocation(line: 325, column: 6, scope: !1411, inlinedAt: !1415)
!1637 = !DILocation(line: 326, column: 3, scope: !1635, inlinedAt: !1415)
!1638 = !DILocation(line: 332, column: 9, scope: !1411, inlinedAt: !1415)
!1639 = !DILocation(line: 332, column: 15, scope: !1411, inlinedAt: !1415)
!1640 = !DILocation(line: 332, column: 2, scope: !1411, inlinedAt: !1415)
!1641 = !DILocation(line: 336, column: 1, scope: !1411, inlinedAt: !1415)
!1642 = !DILocation(line: 553, column: 5, scope: !1400, inlinedAt: !1403)
!1643 = !DILocation(line: 553, column: 41, scope: !1400, inlinedAt: !1403)
!1644 = !DILocation(line: 554, column: 5, scope: !1400, inlinedAt: !1403)
!1645 = !DILocation(line: 554, column: 12, scope: !1400, inlinedAt: !1403)
!1646 = !DILocation(line: 448, column: 31, scope: !1392, inlinedAt: !1399)
!1647 = !DILocation(line: 448, column: 34, scope: !1392, inlinedAt: !1399)
!1648 = !DILocation(line: 448, column: 14, scope: !1392, inlinedAt: !1399)
!1649 = !DILocation(line: 450, column: 22, scope: !1392, inlinedAt: !1399)
!1650 = !DILocation(line: 450, column: 25, scope: !1392, inlinedAt: !1399)
!1651 = !DILocation(line: 450, column: 30, scope: !1392, inlinedAt: !1399)
!1652 = !DILocation(line: 450, column: 36, scope: !1392, inlinedAt: !1399)
!1653 = !DILocation(line: 450, column: 8, scope: !1392, inlinedAt: !1399)
!1654 = !DILocation(line: 450, column: 6, scope: !1392, inlinedAt: !1399)
!1655 = !DILocation(line: 451, column: 9, scope: !1392, inlinedAt: !1399)
!1656 = !DILocation(line: 552, column: 3, scope: !1400, inlinedAt: !1403)
!1657 = !DILocation(line: 557, column: 19, scope: !1402, inlinedAt: !1403)
!1658 = !DILocation(line: 557, column: 25, scope: !1402, inlinedAt: !1403)
!1659 = !DILocation(line: 557, column: 9, scope: !1402, inlinedAt: !1403)
!1660 = !DILocation(line: 557, column: 2, scope: !1402, inlinedAt: !1403)
!1661 = !DILocation(line: 558, column: 1, scope: !1402, inlinedAt: !1403)
!1662 = !DILocation(line: 664, column: 2, scope: !1384)
!1663 = distinct !DISubprogram(name: "get_order", scope: !1664, file: !1664, line: 29, type: !1292, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1664 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !DILocalVariable(name: "x", arg: 1, scope: !1666, file: !1667, line: 366, type: !26)
!1666 = distinct !DISubprogram(name: "fls64", scope: !1667, file: !1667, line: 366, type: !1668, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1667 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1294, !26}
!1670 = !DILocation(line: 366, column: 40, scope: !1666, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 46, column: 9, scope: !1663)
!1672 = !DILocalVariable(name: "bitpos", scope: !1666, file: !1667, line: 368, type: !1294)
!1673 = !DILocation(line: 368, column: 6, scope: !1666, inlinedAt: !1671)
!1674 = !DILocalVariable(name: "size", arg: 1, scope: !1663, file: !1664, line: 29, type: !29)
!1675 = !DILocation(line: 29, column: 63, scope: !1663)
!1676 = !DILocation(line: 31, column: 27, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1663, file: !1664, line: 31, column: 6)
!1678 = !DILocation(line: 31, column: 6, scope: !1677)
!1679 = !DILocation(line: 31, column: 6, scope: !1663)
!1680 = !DILocation(line: 32, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !1664, line: 32, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !1664, line: 31, column: 34)
!1683 = !DILocation(line: 32, column: 7, scope: !1682)
!1684 = !DILocation(line: 33, column: 4, scope: !1681)
!1685 = !DILocation(line: 35, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !1664, line: 35, column: 7)
!1687 = !DILocation(line: 35, column: 12, scope: !1686)
!1688 = !DILocation(line: 35, column: 7, scope: !1682)
!1689 = !DILocation(line: 36, column: 4, scope: !1686)
!1690 = !DILocation(line: 38, column: 10, scope: !1682)
!1691 = !DILocation(line: 38, column: 28, scope: !1682)
!1692 = !DILocation(line: 38, column: 41, scope: !1682)
!1693 = !DILocation(line: 38, column: 3, scope: !1682)
!1694 = !DILocation(line: 41, column: 6, scope: !1663)
!1695 = !DILocation(line: 42, column: 7, scope: !1663)
!1696 = !DILocation(line: 46, column: 15, scope: !1663)
!1697 = !DILocation(line: 374, column: 2, scope: !1666, inlinedAt: !1671)
!1698 = !DILocation(line: 376, column: 14, scope: !1666, inlinedAt: !1671)
!1699 = !{i32 664554}
!1700 = !DILocation(line: 377, column: 9, scope: !1666, inlinedAt: !1671)
!1701 = !DILocation(line: 377, column: 16, scope: !1666, inlinedAt: !1671)
!1702 = !DILocation(line: 46, column: 2, scope: !1663)
!1703 = !DILocation(line: 48, column: 1, scope: !1663)
!1704 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1705, file: !1705, line: 30, type: !1706, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1705 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1294, !25}
!1708 = !DILocation(line: 366, column: 40, scope: !1666, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 32, column: 9, scope: !1704)
!1710 = !DILocation(line: 368, column: 6, scope: !1666, inlinedAt: !1709)
!1711 = !DILocalVariable(name: "n", arg: 1, scope: !1704, file: !1705, line: 30, type: !25)
!1712 = !DILocation(line: 30, column: 21, scope: !1704)
!1713 = !DILocation(line: 32, column: 15, scope: !1704)
!1714 = !DILocation(line: 374, column: 2, scope: !1666, inlinedAt: !1709)
!1715 = !DILocation(line: 376, column: 14, scope: !1666, inlinedAt: !1709)
!1716 = !DILocation(line: 377, column: 9, scope: !1666, inlinedAt: !1709)
!1717 = !DILocation(line: 377, column: 16, scope: !1666, inlinedAt: !1709)
!1718 = !DILocation(line: 32, column: 18, scope: !1704)
!1719 = !DILocation(line: 32, column: 2, scope: !1704)
!1720 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1721, file: !1721, line: 137, type: !1722, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !48)
!1721 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!32, !1395, !1724, !1387, !30}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1726 = !DILocalVariable(name: "s", arg: 1, scope: !1720, file: !1721, line: 137, type: !1395)
!1727 = !DILocation(line: 137, column: 54, scope: !1720)
!1728 = !DILocalVariable(name: "object", arg: 2, scope: !1720, file: !1721, line: 137, type: !1724)
!1729 = !DILocation(line: 137, column: 69, scope: !1720)
!1730 = !DILocalVariable(name: "size", arg: 3, scope: !1720, file: !1721, line: 138, type: !1387)
!1731 = !DILocation(line: 138, column: 12, scope: !1720)
!1732 = !DILocalVariable(name: "flags", arg: 4, scope: !1720, file: !1721, line: 138, type: !30)
!1733 = !DILocation(line: 138, column: 24, scope: !1720)
!1734 = !DILocation(line: 140, column: 17, scope: !1720)
!1735 = !DILocation(line: 140, column: 2, scope: !1720)
