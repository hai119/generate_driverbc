; ModuleID = '../bcout/drivers/acpi/acpica/dswstate.llvm.bc'
source_filename = "drivers/acpi/acpica/dswstate.c"
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
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }

@_acpi_module_name = internal constant [9 x i8] c"dswstate\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"No results on result stack\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No result state for result stack\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Result stack is empty! State=%p\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"No result objects on result stack, State=%p\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Result stack is full\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to extend the result stack\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"No free elements in result stack\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"No result stack frame during push\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Null Object! Obj=%p State=%p Num=%u\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Object stack overflow! Obj=%p State=%p #Ops=%u\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Object stack underflow! Count=%X State=%p #Ops=%u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%p is not a valid walk state\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%p walk still has a scope list\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Result stack overflow: State=%p Num=%u\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Insufficient result stack size\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object** %object, %struct.acpi_walk_state* %walk_state) #0 !dbg !43 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %index = alloca i32, align 4
  %state = alloca %union.acpi_generic_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object** %object, %union.acpi_operand_object*** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %object.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata i32* %index, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %status, metadata !816, metadata !DIExpression()), !dbg !817
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !818
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 44, !dbg !819
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !819
  store %union.acpi_generic_state* %1, %union.acpi_generic_state** %state, align 8, !dbg !820
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !821
  %tobool = icmp ne %union.acpi_generic_state* %2, null, !dbg !821
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !823

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !824
  %result_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 15, !dbg !825
  %4 = load i8, i8* %result_count, align 1, !dbg !825
  %tobool1 = icmp ne i8 %4, 0, !dbg !824
  br i1 %tobool1, label %if.end, label %if.then, !dbg !826

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #8, !dbg !827
  store i32 12303, i32* %retval, align 4, !dbg !829
  br label %return, !dbg !829

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !830
  %tobool2 = icmp ne %union.acpi_generic_state* %5, null, !dbg !830
  br i1 %tobool2, label %if.end7, label %land.lhs.true3, !dbg !832

land.lhs.true3:                                   ; preds = %if.end
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !833
  %result_count4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 15, !dbg !834
  %7 = load i8, i8* %result_count4, align 1, !dbg !834
  %conv = zext i8 %7 to i32, !dbg !833
  %tobool5 = icmp ne i32 %conv, 0, !dbg !833
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !835

if.then6:                                         ; preds = %land.lhs.true3
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !836
  store i32 12303, i32* %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.end7:                                          ; preds = %land.lhs.true3, %if.end
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !839
  %tobool8 = icmp ne %union.acpi_generic_state* %8, null, !dbg !839
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !841

if.then9:                                         ; preds = %if.end7
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !842
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_walk_state* %9) #8, !dbg !842
  store i32 12306, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

if.end10:                                         ; preds = %if.end7
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !845
  %result_count11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 15, !dbg !846
  %11 = load i8, i8* %result_count11, align 1, !dbg !847
  %dec = add i8 %11, -1, !dbg !847
  store i8 %dec, i8* %result_count11, align 1, !dbg !847
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !848
  %result_count12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 15, !dbg !849
  %13 = load i8, i8* %result_count12, align 1, !dbg !849
  %conv13 = zext i8 %13 to i32, !dbg !850
  %rem = urem i32 %conv13, 8, !dbg !851
  store i32 %rem, i32* %index, align 4, !dbg !852
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !853
  %results14 = bitcast %union.acpi_generic_state* %14 to %struct.acpi_result_values*, !dbg !854
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results14, i32 0, i32 5, !dbg !855
  %15 = load i32, i32* %index, align 4, !dbg !856
  %idxprom = zext i32 %15 to i64, !dbg !853
  %arrayidx = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc, i64 0, i64 %idxprom, !dbg !853
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !853
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %object.addr, align 8, !dbg !857
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %17, align 8, !dbg !858
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %object.addr, align 8, !dbg !859
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8, !dbg !861
  %tobool15 = icmp ne %union.acpi_operand_object* %19, null, !dbg !861
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !862

if.then16:                                        ; preds = %if.end10
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !863
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_walk_state* %20) #8, !dbg !863
  store i32 12306, i32* %retval, align 4, !dbg !865
  br label %return, !dbg !865

if.end17:                                         ; preds = %if.end10
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !866
  %results18 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_result_values*, !dbg !867
  %obj_desc19 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results18, i32 0, i32 5, !dbg !868
  %22 = load i32, i32* %index, align 4, !dbg !869
  %idxprom20 = zext i32 %22 to i64, !dbg !866
  %arrayidx21 = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc19, i64 0, i64 %idxprom20, !dbg !866
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx21, align 8, !dbg !870
  %23 = load i32, i32* %index, align 4, !dbg !871
  %cmp = icmp eq i32 %23, 0, !dbg !873
  br i1 %cmp, label %if.then23, label %if.end27, !dbg !874

if.then23:                                        ; preds = %if.end17
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !875
  %call = call i32 @acpi_ds_result_stack_pop(%struct.acpi_walk_state* %24) #8, !dbg !877
  store i32 %call, i32* %status, align 4, !dbg !878
  %25 = load i32, i32* %status, align 4, !dbg !879
  %tobool24 = icmp ne i32 %25, 0, !dbg !879
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !881

if.then25:                                        ; preds = %if.then23
  %26 = load i32, i32* %status, align 4, !dbg !882
  store i32 %26, i32* %retval, align 4, !dbg !884
  br label %return, !dbg !884

if.end26:                                         ; preds = %if.then23
  br label %if.end27, !dbg !885

if.end27:                                         ; preds = %if.end26, %if.end17
  store i32 0, i32* %retval, align 4, !dbg !886
  br label %return, !dbg !886

return:                                           ; preds = %if.end27, %if.then25, %if.then16, %if.then9, %if.then6, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !887
  ret i32 %27, !dbg !887
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_result_stack_pop(%struct.acpi_walk_state* %walk_state) #0 !dbg !888 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !889, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !891, metadata !DIExpression()), !dbg !892
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !893
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 44, !dbg !895
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !895
  %cmp = icmp eq %union.acpi_generic_state* %1, null, !dbg !896
  br i1 %cmp, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %entry
  store i32 12290, i32* %retval, align 4, !dbg !898
  br label %return, !dbg !898

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %result_size = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 14, !dbg !902
  %3 = load i8, i8* %result_size, align 8, !dbg !902
  %conv = zext i8 %3 to i32, !dbg !900
  %cmp1 = icmp slt i32 %conv, 8, !dbg !903
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !904

if.then3:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !905
  store i32 12303, i32* %retval, align 4, !dbg !907
  br label %return, !dbg !907

if.end4:                                          ; preds = %if.end
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !908
  %results5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 44, !dbg !909
  %call = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %results5) #8, !dbg !910
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %state, align 8, !dbg !911
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !912
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %5) #8, !dbg !913
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !914
  %result_size6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 14, !dbg !915
  %7 = load i8, i8* %result_size6, align 8, !dbg !916
  %conv7 = zext i8 %7 to i32, !dbg !916
  %sub = sub i32 %conv7, 8, !dbg !916
  %conv8 = trunc i32 %sub to i8, !dbg !916
  store i8 %conv8, i8* %result_size6, align 8, !dbg !916
  store i32 0, i32* %retval, align 4, !dbg !917
  br label %return, !dbg !917

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !918
  ret i32 %8, !dbg !918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object* %object, %struct.acpi_walk_state* %walk_state) #0 !dbg !919 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !922, metadata !DIExpression()), !dbg !923
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata i32* %status, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %index, metadata !930, metadata !DIExpression()), !dbg !931
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !932
  %result_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 15, !dbg !934
  %1 = load i8, i8* %result_count, align 1, !dbg !934
  %conv = zext i8 %1 to i32, !dbg !932
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !935
  %result_size = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 14, !dbg !936
  %3 = load i8, i8* %result_size, align 8, !dbg !936
  %conv1 = zext i8 %3 to i32, !dbg !935
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !937
  br i1 %cmp, label %if.then, label %if.else, !dbg !938

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !939
  store i32 12303, i32* %retval, align 4, !dbg !941
  br label %return, !dbg !941

if.else:                                          ; preds = %entry
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !942
  %result_count3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 15, !dbg !944
  %5 = load i8, i8* %result_count3, align 1, !dbg !944
  %conv4 = zext i8 %5 to i32, !dbg !942
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !945
  %result_size5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 14, !dbg !946
  %7 = load i8, i8* %result_size5, align 8, !dbg !946
  %conv6 = zext i8 %7 to i32, !dbg !945
  %cmp7 = icmp eq i32 %conv4, %conv6, !dbg !947
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !948

if.then9:                                         ; preds = %if.else
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !949
  %call = call i32 @acpi_ds_result_stack_push(%struct.acpi_walk_state* %8) #8, !dbg !951
  store i32 %call, i32* %status, align 4, !dbg !952
  %9 = load i32, i32* %status, align 4, !dbg !953
  %tobool = icmp ne i32 %9, 0, !dbg !953
  br i1 %tobool, label %if.then10, label %if.end, !dbg !955

if.then10:                                        ; preds = %if.then9
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !956
  %10 = load i32, i32* %status, align 4, !dbg !958
  store i32 %10, i32* %retval, align 4, !dbg !959
  br label %return, !dbg !959

if.end:                                           ; preds = %if.then9
  br label %if.end11, !dbg !960

if.end11:                                         ; preds = %if.end, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !961
  %result_count13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 15, !dbg !963
  %12 = load i8, i8* %result_count13, align 1, !dbg !963
  %conv14 = zext i8 %12 to i32, !dbg !961
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !964
  %result_size15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 14, !dbg !965
  %14 = load i8, i8* %result_size15, align 8, !dbg !965
  %conv16 = zext i8 %14 to i32, !dbg !964
  %cmp17 = icmp slt i32 %conv14, %conv16, !dbg !966
  br i1 %cmp17, label %if.end20, label %if.then19, !dbg !967

if.then19:                                        ; preds = %if.end12
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !968
  store i32 12303, i32* %retval, align 4, !dbg !970
  br label %return, !dbg !970

if.end20:                                         ; preds = %if.end12
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !971
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 44, !dbg !972
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !972
  store %union.acpi_generic_state* %16, %union.acpi_generic_state** %state, align 8, !dbg !973
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !974
  %tobool21 = icmp ne %union.acpi_generic_state* %17, null, !dbg !974
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !976

if.then22:                                        ; preds = %if.end20
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !977
  store i32 12303, i32* %retval, align 4, !dbg !979
  br label %return, !dbg !979

if.end23:                                         ; preds = %if.end20
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !980
  %tobool24 = icmp ne %union.acpi_operand_object* %18, null, !dbg !980
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !982

if.then25:                                        ; preds = %if.end23
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !983
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %result_count26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 15, !dbg !983
  %22 = load i8, i8* %result_count26, align 1, !dbg !983
  %conv27 = zext i8 %22 to i32, !dbg !983
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %union.acpi_operand_object* %19, %struct.acpi_walk_state* %20, i32 %conv27) #8, !dbg !983
  store i32 4097, i32* %retval, align 4, !dbg !985
  br label %return, !dbg !985

if.end28:                                         ; preds = %if.end23
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !986
  %result_count29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 15, !dbg !987
  %24 = load i8, i8* %result_count29, align 1, !dbg !987
  %conv30 = zext i8 %24 to i32, !dbg !988
  %rem = urem i32 %conv30, 8, !dbg !989
  store i32 %rem, i32* %index, align 4, !dbg !990
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !991
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !992
  %results31 = bitcast %union.acpi_generic_state* %26 to %struct.acpi_result_values*, !dbg !993
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results31, i32 0, i32 5, !dbg !994
  %27 = load i32, i32* %index, align 4, !dbg !995
  %idxprom = zext i32 %27 to i64, !dbg !992
  %arrayidx = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc, i64 0, i64 %idxprom, !dbg !992
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %arrayidx, align 8, !dbg !996
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !997
  %result_count32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 15, !dbg !998
  %29 = load i8, i8* %result_count32, align 1, !dbg !999
  %inc = add i8 %29, 1, !dbg !999
  store i8 %inc, i8* %result_count32, align 1, !dbg !999
  store i32 0, i32* %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

return:                                           ; preds = %if.end28, %if.then25, %if.then22, %if.then19, %if.then10, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !1001
  ret i32 %30, !dbg !1001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_result_stack_push(%struct.acpi_walk_state* %walk_state) #0 !dbg !1002 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !1005, metadata !DIExpression()), !dbg !1006
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1007
  %result_size = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 14, !dbg !1009
  %1 = load i8, i8* %result_size, align 8, !dbg !1009
  %conv = zext i8 %1 to i32, !dbg !1010
  %add = add i32 %conv, 8, !dbg !1011
  %cmp = icmp ugt i32 %add, 255, !dbg !1012
  br i1 %cmp, label %if.then, label %if.end, !dbg !1013

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1014
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1014
  %result_size2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 14, !dbg !1014
  %4 = load i8, i8* %result_size2, align 8, !dbg !1014
  %conv3 = zext i8 %4 to i32, !dbg !1014
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), %struct.acpi_walk_state* %2, i32 %conv3) #8, !dbg !1014
  store i32 12, i32* %retval, align 4, !dbg !1016
  br label %return, !dbg !1016

if.end:                                           ; preds = %entry
  %call = call %union.acpi_generic_state* @acpi_ut_create_generic_state() #8, !dbg !1017
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %state, align 8, !dbg !1018
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1019
  %tobool = icmp ne %union.acpi_generic_state* %5, null, !dbg !1019
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !1021

if.then4:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end5:                                          ; preds = %if.end
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1024
  %common = bitcast %union.acpi_generic_state* %6 to %struct.acpi_common_state*, !dbg !1025
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 1, !dbg !1026
  store i8 9, i8* %descriptor_type, align 8, !dbg !1027
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1028
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 44, !dbg !1029
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1030
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %results, %union.acpi_generic_state* %8) #8, !dbg !1031
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1032
  %result_size6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 14, !dbg !1033
  %10 = load i8, i8* %result_size6, align 8, !dbg !1034
  %conv7 = zext i8 %10 to i32, !dbg !1034
  %add8 = add i32 %conv7, 8, !dbg !1034
  %conv9 = trunc i32 %add8 to i8, !dbg !1034
  store i8 %conv9, i8* %result_size6, align 8, !dbg !1034
  store i32 0, i32* %retval, align 4, !dbg !1035
  br label %return, !dbg !1035

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1036
  ret i32 %11, !dbg !1036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_obj_stack_push(i8* %object, %struct.acpi_walk_state* %walk_state) #0 !dbg !1037 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca i8*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1042, metadata !DIExpression()), !dbg !1043
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1044
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 5, !dbg !1046
  %1 = load i8, i8* %num_operands, align 1, !dbg !1046
  %conv = zext i8 %1 to i32, !dbg !1044
  %cmp = icmp sge i32 %conv, 8, !dbg !1047
  br i1 %cmp, label %if.then, label %if.end, !dbg !1048

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %object.addr, align 8, !dbg !1049
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1049
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1049
  %num_operands2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 5, !dbg !1049
  %5 = load i8, i8* %num_operands2, align 1, !dbg !1049
  %conv3 = zext i8 %5 to i32, !dbg !1049
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %2, %struct.acpi_walk_state* %3, i32 %conv3) #8, !dbg !1049
  store i32 12, i32* %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %object.addr, align 8, !dbg !1052
  %7 = bitcast i8* %6 to %union.acpi_operand_object*, !dbg !1052
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1053
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 28, !dbg !1054
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1055
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 6, !dbg !1056
  %10 = load i8, i8* %operand_index, align 2, !dbg !1056
  %idxprom = zext i8 %10 to i64, !dbg !1053
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1053
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1057
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1058
  %num_operands4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 5, !dbg !1059
  %12 = load i8, i8* %num_operands4, align 1, !dbg !1060
  %inc = add i8 %12, 1, !dbg !1060
  store i8 %inc, i8* %num_operands4, align 1, !dbg !1060
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1061
  %operand_index5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 6, !dbg !1062
  %14 = load i8, i8* %operand_index5, align 2, !dbg !1063
  %inc6 = add i8 %14, 1, !dbg !1063
  store i8 %inc6, i8* %operand_index5, align 2, !dbg !1063
  store i32 0, i32* %retval, align 4, !dbg !1064
  br label %return, !dbg !1064

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1065
  ret i32 %15, !dbg !1065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_obj_stack_pop(i32 %pop_count, %struct.acpi_walk_state* %walk_state) #0 !dbg !1066 {
entry:
  %retval = alloca i32, align 4
  %pop_count.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %i = alloca i32, align 4
  store i32 %pop_count, i32* %pop_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pop_count.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1073, metadata !DIExpression()), !dbg !1074
  store i32 0, i32* %i, align 4, !dbg !1075
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1078
  %1 = load i32, i32* %pop_count.addr, align 4, !dbg !1080
  %cmp = icmp ult i32 %0, %1, !dbg !1081
  br i1 %cmp, label %for.body, label %for.end, !dbg !1082

for.body:                                         ; preds = %for.cond
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1083
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 5, !dbg !1086
  %3 = load i8, i8* %num_operands, align 1, !dbg !1086
  %conv = zext i8 %3 to i32, !dbg !1083
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1087
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1088

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %pop_count.addr, align 4, !dbg !1089
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1089
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1089
  %num_operands3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 5, !dbg !1089
  %7 = load i8, i8* %num_operands3, align 1, !dbg !1089
  %conv4 = zext i8 %7 to i32, !dbg !1089
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %4, %struct.acpi_walk_state* %5, i32 %conv4) #8, !dbg !1089
  store i32 13, i32* %retval, align 4, !dbg !1091
  br label %return, !dbg !1091

if.end:                                           ; preds = %for.body
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1092
  %num_operands5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 5, !dbg !1093
  %9 = load i8, i8* %num_operands5, align 1, !dbg !1094
  %dec = add i8 %9, -1, !dbg !1094
  store i8 %dec, i8* %num_operands5, align 1, !dbg !1094
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1095
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 28, !dbg !1096
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1097
  %num_operands6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 5, !dbg !1098
  %12 = load i8, i8* %num_operands6, align 1, !dbg !1098
  %idxprom = zext i8 %12 to i64, !dbg !1095
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1095
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1099
  br label %for.inc, !dbg !1100

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !1101
  %inc = add i32 %13, 1, !dbg !1101
  store i32 %inc, i32* %i, align 4, !dbg !1101
  br label %for.cond, !dbg !1102, !llvm.loop !1103

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1105
  br label %return, !dbg !1105

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1106
  ret i32 %14, !dbg !1106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_obj_stack_pop_and_delete(i32 %pop_count, %struct.acpi_walk_state* %walk_state) #0 !dbg !1107 {
entry:
  %pop_count.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %i = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store i32 %pop_count, i32* %pop_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pop_count.addr, metadata !1110, metadata !DIExpression()), !dbg !1111
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1116, metadata !DIExpression()), !dbg !1117
  %0 = load i32, i32* %pop_count.addr, align 4, !dbg !1118
  %cmp = icmp eq i32 %0, 0, !dbg !1120
  br i1 %cmp, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !1122

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pop_count.addr, align 4, !dbg !1124
  %sub = sub i32 %1, 1, !dbg !1126
  store i32 %sub, i32* %i, align 4, !dbg !1127
  br label %for.cond, !dbg !1128

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !1129
  %cmp1 = icmp sge i32 %2, 0, !dbg !1131
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1132

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1133
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 5, !dbg !1136
  %4 = load i8, i8* %num_operands, align 1, !dbg !1136
  %conv = zext i8 %4 to i32, !dbg !1133
  %cmp2 = icmp eq i32 %conv, 0, !dbg !1137
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1138

if.then4:                                         ; preds = %for.body
  br label %for.end, !dbg !1139

if.end5:                                          ; preds = %for.body
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1141
  %num_operands6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 5, !dbg !1142
  %6 = load i8, i8* %num_operands6, align 1, !dbg !1143
  %dec = add i8 %6, -1, !dbg !1143
  store i8 %dec, i8* %num_operands6, align 1, !dbg !1143
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1144
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 28, !dbg !1145
  %8 = load i32, i32* %i, align 4, !dbg !1146
  %idxprom = sext i32 %8 to i64, !dbg !1144
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1144
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1144
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1147
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1148
  %tobool = icmp ne %union.acpi_operand_object* %10, null, !dbg !1148
  br i1 %tobool, label %if.then7, label %if.end14, !dbg !1150

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1151
  %operands8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 28, !dbg !1153
  %12 = load i32, i32* %i, align 4, !dbg !1154
  %idxprom9 = sext i32 %12 to i64, !dbg !1151
  %arrayidx10 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands8, i64 0, i64 %idxprom9, !dbg !1151
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx10, align 8, !dbg !1151
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %13) #8, !dbg !1155
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1156
  %operands11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 28, !dbg !1157
  %15 = load i32, i32* %i, align 4, !dbg !1158
  %idxprom12 = sext i32 %15 to i64, !dbg !1156
  %arrayidx13 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands11, i64 0, i64 %idxprom12, !dbg !1156
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx13, align 8, !dbg !1159
  br label %if.end14, !dbg !1160

if.end14:                                         ; preds = %if.then7, %if.end5
  br label %for.inc, !dbg !1161

for.inc:                                          ; preds = %if.end14
  %16 = load i32, i32* %i, align 4, !dbg !1162
  %dec15 = add i32 %16, -1, !dbg !1162
  store i32 %dec15, i32* %i, align 4, !dbg !1162
  br label %for.cond, !dbg !1163, !llvm.loop !1164

for.end:                                          ; preds = %if.then, %if.then4, %for.cond
  ret void, !dbg !1166
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(%struct.acpi_thread_state* %thread) #0 !dbg !1167 {
entry:
  %retval = alloca %struct.acpi_walk_state*, align 8
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1170, metadata !DIExpression()), !dbg !1171
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1172
  %tobool = icmp ne %struct.acpi_thread_state* %0, null, !dbg !1172
  br i1 %tobool, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %retval, align 8, !dbg !1175
  br label %return, !dbg !1175

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1177
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %1, i32 0, i32 6, !dbg !1178
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state_list, align 8, !dbg !1178
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %retval, align 8, !dbg !1179
  br label %return, !dbg !1179

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %retval, align 8, !dbg !1180
  ret %struct.acpi_walk_state* %3, !dbg !1180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_push_walk_state(%struct.acpi_walk_state* %walk_state, %struct.acpi_thread_state* %thread) #0 !dbg !1181 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1188
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %0, i32 0, i32 6, !dbg !1189
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state_list, align 8, !dbg !1189
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1190
  %next = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 0, !dbg !1191
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %next, align 8, !dbg !1192
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1193
  %4 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1194
  %walk_state_list1 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %4, i32 0, i32 6, !dbg !1195
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %walk_state_list1, align 8, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_walk_state* @acpi_ds_pop_walk_state(%struct.acpi_thread_state* %thread) #0 !dbg !1198 {
entry:
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !1201, metadata !DIExpression()), !dbg !1202
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1203
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %0, i32 0, i32 6, !dbg !1204
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state_list, align 8, !dbg !1204
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1205
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1206
  %tobool = icmp ne %struct.acpi_walk_state* %2, null, !dbg !1206
  br i1 %tobool, label %if.then, label %if.end, !dbg !1208

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1209
  %next = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 0, !dbg !1211
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next, align 8, !dbg !1211
  %5 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1212
  %walk_state_list1 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %5, i32 0, i32 6, !dbg !1213
  store %struct.acpi_walk_state* %4, %struct.acpi_walk_state** %walk_state_list1, align 8, !dbg !1214
  br label %if.end, !dbg !1215

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1216
  ret %struct.acpi_walk_state* %6, !dbg !1216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %owner_id, %union.acpi_parse_object* %origin, %union.acpi_operand_object* %method_desc, %struct.acpi_thread_state* %thread) #0 !dbg !1217 {
entry:
  %retval = alloca %struct.acpi_walk_state*, align 8
  %owner_id.addr = alloca i16, align 2
  %origin.addr = alloca %union.acpi_parse_object*, align 8
  %method_desc.addr = alloca %union.acpi_operand_object*, align 8
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store i16 %owner_id, i16* %owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %owner_id.addr, metadata !1220, metadata !DIExpression()), !dbg !1221
  store %union.acpi_parse_object* %origin, %union.acpi_parse_object** %origin.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %origin.addr, metadata !1222, metadata !DIExpression()), !dbg !1223
  store %union.acpi_operand_object* %method_desc, %union.acpi_operand_object** %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_desc.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !1228, metadata !DIExpression()), !dbg !1229
  %call = call i8* @acpi_os_allocate_zeroed(i64 1128) #8, !dbg !1230
  %0 = bitcast i8* %call to %struct.acpi_walk_state*, !dbg !1230
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1231
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1232
  %tobool = icmp ne %struct.acpi_walk_state* %1, null, !dbg !1232
  br i1 %tobool, label %if.end, label %if.then, !dbg !1234

if.then:                                          ; preds = %entry
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %retval, align 8, !dbg !1235
  br label %return, !dbg !1235

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1237
  %descriptor_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 1, !dbg !1238
  store i8 12, i8* %descriptor_type, align 8, !dbg !1239
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !1240
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1241
  %method_desc1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 37, !dbg !1242
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %method_desc1, align 8, !dbg !1243
  %5 = load i16, i16* %owner_id.addr, align 2, !dbg !1244
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1245
  %owner_id2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 7, !dbg !1246
  store i16 %5, i16* %owner_id2, align 8, !dbg !1247
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %origin.addr, align 8, !dbg !1248
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1249
  %origin3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 42, !dbg !1250
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %origin3, align 8, !dbg !1251
  %9 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1252
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1253
  %thread4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 49, !dbg !1254
  store %struct.acpi_thread_state* %9, %struct.acpi_thread_state** %thread4, align 8, !dbg !1255
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %origin.addr, align 8, !dbg !1256
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1257
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 21, !dbg !1258
  %start_op = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 5, !dbg !1259
  store %union.acpi_parse_object* %11, %union.acpi_parse_object** %start_op, align 8, !dbg !1260
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1261
  call void @acpi_ds_method_data_init(%struct.acpi_walk_state* %13) #8, !dbg !1262
  %14 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1263
  %tobool5 = icmp ne %struct.acpi_thread_state* %14, null, !dbg !1263
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1265

if.then6:                                         ; preds = %if.end
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1266
  %16 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1268
  call void @acpi_ds_push_walk_state(%struct.acpi_walk_state* %15, %struct.acpi_thread_state* %16) #8, !dbg !1269
  br label %if.end7, !dbg !1270

if.end7:                                          ; preds = %if.then6, %if.end
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1271
  store %struct.acpi_walk_state* %17, %struct.acpi_walk_state** %retval, align 8, !dbg !1271
  br label %return, !dbg !1271

return:                                           ; preds = %if.end7, %if.then
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %retval, align 8, !dbg !1272
  ret %struct.acpi_walk_state* %18, !dbg !1272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1273 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1277, metadata !DIExpression()), !dbg !1282
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1286, metadata !DIExpression()), !dbg !1287
  %0 = load i64, i64* %size.addr, align 8, !dbg !1288
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1289, metadata !DIExpression()), !dbg !1290
  br label %do.body, !dbg !1290

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1291, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1295, metadata !DIExpression()), !dbg !1294
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1294
  %conv = zext i1 %cmp to i32, !dbg !1294
  store i32 1, i32* %tmp, align 4, !dbg !1294
  %1 = load i32, i32* %tmp, align 4, !dbg !1294
  %call = call i64 @arch_local_save_flags() #8, !dbg !1296
  store i64 %call, i64* %_flags, align 8, !dbg !1296
  br label %do.end, !dbg !1296

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1297, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1300, metadata !DIExpression()), !dbg !1299
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1299
  %conv6 = zext i1 %cmp5 to i32, !dbg !1299
  store i32 1, i32* %tmp7, align 4, !dbg !1299
  %2 = load i32, i32* %tmp7, align 4, !dbg !1299
  %3 = load i64, i64* %_flags, align 8, !dbg !1301
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1302
  %and.i = and i64 %4, 512, !dbg !1303
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1304
  %lnot.i = xor i1 %tobool.i, true, !dbg !1304
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1304
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1301
  %5 = load i32, i32* %tmp8, align 4, !dbg !1301
  store i32 %5, i32* %tmp1, align 4, !dbg !1296
  %6 = load i32, i32* %tmp1, align 4, !dbg !1290
  %tobool = icmp ne i32 %6, 0, !dbg !1305
  %7 = zext i1 %tobool to i64, !dbg !1305
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1305
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1306
  ret i8* %call10, !dbg !1307
}

; Function Attrs: noredzone
declare dso_local void @acpi_ds_method_data_init(%struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, %struct.acpi_namespace_node* %method_node, i8* %aml_start, i32 %aml_length, %struct.acpi_evaluate_info* %info, i8 zeroext %pass_number) #0 !dbg !1308 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %method_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %aml_start.addr = alloca i8*, align 8
  %aml_length.addr = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %pass_number.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %parser_state = alloca %struct.acpi_parse_state*, align 8
  %extra_op = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  store %struct.acpi_namespace_node* %method_node, %struct.acpi_namespace_node** %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node.addr, metadata !1380, metadata !DIExpression()), !dbg !1381
  store i8* %aml_start, i8** %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_start.addr, metadata !1382, metadata !DIExpression()), !dbg !1383
  store i32 %aml_length, i32* %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aml_length.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  store i8 %pass_number, i8* %pass_number.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pass_number.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state, metadata !1392, metadata !DIExpression()), !dbg !1394
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1395
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 21, !dbg !1396
  store %struct.acpi_parse_state* %parser_state1, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1394
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %extra_op, metadata !1397, metadata !DIExpression()), !dbg !1398
  %1 = load i8*, i8** %aml_start.addr, align 8, !dbg !1399
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1400
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 21, !dbg !1401
  %aml_start3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state2, i32 0, i32 0, !dbg !1402
  store i8* %1, i8** %aml_start3, align 8, !dbg !1403
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1404
  %parser_state4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 21, !dbg !1405
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state4, i32 0, i32 1, !dbg !1406
  store i8* %1, i8** %aml, align 8, !dbg !1407
  %4 = load i8*, i8** %aml_start.addr, align 8, !dbg !1408
  %5 = load i32, i32* %aml_length.addr, align 4, !dbg !1409
  %idx.ext = zext i32 %5 to i64, !dbg !1410
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1410
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1411
  %parser_state5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 21, !dbg !1412
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state5, i32 0, i32 4, !dbg !1413
  store i8* %add.ptr, i8** %pkg_end, align 8, !dbg !1414
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1415
  %parser_state6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 21, !dbg !1416
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state6, i32 0, i32 2, !dbg !1417
  store i8* %add.ptr, i8** %aml_end, align 8, !dbg !1418
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1419
  %next_op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 48, !dbg !1420
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %next_op, align 8, !dbg !1421
  %9 = load i8, i8* %pass_number.addr, align 1, !dbg !1422
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1423
  %pass_number7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 12, !dbg !1424
  store i8 %9, i8* %pass_number7, align 2, !dbg !1425
  %11 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1426
  %tobool = icmp ne %struct.acpi_evaluate_info* %11, null, !dbg !1426
  br i1 %tobool, label %if.then, label %if.end, !dbg !1428

if.then:                                          ; preds = %entry
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1429
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 2, !dbg !1431
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %parameters, align 8, !dbg !1431
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1432
  %params = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 29, !dbg !1433
  store %union.acpi_operand_object** %13, %union.acpi_operand_object*** %params, align 8, !dbg !1434
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1435
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 7, !dbg !1436
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1437
  %caller_return_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 31, !dbg !1438
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %caller_return_desc, align 8, !dbg !1439
  br label %if.end, !dbg !1440

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1441
  %parser_state8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 21, !dbg !1442
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1443
  %call = call i32 @acpi_ps_init_scope(%struct.acpi_parse_state* %parser_state8, %union.acpi_parse_object* %18) #8, !dbg !1444
  store i32 %call, i32* %status, align 4, !dbg !1445
  %19 = load i32, i32* %status, align 4, !dbg !1446
  %tobool9 = icmp ne i32 %19, 0, !dbg !1446
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1448

if.then10:                                        ; preds = %if.end
  %20 = load i32, i32* %status, align 4, !dbg !1449
  store i32 %20, i32* %retval, align 4, !dbg !1449
  br label %return, !dbg !1449

if.end11:                                         ; preds = %if.end
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !1451
  %tobool12 = icmp ne %struct.acpi_namespace_node* %21, null, !dbg !1451
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !1453

if.then13:                                        ; preds = %if.end11
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !1454
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1456
  %parser_state14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 21, !dbg !1457
  %start_node = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state14, i32 0, i32 6, !dbg !1458
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %start_node, align 8, !dbg !1459
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1460
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 2, !dbg !1461
  store i8 1, i8* %walk_type, align 1, !dbg !1462
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !1463
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1464
  %method_node15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 38, !dbg !1465
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %method_node15, align 8, !dbg !1466
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !1467
  %call16 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %27) #8, !dbg !1468
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1469
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 37, !dbg !1470
  store %union.acpi_operand_object* %call16, %union.acpi_operand_object** %method_desc, align 8, !dbg !1471
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !1472
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1473
  %call17 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %29, i32 8, %struct.acpi_walk_state* %30) #8, !dbg !1474
  store i32 %call17, i32* %status, align 4, !dbg !1475
  %31 = load i32, i32* %status, align 4, !dbg !1476
  %tobool18 = icmp ne i32 %31, 0, !dbg !1476
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1478

if.then19:                                        ; preds = %if.then13
  %32 = load i32, i32* %status, align 4, !dbg !1479
  store i32 %32, i32* %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end20:                                         ; preds = %if.then13
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1481
  %params21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 29, !dbg !1482
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %params21, align 8, !dbg !1482
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1483
  %call22 = call i32 @acpi_ds_method_data_init_args(%union.acpi_operand_object** %34, i32 7, %struct.acpi_walk_state* %35) #8, !dbg !1484
  store i32 %call22, i32* %status, align 4, !dbg !1485
  %36 = load i32, i32* %status, align 4, !dbg !1486
  %tobool23 = icmp ne i32 %36, 0, !dbg !1486
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1488

if.then24:                                        ; preds = %if.end20
  %37 = load i32, i32* %status, align 4, !dbg !1489
  store i32 %37, i32* %retval, align 4, !dbg !1489
  br label %return, !dbg !1489

if.end25:                                         ; preds = %if.end20
  br label %if.end47, !dbg !1491

if.else:                                          ; preds = %if.end11
  %38 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1492
  %start_op = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %38, i32 0, i32 5, !dbg !1494
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %start_op, align 8, !dbg !1494
  store %union.acpi_parse_object* %39, %union.acpi_parse_object** %extra_op, align 8, !dbg !1495
  br label %while.cond, !dbg !1496

while.cond:                                       ; preds = %while.body, %if.else
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %extra_op, align 8, !dbg !1497
  %tobool26 = icmp ne %union.acpi_parse_object* %40, null, !dbg !1497
  br i1 %tobool26, label %land.rhs, label %land.end, !dbg !1498

land.rhs:                                         ; preds = %while.cond
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %extra_op, align 8, !dbg !1499
  %common = bitcast %union.acpi_parse_object* %41 to %struct.acpi_parse_obj_common*, !dbg !1500
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !1501
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1501
  %tobool27 = icmp ne %struct.acpi_namespace_node* %42, null, !dbg !1502
  %lnot = xor i1 %tobool27, true, !dbg !1502
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1503
  br i1 %43, label %while.body, label %while.end, !dbg !1496

while.body:                                       ; preds = %land.end
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %extra_op, align 8, !dbg !1504
  %common28 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !1506
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common28, i32 0, i32 0, !dbg !1507
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1507
  store %union.acpi_parse_object* %45, %union.acpi_parse_object** %extra_op, align 8, !dbg !1508
  br label %while.cond, !dbg !1496, !llvm.loop !1509

while.end:                                        ; preds = %land.end
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %extra_op, align 8, !dbg !1511
  %tobool29 = icmp ne %union.acpi_parse_object* %46, null, !dbg !1511
  br i1 %tobool29, label %if.else32, label %if.then30, !dbg !1513

if.then30:                                        ; preds = %while.end
  %47 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1514
  %start_node31 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %47, i32 0, i32 6, !dbg !1516
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %start_node31, align 8, !dbg !1517
  br label %if.end36, !dbg !1518

if.else32:                                        ; preds = %while.end
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %extra_op, align 8, !dbg !1519
  %common33 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1521
  %node34 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common33, i32 0, i32 6, !dbg !1522
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node34, align 8, !dbg !1522
  %50 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1523
  %start_node35 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %50, i32 0, i32 6, !dbg !1524
  store %struct.acpi_namespace_node* %49, %struct.acpi_namespace_node** %start_node35, align 8, !dbg !1525
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then30
  %51 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1526
  %start_node37 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %51, i32 0, i32 6, !dbg !1528
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node37, align 8, !dbg !1528
  %tobool38 = icmp ne %struct.acpi_namespace_node* %52, null, !dbg !1526
  br i1 %tobool38, label %if.then39, label %if.end46, !dbg !1529

if.then39:                                        ; preds = %if.end36
  %53 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1530
  %start_node40 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %53, i32 0, i32 6, !dbg !1532
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node40, align 8, !dbg !1532
  %55 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state, align 8, !dbg !1533
  %start_node41 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %55, i32 0, i32 6, !dbg !1534
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node41, align 8, !dbg !1534
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %56, i32 0, i32 2, !dbg !1535
  %57 = load i8, i8* %type, align 1, !dbg !1535
  %conv = zext i8 %57 to i32, !dbg !1533
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1536
  %call42 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %54, i32 %conv, %struct.acpi_walk_state* %58) #8, !dbg !1537
  store i32 %call42, i32* %status, align 4, !dbg !1538
  %59 = load i32, i32* %status, align 4, !dbg !1539
  %tobool43 = icmp ne i32 %59, 0, !dbg !1539
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1541

if.then44:                                        ; preds = %if.then39
  %60 = load i32, i32* %status, align 4, !dbg !1542
  store i32 %60, i32* %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end45:                                         ; preds = %if.then39
  br label %if.end46, !dbg !1544

if.end46:                                         ; preds = %if.end45, %if.end36
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end25
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1545
  %62 = load i8, i8* %pass_number.addr, align 1, !dbg !1546
  %conv48 = zext i8 %62 to i32, !dbg !1546
  %call49 = call i32 @acpi_ds_init_callbacks(%struct.acpi_walk_state* %61, i32 %conv48) #8, !dbg !1547
  store i32 %call49, i32* %status, align 4, !dbg !1548
  %63 = load i32, i32* %status, align 4, !dbg !1549
  store i32 %63, i32* %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

return:                                           ; preds = %if.end47, %if.then44, %if.then24, %if.then19, %if.then10
  %64 = load i32, i32* %retval, align 4, !dbg !1550
  ret i32 %64, !dbg !1550
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_init_scope(%struct.acpi_parse_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_data_init_args(%union.acpi_operand_object**, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_callbacks(%struct.acpi_walk_state*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %walk_state) #0 !dbg !1551 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !1556, metadata !DIExpression()), !dbg !1557
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1558
  %tobool = icmp ne %struct.acpi_walk_state* %0, null, !dbg !1558
  br i1 %tobool, label %if.end, label %if.then, !dbg !1560

if.then:                                          ; preds = %entry
  br label %return, !dbg !1561

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1563
  %descriptor_type = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 1, !dbg !1565
  %2 = load i8, i8* %descriptor_type, align 8, !dbg !1565
  %conv = zext i8 %2 to i32, !dbg !1563
  %cmp = icmp ne i32 %conv, 12, !dbg !1566
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1567

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1568
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 681, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), %struct.acpi_walk_state* %3) #8, !dbg !1568
  br label %return, !dbg !1570

if.end3:                                          ; preds = %if.end
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1571
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 21, !dbg !1573
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 7, !dbg !1574
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !1574
  %tobool4 = icmp ne %union.acpi_generic_state* %5, null, !dbg !1571
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1575

if.then5:                                         ; preds = %if.end3
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1576
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), %struct.acpi_walk_state* %6) #8, !dbg !1576
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1578
  %parser_state6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 21, !dbg !1579
  call void @acpi_ps_cleanup_scope(%struct.acpi_parse_state* %parser_state6) #8, !dbg !1580
  br label %if.end7, !dbg !1581

if.end7:                                          ; preds = %if.then5, %if.end3
  br label %while.cond, !dbg !1582

while.cond:                                       ; preds = %while.body, %if.end7
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1583
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 32, !dbg !1584
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state, align 8, !dbg !1584
  %tobool8 = icmp ne %union.acpi_generic_state* %9, null, !dbg !1582
  br i1 %tobool8, label %while.body, label %while.end, !dbg !1582

while.body:                                       ; preds = %while.cond
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1585
  %control_state9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 32, !dbg !1587
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %control_state9, align 8, !dbg !1587
  store %union.acpi_generic_state* %11, %union.acpi_generic_state** %state, align 8, !dbg !1588
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1589
  %common = bitcast %union.acpi_generic_state* %12 to %struct.acpi_common_state*, !dbg !1590
  %next = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 0, !dbg !1591
  %13 = load i8*, i8** %next, align 8, !dbg !1591
  %14 = bitcast i8* %13 to %union.acpi_generic_state*, !dbg !1589
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1592
  %control_state10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 32, !dbg !1593
  store %union.acpi_generic_state* %14, %union.acpi_generic_state** %control_state10, align 8, !dbg !1594
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1595
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %16) #8, !dbg !1596
  br label %while.cond, !dbg !1582, !llvm.loop !1597

while.end:                                        ; preds = %while.cond
  br label %while.cond11, !dbg !1599

while.cond11:                                     ; preds = %while.body13, %while.end
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1600
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 46, !dbg !1601
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1601
  %tobool12 = icmp ne %union.acpi_generic_state* %18, null, !dbg !1599
  br i1 %tobool12, label %while.body13, label %while.end18, !dbg !1599

while.body13:                                     ; preds = %while.cond11
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1602
  %scope_info14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 46, !dbg !1604
  %20 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info14, align 8, !dbg !1604
  store %union.acpi_generic_state* %20, %union.acpi_generic_state** %state, align 8, !dbg !1605
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1606
  %common15 = bitcast %union.acpi_generic_state* %21 to %struct.acpi_common_state*, !dbg !1607
  %next16 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common15, i32 0, i32 0, !dbg !1608
  %22 = load i8*, i8** %next16, align 8, !dbg !1608
  %23 = bitcast i8* %22 to %union.acpi_generic_state*, !dbg !1606
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1609
  %scope_info17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 46, !dbg !1610
  store %union.acpi_generic_state* %23, %union.acpi_generic_state** %scope_info17, align 8, !dbg !1611
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1612
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %25) #8, !dbg !1613
  br label %while.cond11, !dbg !1599, !llvm.loop !1614

while.end18:                                      ; preds = %while.cond11
  br label %while.cond19, !dbg !1616

while.cond19:                                     ; preds = %while.body21, %while.end18
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1617
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 44, !dbg !1618
  %27 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !1618
  %tobool20 = icmp ne %union.acpi_generic_state* %27, null, !dbg !1616
  br i1 %tobool20, label %while.body21, label %while.end26, !dbg !1616

while.body21:                                     ; preds = %while.cond19
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1619
  %results22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 44, !dbg !1621
  %29 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results22, align 8, !dbg !1621
  store %union.acpi_generic_state* %29, %union.acpi_generic_state** %state, align 8, !dbg !1622
  %30 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1623
  %common23 = bitcast %union.acpi_generic_state* %30 to %struct.acpi_common_state*, !dbg !1624
  %next24 = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common23, i32 0, i32 0, !dbg !1625
  %31 = load i8*, i8** %next24, align 8, !dbg !1625
  %32 = bitcast i8* %31 to %union.acpi_generic_state*, !dbg !1623
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1626
  %results25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 44, !dbg !1627
  store %union.acpi_generic_state* %32, %union.acpi_generic_state** %results25, align 8, !dbg !1628
  %34 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1629
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %34) #8, !dbg !1630
  br label %while.cond19, !dbg !1616, !llvm.loop !1631

while.end26:                                      ; preds = %while.cond19
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1633
  %36 = bitcast %struct.acpi_walk_state* %35 to i8*, !dbg !1633
  call void @acpi_os_free(i8* %36) #8, !dbg !1633
  br label %return, !dbg !1634

return:                                           ; preds = %while.end26, %if.then2, %if.then
  ret void, !dbg !1635
}

; Function Attrs: noredzone
declare dso_local void @acpi_ps_cleanup_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1636 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1639, metadata !DIExpression()), !dbg !1640
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1641
  call void @kfree(i8* %0) #8, !dbg !1642
  ret void, !dbg !1643
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1644 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1651, metadata !DIExpression()), !dbg !1658
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1664, metadata !DIExpression()), !dbg !1665
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1666, metadata !DIExpression()), !dbg !1667
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1668, metadata !DIExpression()), !dbg !1669
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1670, metadata !DIExpression()), !dbg !1674
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1676, metadata !DIExpression()), !dbg !1680
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1682, metadata !DIExpression()), !dbg !1686
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1691, metadata !DIExpression()), !dbg !1692
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1693, metadata !DIExpression()), !dbg !1694
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1695, metadata !DIExpression()), !dbg !1696
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1697, metadata !DIExpression()), !dbg !1698
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1699, metadata !DIExpression()), !dbg !1700
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1701, metadata !DIExpression()), !dbg !1702
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1703, metadata !DIExpression()), !dbg !1704
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1705, metadata !DIExpression()), !dbg !1706
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1707, metadata !DIExpression()), !dbg !1708
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1709, metadata !DIExpression()), !dbg !1710
  %0 = load i64, i64* %size.addr, align 8, !dbg !1711
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1712
  %or = or i32 %1, 256, !dbg !1713
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1714
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1715
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1716

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1717
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1718
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1719

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1720
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1721
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1722
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1723
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1700
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1724
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1725
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1726
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1727
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1728
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1729
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1730
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1730
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1730
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1730
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1730
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1731
  br label %kmalloc.exit, !dbg !1731

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1732
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1733
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1733
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1735

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1736
  br label %kmalloc_index.exit.i, !dbg !1736

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1737
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1739
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1740

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1741
  br label %kmalloc_index.exit.i, !dbg !1741

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1742
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1744
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1745

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1746
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1747
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1748

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1749
  br label %kmalloc_index.exit.i, !dbg !1749

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1750
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1752
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1753

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1754
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1755
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1756

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1757
  br label %kmalloc_index.exit.i, !dbg !1757

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1758
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1760
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1761

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1762
  br label %kmalloc_index.exit.i, !dbg !1762

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1763
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1765
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1766

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1767
  br label %kmalloc_index.exit.i, !dbg !1767

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1768
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1770
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1771

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1772
  br label %kmalloc_index.exit.i, !dbg !1772

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1773
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1775
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1776

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1777
  br label %kmalloc_index.exit.i, !dbg !1777

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1778
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1780
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1781

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1782
  br label %kmalloc_index.exit.i, !dbg !1782

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1783
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1785
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1786

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1787
  br label %kmalloc_index.exit.i, !dbg !1787

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1788
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1790
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1791

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1792
  br label %kmalloc_index.exit.i, !dbg !1792

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1793
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1795
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1796

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1797
  br label %kmalloc_index.exit.i, !dbg !1797

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1798
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1800
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1801

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1802
  br label %kmalloc_index.exit.i, !dbg !1802

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1803
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1805
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1806

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1807
  br label %kmalloc_index.exit.i, !dbg !1807

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1808
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1810
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1811

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1812
  br label %kmalloc_index.exit.i, !dbg !1812

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1813
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1815
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1816

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1817
  br label %kmalloc_index.exit.i, !dbg !1817

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1818
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1820
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1821

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1822
  br label %kmalloc_index.exit.i, !dbg !1822

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1823
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1825
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1826

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1827
  br label %kmalloc_index.exit.i, !dbg !1827

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1828
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1830
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1831

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1832
  br label %kmalloc_index.exit.i, !dbg !1832

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1833
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1835
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1836

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1837
  br label %kmalloc_index.exit.i, !dbg !1837

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1838
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1840
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1841

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1842
  br label %kmalloc_index.exit.i, !dbg !1842

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1843
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1845
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1846

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1847
  br label %kmalloc_index.exit.i, !dbg !1847

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1848
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1850
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1851

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1852
  br label %kmalloc_index.exit.i, !dbg !1852

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1853
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1855
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1856

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1857
  br label %kmalloc_index.exit.i, !dbg !1857

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1858
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1860
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1861

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1862
  br label %kmalloc_index.exit.i, !dbg !1862

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1863
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1865
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1866

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1867
  br label %kmalloc_index.exit.i, !dbg !1867

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1868
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1870
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1871

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1872
  br label %kmalloc_index.exit.i, !dbg !1872

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1873
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1875
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1876

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1877
  br label %kmalloc_index.exit.i, !dbg !1877

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1878, !srcloc !1881
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1882, !srcloc !1885
  unreachable, !dbg !1886

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1887
  store i32 %45, i32* %index.i, align 4, !dbg !1888
  %46 = load i32, i32* %index.i, align 4, !dbg !1889
  %tobool.i = icmp ne i32 %46, 0, !dbg !1889
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1891

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1892
  br label %kmalloc.exit, !dbg !1892

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1893
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1894
  %and.i.i = and i32 %48, 17, !dbg !1894
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1894
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1894
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1894
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1894
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1896

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1897
  br label %kmalloc_type.exit.i, !dbg !1897

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1898
  %and2.i.i = and i32 %49, 1, !dbg !1899
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1898
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1898
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1898
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1900
  br label %kmalloc_type.exit.i, !dbg !1900

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1901
  %idxprom.i = zext i32 %51 to i64, !dbg !1902
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1902
  %52 = load i32, i32* %index.i, align 4, !dbg !1903
  %idxprom6.i = zext i32 %52 to i64, !dbg !1902
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1902
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1902
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1904
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1905
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1906
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1907
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1908
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1908
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1908
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1908
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1908
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1669
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1909
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1910
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1911
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1912
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1913
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1914
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1915
  store i8* %62, i8** %retval.i, align 8, !dbg !1916
  br label %kmalloc.exit, !dbg !1916

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1917
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1918
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1919
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1919
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1919
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1919
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1919
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1920
  br label %kmalloc.exit, !dbg !1920

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1921
  ret i8* %65, !dbg !1922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1923 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1927, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1930, metadata !DIExpression()), !dbg !1929
  %0 = load i64, i64* %__edi, align 8, !dbg !1929
  store i64 %0, i64* %__edi, align 8, !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1931, metadata !DIExpression()), !dbg !1929
  %1 = load i64, i64* %__esi, align 8, !dbg !1929
  store i64 %1, i64* %__esi, align 8, !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1932, metadata !DIExpression()), !dbg !1929
  %2 = load i64, i64* %__edx, align 8, !dbg !1929
  store i64 %2, i64* %__edx, align 8, !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1933, metadata !DIExpression()), !dbg !1929
  %3 = load i64, i64* %__ecx, align 8, !dbg !1929
  store i64 %3, i64* %__ecx, align 8, !dbg !1929
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1934, metadata !DIExpression()), !dbg !1929
  %4 = load i64, i64* %__eax, align 8, !dbg !1929
  store i64 %4, i64* %__eax, align 8, !dbg !1929
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1929
  %6 = call i64 @llvm.read_register.i64(metadata !37), !dbg !1935
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1935, !srcloc !1938
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1935
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1935
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1935
  call void @llvm.write_register.i64(metadata !37, i64 %asmresult1), !dbg !1935
  %8 = load i64, i64* %__eax, align 8, !dbg !1935
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1939, metadata !DIExpression()), !dbg !1941
  store i64 -1, i64* %__mask, align 8, !dbg !1941
  %9 = load i64, i64* %__mask, align 8, !dbg !1941
  store i64 %9, i64* %tmp, align 8, !dbg !1941
  %10 = load i64, i64* %tmp, align 8, !dbg !1941
  %and = and i64 %8, %10, !dbg !1935
  store i64 %and, i64* %__ret, align 8, !dbg !1935
  %11 = load i64, i64* %__ret, align 8, !dbg !1929
  store i64 %11, i64* %tmp2, align 8, !dbg !1942
  %12 = load i64, i64* %tmp2, align 8, !dbg !1929
  ret i64 %12, !dbg !1943
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1944 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1946, metadata !DIExpression()), !dbg !1951
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1953, metadata !DIExpression()), !dbg !1954
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1955, metadata !DIExpression()), !dbg !1956
  %0 = load i64, i64* %size.addr, align 8, !dbg !1957
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1959
  br i1 %1, label %if.then, label %if.end447, !dbg !1960

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1961
  %tobool = icmp ne i64 %2, 0, !dbg !1961
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1964

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1965
  br label %return, !dbg !1965

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1966
  %cmp = icmp ult i64 %3, 4096, !dbg !1968
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1969

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1970
  br label %return, !dbg !1970

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub = sub i64 %4, 1, !dbg !1971
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1971
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1971

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub4 = sub i64 %6, 1, !dbg !1971
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1971
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1971

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub6 = sub i64 %8, 1, !dbg !1971
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1971
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1971

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1971

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub9 = sub i64 %9, 1, !dbg !1971
  %and = and i64 %sub9, -9223372036854775808, !dbg !1971
  %tobool10 = icmp ne i64 %and, 0, !dbg !1971
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1971

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1971

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub13 = sub i64 %10, 1, !dbg !1971
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1971
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1971
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1971

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1971

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub18 = sub i64 %11, 1, !dbg !1971
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1971
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1971
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1971

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1971

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub23 = sub i64 %12, 1, !dbg !1971
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1971
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1971
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1971

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1971

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub28 = sub i64 %13, 1, !dbg !1971
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1971
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1971
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1971

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1971

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub33 = sub i64 %14, 1, !dbg !1971
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1971
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1971
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1971

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1971

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub38 = sub i64 %15, 1, !dbg !1971
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1971
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1971
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1971

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1971

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub43 = sub i64 %16, 1, !dbg !1971
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1971
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1971
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1971

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1971

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub48 = sub i64 %17, 1, !dbg !1971
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1971
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1971
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1971

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1971

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub53 = sub i64 %18, 1, !dbg !1971
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1971
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1971
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1971

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1971

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub58 = sub i64 %19, 1, !dbg !1971
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1971
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1971
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1971

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1971

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub63 = sub i64 %20, 1, !dbg !1971
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1971
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1971
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1971

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1971

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub68 = sub i64 %21, 1, !dbg !1971
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1971
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1971
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1971

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1971

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub73 = sub i64 %22, 1, !dbg !1971
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1971
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1971
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1971

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1971

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub78 = sub i64 %23, 1, !dbg !1971
  %and79 = and i64 %sub78, 562949953421312, !dbg !1971
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1971
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1971

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1971

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub83 = sub i64 %24, 1, !dbg !1971
  %and84 = and i64 %sub83, 281474976710656, !dbg !1971
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1971
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1971

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1971

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub88 = sub i64 %25, 1, !dbg !1971
  %and89 = and i64 %sub88, 140737488355328, !dbg !1971
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1971
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1971

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1971

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub93 = sub i64 %26, 1, !dbg !1971
  %and94 = and i64 %sub93, 70368744177664, !dbg !1971
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1971
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1971

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1971

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub98 = sub i64 %27, 1, !dbg !1971
  %and99 = and i64 %sub98, 35184372088832, !dbg !1971
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1971
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1971

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1971

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub103 = sub i64 %28, 1, !dbg !1971
  %and104 = and i64 %sub103, 17592186044416, !dbg !1971
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1971
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1971

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1971

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub108 = sub i64 %29, 1, !dbg !1971
  %and109 = and i64 %sub108, 8796093022208, !dbg !1971
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1971
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1971

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1971

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub113 = sub i64 %30, 1, !dbg !1971
  %and114 = and i64 %sub113, 4398046511104, !dbg !1971
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1971
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1971

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1971

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub118 = sub i64 %31, 1, !dbg !1971
  %and119 = and i64 %sub118, 2199023255552, !dbg !1971
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1971
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1971

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1971

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub123 = sub i64 %32, 1, !dbg !1971
  %and124 = and i64 %sub123, 1099511627776, !dbg !1971
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1971
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1971

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1971

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub128 = sub i64 %33, 1, !dbg !1971
  %and129 = and i64 %sub128, 549755813888, !dbg !1971
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1971
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1971

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1971

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub133 = sub i64 %34, 1, !dbg !1971
  %and134 = and i64 %sub133, 274877906944, !dbg !1971
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1971
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1971

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1971

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub138 = sub i64 %35, 1, !dbg !1971
  %and139 = and i64 %sub138, 137438953472, !dbg !1971
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1971
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1971

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1971

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub143 = sub i64 %36, 1, !dbg !1971
  %and144 = and i64 %sub143, 68719476736, !dbg !1971
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1971
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1971

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1971

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub148 = sub i64 %37, 1, !dbg !1971
  %and149 = and i64 %sub148, 34359738368, !dbg !1971
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1971
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1971

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1971

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub153 = sub i64 %38, 1, !dbg !1971
  %and154 = and i64 %sub153, 17179869184, !dbg !1971
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1971
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1971

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1971

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub158 = sub i64 %39, 1, !dbg !1971
  %and159 = and i64 %sub158, 8589934592, !dbg !1971
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1971
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1971

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1971

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub163 = sub i64 %40, 1, !dbg !1971
  %and164 = and i64 %sub163, 4294967296, !dbg !1971
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1971
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1971

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1971

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub168 = sub i64 %41, 1, !dbg !1971
  %and169 = and i64 %sub168, 2147483648, !dbg !1971
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1971
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1971

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1971

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub173 = sub i64 %42, 1, !dbg !1971
  %and174 = and i64 %sub173, 1073741824, !dbg !1971
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1971
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1971

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1971

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub178 = sub i64 %43, 1, !dbg !1971
  %and179 = and i64 %sub178, 536870912, !dbg !1971
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1971
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1971

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1971

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub183 = sub i64 %44, 1, !dbg !1971
  %and184 = and i64 %sub183, 268435456, !dbg !1971
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1971
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1971

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1971

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub188 = sub i64 %45, 1, !dbg !1971
  %and189 = and i64 %sub188, 134217728, !dbg !1971
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1971
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1971

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1971

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub193 = sub i64 %46, 1, !dbg !1971
  %and194 = and i64 %sub193, 67108864, !dbg !1971
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1971
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1971

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1971

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub198 = sub i64 %47, 1, !dbg !1971
  %and199 = and i64 %sub198, 33554432, !dbg !1971
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1971
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1971

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1971

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub203 = sub i64 %48, 1, !dbg !1971
  %and204 = and i64 %sub203, 16777216, !dbg !1971
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1971
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1971

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1971

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub208 = sub i64 %49, 1, !dbg !1971
  %and209 = and i64 %sub208, 8388608, !dbg !1971
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1971
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1971

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1971

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub213 = sub i64 %50, 1, !dbg !1971
  %and214 = and i64 %sub213, 4194304, !dbg !1971
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1971
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1971

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1971

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub218 = sub i64 %51, 1, !dbg !1971
  %and219 = and i64 %sub218, 2097152, !dbg !1971
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1971
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1971

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1971

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub223 = sub i64 %52, 1, !dbg !1971
  %and224 = and i64 %sub223, 1048576, !dbg !1971
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1971
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1971

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1971

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub228 = sub i64 %53, 1, !dbg !1971
  %and229 = and i64 %sub228, 524288, !dbg !1971
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1971
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1971

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1971

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub233 = sub i64 %54, 1, !dbg !1971
  %and234 = and i64 %sub233, 262144, !dbg !1971
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1971
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1971

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1971

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub238 = sub i64 %55, 1, !dbg !1971
  %and239 = and i64 %sub238, 131072, !dbg !1971
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1971
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1971

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1971

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub243 = sub i64 %56, 1, !dbg !1971
  %and244 = and i64 %sub243, 65536, !dbg !1971
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1971
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1971

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1971

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub248 = sub i64 %57, 1, !dbg !1971
  %and249 = and i64 %sub248, 32768, !dbg !1971
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1971
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1971

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1971

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub253 = sub i64 %58, 1, !dbg !1971
  %and254 = and i64 %sub253, 16384, !dbg !1971
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1971
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1971

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1971

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub258 = sub i64 %59, 1, !dbg !1971
  %and259 = and i64 %sub258, 8192, !dbg !1971
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1971
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1971

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1971

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub263 = sub i64 %60, 1, !dbg !1971
  %and264 = and i64 %sub263, 4096, !dbg !1971
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1971
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1971

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1971

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub268 = sub i64 %61, 1, !dbg !1971
  %and269 = and i64 %sub268, 2048, !dbg !1971
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1971
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1971

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1971

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub273 = sub i64 %62, 1, !dbg !1971
  %and274 = and i64 %sub273, 1024, !dbg !1971
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1971
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1971

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1971

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub278 = sub i64 %63, 1, !dbg !1971
  %and279 = and i64 %sub278, 512, !dbg !1971
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1971
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1971

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1971

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub283 = sub i64 %64, 1, !dbg !1971
  %and284 = and i64 %sub283, 256, !dbg !1971
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1971
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1971

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1971

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub288 = sub i64 %65, 1, !dbg !1971
  %and289 = and i64 %sub288, 128, !dbg !1971
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1971
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1971

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1971

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub293 = sub i64 %66, 1, !dbg !1971
  %and294 = and i64 %sub293, 64, !dbg !1971
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1971
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1971

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1971

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub298 = sub i64 %67, 1, !dbg !1971
  %and299 = and i64 %sub298, 32, !dbg !1971
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1971
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1971

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1971

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub303 = sub i64 %68, 1, !dbg !1971
  %and304 = and i64 %sub303, 16, !dbg !1971
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1971
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1971

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1971

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub308 = sub i64 %69, 1, !dbg !1971
  %and309 = and i64 %sub308, 8, !dbg !1971
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1971
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1971

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1971

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub313 = sub i64 %70, 1, !dbg !1971
  %and314 = and i64 %sub313, 4, !dbg !1971
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1971
  %71 = zext i1 %tobool315 to i64, !dbg !1971
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1971
  br label %cond.end, !dbg !1971

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1971
  br label %cond.end317, !dbg !1971

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1971
  br label %cond.end319, !dbg !1971

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1971
  br label %cond.end321, !dbg !1971

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1971
  br label %cond.end323, !dbg !1971

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1971
  br label %cond.end325, !dbg !1971

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1971
  br label %cond.end327, !dbg !1971

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1971
  br label %cond.end329, !dbg !1971

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1971
  br label %cond.end331, !dbg !1971

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1971
  br label %cond.end333, !dbg !1971

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1971
  br label %cond.end335, !dbg !1971

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1971
  br label %cond.end337, !dbg !1971

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1971
  br label %cond.end339, !dbg !1971

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1971
  br label %cond.end341, !dbg !1971

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1971
  br label %cond.end343, !dbg !1971

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1971
  br label %cond.end345, !dbg !1971

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1971
  br label %cond.end347, !dbg !1971

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1971
  br label %cond.end349, !dbg !1971

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1971
  br label %cond.end351, !dbg !1971

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1971
  br label %cond.end353, !dbg !1971

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1971
  br label %cond.end355, !dbg !1971

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1971
  br label %cond.end357, !dbg !1971

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1971
  br label %cond.end359, !dbg !1971

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1971
  br label %cond.end361, !dbg !1971

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1971
  br label %cond.end363, !dbg !1971

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1971
  br label %cond.end365, !dbg !1971

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1971
  br label %cond.end367, !dbg !1971

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1971
  br label %cond.end369, !dbg !1971

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1971
  br label %cond.end371, !dbg !1971

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1971
  br label %cond.end373, !dbg !1971

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1971
  br label %cond.end375, !dbg !1971

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1971
  br label %cond.end377, !dbg !1971

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1971
  br label %cond.end379, !dbg !1971

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1971
  br label %cond.end381, !dbg !1971

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1971
  br label %cond.end383, !dbg !1971

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1971
  br label %cond.end385, !dbg !1971

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1971
  br label %cond.end387, !dbg !1971

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1971
  br label %cond.end389, !dbg !1971

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1971
  br label %cond.end391, !dbg !1971

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1971
  br label %cond.end393, !dbg !1971

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1971
  br label %cond.end395, !dbg !1971

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1971
  br label %cond.end397, !dbg !1971

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1971
  br label %cond.end399, !dbg !1971

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1971
  br label %cond.end401, !dbg !1971

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1971
  br label %cond.end403, !dbg !1971

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1971
  br label %cond.end405, !dbg !1971

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1971
  br label %cond.end407, !dbg !1971

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1971
  br label %cond.end409, !dbg !1971

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1971
  br label %cond.end411, !dbg !1971

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1971
  br label %cond.end413, !dbg !1971

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1971
  br label %cond.end415, !dbg !1971

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1971
  br label %cond.end417, !dbg !1971

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1971
  br label %cond.end419, !dbg !1971

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1971
  br label %cond.end421, !dbg !1971

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1971
  br label %cond.end423, !dbg !1971

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1971
  br label %cond.end425, !dbg !1971

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1971
  br label %cond.end427, !dbg !1971

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1971
  br label %cond.end429, !dbg !1971

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1971
  br label %cond.end431, !dbg !1971

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1971
  br label %cond.end433, !dbg !1971

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1971
  br label %cond.end435, !dbg !1971

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1971
  br label %cond.end437, !dbg !1971

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1971
  br label %cond.end440, !dbg !1971

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1971

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1971
  br label %cond.end444, !dbg !1971

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1971
  %sub443 = sub i64 %72, 1, !dbg !1971
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1971
  br label %cond.end444, !dbg !1971

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1971
  %sub446 = sub i32 %cond445, 12, !dbg !1972
  %add = add i32 %sub446, 1, !dbg !1973
  store i32 %add, i32* %retval, align 4, !dbg !1974
  br label %return, !dbg !1974

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1975
  %dec = add i64 %73, -1, !dbg !1975
  store i64 %dec, i64* %size.addr, align 8, !dbg !1975
  %74 = load i64, i64* %size.addr, align 8, !dbg !1976
  %shr = lshr i64 %74, 12, !dbg !1976
  store i64 %shr, i64* %size.addr, align 8, !dbg !1976
  %75 = load i64, i64* %size.addr, align 8, !dbg !1977
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1954
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1978
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1979
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1978, !srcloc !1980
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1978
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1981
  %add.i = add i32 %79, 1, !dbg !1982
  store i32 %add.i, i32* %retval, align 4, !dbg !1983
  br label %return, !dbg !1983

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1984
  ret i32 %80, !dbg !1984
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1985 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1946, metadata !DIExpression()), !dbg !1989
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1953, metadata !DIExpression()), !dbg !1991
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  %0 = load i64, i64* %n.addr, align 8, !dbg !1994
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1991
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1995
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1996
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1995, !srcloc !1980
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1995
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1997
  %add.i = add i32 %4, 1, !dbg !1998
  %sub = sub i32 %add.i, 1, !dbg !1999
  ret i32 %sub, !dbg !2000
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2001 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2007, metadata !DIExpression()), !dbg !2008
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2015
  ret i8* %0, !dbg !2016
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

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
!llvm.named.register.rsp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswstate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !16, !20, !23, !27, !28, !30}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !17, line: 20, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !19, line: 26, baseType: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !29, line: 148, baseType: !7)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 72, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 9)
!37 = !{!"rsp"}
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"Code Model", i32 2}
!42 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!43 = distinct !DISubprogram(name: "acpi_ds_result_pop", scope: !3, file: !3, line: 38, type: !44, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!44 = !DISubroutineType(types: !45)
!45 = !{!14, !46, !169}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !49, line: 367, size: 576, elements: !50)
!49 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !65, !78, !89, !125, !138, !147, !458, !475, !490, !503, !581, !593, !607, !617, !635, !657, !676, !695, !714, !727, !753, !770, !783, !797, !806}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !48, file: !49, line: 368, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !49, line: 73, size: 128, elements: !53)
!53 = !{!54, !55, !59, !60, !64}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !49, line: 74, baseType: !47, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !49, line: 74, baseType: !56, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !49, line: 74, baseType: !56, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !49, line: 74, baseType: !61, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !49, line: 74, baseType: !56, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !48, file: !49, line: 369, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !49, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !49, line: 77, baseType: !47, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !49, line: 77, baseType: !56, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !49, line: 77, baseType: !56, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !49, line: 77, baseType: !61, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !49, line: 77, baseType: !56, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !49, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !49, line: 78, baseType: !24, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !48, file: !49, line: 370, baseType: !79, size: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !49, line: 93, size: 256, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !49, line: 94, baseType: !47, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !49, line: 94, baseType: !56, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !49, line: 94, baseType: !56, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !49, line: 94, baseType: !61, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !49, line: 94, baseType: !56, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !49, line: 94, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !49, line: 94, baseType: !16, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !48, file: !49, line: 371, baseType: !90, size: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !49, line: 97, size: 384, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !99, !100, !101, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !49, line: 98, baseType: !47, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !49, line: 98, baseType: !56, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !49, line: 98, baseType: !56, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !49, line: 98, baseType: !61, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !49, line: 98, baseType: !56, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !90, file: !49, line: 98, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !90, file: !49, line: 98, baseType: !16, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !90, file: !49, line: 99, baseType: !16, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !90, file: !49, line: 100, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !49, line: 101, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !105, line: 133, size: 384, elements: !106)
!105 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108, !109, !110, !111, !120, !121, !122, !123}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !104, file: !105, line: 134, baseType: !47, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !105, line: 135, baseType: !56, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !105, line: 136, baseType: !56, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !105, line: 137, baseType: !61, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 138, baseType: !112, size: 32, offset: 96)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !113, line: 327, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !112, file: !113, line: 328, baseType: !16, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !112, file: !113, line: 329, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !105, line: 139, baseType: !103, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !104, file: !105, line: 140, baseType: !103, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !104, file: !105, line: 141, baseType: !103, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !104, file: !105, line: 142, baseType: !124, size: 16, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !61)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !48, file: !49, line: 372, baseType: !126, size: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !49, line: 104, size: 384, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !49, line: 105, baseType: !47, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !49, line: 105, baseType: !56, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !49, line: 105, baseType: !56, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !49, line: 105, baseType: !61, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !49, line: 105, baseType: !56, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !49, line: 105, baseType: !103, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !126, file: !49, line: 106, baseType: !46, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !49, line: 107, baseType: !98, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !49, line: 108, baseType: !16, size: 32, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !126, file: !49, line: 109, baseType: !16, size: 32, offset: 352)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !48, file: !49, line: 373, baseType: !139, size: 192)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !49, line: 118, size: 192, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !49, line: 119, baseType: !47, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !49, line: 119, baseType: !56, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !49, line: 119, baseType: !56, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !49, line: 119, baseType: !61, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !49, line: 119, baseType: !56, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !139, file: !49, line: 119, baseType: !27, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !48, file: !49, line: 374, baseType: !148, size: 448)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !49, line: 143, size: 448, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !455, !456, !457}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !148, file: !49, line: 144, baseType: !47, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !49, line: 144, baseType: !56, size: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !49, line: 144, baseType: !56, size: 8, offset: 72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !148, file: !49, line: 144, baseType: !61, size: 16, offset: 80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !49, line: 144, baseType: !56, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !148, file: !49, line: 144, baseType: !56, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !148, file: !49, line: 145, baseType: !56, size: 8, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !148, file: !49, line: 146, baseType: !56, size: 8, offset: 120)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !148, file: !49, line: 147, baseType: !47, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !148, file: !49, line: 148, baseType: !47, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !148, file: !49, line: 149, baseType: !98, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !148, file: !49, line: 153, baseType: !162, size: 64, offset: 320)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !49, line: 150, size: 64, elements: !163)
!163 = !{!164, !454}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !162, file: !49, line: 151, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !105, line: 248, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!14, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !171, line: 37, size: 9024, elements: !172)
!171 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !402, !403, !404, !405, !406, !410, !412, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !437, !438, !439, !440, !441, !442, !443, !444, !446, !452}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 38, baseType: !169, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !171, line: 39, baseType: !56, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !170, file: !171, line: 40, baseType: !56, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !170, file: !171, line: 41, baseType: !61, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !170, file: !171, line: 42, baseType: !56, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !170, file: !171, line: 43, baseType: !56, size: 8, offset: 104)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !170, file: !171, line: 44, baseType: !56, size: 8, offset: 112)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !171, line: 45, baseType: !124, size: 16, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !170, file: !171, line: 46, baseType: !56, size: 8, offset: 144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !170, file: !171, line: 47, baseType: !56, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !170, file: !171, line: 48, baseType: !56, size: 8, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !170, file: !171, line: 49, baseType: !56, size: 8, offset: 168)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !170, file: !171, line: 50, baseType: !56, size: 8, offset: 176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !170, file: !171, line: 51, baseType: !56, size: 8, offset: 184)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !170, file: !171, line: 52, baseType: !56, size: 8, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !170, file: !171, line: 53, baseType: !56, size: 8, offset: 200)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !170, file: !171, line: 54, baseType: !98, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !170, file: !171, line: 55, baseType: !16, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !170, file: !171, line: 56, baseType: !16, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !170, file: !171, line: 57, baseType: !16, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !170, file: !171, line: 58, baseType: !16, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !170, file: !171, line: 60, baseType: !195, size: 640, offset: 448)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !105, line: 893, size: 640, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !283, !284, !400, !401}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !195, file: !105, line: 894, baseType: !98, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !195, file: !105, line: 895, baseType: !98, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !195, file: !105, line: 896, baseType: !98, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !195, file: !105, line: 897, baseType: !98, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !195, file: !105, line: 898, baseType: !98, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !195, file: !105, line: 899, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !105, line: 875, size: 1600, elements: !205)
!205 = !{!206, !226, !242}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !204, file: !105, line: 876, baseType: !207, size: 448)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !105, line: 828, size: 448, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !225}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !105, line: 829, baseType: !203, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !105, line: 829, baseType: !56, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !105, line: 829, baseType: !56, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !207, file: !105, line: 829, baseType: !61, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !207, file: !105, line: 829, baseType: !98, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !105, line: 829, baseType: !203, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !105, line: 829, baseType: !103, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !105, line: 829, baseType: !217, size: 64, offset: 320)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !105, line: 716, size: 64, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !217, file: !105, line: 717, baseType: !24, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !217, file: !105, line: 718, baseType: !16, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !217, file: !105, line: 719, baseType: !87, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !217, file: !105, line: 720, baseType: !98, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !105, line: 721, baseType: !87, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !217, file: !105, line: 722, baseType: !203, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !207, file: !105, line: 829, baseType: !56, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !204, file: !105, line: 877, baseType: !227, size: 640)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !105, line: 835, size: 640, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !227, file: !105, line: 836, baseType: !203, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !227, file: !105, line: 836, baseType: !56, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !105, line: 836, baseType: !56, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !227, file: !105, line: 836, baseType: !61, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !227, file: !105, line: 836, baseType: !98, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !105, line: 836, baseType: !203, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !227, file: !105, line: 836, baseType: !103, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !227, file: !105, line: 836, baseType: !217, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !227, file: !105, line: 836, baseType: !56, size: 8, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !227, file: !105, line: 836, baseType: !87, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !227, file: !105, line: 837, baseType: !98, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !227, file: !105, line: 838, baseType: !16, size: 32, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !105, line: 839, baseType: !16, size: 32, offset: 608)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !204, file: !105, line: 878, baseType: !243, size: 1600)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !105, line: 846, size: 1600, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !105, line: 847, baseType: !203, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !105, line: 847, baseType: !56, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !105, line: 847, baseType: !56, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !243, file: !105, line: 847, baseType: !61, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !243, file: !105, line: 847, baseType: !98, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !105, line: 847, baseType: !203, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !105, line: 847, baseType: !103, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !243, file: !105, line: 847, baseType: !217, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !243, file: !105, line: 847, baseType: !56, size: 8, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !243, file: !105, line: 847, baseType: !203, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !243, file: !105, line: 848, baseType: !203, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !243, file: !105, line: 849, baseType: !87, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !243, file: !105, line: 850, baseType: !56, size: 8, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !243, file: !105, line: 851, baseType: !87, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !243, file: !105, line: 852, baseType: !87, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !243, file: !105, line: 853, baseType: !87, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !243, file: !105, line: 854, baseType: !117, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !243, file: !105, line: 855, baseType: !16, size: 32, offset: 928)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !243, file: !105, line: 856, baseType: !16, size: 32, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !243, file: !105, line: 857, baseType: !16, size: 32, offset: 992)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !243, file: !105, line: 858, baseType: !16, size: 32, offset: 1024)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !243, file: !105, line: 859, baseType: !16, size: 32, offset: 1056)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !243, file: !105, line: 860, baseType: !16, size: 32, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !243, file: !105, line: 861, baseType: !16, size: 32, offset: 1120)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !243, file: !105, line: 862, baseType: !16, size: 32, offset: 1152)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !243, file: !105, line: 863, baseType: !16, size: 32, offset: 1184)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !243, file: !105, line: 864, baseType: !16, size: 32, offset: 1216)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !243, file: !105, line: 865, baseType: !16, size: 32, offset: 1248)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !243, file: !105, line: 866, baseType: !16, size: 32, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !243, file: !105, line: 867, baseType: !16, size: 32, offset: 1312)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !243, file: !105, line: 868, baseType: !61, size: 16, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !243, file: !105, line: 869, baseType: !56, size: 8, offset: 1360)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !243, file: !105, line: 870, baseType: !56, size: 8, offset: 1368)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !243, file: !105, line: 871, baseType: !56, size: 8, offset: 1376)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !243, file: !105, line: 872, baseType: !280, size: 160, offset: 1384)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 20)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !195, file: !105, line: 900, baseType: !103, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !195, file: !105, line: 901, baseType: !285, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !105, line: 663, size: 640, elements: !287)
!287 = !{!288, !296, !309, !318, !327, !340, !354, !366, !378}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !286, file: !105, line: 664, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !105, line: 567, size: 128, elements: !290)
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !105, line: 568, baseType: !27, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !105, line: 568, baseType: !56, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !105, line: 568, baseType: !56, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !105, line: 568, baseType: !61, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !105, line: 568, baseType: !61, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !286, file: !105, line: 665, baseType: !297, size: 384)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !105, line: 593, size: 384, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !105, line: 594, baseType: !27, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !105, line: 594, baseType: !56, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !105, line: 594, baseType: !56, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !105, line: 594, baseType: !61, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !105, line: 594, baseType: !61, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !297, file: !105, line: 594, baseType: !61, size: 16, offset: 112)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !297, file: !105, line: 595, baseType: !203, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !297, file: !105, line: 596, baseType: !98, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !297, file: !105, line: 597, baseType: !98, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !297, file: !105, line: 598, baseType: !24, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !286, file: !105, line: 666, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !105, line: 573, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !105, line: 574, baseType: !27, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !105, line: 574, baseType: !56, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !105, line: 574, baseType: !56, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !105, line: 574, baseType: !61, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !105, line: 574, baseType: !61, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !310, file: !105, line: 574, baseType: !47, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !286, file: !105, line: 667, baseType: !319, size: 192)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !105, line: 604, size: 192, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !105, line: 605, baseType: !27, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !105, line: 605, baseType: !56, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !105, line: 605, baseType: !56, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !105, line: 605, baseType: !61, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !105, line: 605, baseType: !61, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !105, line: 605, baseType: !103, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !286, file: !105, line: 668, baseType: !328, size: 448)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !105, line: 608, size: 448, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !105, line: 609, baseType: !27, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !105, line: 609, baseType: !56, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !105, line: 609, baseType: !56, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !105, line: 609, baseType: !61, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !105, line: 609, baseType: !61, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !328, file: !105, line: 609, baseType: !16, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !328, file: !105, line: 610, baseType: !203, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !328, file: !105, line: 611, baseType: !98, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !328, file: !105, line: 612, baseType: !98, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !328, file: !105, line: 613, baseType: !16, size: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !286, file: !105, line: 669, baseType: !341, size: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !105, line: 580, size: 512, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !105, line: 581, baseType: !27, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !105, line: 581, baseType: !56, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !105, line: 581, baseType: !56, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !105, line: 581, baseType: !61, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !105, line: 581, baseType: !61, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !341, file: !105, line: 581, baseType: !16, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !341, file: !105, line: 582, baseType: !47, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !341, file: !105, line: 583, baseType: !47, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !341, file: !105, line: 584, baseType: !169, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !341, file: !105, line: 585, baseType: !27, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !341, file: !105, line: 586, baseType: !16, size: 32, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !286, file: !105, line: 670, baseType: !355, size: 320)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !105, line: 620, size: 320, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !105, line: 621, baseType: !27, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !105, line: 621, baseType: !56, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !105, line: 621, baseType: !56, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !105, line: 621, baseType: !61, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !105, line: 621, baseType: !61, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !355, file: !105, line: 621, baseType: !56, size: 8, offset: 112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !355, file: !105, line: 622, baseType: !169, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !355, file: !105, line: 623, baseType: !47, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !355, file: !105, line: 624, baseType: !24, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !286, file: !105, line: 671, baseType: !367, size: 640)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !105, line: 631, size: 640, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !105, line: 632, baseType: !27, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !105, line: 632, baseType: !56, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !105, line: 632, baseType: !56, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !105, line: 632, baseType: !61, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !105, line: 632, baseType: !61, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !367, file: !105, line: 633, baseType: !375, size: 512, offset: 128)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !286, file: !105, line: 672, baseType: !379, size: 320)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !105, line: 654, size: 320, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !105, line: 655, baseType: !27, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !379, file: !105, line: 655, baseType: !56, size: 8, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !105, line: 655, baseType: !56, size: 8, offset: 72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !379, file: !105, line: 655, baseType: !61, size: 16, offset: 80)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !379, file: !105, line: 655, baseType: !61, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !379, file: !105, line: 655, baseType: !56, size: 8, offset: 112)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !379, file: !105, line: 656, baseType: !103, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !379, file: !105, line: 657, baseType: !47, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !379, file: !105, line: 658, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !105, line: 645, size: 128, elements: !392)
!392 = !{!393, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !391, file: !105, line: 646, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398, !16, !27}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !27)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !391, file: !105, line: 647, baseType: !27, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !195, file: !105, line: 902, baseType: !203, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !195, file: !105, line: 903, baseType: !16, size: 32, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !170, file: !171, line: 61, baseType: !16, size: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !170, file: !171, line: 62, baseType: !16, size: 32, offset: 1120)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !170, file: !171, line: 63, baseType: !61, size: 16, offset: 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !170, file: !171, line: 64, baseType: !56, size: 8, offset: 1168)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !170, file: !171, line: 66, baseType: !407, size: 2688, offset: 1216)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2688, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !170, file: !171, line: 67, baseType: !411, size: 3072, offset: 3904)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, elements: !376)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !170, file: !171, line: 68, baseType: !413, size: 576, offset: 6976)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !35)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !170, file: !171, line: 69, baseType: !46, size: 64, offset: 7552)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !170, file: !171, line: 71, baseType: !98, size: 64, offset: 7616)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !170, file: !171, line: 72, baseType: !46, size: 64, offset: 7680)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !170, file: !171, line: 73, baseType: !285, size: 64, offset: 7744)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !170, file: !171, line: 74, baseType: !103, size: 64, offset: 7808)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !170, file: !171, line: 75, baseType: !47, size: 64, offset: 7872)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !170, file: !171, line: 76, baseType: !103, size: 64, offset: 7936)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !170, file: !171, line: 77, baseType: !203, size: 64, offset: 8000)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !170, file: !171, line: 78, baseType: !47, size: 64, offset: 8064)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !170, file: !171, line: 79, baseType: !103, size: 64, offset: 8128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !170, file: !171, line: 80, baseType: !87, size: 64, offset: 8192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !170, file: !171, line: 81, baseType: !203, size: 64, offset: 8256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !170, file: !171, line: 82, baseType: !427, size: 64, offset: 8320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !105, line: 702, size: 128, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !429, file: !105, line: 706, baseType: !16, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !429, file: !105, line: 707, baseType: !16, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !105, line: 708, baseType: !61, size: 16, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !429, file: !105, line: 709, baseType: !56, size: 8, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !429, file: !105, line: 710, baseType: !56, size: 8, offset: 88)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !105, line: 711, baseType: !56, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !170, file: !171, line: 83, baseType: !203, size: 64, offset: 8384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !170, file: !171, line: 84, baseType: !47, size: 64, offset: 8448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !170, file: !171, line: 85, baseType: !285, size: 64, offset: 8512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !170, file: !171, line: 86, baseType: !47, size: 64, offset: 8576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !170, file: !171, line: 87, baseType: !285, size: 64, offset: 8640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !170, file: !171, line: 88, baseType: !203, size: 64, offset: 8704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !170, file: !171, line: 89, baseType: !203, size: 64, offset: 8768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !170, file: !171, line: 90, baseType: !445, size: 64, offset: 8832)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !170, file: !171, line: 91, baseType: !447, size: 64, offset: 8896)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !105, line: 637, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!14, !169, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !170, file: !171, line: 92, baseType: !453, size: 64, offset: 8960)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !105, line: 641, baseType: !166)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !162, file: !49, line: 152, baseType: !47, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !148, file: !49, line: 155, baseType: !16, size: 32, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !148, file: !49, line: 156, baseType: !124, size: 16, offset: 416)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !148, file: !49, line: 157, baseType: !56, size: 8, offset: 432)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !48, file: !49, line: 375, baseType: !459, size: 576)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !49, line: 122, size: 576, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !49, line: 123, baseType: !47, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !49, line: 123, baseType: !56, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !49, line: 123, baseType: !56, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !49, line: 123, baseType: !61, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !49, line: 123, baseType: !56, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !459, file: !49, line: 123, baseType: !56, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !459, file: !49, line: 124, baseType: !61, size: 16, offset: 112)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !459, file: !49, line: 125, baseType: !27, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !459, file: !49, line: 126, baseType: !24, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !459, file: !49, line: 127, baseType: !445, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !459, file: !49, line: 128, baseType: !47, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !49, line: 129, baseType: !47, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !49, line: 130, baseType: !103, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !459, file: !49, line: 131, baseType: !56, size: 8, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !48, file: !49, line: 376, baseType: !476, size: 448)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !49, line: 134, size: 448, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !489}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !49, line: 135, baseType: !47, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !49, line: 135, baseType: !56, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !49, line: 135, baseType: !56, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !49, line: 135, baseType: !61, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !49, line: 135, baseType: !56, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !49, line: 135, baseType: !56, size: 8, offset: 104)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !49, line: 136, baseType: !103, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !49, line: 137, baseType: !47, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !49, line: 138, baseType: !47, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !49, line: 139, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !24)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !476, file: !49, line: 140, baseType: !16, size: 32, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !48, file: !49, line: 377, baseType: !491, size: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !49, line: 184, size: 320, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !502}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !49, line: 185, baseType: !47, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !49, line: 185, baseType: !56, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !49, line: 185, baseType: !56, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !49, line: 185, baseType: !61, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !49, line: 185, baseType: !56, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !49, line: 185, baseType: !499, size: 128, offset: 128)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !49, line: 185, baseType: !47, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !48, file: !49, line: 378, baseType: !504, size: 384)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !49, line: 187, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !49, line: 188, baseType: !47, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !49, line: 188, baseType: !56, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !49, line: 188, baseType: !56, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !49, line: 188, baseType: !61, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !49, line: 188, baseType: !56, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !49, line: 189, baseType: !499, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !49, line: 189, baseType: !47, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !504, file: !49, line: 189, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !105, line: 480, size: 576, elements: !516)
!516 = !{!517, !518, !519, !520, !528, !543, !575, !576, !577, !578, !579, !580}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !105, line: 481, baseType: !103, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !105, line: 482, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !105, line: 483, baseType: !514, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !515, file: !105, line: 484, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !105, line: 497, size: 256, elements: !523)
!523 = !{!524, !525, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !522, file: !105, line: 498, baseType: !521, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !105, line: 499, baseType: !521, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !522, file: !105, line: 500, baseType: !514, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !522, file: !105, line: 501, baseType: !16, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !515, file: !105, line: 485, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !105, line: 466, size: 320, elements: !531)
!531 = !{!532, !537, !538, !539, !540, !541, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !530, file: !105, line: 467, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !105, line: 459, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !533, file: !105, line: 460, baseType: !56, size: 8)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !533, file: !105, line: 461, baseType: !24, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !530, file: !105, line: 468, baseType: !533, size: 128, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !530, file: !105, line: 469, baseType: !61, size: 16, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !530, file: !105, line: 470, baseType: !56, size: 8, offset: 272)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !530, file: !105, line: 471, baseType: !56, size: 8, offset: 280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !530, file: !105, line: 472, baseType: !56, size: 8, offset: 288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !530, file: !105, line: 473, baseType: !56, size: 8, offset: 296)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !515, file: !105, line: 486, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !105, line: 448, size: 192, elements: !546)
!546 = !{!547, !570, !571, !572, !573, !574}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !545, file: !105, line: 449, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !105, line: 438, size: 64, elements: !549)
!549 = !{!550, !551, !564}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !548, file: !105, line: 439, baseType: !103, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !548, file: !105, line: 440, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !105, line: 419, size: 256, elements: !554)
!554 = !{!555, !560, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !553, file: !105, line: 420, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!16, !398, !16, !27}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !553, file: !105, line: 421, baseType: !27, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !553, file: !105, line: 422, baseType: !103, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !553, file: !105, line: 423, baseType: !56, size: 8, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !553, file: !105, line: 424, baseType: !56, size: 8, offset: 200)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !548, file: !105, line: 441, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !105, line: 429, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !566, file: !105, line: 430, baseType: !103, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !105, line: 431, baseType: !565, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !545, file: !105, line: 450, baseType: !529, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !105, line: 451, baseType: !56, size: 8, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !545, file: !105, line: 452, baseType: !56, size: 8, offset: 136)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !545, file: !105, line: 453, baseType: !56, size: 8, offset: 144)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !545, file: !105, line: 454, baseType: !56, size: 8, offset: 152)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !105, line: 487, baseType: !24, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !515, file: !105, line: 488, baseType: !16, size: 32, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !515, file: !105, line: 489, baseType: !61, size: 16, offset: 480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !515, file: !105, line: 490, baseType: !61, size: 16, offset: 496)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !515, file: !105, line: 491, baseType: !56, size: 8, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !515, file: !105, line: 492, baseType: !56, size: 8, offset: 520)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !48, file: !49, line: 379, baseType: !582, size: 384)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !49, line: 192, size: 384, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !49, line: 193, baseType: !47, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !49, line: 193, baseType: !56, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !49, line: 193, baseType: !56, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !49, line: 193, baseType: !61, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !49, line: 193, baseType: !56, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !582, file: !49, line: 193, baseType: !499, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !582, file: !49, line: 193, baseType: !47, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !582, file: !49, line: 193, baseType: !16, size: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !582, file: !49, line: 194, baseType: !16, size: 32, offset: 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !48, file: !49, line: 380, baseType: !594, size: 384)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !49, line: 197, size: 384, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !49, line: 198, baseType: !47, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !49, line: 198, baseType: !56, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !49, line: 198, baseType: !56, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !49, line: 198, baseType: !61, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !49, line: 198, baseType: !56, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !594, file: !49, line: 200, baseType: !56, size: 8, offset: 104)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !594, file: !49, line: 201, baseType: !56, size: 8, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !594, file: !49, line: 202, baseType: !499, size: 128, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !594, file: !49, line: 202, baseType: !47, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !594, file: !49, line: 202, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !24)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !48, file: !49, line: 381, baseType: !608, size: 320)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !49, line: 205, size: 320, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !49, line: 206, baseType: !47, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !49, line: 206, baseType: !56, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !49, line: 206, baseType: !56, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !49, line: 206, baseType: !61, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !49, line: 206, baseType: !56, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !608, file: !49, line: 206, baseType: !499, size: 128, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !608, file: !49, line: 206, baseType: !47, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !48, file: !49, line: 382, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !49, line: 233, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !49, line: 234, baseType: !47, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !49, line: 234, baseType: !61, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 104)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 120)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !49, line: 234, baseType: !103, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !618, file: !49, line: 234, baseType: !16, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !618, file: !49, line: 234, baseType: !16, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !618, file: !49, line: 234, baseType: !16, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !618, file: !49, line: 234, baseType: !56, size: 8, offset: 296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !618, file: !49, line: 234, baseType: !47, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !48, file: !49, line: 383, baseType: !636, size: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !49, line: 237, size: 576, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !49, line: 238, baseType: !47, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !49, line: 238, baseType: !61, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 120)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !636, file: !49, line: 238, baseType: !103, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !636, file: !49, line: 238, baseType: !16, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !636, file: !49, line: 238, baseType: !16, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !636, file: !49, line: 238, baseType: !16, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !636, file: !49, line: 238, baseType: !56, size: 8, offset: 296)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !636, file: !49, line: 238, baseType: !61, size: 16, offset: 304)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !636, file: !49, line: 239, baseType: !47, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !636, file: !49, line: 240, baseType: !98, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !636, file: !49, line: 241, baseType: !61, size: 16, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !636, file: !49, line: 242, baseType: !98, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !48, file: !49, line: 384, baseType: !658, size: 384)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !49, line: 262, size: 384, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !49, line: 263, baseType: !47, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !49, line: 263, baseType: !61, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !49, line: 263, baseType: !103, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !49, line: 263, baseType: !16, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !49, line: 263, baseType: !16, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !49, line: 263, baseType: !16, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !658, file: !49, line: 263, baseType: !56, size: 8, offset: 304)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !658, file: !49, line: 264, baseType: !47, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !48, file: !49, line: 385, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !49, line: 245, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !49, line: 246, baseType: !47, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !49, line: 246, baseType: !61, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !49, line: 246, baseType: !103, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !49, line: 246, baseType: !16, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !49, line: 246, baseType: !16, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !49, line: 246, baseType: !16, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !49, line: 246, baseType: !56, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !677, file: !49, line: 246, baseType: !47, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !677, file: !49, line: 247, baseType: !47, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !48, file: !49, line: 386, baseType: !696, size: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !49, line: 250, size: 448, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !49, line: 251, baseType: !47, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !49, line: 251, baseType: !61, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !49, line: 251, baseType: !103, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !49, line: 251, baseType: !16, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !49, line: 251, baseType: !16, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !49, line: 251, baseType: !16, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !49, line: 251, baseType: !56, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !696, file: !49, line: 256, baseType: !47, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !696, file: !49, line: 257, baseType: !47, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !48, file: !49, line: 387, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !49, line: 273, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !49, line: 274, baseType: !47, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !49, line: 274, baseType: !56, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !49, line: 274, baseType: !56, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !49, line: 274, baseType: !61, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !49, line: 274, baseType: !56, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !49, line: 274, baseType: !103, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !715, file: !49, line: 275, baseType: !16, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !49, line: 276, baseType: !394, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !49, line: 277, baseType: !27, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !49, line: 278, baseType: !499, size: 128, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !48, file: !49, line: 388, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !49, line: 281, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !743, !744, !745, !751, !752}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !49, line: 282, baseType: !47, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !49, line: 282, baseType: !56, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !49, line: 282, baseType: !56, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !49, line: 282, baseType: !61, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !49, line: 282, baseType: !56, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !728, file: !49, line: 282, baseType: !56, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !728, file: !49, line: 283, baseType: !56, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !728, file: !49, line: 284, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!14, !16, !488, !16, !742, !27, !27}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !49, line: 285, baseType: !103, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !49, line: 286, baseType: !27, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !728, file: !49, line: 287, baseType: !746, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!14, !398, !16, !27, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !728, file: !49, line: 288, baseType: !47, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !49, line: 289, baseType: !47, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !48, file: !49, line: 389, baseType: !754, size: 512)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !49, line: 307, size: 512, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !49, line: 308, baseType: !47, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !49, line: 308, baseType: !56, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !49, line: 308, baseType: !56, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !49, line: 308, baseType: !61, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !49, line: 308, baseType: !56, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !754, file: !49, line: 308, baseType: !56, size: 8, offset: 104)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !754, file: !49, line: 309, baseType: !56, size: 8, offset: 112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !754, file: !49, line: 310, baseType: !56, size: 8, offset: 120)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !754, file: !49, line: 311, baseType: !27, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !49, line: 312, baseType: !103, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !754, file: !49, line: 313, baseType: !46, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !754, file: !49, line: 314, baseType: !98, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !754, file: !49, line: 315, baseType: !98, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !49, line: 316, baseType: !16, size: 32, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !48, file: !49, line: 390, baseType: !771, size: 448)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !49, line: 340, size: 448, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !49, line: 341, baseType: !47, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !49, line: 341, baseType: !56, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !49, line: 341, baseType: !56, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !49, line: 341, baseType: !61, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !49, line: 341, baseType: !56, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !771, file: !49, line: 341, baseType: !103, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !771, file: !49, line: 342, baseType: !103, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !771, file: !49, line: 343, baseType: !27, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !771, file: !49, line: 344, baseType: !98, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !771, file: !49, line: 345, baseType: !16, size: 32, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !48, file: !49, line: 391, baseType: !784, size: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !49, line: 350, size: 256, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !796}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !49, line: 351, baseType: !47, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !49, line: 351, baseType: !56, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !49, line: 351, baseType: !56, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !49, line: 351, baseType: !61, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !49, line: 351, baseType: !56, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !784, file: !49, line: 351, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !398, !27}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !784, file: !49, line: 352, baseType: !27, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !48, file: !49, line: 392, baseType: !798, size: 192)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !49, line: 357, size: 192, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !798, file: !49, line: 358, baseType: !47, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !798, file: !49, line: 358, baseType: !56, size: 8, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !49, line: 358, baseType: !56, size: 8, offset: 72)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !798, file: !49, line: 358, baseType: !61, size: 16, offset: 80)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !49, line: 358, baseType: !56, size: 8, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !49, line: 358, baseType: !47, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !49, line: 399, baseType: !104, size: 384)
!807 = !{}
!808 = !DILocalVariable(name: "object", arg: 1, scope: !43, file: !3, line: 38, type: !46)
!809 = !DILocation(line: 38, column: 48, scope: !43)
!810 = !DILocalVariable(name: "walk_state", arg: 2, scope: !43, file: !3, line: 39, type: !169)
!811 = !DILocation(line: 39, column: 30, scope: !43)
!812 = !DILocalVariable(name: "index", scope: !43, file: !3, line: 41, type: !16)
!813 = !DILocation(line: 41, column: 6, scope: !43)
!814 = !DILocalVariable(name: "state", scope: !43, file: !3, line: 42, type: !285)
!815 = !DILocation(line: 42, column: 28, scope: !43)
!816 = !DILocalVariable(name: "status", scope: !43, file: !3, line: 43, type: !14)
!817 = !DILocation(line: 43, column: 14, scope: !43)
!818 = !DILocation(line: 47, column: 10, scope: !43)
!819 = !DILocation(line: 47, column: 22, scope: !43)
!820 = !DILocation(line: 47, column: 8, scope: !43)
!821 = !DILocation(line: 51, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !43, file: !3, line: 51, column: 6)
!823 = !DILocation(line: 51, column: 12, scope: !822)
!824 = !DILocation(line: 51, column: 16, scope: !822)
!825 = !DILocation(line: 51, column: 28, scope: !822)
!826 = !DILocation(line: 51, column: 6, scope: !43)
!827 = !DILocation(line: 52, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 51, column: 42)
!829 = !DILocation(line: 53, column: 3, scope: !828)
!830 = !DILocation(line: 56, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !43, file: !3, line: 56, column: 6)
!832 = !DILocation(line: 56, column: 13, scope: !831)
!833 = !DILocation(line: 56, column: 16, scope: !831)
!834 = !DILocation(line: 56, column: 28, scope: !831)
!835 = !DILocation(line: 56, column: 6, scope: !43)
!836 = !DILocation(line: 57, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !3, line: 56, column: 42)
!838 = !DILocation(line: 58, column: 3, scope: !837)
!839 = !DILocation(line: 63, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !43, file: !3, line: 63, column: 6)
!841 = !DILocation(line: 63, column: 6, scope: !43)
!842 = !DILocation(line: 64, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !3, line: 63, column: 14)
!844 = !DILocation(line: 66, column: 3, scope: !843)
!845 = !DILocation(line: 71, column: 2, scope: !43)
!846 = !DILocation(line: 71, column: 14, scope: !43)
!847 = !DILocation(line: 71, column: 26, scope: !43)
!848 = !DILocation(line: 72, column: 15, scope: !43)
!849 = !DILocation(line: 72, column: 27, scope: !43)
!850 = !DILocation(line: 72, column: 10, scope: !43)
!851 = !DILocation(line: 72, column: 40, scope: !43)
!852 = !DILocation(line: 72, column: 8, scope: !43)
!853 = !DILocation(line: 74, column: 12, scope: !43)
!854 = !DILocation(line: 74, column: 19, scope: !43)
!855 = !DILocation(line: 74, column: 27, scope: !43)
!856 = !DILocation(line: 74, column: 36, scope: !43)
!857 = !DILocation(line: 74, column: 3, scope: !43)
!858 = !DILocation(line: 74, column: 10, scope: !43)
!859 = !DILocation(line: 75, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !43, file: !3, line: 75, column: 6)
!861 = !DILocation(line: 75, column: 7, scope: !860)
!862 = !DILocation(line: 75, column: 6, scope: !43)
!863 = !DILocation(line: 76, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 75, column: 16)
!865 = !DILocation(line: 79, column: 3, scope: !864)
!866 = !DILocation(line: 82, column: 2, scope: !43)
!867 = !DILocation(line: 82, column: 9, scope: !43)
!868 = !DILocation(line: 82, column: 17, scope: !43)
!869 = !DILocation(line: 82, column: 26, scope: !43)
!870 = !DILocation(line: 82, column: 33, scope: !43)
!871 = !DILocation(line: 83, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !43, file: !3, line: 83, column: 6)
!873 = !DILocation(line: 83, column: 12, scope: !872)
!874 = !DILocation(line: 83, column: 6, scope: !43)
!875 = !DILocation(line: 84, column: 37, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 83, column: 18)
!877 = !DILocation(line: 84, column: 12, scope: !876)
!878 = !DILocation(line: 84, column: 10, scope: !876)
!879 = !DILocation(line: 85, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 85, column: 7)
!881 = !DILocation(line: 85, column: 7, scope: !876)
!882 = !DILocation(line: 86, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 85, column: 29)
!884 = !DILocation(line: 86, column: 4, scope: !883)
!885 = !DILocation(line: 88, column: 2, scope: !876)
!886 = !DILocation(line: 95, column: 2, scope: !43)
!887 = !DILocation(line: 96, column: 1, scope: !43)
!888 = distinct !DISubprogram(name: "acpi_ds_result_stack_pop", scope: !3, file: !3, line: 228, type: !167, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!889 = !DILocalVariable(name: "walk_state", arg: 1, scope: !888, file: !3, line: 228, type: !169)
!890 = !DILocation(line: 228, column: 69, scope: !888)
!891 = !DILocalVariable(name: "state", scope: !888, file: !3, line: 230, type: !285)
!892 = !DILocation(line: 230, column: 28, scope: !888)
!893 = !DILocation(line: 236, column: 6, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !3, line: 236, column: 6)
!895 = !DILocation(line: 236, column: 18, scope: !894)
!896 = !DILocation(line: 236, column: 26, scope: !894)
!897 = !DILocation(line: 236, column: 6, scope: !888)
!898 = !DILocation(line: 240, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 236, column: 35)
!900 = !DILocation(line: 243, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !888, file: !3, line: 243, column: 6)
!902 = !DILocation(line: 243, column: 18, scope: !901)
!903 = !DILocation(line: 243, column: 30, scope: !901)
!904 = !DILocation(line: 243, column: 6, scope: !888)
!905 = !DILocation(line: 244, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !3, line: 243, column: 60)
!907 = !DILocation(line: 245, column: 3, scope: !906)
!908 = !DILocation(line: 248, column: 37, scope: !888)
!909 = !DILocation(line: 248, column: 49, scope: !888)
!910 = !DILocation(line: 248, column: 10, scope: !888)
!911 = !DILocation(line: 248, column: 8, scope: !888)
!912 = !DILocation(line: 249, column: 31, scope: !888)
!913 = !DILocation(line: 249, column: 2, scope: !888)
!914 = !DILocation(line: 253, column: 2, scope: !888)
!915 = !DILocation(line: 253, column: 14, scope: !888)
!916 = !DILocation(line: 253, column: 26, scope: !888)
!917 = !DILocation(line: 259, column: 2, scope: !888)
!918 = !DILocation(line: 260, column: 1, scope: !888)
!919 = distinct !DISubprogram(name: "acpi_ds_result_push", scope: !3, file: !3, line: 112, type: !920, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!920 = !DISubroutineType(types: !921)
!921 = !{!14, !47, !169}
!922 = !DILocalVariable(name: "object", arg: 1, scope: !919, file: !3, line: 112, type: !47)
!923 = !DILocation(line: 112, column: 48, scope: !919)
!924 = !DILocalVariable(name: "walk_state", arg: 2, scope: !919, file: !3, line: 113, type: !169)
!925 = !DILocation(line: 113, column: 31, scope: !919)
!926 = !DILocalVariable(name: "state", scope: !919, file: !3, line: 115, type: !285)
!927 = !DILocation(line: 115, column: 28, scope: !919)
!928 = !DILocalVariable(name: "status", scope: !919, file: !3, line: 116, type: !14)
!929 = !DILocation(line: 116, column: 14, scope: !919)
!930 = !DILocalVariable(name: "index", scope: !919, file: !3, line: 117, type: !16)
!931 = !DILocation(line: 117, column: 6, scope: !919)
!932 = !DILocation(line: 121, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !919, file: !3, line: 121, column: 6)
!934 = !DILocation(line: 121, column: 18, scope: !933)
!935 = !DILocation(line: 121, column: 33, scope: !933)
!936 = !DILocation(line: 121, column: 45, scope: !933)
!937 = !DILocation(line: 121, column: 31, scope: !933)
!938 = !DILocation(line: 121, column: 6, scope: !919)
!939 = !DILocation(line: 122, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !933, file: !3, line: 121, column: 58)
!941 = !DILocation(line: 123, column: 3, scope: !940)
!942 = !DILocation(line: 124, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !933, file: !3, line: 124, column: 13)
!944 = !DILocation(line: 124, column: 25, scope: !943)
!945 = !DILocation(line: 124, column: 41, scope: !943)
!946 = !DILocation(line: 124, column: 53, scope: !943)
!947 = !DILocation(line: 124, column: 38, scope: !943)
!948 = !DILocation(line: 124, column: 13, scope: !933)
!949 = !DILocation(line: 128, column: 38, scope: !950)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 124, column: 66)
!951 = !DILocation(line: 128, column: 12, scope: !950)
!952 = !DILocation(line: 128, column: 10, scope: !950)
!953 = !DILocation(line: 129, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 129, column: 7)
!955 = !DILocation(line: 129, column: 7, scope: !950)
!956 = !DILocation(line: 130, column: 4, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 129, column: 29)
!958 = !DILocation(line: 132, column: 12, scope: !957)
!959 = !DILocation(line: 132, column: 4, scope: !957)
!960 = !DILocation(line: 134, column: 2, scope: !950)
!961 = !DILocation(line: 136, column: 8, scope: !962)
!962 = distinct !DILexicalBlock(scope: !919, file: !3, line: 136, column: 6)
!963 = !DILocation(line: 136, column: 20, scope: !962)
!964 = !DILocation(line: 136, column: 35, scope: !962)
!965 = !DILocation(line: 136, column: 47, scope: !962)
!966 = !DILocation(line: 136, column: 33, scope: !962)
!967 = !DILocation(line: 136, column: 6, scope: !919)
!968 = !DILocation(line: 137, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !3, line: 136, column: 61)
!970 = !DILocation(line: 138, column: 3, scope: !969)
!971 = !DILocation(line: 141, column: 10, scope: !919)
!972 = !DILocation(line: 141, column: 22, scope: !919)
!973 = !DILocation(line: 141, column: 8, scope: !919)
!974 = !DILocation(line: 142, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !919, file: !3, line: 142, column: 6)
!976 = !DILocation(line: 142, column: 6, scope: !919)
!977 = !DILocation(line: 143, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 142, column: 14)
!979 = !DILocation(line: 144, column: 3, scope: !978)
!980 = !DILocation(line: 147, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !919, file: !3, line: 147, column: 6)
!982 = !DILocation(line: 147, column: 6, scope: !919)
!983 = !DILocation(line: 148, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 147, column: 15)
!985 = !DILocation(line: 151, column: 3, scope: !984)
!986 = !DILocation(line: 156, column: 15, scope: !919)
!987 = !DILocation(line: 156, column: 27, scope: !919)
!988 = !DILocation(line: 156, column: 10, scope: !919)
!989 = !DILocation(line: 156, column: 40, scope: !919)
!990 = !DILocation(line: 156, column: 8, scope: !919)
!991 = !DILocation(line: 157, column: 35, scope: !919)
!992 = !DILocation(line: 157, column: 2, scope: !919)
!993 = !DILocation(line: 157, column: 9, scope: !919)
!994 = !DILocation(line: 157, column: 17, scope: !919)
!995 = !DILocation(line: 157, column: 26, scope: !919)
!996 = !DILocation(line: 157, column: 33, scope: !919)
!997 = !DILocation(line: 158, column: 2, scope: !919)
!998 = !DILocation(line: 158, column: 14, scope: !919)
!999 = !DILocation(line: 158, column: 26, scope: !919)
!1000 = !DILocation(line: 168, column: 2, scope: !919)
!1001 = !DILocation(line: 169, column: 1, scope: !919)
!1002 = distinct !DISubprogram(name: "acpi_ds_result_stack_push", scope: !3, file: !3, line: 183, type: !167, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1003 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1002, file: !3, line: 183, type: !169)
!1004 = !DILocation(line: 183, column: 70, scope: !1002)
!1005 = !DILocalVariable(name: "state", scope: !1002, file: !3, line: 185, type: !285)
!1006 = !DILocation(line: 185, column: 28, scope: !1002)
!1007 = !DILocation(line: 191, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 191, column: 6)
!1009 = !DILocation(line: 191, column: 25, scope: !1008)
!1010 = !DILocation(line: 191, column: 7, scope: !1008)
!1011 = !DILocation(line: 191, column: 37, scope: !1008)
!1012 = !DILocation(line: 191, column: 67, scope: !1008)
!1013 = !DILocation(line: 191, column: 6, scope: !1002)
!1014 = !DILocation(line: 193, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 192, column: 32)
!1016 = !DILocation(line: 195, column: 3, scope: !1015)
!1017 = !DILocation(line: 198, column: 10, scope: !1002)
!1018 = !DILocation(line: 198, column: 8, scope: !1002)
!1019 = !DILocation(line: 199, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 199, column: 6)
!1021 = !DILocation(line: 199, column: 6, scope: !1002)
!1022 = !DILocation(line: 200, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 199, column: 14)
!1024 = !DILocation(line: 203, column: 2, scope: !1002)
!1025 = !DILocation(line: 203, column: 9, scope: !1002)
!1026 = !DILocation(line: 203, column: 16, scope: !1002)
!1027 = !DILocation(line: 203, column: 32, scope: !1002)
!1028 = !DILocation(line: 204, column: 30, scope: !1002)
!1029 = !DILocation(line: 204, column: 42, scope: !1002)
!1030 = !DILocation(line: 204, column: 51, scope: !1002)
!1031 = !DILocation(line: 204, column: 2, scope: !1002)
!1032 = !DILocation(line: 208, column: 2, scope: !1002)
!1033 = !DILocation(line: 208, column: 14, scope: !1002)
!1034 = !DILocation(line: 208, column: 26, scope: !1002)
!1035 = !DILocation(line: 213, column: 2, scope: !1002)
!1036 = !DILocation(line: 214, column: 1, scope: !1002)
!1037 = distinct !DISubprogram(name: "acpi_ds_obj_stack_push", scope: !3, file: !3, line: 276, type: !1038, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!14, !27, !169}
!1040 = !DILocalVariable(name: "object", arg: 1, scope: !1037, file: !3, line: 276, type: !27)
!1041 = !DILocation(line: 276, column: 30, scope: !1037)
!1042 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1037, file: !3, line: 276, type: !169)
!1043 = !DILocation(line: 276, column: 62, scope: !1037)
!1044 = !DILocation(line: 282, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 282, column: 6)
!1046 = !DILocation(line: 282, column: 18, scope: !1045)
!1047 = !DILocation(line: 282, column: 31, scope: !1045)
!1048 = !DILocation(line: 282, column: 6, scope: !1037)
!1049 = !DILocation(line: 283, column: 3, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 282, column: 57)
!1051 = !DILocation(line: 286, column: 3, scope: !1050)
!1052 = !DILocation(line: 291, column: 52, scope: !1037)
!1053 = !DILocation(line: 291, column: 2, scope: !1037)
!1054 = !DILocation(line: 291, column: 14, scope: !1037)
!1055 = !DILocation(line: 291, column: 23, scope: !1037)
!1056 = !DILocation(line: 291, column: 35, scope: !1037)
!1057 = !DILocation(line: 291, column: 50, scope: !1037)
!1058 = !DILocation(line: 292, column: 2, scope: !1037)
!1059 = !DILocation(line: 292, column: 14, scope: !1037)
!1060 = !DILocation(line: 292, column: 26, scope: !1037)
!1061 = !DILocation(line: 296, column: 2, scope: !1037)
!1062 = !DILocation(line: 296, column: 14, scope: !1037)
!1063 = !DILocation(line: 296, column: 27, scope: !1037)
!1064 = !DILocation(line: 305, column: 2, scope: !1037)
!1065 = !DILocation(line: 306, column: 1, scope: !1037)
!1066 = distinct !DISubprogram(name: "acpi_ds_obj_stack_pop", scope: !3, file: !3, line: 323, type: !1067, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!14, !16, !169}
!1069 = !DILocalVariable(name: "pop_count", arg: 1, scope: !1066, file: !3, line: 323, type: !16)
!1070 = !DILocation(line: 323, column: 27, scope: !1066)
!1071 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1066, file: !3, line: 323, type: !169)
!1072 = !DILocation(line: 323, column: 62, scope: !1066)
!1073 = !DILocalVariable(name: "i", scope: !1066, file: !3, line: 325, type: !16)
!1074 = !DILocation(line: 325, column: 6, scope: !1066)
!1075 = !DILocation(line: 329, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 329, column: 2)
!1077 = !DILocation(line: 329, column: 7, scope: !1076)
!1078 = !DILocation(line: 329, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 329, column: 2)
!1080 = !DILocation(line: 329, column: 18, scope: !1079)
!1081 = !DILocation(line: 329, column: 16, scope: !1079)
!1082 = !DILocation(line: 329, column: 2, scope: !1076)
!1083 = !DILocation(line: 333, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 333, column: 7)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 329, column: 34)
!1086 = !DILocation(line: 333, column: 19, scope: !1084)
!1087 = !DILocation(line: 333, column: 32, scope: !1084)
!1088 = !DILocation(line: 333, column: 7, scope: !1085)
!1089 = !DILocation(line: 334, column: 4, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 333, column: 38)
!1091 = !DILocation(line: 338, column: 4, scope: !1090)
!1092 = !DILocation(line: 343, column: 3, scope: !1085)
!1093 = !DILocation(line: 343, column: 15, scope: !1085)
!1094 = !DILocation(line: 343, column: 27, scope: !1085)
!1095 = !DILocation(line: 344, column: 3, scope: !1085)
!1096 = !DILocation(line: 344, column: 15, scope: !1085)
!1097 = !DILocation(line: 344, column: 24, scope: !1085)
!1098 = !DILocation(line: 344, column: 36, scope: !1085)
!1099 = !DILocation(line: 344, column: 50, scope: !1085)
!1100 = !DILocation(line: 345, column: 2, scope: !1085)
!1101 = !DILocation(line: 329, column: 30, scope: !1079)
!1102 = !DILocation(line: 329, column: 2, scope: !1079)
!1103 = distinct !{!1103, !1082, !1104}
!1104 = !DILocation(line: 345, column: 2, scope: !1076)
!1105 = !DILocation(line: 350, column: 2, scope: !1066)
!1106 = !DILocation(line: 351, column: 1, scope: !1066)
!1107 = distinct !DISubprogram(name: "acpi_ds_obj_stack_pop_and_delete", scope: !3, file: !3, line: 368, type: !1108, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !16, !169}
!1110 = !DILocalVariable(name: "pop_count", arg: 1, scope: !1107, file: !3, line: 368, type: !16)
!1111 = !DILocation(line: 368, column: 38, scope: !1107)
!1112 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1107, file: !3, line: 369, type: !169)
!1113 = !DILocation(line: 369, column: 30, scope: !1107)
!1114 = !DILocalVariable(name: "i", scope: !1107, file: !3, line: 371, type: !20)
!1115 = !DILocation(line: 371, column: 6, scope: !1107)
!1116 = !DILocalVariable(name: "obj_desc", scope: !1107, file: !3, line: 372, type: !47)
!1117 = !DILocation(line: 372, column: 29, scope: !1107)
!1118 = !DILocation(line: 376, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 376, column: 6)
!1120 = !DILocation(line: 376, column: 16, scope: !1119)
!1121 = !DILocation(line: 376, column: 6, scope: !1107)
!1122 = !DILocation(line: 377, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 376, column: 22)
!1124 = !DILocation(line: 380, column: 16, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 380, column: 2)
!1126 = !DILocation(line: 380, column: 26, scope: !1125)
!1127 = !DILocation(line: 380, column: 9, scope: !1125)
!1128 = !DILocation(line: 380, column: 7, scope: !1125)
!1129 = !DILocation(line: 380, column: 31, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 380, column: 2)
!1131 = !DILocation(line: 380, column: 33, scope: !1130)
!1132 = !DILocation(line: 380, column: 2, scope: !1125)
!1133 = !DILocation(line: 381, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 381, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 380, column: 44)
!1136 = !DILocation(line: 381, column: 19, scope: !1134)
!1137 = !DILocation(line: 381, column: 32, scope: !1134)
!1138 = !DILocation(line: 381, column: 7, scope: !1135)
!1139 = !DILocation(line: 382, column: 4, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 381, column: 38)
!1141 = !DILocation(line: 387, column: 3, scope: !1135)
!1142 = !DILocation(line: 387, column: 15, scope: !1135)
!1143 = !DILocation(line: 387, column: 27, scope: !1135)
!1144 = !DILocation(line: 388, column: 14, scope: !1135)
!1145 = !DILocation(line: 388, column: 26, scope: !1135)
!1146 = !DILocation(line: 388, column: 35, scope: !1135)
!1147 = !DILocation(line: 388, column: 12, scope: !1135)
!1148 = !DILocation(line: 389, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 389, column: 7)
!1150 = !DILocation(line: 389, column: 7, scope: !1135)
!1151 = !DILocation(line: 390, column: 29, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 389, column: 17)
!1153 = !DILocation(line: 390, column: 41, scope: !1152)
!1154 = !DILocation(line: 390, column: 50, scope: !1152)
!1155 = !DILocation(line: 390, column: 4, scope: !1152)
!1156 = !DILocation(line: 391, column: 4, scope: !1152)
!1157 = !DILocation(line: 391, column: 16, scope: !1152)
!1158 = !DILocation(line: 391, column: 25, scope: !1152)
!1159 = !DILocation(line: 391, column: 28, scope: !1152)
!1160 = !DILocation(line: 392, column: 3, scope: !1152)
!1161 = !DILocation(line: 393, column: 2, scope: !1135)
!1162 = !DILocation(line: 380, column: 40, scope: !1130)
!1163 = !DILocation(line: 380, column: 2, scope: !1130)
!1164 = distinct !{!1164, !1132, !1165}
!1165 = !DILocation(line: 393, column: 2, scope: !1125)
!1166 = !DILocation(line: 397, column: 1, scope: !1107)
!1167 = distinct !DISubprogram(name: "acpi_ds_get_current_walk_state", scope: !3, file: !3, line: 412, type: !1168, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!169, !445}
!1170 = !DILocalVariable(name: "thread", arg: 1, scope: !1167, file: !3, line: 413, type: !445)
!1171 = !DILocation(line: 413, column: 15, scope: !1167)
!1172 = !DILocation(line: 417, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 417, column: 6)
!1174 = !DILocation(line: 417, column: 6, scope: !1167)
!1175 = !DILocation(line: 418, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 417, column: 15)
!1177 = !DILocation(line: 424, column: 10, scope: !1167)
!1178 = !DILocation(line: 424, column: 18, scope: !1167)
!1179 = !DILocation(line: 424, column: 2, scope: !1167)
!1180 = !DILocation(line: 425, column: 1, scope: !1167)
!1181 = distinct !DISubprogram(name: "acpi_ds_push_walk_state", scope: !3, file: !3, line: 441, type: !1182, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !169, !445}
!1184 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1181, file: !3, line: 441, type: !169)
!1185 = !DILocation(line: 441, column: 49, scope: !1181)
!1186 = !DILocalVariable(name: "thread", arg: 2, scope: !1181, file: !3, line: 442, type: !445)
!1187 = !DILocation(line: 442, column: 30, scope: !1181)
!1188 = !DILocation(line: 446, column: 21, scope: !1181)
!1189 = !DILocation(line: 446, column: 29, scope: !1181)
!1190 = !DILocation(line: 446, column: 2, scope: !1181)
!1191 = !DILocation(line: 446, column: 14, scope: !1181)
!1192 = !DILocation(line: 446, column: 19, scope: !1181)
!1193 = !DILocation(line: 447, column: 28, scope: !1181)
!1194 = !DILocation(line: 447, column: 2, scope: !1181)
!1195 = !DILocation(line: 447, column: 10, scope: !1181)
!1196 = !DILocation(line: 447, column: 26, scope: !1181)
!1197 = !DILocation(line: 449, column: 2, scope: !1181)
!1198 = distinct !DISubprogram(name: "acpi_ds_pop_walk_state", scope: !3, file: !3, line: 466, type: !1168, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1199 = !DILocalVariable(name: "thread", arg: 1, scope: !1198, file: !3, line: 466, type: !445)
!1200 = !DILocation(line: 466, column: 74, scope: !1198)
!1201 = !DILocalVariable(name: "walk_state", scope: !1198, file: !3, line: 468, type: !169)
!1202 = !DILocation(line: 468, column: 26, scope: !1198)
!1203 = !DILocation(line: 472, column: 15, scope: !1198)
!1204 = !DILocation(line: 472, column: 23, scope: !1198)
!1205 = !DILocation(line: 472, column: 13, scope: !1198)
!1206 = !DILocation(line: 474, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 474, column: 6)
!1208 = !DILocation(line: 474, column: 6, scope: !1198)
!1209 = !DILocation(line: 478, column: 29, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 474, column: 18)
!1211 = !DILocation(line: 478, column: 41, scope: !1210)
!1212 = !DILocation(line: 478, column: 3, scope: !1210)
!1213 = !DILocation(line: 478, column: 11, scope: !1210)
!1214 = !DILocation(line: 478, column: 27, scope: !1210)
!1215 = !DILocation(line: 485, column: 2, scope: !1210)
!1216 = !DILocation(line: 487, column: 2, scope: !1198)
!1217 = distinct !DISubprogram(name: "acpi_ds_create_walk_state", scope: !3, file: !3, line: 506, type: !1218, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!169, !124, !203, !47, !445}
!1220 = !DILocalVariable(name: "owner_id", arg: 1, scope: !1217, file: !3, line: 506, type: !124)
!1221 = !DILocation(line: 506, column: 65, scope: !1217)
!1222 = !DILocalVariable(name: "origin", arg: 2, scope: !1217, file: !3, line: 508, type: !203)
!1223 = !DILocation(line: 508, column: 10, scope: !1217)
!1224 = !DILocalVariable(name: "method_desc", arg: 3, scope: !1217, file: !3, line: 510, type: !47)
!1225 = !DILocation(line: 510, column: 10, scope: !1217)
!1226 = !DILocalVariable(name: "thread", arg: 4, scope: !1217, file: !3, line: 512, type: !445)
!1227 = !DILocation(line: 512, column: 10, scope: !1217)
!1228 = !DILocalVariable(name: "walk_state", scope: !1217, file: !3, line: 514, type: !169)
!1229 = !DILocation(line: 514, column: 26, scope: !1217)
!1230 = !DILocation(line: 518, column: 15, scope: !1217)
!1231 = !DILocation(line: 518, column: 13, scope: !1217)
!1232 = !DILocation(line: 519, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 519, column: 6)
!1234 = !DILocation(line: 519, column: 6, scope: !1217)
!1235 = !DILocation(line: 520, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 519, column: 19)
!1237 = !DILocation(line: 523, column: 2, scope: !1217)
!1238 = !DILocation(line: 523, column: 14, scope: !1217)
!1239 = !DILocation(line: 523, column: 30, scope: !1217)
!1240 = !DILocation(line: 524, column: 28, scope: !1217)
!1241 = !DILocation(line: 524, column: 2, scope: !1217)
!1242 = !DILocation(line: 524, column: 14, scope: !1217)
!1243 = !DILocation(line: 524, column: 26, scope: !1217)
!1244 = !DILocation(line: 525, column: 25, scope: !1217)
!1245 = !DILocation(line: 525, column: 2, scope: !1217)
!1246 = !DILocation(line: 525, column: 14, scope: !1217)
!1247 = !DILocation(line: 525, column: 23, scope: !1217)
!1248 = !DILocation(line: 526, column: 23, scope: !1217)
!1249 = !DILocation(line: 526, column: 2, scope: !1217)
!1250 = !DILocation(line: 526, column: 14, scope: !1217)
!1251 = !DILocation(line: 526, column: 21, scope: !1217)
!1252 = !DILocation(line: 527, column: 23, scope: !1217)
!1253 = !DILocation(line: 527, column: 2, scope: !1217)
!1254 = !DILocation(line: 527, column: 14, scope: !1217)
!1255 = !DILocation(line: 527, column: 21, scope: !1217)
!1256 = !DILocation(line: 529, column: 38, scope: !1217)
!1257 = !DILocation(line: 529, column: 2, scope: !1217)
!1258 = !DILocation(line: 529, column: 14, scope: !1217)
!1259 = !DILocation(line: 529, column: 27, scope: !1217)
!1260 = !DILocation(line: 529, column: 36, scope: !1217)
!1261 = !DILocation(line: 534, column: 27, scope: !1217)
!1262 = !DILocation(line: 534, column: 2, scope: !1217)
!1263 = !DILocation(line: 539, column: 6, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 539, column: 6)
!1265 = !DILocation(line: 539, column: 6, scope: !1217)
!1266 = !DILocation(line: 540, column: 27, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 539, column: 14)
!1268 = !DILocation(line: 540, column: 39, scope: !1267)
!1269 = !DILocation(line: 540, column: 3, scope: !1267)
!1270 = !DILocation(line: 541, column: 2, scope: !1267)
!1271 = !DILocation(line: 543, column: 2, scope: !1217)
!1272 = !DILocation(line: 544, column: 1, scope: !1217)
!1273 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1274, file: !1274, line: 55, type: !1275, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1274 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!27, !23}
!1277 = !DILocalVariable(name: "flags", arg: 1, scope: !1278, file: !1279, line: 162, type: !30)
!1278 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1279, file: !1279, line: 162, type: !1280, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1279 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!22, !30}
!1282 = !DILocation(line: 162, column: 67, scope: !1278, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 57, column: 23, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1274, line: 57, column: 23)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !1274, line: 57, column: 23)
!1286 = !DILocalVariable(name: "size", arg: 1, scope: !1273, file: !1274, line: 55, type: !23)
!1287 = !DILocation(line: 55, column: 55, scope: !1273)
!1288 = !DILocation(line: 57, column: 17, scope: !1273)
!1289 = !DILocalVariable(name: "_flags", scope: !1285, file: !1274, line: 57, type: !30)
!1290 = !DILocation(line: 57, column: 23, scope: !1285)
!1291 = !DILocalVariable(name: "__dummy", scope: !1292, file: !1274, line: 57, type: !30)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1274, line: 57, column: 23)
!1293 = distinct !DILexicalBlock(scope: !1285, file: !1274, line: 57, column: 23)
!1294 = !DILocation(line: 57, column: 23, scope: !1292)
!1295 = !DILocalVariable(name: "__dummy2", scope: !1292, file: !1274, line: 57, type: !30)
!1296 = !DILocation(line: 57, column: 23, scope: !1293)
!1297 = !DILocalVariable(name: "__dummy", scope: !1298, file: !1274, line: 57, type: !30)
!1298 = distinct !DILexicalBlock(scope: !1284, file: !1274, line: 57, column: 23)
!1299 = !DILocation(line: 57, column: 23, scope: !1298)
!1300 = !DILocalVariable(name: "__dummy2", scope: !1298, file: !1274, line: 57, type: !30)
!1301 = !DILocation(line: 57, column: 23, scope: !1284)
!1302 = !DILocation(line: 164, column: 11, scope: !1278, inlinedAt: !1283)
!1303 = !DILocation(line: 164, column: 17, scope: !1278, inlinedAt: !1283)
!1304 = !DILocation(line: 164, column: 9, scope: !1278, inlinedAt: !1283)
!1305 = !DILocation(line: 57, column: 23, scope: !1273)
!1306 = !DILocation(line: 57, column: 9, scope: !1273)
!1307 = !DILocation(line: 57, column: 2, scope: !1273)
!1308 = distinct !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !3, file: !3, line: 565, type: !1309, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!14, !169, !203, !103, !98, !16, !1311, !56}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !171, line: 152, size: 704, elements: !1313)
!1313 = !{!1314, !1315, !1317, !1318, !1319, !1320, !1321, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1312, file: !171, line: 155, baseType: !103, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1312, file: !171, line: 156, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1312, file: !171, line: 157, baseType: !46, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1312, file: !171, line: 159, baseType: !103, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1312, file: !171, line: 160, baseType: !47, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1312, file: !171, line: 161, baseType: !87, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1312, file: !171, line: 163, baseType: !1322, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !105, line: 351, size: 56, elements: !1325)
!1325 = !{!1326, !1332, !1341, !1349, !1358}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1324, file: !105, line: 352, baseType: !1327, size: 56)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !105, line: 295, size: 56, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1327, file: !105, line: 296, baseType: !117, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1327, file: !105, line: 297, baseType: !61, size: 16, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1327, file: !105, line: 298, baseType: !56, size: 8, offset: 48)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1324, file: !105, line: 353, baseType: !1333, size: 56)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !105, line: 314, size: 56, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1333, file: !105, line: 315, baseType: !56, size: 8)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1333, file: !105, line: 316, baseType: !56, size: 8, offset: 8)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1333, file: !105, line: 317, baseType: !56, size: 8, offset: 16)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1333, file: !105, line: 318, baseType: !56, size: 8, offset: 24)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1333, file: !105, line: 319, baseType: !56, size: 8, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1333, file: !105, line: 320, baseType: !61, size: 16, offset: 40)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1324, file: !105, line: 354, baseType: !1342, size: 56)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !105, line: 325, size: 56, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1348}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1342, file: !105, line: 326, baseType: !56, size: 8)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1342, file: !105, line: 327, baseType: !56, size: 8, offset: 8)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1342, file: !105, line: 328, baseType: !1347, size: 32, offset: 16)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 32, elements: !118)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1342, file: !105, line: 329, baseType: !56, size: 8, offset: 48)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1324, file: !105, line: 355, baseType: !1350, size: 56)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !105, line: 334, size: 56, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1356, !1357}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1350, file: !105, line: 335, baseType: !56, size: 8)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !105, line: 336, baseType: !56, size: 8, offset: 8)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1350, file: !105, line: 337, baseType: !1355, size: 16, offset: 16)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16, elements: !500)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1350, file: !105, line: 338, baseType: !56, size: 8, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1350, file: !105, line: 339, baseType: !61, size: 16, offset: 40)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1324, file: !105, line: 356, baseType: !1359, size: 56)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !105, line: 342, size: 56, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1359, file: !105, line: 343, baseType: !56, size: 8)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1359, file: !105, line: 344, baseType: !56, size: 8, offset: 8)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1359, file: !105, line: 345, baseType: !56, size: 8, offset: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1359, file: !105, line: 346, baseType: !56, size: 8, offset: 24)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1359, file: !105, line: 347, baseType: !56, size: 8, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1359, file: !105, line: 348, baseType: !61, size: 16, offset: 40)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1312, file: !171, line: 164, baseType: !47, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1312, file: !171, line: 165, baseType: !47, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1312, file: !171, line: 167, baseType: !16, size: 32, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1312, file: !171, line: 168, baseType: !16, size: 32, offset: 608)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1312, file: !171, line: 169, baseType: !61, size: 16, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1312, file: !171, line: 170, baseType: !61, size: 16, offset: 656)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1312, file: !171, line: 171, baseType: !56, size: 8, offset: 672)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1312, file: !171, line: 172, baseType: !56, size: 8, offset: 680)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !171, line: 173, baseType: !56, size: 8, offset: 688)
!1376 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1308, file: !3, line: 565, type: !169)
!1377 = !DILocation(line: 565, column: 47, scope: !1308)
!1378 = !DILocalVariable(name: "op", arg: 2, scope: !1308, file: !3, line: 566, type: !203)
!1379 = !DILocation(line: 566, column: 34, scope: !1308)
!1380 = !DILocalVariable(name: "method_node", arg: 3, scope: !1308, file: !3, line: 567, type: !103)
!1381 = !DILocation(line: 567, column: 37, scope: !1308)
!1382 = !DILocalVariable(name: "aml_start", arg: 4, scope: !1308, file: !3, line: 568, type: !98)
!1383 = !DILocation(line: 568, column: 14, scope: !1308)
!1384 = !DILocalVariable(name: "aml_length", arg: 5, scope: !1308, file: !3, line: 569, type: !16)
!1385 = !DILocation(line: 569, column: 13, scope: !1308)
!1386 = !DILocalVariable(name: "info", arg: 6, scope: !1308, file: !3, line: 570, type: !1311)
!1387 = !DILocation(line: 570, column: 36, scope: !1308)
!1388 = !DILocalVariable(name: "pass_number", arg: 7, scope: !1308, file: !3, line: 570, type: !56)
!1389 = !DILocation(line: 570, column: 45, scope: !1308)
!1390 = !DILocalVariable(name: "status", scope: !1308, file: !3, line: 572, type: !14)
!1391 = !DILocation(line: 572, column: 14, scope: !1308)
!1392 = !DILocalVariable(name: "parser_state", scope: !1308, file: !3, line: 573, type: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1394 = !DILocation(line: 573, column: 27, scope: !1308)
!1395 = !DILocation(line: 573, column: 43, scope: !1308)
!1396 = !DILocation(line: 573, column: 55, scope: !1308)
!1397 = !DILocalVariable(name: "extra_op", scope: !1308, file: !3, line: 574, type: !203)
!1398 = !DILocation(line: 574, column: 27, scope: !1308)
!1399 = !DILocation(line: 579, column: 43, scope: !1308)
!1400 = !DILocation(line: 579, column: 6, scope: !1308)
!1401 = !DILocation(line: 579, column: 18, scope: !1308)
!1402 = !DILocation(line: 579, column: 31, scope: !1308)
!1403 = !DILocation(line: 579, column: 41, scope: !1308)
!1404 = !DILocation(line: 578, column: 2, scope: !1308)
!1405 = !DILocation(line: 578, column: 14, scope: !1308)
!1406 = !DILocation(line: 578, column: 27, scope: !1308)
!1407 = !DILocation(line: 578, column: 31, scope: !1308)
!1408 = !DILocation(line: 581, column: 41, scope: !1308)
!1409 = !DILocation(line: 581, column: 53, scope: !1308)
!1410 = !DILocation(line: 581, column: 51, scope: !1308)
!1411 = !DILocation(line: 581, column: 6, scope: !1308)
!1412 = !DILocation(line: 581, column: 18, scope: !1308)
!1413 = !DILocation(line: 581, column: 31, scope: !1308)
!1414 = !DILocation(line: 581, column: 39, scope: !1308)
!1415 = !DILocation(line: 580, column: 2, scope: !1308)
!1416 = !DILocation(line: 580, column: 14, scope: !1308)
!1417 = !DILocation(line: 580, column: 27, scope: !1308)
!1418 = !DILocation(line: 580, column: 35, scope: !1308)
!1419 = !DILocation(line: 585, column: 2, scope: !1308)
!1420 = !DILocation(line: 585, column: 14, scope: !1308)
!1421 = !DILocation(line: 585, column: 22, scope: !1308)
!1422 = !DILocation(line: 586, column: 28, scope: !1308)
!1423 = !DILocation(line: 586, column: 2, scope: !1308)
!1424 = !DILocation(line: 586, column: 14, scope: !1308)
!1425 = !DILocation(line: 586, column: 26, scope: !1308)
!1426 = !DILocation(line: 588, column: 6, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 588, column: 6)
!1428 = !DILocation(line: 588, column: 6, scope: !1308)
!1429 = !DILocation(line: 589, column: 24, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 588, column: 12)
!1431 = !DILocation(line: 589, column: 30, scope: !1430)
!1432 = !DILocation(line: 589, column: 3, scope: !1430)
!1433 = !DILocation(line: 589, column: 15, scope: !1430)
!1434 = !DILocation(line: 589, column: 22, scope: !1430)
!1435 = !DILocation(line: 590, column: 37, scope: !1430)
!1436 = !DILocation(line: 590, column: 43, scope: !1430)
!1437 = !DILocation(line: 590, column: 3, scope: !1430)
!1438 = !DILocation(line: 590, column: 15, scope: !1430)
!1439 = !DILocation(line: 590, column: 34, scope: !1430)
!1440 = !DILocation(line: 591, column: 2, scope: !1430)
!1441 = !DILocation(line: 593, column: 31, scope: !1308)
!1442 = !DILocation(line: 593, column: 43, scope: !1308)
!1443 = !DILocation(line: 593, column: 57, scope: !1308)
!1444 = !DILocation(line: 593, column: 11, scope: !1308)
!1445 = !DILocation(line: 593, column: 9, scope: !1308)
!1446 = !DILocation(line: 594, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 594, column: 6)
!1448 = !DILocation(line: 594, column: 6, scope: !1308)
!1449 = !DILocation(line: 595, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 594, column: 28)
!1451 = !DILocation(line: 598, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 598, column: 6)
!1453 = !DILocation(line: 598, column: 6, scope: !1308)
!1454 = !DILocation(line: 599, column: 41, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 598, column: 19)
!1456 = !DILocation(line: 599, column: 3, scope: !1455)
!1457 = !DILocation(line: 599, column: 15, scope: !1455)
!1458 = !DILocation(line: 599, column: 28, scope: !1455)
!1459 = !DILocation(line: 599, column: 39, scope: !1455)
!1460 = !DILocation(line: 600, column: 3, scope: !1455)
!1461 = !DILocation(line: 600, column: 15, scope: !1455)
!1462 = !DILocation(line: 600, column: 25, scope: !1455)
!1463 = !DILocation(line: 601, column: 29, scope: !1455)
!1464 = !DILocation(line: 601, column: 3, scope: !1455)
!1465 = !DILocation(line: 601, column: 15, scope: !1455)
!1466 = !DILocation(line: 601, column: 27, scope: !1455)
!1467 = !DILocation(line: 603, column: 35, scope: !1455)
!1468 = !DILocation(line: 603, column: 7, scope: !1455)
!1469 = !DILocation(line: 602, column: 3, scope: !1455)
!1470 = !DILocation(line: 602, column: 15, scope: !1455)
!1471 = !DILocation(line: 602, column: 27, scope: !1455)
!1472 = !DILocation(line: 608, column: 32, scope: !1455)
!1473 = !DILocation(line: 609, column: 11, scope: !1455)
!1474 = !DILocation(line: 608, column: 7, scope: !1455)
!1475 = !DILocation(line: 607, column: 10, scope: !1455)
!1476 = !DILocation(line: 610, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 610, column: 7)
!1478 = !DILocation(line: 610, column: 7, scope: !1455)
!1479 = !DILocation(line: 611, column: 4, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 610, column: 29)
!1481 = !DILocation(line: 616, column: 42, scope: !1455)
!1482 = !DILocation(line: 616, column: 54, scope: !1455)
!1483 = !DILocation(line: 618, column: 14, scope: !1455)
!1484 = !DILocation(line: 616, column: 12, scope: !1455)
!1485 = !DILocation(line: 616, column: 10, scope: !1455)
!1486 = !DILocation(line: 619, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 619, column: 7)
!1488 = !DILocation(line: 619, column: 7, scope: !1455)
!1489 = !DILocation(line: 620, column: 4, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 619, column: 29)
!1491 = !DILocation(line: 622, column: 2, scope: !1455)
!1492 = !DILocation(line: 629, column: 14, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 622, column: 9)
!1494 = !DILocation(line: 629, column: 28, scope: !1493)
!1495 = !DILocation(line: 629, column: 12, scope: !1493)
!1496 = !DILocation(line: 630, column: 3, scope: !1493)
!1497 = !DILocation(line: 630, column: 10, scope: !1493)
!1498 = !DILocation(line: 630, column: 19, scope: !1493)
!1499 = !DILocation(line: 630, column: 23, scope: !1493)
!1500 = !DILocation(line: 630, column: 33, scope: !1493)
!1501 = !DILocation(line: 630, column: 40, scope: !1493)
!1502 = !DILocation(line: 630, column: 22, scope: !1493)
!1503 = !DILocation(line: 0, scope: !1493)
!1504 = !DILocation(line: 631, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 630, column: 46)
!1506 = !DILocation(line: 631, column: 25, scope: !1505)
!1507 = !DILocation(line: 631, column: 32, scope: !1505)
!1508 = !DILocation(line: 631, column: 13, scope: !1505)
!1509 = distinct !{!1509, !1496, !1510}
!1510 = !DILocation(line: 632, column: 3, scope: !1493)
!1511 = !DILocation(line: 634, column: 8, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 634, column: 7)
!1513 = !DILocation(line: 634, column: 7, scope: !1493)
!1514 = !DILocation(line: 635, column: 4, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 634, column: 18)
!1516 = !DILocation(line: 635, column: 18, scope: !1515)
!1517 = !DILocation(line: 635, column: 29, scope: !1515)
!1518 = !DILocation(line: 636, column: 3, scope: !1515)
!1519 = !DILocation(line: 637, column: 31, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 636, column: 10)
!1521 = !DILocation(line: 637, column: 41, scope: !1520)
!1522 = !DILocation(line: 637, column: 48, scope: !1520)
!1523 = !DILocation(line: 637, column: 4, scope: !1520)
!1524 = !DILocation(line: 637, column: 18, scope: !1520)
!1525 = !DILocation(line: 637, column: 29, scope: !1520)
!1526 = !DILocation(line: 640, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 640, column: 7)
!1528 = !DILocation(line: 640, column: 21, scope: !1527)
!1529 = !DILocation(line: 640, column: 7, scope: !1493)
!1530 = !DILocation(line: 645, column: 33, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 640, column: 33)
!1532 = !DILocation(line: 645, column: 47, scope: !1531)
!1533 = !DILocation(line: 646, column: 12, scope: !1531)
!1534 = !DILocation(line: 646, column: 26, scope: !1531)
!1535 = !DILocation(line: 647, column: 12, scope: !1531)
!1536 = !DILocation(line: 647, column: 18, scope: !1531)
!1537 = !DILocation(line: 645, column: 8, scope: !1531)
!1538 = !DILocation(line: 644, column: 11, scope: !1531)
!1539 = !DILocation(line: 648, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 648, column: 8)
!1541 = !DILocation(line: 648, column: 8, scope: !1531)
!1542 = !DILocation(line: 649, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 648, column: 30)
!1544 = !DILocation(line: 651, column: 3, scope: !1531)
!1545 = !DILocation(line: 654, column: 34, scope: !1308)
!1546 = !DILocation(line: 654, column: 46, scope: !1308)
!1547 = !DILocation(line: 654, column: 11, scope: !1308)
!1548 = !DILocation(line: 654, column: 9, scope: !1308)
!1549 = !DILocation(line: 655, column: 2, scope: !1308)
!1550 = !DILocation(line: 656, column: 1, scope: !1308)
!1551 = distinct !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !3, file: !3, line: 670, type: !1552, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !169}
!1554 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1551, file: !3, line: 670, type: !169)
!1555 = !DILocation(line: 670, column: 56, scope: !1551)
!1556 = !DILocalVariable(name: "state", scope: !1551, file: !3, line: 672, type: !285)
!1557 = !DILocation(line: 672, column: 28, scope: !1551)
!1558 = !DILocation(line: 676, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 676, column: 6)
!1560 = !DILocation(line: 676, column: 6, scope: !1551)
!1561 = !DILocation(line: 677, column: 3, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 676, column: 19)
!1563 = !DILocation(line: 680, column: 6, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 680, column: 6)
!1565 = !DILocation(line: 680, column: 18, scope: !1564)
!1566 = !DILocation(line: 680, column: 34, scope: !1564)
!1567 = !DILocation(line: 680, column: 6, scope: !1551)
!1568 = !DILocation(line: 681, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 680, column: 58)
!1570 = !DILocation(line: 683, column: 3, scope: !1569)
!1571 = !DILocation(line: 688, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 688, column: 6)
!1573 = !DILocation(line: 688, column: 18, scope: !1572)
!1574 = !DILocation(line: 688, column: 31, scope: !1572)
!1575 = !DILocation(line: 688, column: 6, scope: !1551)
!1576 = !DILocation(line: 689, column: 3, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 688, column: 38)
!1578 = !DILocation(line: 691, column: 26, scope: !1577)
!1579 = !DILocation(line: 691, column: 38, scope: !1577)
!1580 = !DILocation(line: 691, column: 3, scope: !1577)
!1581 = !DILocation(line: 692, column: 2, scope: !1577)
!1582 = !DILocation(line: 696, column: 2, scope: !1551)
!1583 = !DILocation(line: 696, column: 9, scope: !1551)
!1584 = !DILocation(line: 696, column: 21, scope: !1551)
!1585 = !DILocation(line: 697, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 696, column: 36)
!1587 = !DILocation(line: 697, column: 23, scope: !1586)
!1588 = !DILocation(line: 697, column: 9, scope: !1586)
!1589 = !DILocation(line: 698, column: 31, scope: !1586)
!1590 = !DILocation(line: 698, column: 38, scope: !1586)
!1591 = !DILocation(line: 698, column: 45, scope: !1586)
!1592 = !DILocation(line: 698, column: 3, scope: !1586)
!1593 = !DILocation(line: 698, column: 15, scope: !1586)
!1594 = !DILocation(line: 698, column: 29, scope: !1586)
!1595 = !DILocation(line: 700, column: 32, scope: !1586)
!1596 = !DILocation(line: 700, column: 3, scope: !1586)
!1597 = distinct !{!1597, !1582, !1598}
!1598 = !DILocation(line: 701, column: 2, scope: !1551)
!1599 = !DILocation(line: 705, column: 2, scope: !1551)
!1600 = !DILocation(line: 705, column: 9, scope: !1551)
!1601 = !DILocation(line: 705, column: 21, scope: !1551)
!1602 = !DILocation(line: 706, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 705, column: 33)
!1604 = !DILocation(line: 706, column: 23, scope: !1603)
!1605 = !DILocation(line: 706, column: 9, scope: !1603)
!1606 = !DILocation(line: 707, column: 28, scope: !1603)
!1607 = !DILocation(line: 707, column: 35, scope: !1603)
!1608 = !DILocation(line: 707, column: 42, scope: !1603)
!1609 = !DILocation(line: 707, column: 3, scope: !1603)
!1610 = !DILocation(line: 707, column: 15, scope: !1603)
!1611 = !DILocation(line: 707, column: 26, scope: !1603)
!1612 = !DILocation(line: 709, column: 32, scope: !1603)
!1613 = !DILocation(line: 709, column: 3, scope: !1603)
!1614 = distinct !{!1614, !1599, !1615}
!1615 = !DILocation(line: 710, column: 2, scope: !1551)
!1616 = !DILocation(line: 714, column: 2, scope: !1551)
!1617 = !DILocation(line: 714, column: 9, scope: !1551)
!1618 = !DILocation(line: 714, column: 21, scope: !1551)
!1619 = !DILocation(line: 715, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 714, column: 30)
!1621 = !DILocation(line: 715, column: 23, scope: !1620)
!1622 = !DILocation(line: 715, column: 9, scope: !1620)
!1623 = !DILocation(line: 716, column: 25, scope: !1620)
!1624 = !DILocation(line: 716, column: 32, scope: !1620)
!1625 = !DILocation(line: 716, column: 39, scope: !1620)
!1626 = !DILocation(line: 716, column: 3, scope: !1620)
!1627 = !DILocation(line: 716, column: 15, scope: !1620)
!1628 = !DILocation(line: 716, column: 23, scope: !1620)
!1629 = !DILocation(line: 718, column: 32, scope: !1620)
!1630 = !DILocation(line: 718, column: 3, scope: !1620)
!1631 = distinct !{!1631, !1616, !1632}
!1632 = !DILocation(line: 719, column: 2, scope: !1551)
!1633 = !DILocation(line: 721, column: 2, scope: !1551)
!1634 = !DILocation(line: 722, column: 2, scope: !1551)
!1635 = !DILocation(line: 723, column: 1, scope: !1551)
!1636 = distinct !DISubprogram(name: "acpi_os_free", scope: !1274, file: !1274, line: 60, type: !1637, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !27}
!1639 = !DILocalVariable(name: "memory", arg: 1, scope: !1636, file: !1274, line: 60, type: !27)
!1640 = !DILocation(line: 60, column: 39, scope: !1636)
!1641 = !DILocation(line: 62, column: 8, scope: !1636)
!1642 = !DILocation(line: 62, column: 2, scope: !1636)
!1643 = !DILocation(line: 63, column: 1, scope: !1636)
!1644 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1645, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!27, !1647, !28}
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 55, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1649, line: 72, baseType: !1650)
!1649 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1649, line: 16, baseType: !30)
!1651 = !DILocalVariable(name: "s", arg: 1, scope: !1652, file: !6, line: 445, type: !1655)
!1652 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1653, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!27, !1655, !28, !1647}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1657, line: 117, flags: DIFlagFwdDecl)
!1657 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !DILocation(line: 445, column: 72, scope: !1652, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 552, column: 10, scope: !1660, inlinedAt: !1663)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !6, line: 540, column: 34)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 540, column: 6)
!1662 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1645, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1663 = distinct !DILocation(line: 664, column: 9, scope: !1644)
!1664 = !DILocalVariable(name: "flags", arg: 2, scope: !1652, file: !6, line: 446, type: !28)
!1665 = !DILocation(line: 446, column: 9, scope: !1652, inlinedAt: !1659)
!1666 = !DILocalVariable(name: "size", arg: 3, scope: !1652, file: !6, line: 446, type: !1647)
!1667 = !DILocation(line: 446, column: 23, scope: !1652, inlinedAt: !1659)
!1668 = !DILocalVariable(name: "ret", scope: !1652, file: !6, line: 448, type: !27)
!1669 = !DILocation(line: 448, column: 8, scope: !1652, inlinedAt: !1659)
!1670 = !DILocalVariable(name: "flags", arg: 1, scope: !1671, file: !6, line: 318, type: !28)
!1671 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1672, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!5, !28}
!1674 = !DILocation(line: 318, column: 67, scope: !1671, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 553, column: 20, scope: !1660, inlinedAt: !1663)
!1676 = !DILocalVariable(name: "size", arg: 1, scope: !1677, file: !6, line: 346, type: !1647)
!1677 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1678, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!7, !1647}
!1680 = !DILocation(line: 346, column: 58, scope: !1677, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 547, column: 11, scope: !1660, inlinedAt: !1663)
!1682 = !DILocalVariable(name: "size", arg: 1, scope: !1683, file: !6, line: 472, type: !1647)
!1683 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1684, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!27, !1647, !28, !7}
!1686 = !DILocation(line: 472, column: 28, scope: !1683, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 481, column: 9, scope: !1688, inlinedAt: !1689)
!1688 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1645, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1689 = distinct !DILocation(line: 545, column: 11, scope: !1690, inlinedAt: !1663)
!1690 = distinct !DILexicalBlock(scope: !1660, file: !6, line: 544, column: 7)
!1691 = !DILocalVariable(name: "flags", arg: 2, scope: !1683, file: !6, line: 472, type: !28)
!1692 = !DILocation(line: 472, column: 40, scope: !1683, inlinedAt: !1687)
!1693 = !DILocalVariable(name: "order", arg: 3, scope: !1683, file: !6, line: 472, type: !7)
!1694 = !DILocation(line: 472, column: 60, scope: !1683, inlinedAt: !1687)
!1695 = !DILocalVariable(name: "size", arg: 1, scope: !1688, file: !6, line: 478, type: !1647)
!1696 = !DILocation(line: 478, column: 51, scope: !1688, inlinedAt: !1689)
!1697 = !DILocalVariable(name: "flags", arg: 2, scope: !1688, file: !6, line: 478, type: !28)
!1698 = !DILocation(line: 478, column: 63, scope: !1688, inlinedAt: !1689)
!1699 = !DILocalVariable(name: "order", scope: !1688, file: !6, line: 480, type: !7)
!1700 = !DILocation(line: 480, column: 15, scope: !1688, inlinedAt: !1689)
!1701 = !DILocalVariable(name: "size", arg: 1, scope: !1662, file: !6, line: 538, type: !1647)
!1702 = !DILocation(line: 538, column: 45, scope: !1662, inlinedAt: !1663)
!1703 = !DILocalVariable(name: "flags", arg: 2, scope: !1662, file: !6, line: 538, type: !28)
!1704 = !DILocation(line: 538, column: 57, scope: !1662, inlinedAt: !1663)
!1705 = !DILocalVariable(name: "index", scope: !1660, file: !6, line: 542, type: !7)
!1706 = !DILocation(line: 542, column: 16, scope: !1660, inlinedAt: !1663)
!1707 = !DILocalVariable(name: "size", arg: 1, scope: !1644, file: !6, line: 662, type: !1647)
!1708 = !DILocation(line: 662, column: 36, scope: !1644)
!1709 = !DILocalVariable(name: "flags", arg: 2, scope: !1644, file: !6, line: 662, type: !28)
!1710 = !DILocation(line: 662, column: 48, scope: !1644)
!1711 = !DILocation(line: 664, column: 17, scope: !1644)
!1712 = !DILocation(line: 664, column: 23, scope: !1644)
!1713 = !DILocation(line: 664, column: 29, scope: !1644)
!1714 = !DILocation(line: 540, column: 27, scope: !1661, inlinedAt: !1663)
!1715 = !DILocation(line: 540, column: 6, scope: !1661, inlinedAt: !1663)
!1716 = !DILocation(line: 540, column: 6, scope: !1662, inlinedAt: !1663)
!1717 = !DILocation(line: 544, column: 7, scope: !1690, inlinedAt: !1663)
!1718 = !DILocation(line: 544, column: 12, scope: !1690, inlinedAt: !1663)
!1719 = !DILocation(line: 544, column: 7, scope: !1660, inlinedAt: !1663)
!1720 = !DILocation(line: 545, column: 25, scope: !1690, inlinedAt: !1663)
!1721 = !DILocation(line: 545, column: 31, scope: !1690, inlinedAt: !1663)
!1722 = !DILocation(line: 480, column: 33, scope: !1688, inlinedAt: !1689)
!1723 = !DILocation(line: 480, column: 23, scope: !1688, inlinedAt: !1689)
!1724 = !DILocation(line: 481, column: 29, scope: !1688, inlinedAt: !1689)
!1725 = !DILocation(line: 481, column: 35, scope: !1688, inlinedAt: !1689)
!1726 = !DILocation(line: 481, column: 42, scope: !1688, inlinedAt: !1689)
!1727 = !DILocation(line: 474, column: 23, scope: !1683, inlinedAt: !1687)
!1728 = !DILocation(line: 474, column: 29, scope: !1683, inlinedAt: !1687)
!1729 = !DILocation(line: 474, column: 36, scope: !1683, inlinedAt: !1687)
!1730 = !DILocation(line: 474, column: 9, scope: !1683, inlinedAt: !1687)
!1731 = !DILocation(line: 545, column: 4, scope: !1690, inlinedAt: !1663)
!1732 = !DILocation(line: 547, column: 25, scope: !1660, inlinedAt: !1663)
!1733 = !DILocation(line: 348, column: 7, scope: !1734, inlinedAt: !1681)
!1734 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 348, column: 6)
!1735 = !DILocation(line: 348, column: 6, scope: !1677, inlinedAt: !1681)
!1736 = !DILocation(line: 349, column: 3, scope: !1734, inlinedAt: !1681)
!1737 = !DILocation(line: 351, column: 6, scope: !1738, inlinedAt: !1681)
!1738 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 351, column: 6)
!1739 = !DILocation(line: 351, column: 11, scope: !1738, inlinedAt: !1681)
!1740 = !DILocation(line: 351, column: 6, scope: !1677, inlinedAt: !1681)
!1741 = !DILocation(line: 352, column: 3, scope: !1738, inlinedAt: !1681)
!1742 = !DILocation(line: 354, column: 32, scope: !1743, inlinedAt: !1681)
!1743 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 354, column: 6)
!1744 = !DILocation(line: 354, column: 37, scope: !1743, inlinedAt: !1681)
!1745 = !DILocation(line: 354, column: 42, scope: !1743, inlinedAt: !1681)
!1746 = !DILocation(line: 354, column: 45, scope: !1743, inlinedAt: !1681)
!1747 = !DILocation(line: 354, column: 50, scope: !1743, inlinedAt: !1681)
!1748 = !DILocation(line: 354, column: 6, scope: !1677, inlinedAt: !1681)
!1749 = !DILocation(line: 355, column: 3, scope: !1743, inlinedAt: !1681)
!1750 = !DILocation(line: 356, column: 32, scope: !1751, inlinedAt: !1681)
!1751 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 356, column: 6)
!1752 = !DILocation(line: 356, column: 37, scope: !1751, inlinedAt: !1681)
!1753 = !DILocation(line: 356, column: 43, scope: !1751, inlinedAt: !1681)
!1754 = !DILocation(line: 356, column: 46, scope: !1751, inlinedAt: !1681)
!1755 = !DILocation(line: 356, column: 51, scope: !1751, inlinedAt: !1681)
!1756 = !DILocation(line: 356, column: 6, scope: !1677, inlinedAt: !1681)
!1757 = !DILocation(line: 357, column: 3, scope: !1751, inlinedAt: !1681)
!1758 = !DILocation(line: 358, column: 6, scope: !1759, inlinedAt: !1681)
!1759 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 358, column: 6)
!1760 = !DILocation(line: 358, column: 11, scope: !1759, inlinedAt: !1681)
!1761 = !DILocation(line: 358, column: 6, scope: !1677, inlinedAt: !1681)
!1762 = !DILocation(line: 358, column: 26, scope: !1759, inlinedAt: !1681)
!1763 = !DILocation(line: 359, column: 6, scope: !1764, inlinedAt: !1681)
!1764 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 359, column: 6)
!1765 = !DILocation(line: 359, column: 11, scope: !1764, inlinedAt: !1681)
!1766 = !DILocation(line: 359, column: 6, scope: !1677, inlinedAt: !1681)
!1767 = !DILocation(line: 359, column: 26, scope: !1764, inlinedAt: !1681)
!1768 = !DILocation(line: 360, column: 6, scope: !1769, inlinedAt: !1681)
!1769 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 360, column: 6)
!1770 = !DILocation(line: 360, column: 11, scope: !1769, inlinedAt: !1681)
!1771 = !DILocation(line: 360, column: 6, scope: !1677, inlinedAt: !1681)
!1772 = !DILocation(line: 360, column: 26, scope: !1769, inlinedAt: !1681)
!1773 = !DILocation(line: 361, column: 6, scope: !1774, inlinedAt: !1681)
!1774 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 361, column: 6)
!1775 = !DILocation(line: 361, column: 11, scope: !1774, inlinedAt: !1681)
!1776 = !DILocation(line: 361, column: 6, scope: !1677, inlinedAt: !1681)
!1777 = !DILocation(line: 361, column: 26, scope: !1774, inlinedAt: !1681)
!1778 = !DILocation(line: 362, column: 6, scope: !1779, inlinedAt: !1681)
!1779 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 362, column: 6)
!1780 = !DILocation(line: 362, column: 11, scope: !1779, inlinedAt: !1681)
!1781 = !DILocation(line: 362, column: 6, scope: !1677, inlinedAt: !1681)
!1782 = !DILocation(line: 362, column: 26, scope: !1779, inlinedAt: !1681)
!1783 = !DILocation(line: 363, column: 6, scope: !1784, inlinedAt: !1681)
!1784 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 363, column: 6)
!1785 = !DILocation(line: 363, column: 11, scope: !1784, inlinedAt: !1681)
!1786 = !DILocation(line: 363, column: 6, scope: !1677, inlinedAt: !1681)
!1787 = !DILocation(line: 363, column: 26, scope: !1784, inlinedAt: !1681)
!1788 = !DILocation(line: 364, column: 6, scope: !1789, inlinedAt: !1681)
!1789 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 364, column: 6)
!1790 = !DILocation(line: 364, column: 11, scope: !1789, inlinedAt: !1681)
!1791 = !DILocation(line: 364, column: 6, scope: !1677, inlinedAt: !1681)
!1792 = !DILocation(line: 364, column: 26, scope: !1789, inlinedAt: !1681)
!1793 = !DILocation(line: 365, column: 6, scope: !1794, inlinedAt: !1681)
!1794 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 365, column: 6)
!1795 = !DILocation(line: 365, column: 11, scope: !1794, inlinedAt: !1681)
!1796 = !DILocation(line: 365, column: 6, scope: !1677, inlinedAt: !1681)
!1797 = !DILocation(line: 365, column: 26, scope: !1794, inlinedAt: !1681)
!1798 = !DILocation(line: 366, column: 6, scope: !1799, inlinedAt: !1681)
!1799 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 366, column: 6)
!1800 = !DILocation(line: 366, column: 11, scope: !1799, inlinedAt: !1681)
!1801 = !DILocation(line: 366, column: 6, scope: !1677, inlinedAt: !1681)
!1802 = !DILocation(line: 366, column: 26, scope: !1799, inlinedAt: !1681)
!1803 = !DILocation(line: 367, column: 6, scope: !1804, inlinedAt: !1681)
!1804 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 367, column: 6)
!1805 = !DILocation(line: 367, column: 11, scope: !1804, inlinedAt: !1681)
!1806 = !DILocation(line: 367, column: 6, scope: !1677, inlinedAt: !1681)
!1807 = !DILocation(line: 367, column: 26, scope: !1804, inlinedAt: !1681)
!1808 = !DILocation(line: 368, column: 6, scope: !1809, inlinedAt: !1681)
!1809 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 368, column: 6)
!1810 = !DILocation(line: 368, column: 11, scope: !1809, inlinedAt: !1681)
!1811 = !DILocation(line: 368, column: 6, scope: !1677, inlinedAt: !1681)
!1812 = !DILocation(line: 368, column: 26, scope: !1809, inlinedAt: !1681)
!1813 = !DILocation(line: 369, column: 6, scope: !1814, inlinedAt: !1681)
!1814 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 369, column: 6)
!1815 = !DILocation(line: 369, column: 11, scope: !1814, inlinedAt: !1681)
!1816 = !DILocation(line: 369, column: 6, scope: !1677, inlinedAt: !1681)
!1817 = !DILocation(line: 369, column: 26, scope: !1814, inlinedAt: !1681)
!1818 = !DILocation(line: 370, column: 6, scope: !1819, inlinedAt: !1681)
!1819 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 370, column: 6)
!1820 = !DILocation(line: 370, column: 11, scope: !1819, inlinedAt: !1681)
!1821 = !DILocation(line: 370, column: 6, scope: !1677, inlinedAt: !1681)
!1822 = !DILocation(line: 370, column: 26, scope: !1819, inlinedAt: !1681)
!1823 = !DILocation(line: 371, column: 6, scope: !1824, inlinedAt: !1681)
!1824 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 371, column: 6)
!1825 = !DILocation(line: 371, column: 11, scope: !1824, inlinedAt: !1681)
!1826 = !DILocation(line: 371, column: 6, scope: !1677, inlinedAt: !1681)
!1827 = !DILocation(line: 371, column: 26, scope: !1824, inlinedAt: !1681)
!1828 = !DILocation(line: 372, column: 6, scope: !1829, inlinedAt: !1681)
!1829 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 372, column: 6)
!1830 = !DILocation(line: 372, column: 11, scope: !1829, inlinedAt: !1681)
!1831 = !DILocation(line: 372, column: 6, scope: !1677, inlinedAt: !1681)
!1832 = !DILocation(line: 372, column: 26, scope: !1829, inlinedAt: !1681)
!1833 = !DILocation(line: 373, column: 6, scope: !1834, inlinedAt: !1681)
!1834 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 373, column: 6)
!1835 = !DILocation(line: 373, column: 11, scope: !1834, inlinedAt: !1681)
!1836 = !DILocation(line: 373, column: 6, scope: !1677, inlinedAt: !1681)
!1837 = !DILocation(line: 373, column: 26, scope: !1834, inlinedAt: !1681)
!1838 = !DILocation(line: 374, column: 6, scope: !1839, inlinedAt: !1681)
!1839 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 374, column: 6)
!1840 = !DILocation(line: 374, column: 11, scope: !1839, inlinedAt: !1681)
!1841 = !DILocation(line: 374, column: 6, scope: !1677, inlinedAt: !1681)
!1842 = !DILocation(line: 374, column: 26, scope: !1839, inlinedAt: !1681)
!1843 = !DILocation(line: 375, column: 6, scope: !1844, inlinedAt: !1681)
!1844 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 375, column: 6)
!1845 = !DILocation(line: 375, column: 11, scope: !1844, inlinedAt: !1681)
!1846 = !DILocation(line: 375, column: 6, scope: !1677, inlinedAt: !1681)
!1847 = !DILocation(line: 375, column: 27, scope: !1844, inlinedAt: !1681)
!1848 = !DILocation(line: 376, column: 6, scope: !1849, inlinedAt: !1681)
!1849 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 376, column: 6)
!1850 = !DILocation(line: 376, column: 11, scope: !1849, inlinedAt: !1681)
!1851 = !DILocation(line: 376, column: 6, scope: !1677, inlinedAt: !1681)
!1852 = !DILocation(line: 376, column: 32, scope: !1849, inlinedAt: !1681)
!1853 = !DILocation(line: 377, column: 6, scope: !1854, inlinedAt: !1681)
!1854 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 377, column: 6)
!1855 = !DILocation(line: 377, column: 11, scope: !1854, inlinedAt: !1681)
!1856 = !DILocation(line: 377, column: 6, scope: !1677, inlinedAt: !1681)
!1857 = !DILocation(line: 377, column: 32, scope: !1854, inlinedAt: !1681)
!1858 = !DILocation(line: 378, column: 6, scope: !1859, inlinedAt: !1681)
!1859 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 378, column: 6)
!1860 = !DILocation(line: 378, column: 11, scope: !1859, inlinedAt: !1681)
!1861 = !DILocation(line: 378, column: 6, scope: !1677, inlinedAt: !1681)
!1862 = !DILocation(line: 378, column: 32, scope: !1859, inlinedAt: !1681)
!1863 = !DILocation(line: 379, column: 6, scope: !1864, inlinedAt: !1681)
!1864 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 379, column: 6)
!1865 = !DILocation(line: 379, column: 11, scope: !1864, inlinedAt: !1681)
!1866 = !DILocation(line: 379, column: 6, scope: !1677, inlinedAt: !1681)
!1867 = !DILocation(line: 379, column: 33, scope: !1864, inlinedAt: !1681)
!1868 = !DILocation(line: 380, column: 6, scope: !1869, inlinedAt: !1681)
!1869 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 380, column: 6)
!1870 = !DILocation(line: 380, column: 11, scope: !1869, inlinedAt: !1681)
!1871 = !DILocation(line: 380, column: 6, scope: !1677, inlinedAt: !1681)
!1872 = !DILocation(line: 380, column: 33, scope: !1869, inlinedAt: !1681)
!1873 = !DILocation(line: 381, column: 6, scope: !1874, inlinedAt: !1681)
!1874 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 381, column: 6)
!1875 = !DILocation(line: 381, column: 11, scope: !1874, inlinedAt: !1681)
!1876 = !DILocation(line: 381, column: 6, scope: !1677, inlinedAt: !1681)
!1877 = !DILocation(line: 381, column: 33, scope: !1874, inlinedAt: !1681)
!1878 = !DILocation(line: 382, column: 2, scope: !1879, inlinedAt: !1681)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !6, line: 382, column: 2)
!1880 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 382, column: 2)
!1881 = !{i32 -2144100462, i32 -2144100433, i32 -2144100387, i32 -2144100329, i32 -2144100275, i32 -2144100221, i32 -2144100166, i32 -2144100135}
!1882 = !DILocation(line: 382, column: 2, scope: !1883, inlinedAt: !1681)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !6, line: 382, column: 2)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !6, line: 382, column: 2)
!1885 = !{i32 -2144099692, i32 -2144099685, i32 -2144099631, i32 -2144099600, i32 -2144099570}
!1886 = !DILocation(line: 382, column: 2, scope: !1884, inlinedAt: !1681)
!1887 = !DILocation(line: 386, column: 1, scope: !1677, inlinedAt: !1681)
!1888 = !DILocation(line: 547, column: 9, scope: !1660, inlinedAt: !1663)
!1889 = !DILocation(line: 549, column: 8, scope: !1890, inlinedAt: !1663)
!1890 = distinct !DILexicalBlock(scope: !1660, file: !6, line: 549, column: 7)
!1891 = !DILocation(line: 549, column: 7, scope: !1660, inlinedAt: !1663)
!1892 = !DILocation(line: 550, column: 4, scope: !1890, inlinedAt: !1663)
!1893 = !DILocation(line: 553, column: 33, scope: !1660, inlinedAt: !1663)
!1894 = !DILocation(line: 325, column: 6, scope: !1895, inlinedAt: !1675)
!1895 = distinct !DILexicalBlock(scope: !1671, file: !6, line: 325, column: 6)
!1896 = !DILocation(line: 325, column: 6, scope: !1671, inlinedAt: !1675)
!1897 = !DILocation(line: 326, column: 3, scope: !1895, inlinedAt: !1675)
!1898 = !DILocation(line: 332, column: 9, scope: !1671, inlinedAt: !1675)
!1899 = !DILocation(line: 332, column: 15, scope: !1671, inlinedAt: !1675)
!1900 = !DILocation(line: 332, column: 2, scope: !1671, inlinedAt: !1675)
!1901 = !DILocation(line: 336, column: 1, scope: !1671, inlinedAt: !1675)
!1902 = !DILocation(line: 553, column: 5, scope: !1660, inlinedAt: !1663)
!1903 = !DILocation(line: 553, column: 41, scope: !1660, inlinedAt: !1663)
!1904 = !DILocation(line: 554, column: 5, scope: !1660, inlinedAt: !1663)
!1905 = !DILocation(line: 554, column: 12, scope: !1660, inlinedAt: !1663)
!1906 = !DILocation(line: 448, column: 31, scope: !1652, inlinedAt: !1659)
!1907 = !DILocation(line: 448, column: 34, scope: !1652, inlinedAt: !1659)
!1908 = !DILocation(line: 448, column: 14, scope: !1652, inlinedAt: !1659)
!1909 = !DILocation(line: 450, column: 22, scope: !1652, inlinedAt: !1659)
!1910 = !DILocation(line: 450, column: 25, scope: !1652, inlinedAt: !1659)
!1911 = !DILocation(line: 450, column: 30, scope: !1652, inlinedAt: !1659)
!1912 = !DILocation(line: 450, column: 36, scope: !1652, inlinedAt: !1659)
!1913 = !DILocation(line: 450, column: 8, scope: !1652, inlinedAt: !1659)
!1914 = !DILocation(line: 450, column: 6, scope: !1652, inlinedAt: !1659)
!1915 = !DILocation(line: 451, column: 9, scope: !1652, inlinedAt: !1659)
!1916 = !DILocation(line: 552, column: 3, scope: !1660, inlinedAt: !1663)
!1917 = !DILocation(line: 557, column: 19, scope: !1662, inlinedAt: !1663)
!1918 = !DILocation(line: 557, column: 25, scope: !1662, inlinedAt: !1663)
!1919 = !DILocation(line: 557, column: 9, scope: !1662, inlinedAt: !1663)
!1920 = !DILocation(line: 557, column: 2, scope: !1662, inlinedAt: !1663)
!1921 = !DILocation(line: 558, column: 1, scope: !1662, inlinedAt: !1663)
!1922 = !DILocation(line: 664, column: 2, scope: !1644)
!1923 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1924, file: !1924, line: 646, type: !1925, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1924 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!30}
!1927 = !DILocalVariable(name: "__ret", scope: !1928, file: !1924, line: 648, type: !30)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !1924, line: 648, column: 9)
!1929 = !DILocation(line: 648, column: 9, scope: !1928)
!1930 = !DILocalVariable(name: "__edi", scope: !1928, file: !1924, line: 648, type: !30)
!1931 = !DILocalVariable(name: "__esi", scope: !1928, file: !1924, line: 648, type: !30)
!1932 = !DILocalVariable(name: "__edx", scope: !1928, file: !1924, line: 648, type: !30)
!1933 = !DILocalVariable(name: "__ecx", scope: !1928, file: !1924, line: 648, type: !30)
!1934 = !DILocalVariable(name: "__eax", scope: !1928, file: !1924, line: 648, type: !30)
!1935 = !DILocation(line: 648, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1924, line: 648, column: 9)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !1924, line: 648, column: 9)
!1938 = !{i32 -2145774068, i32 -2145771753, i32 -2145771519, i32 -2145771468, i32 -2145771440, i32 -2145771415, i32 -2145771731, i32 -2145771718, i32 -2145771280, i32 -2145771161, i32 -2145771626, i32 -2145771599, i32 -2145771571, i32 -2145771541}
!1939 = !DILocalVariable(name: "__mask", scope: !1940, file: !1924, line: 648, type: !30)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1924, line: 648, column: 9)
!1941 = !DILocation(line: 648, column: 9, scope: !1940)
!1942 = !DILocation(line: 648, column: 9, scope: !1937)
!1943 = !DILocation(line: 648, column: 2, scope: !1923)
!1944 = distinct !DISubprogram(name: "get_order", scope: !1945, file: !1945, line: 29, type: !1280, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1945 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !DILocalVariable(name: "x", arg: 1, scope: !1947, file: !1948, line: 366, type: !25)
!1947 = distinct !DISubprogram(name: "fls64", scope: !1948, file: !1948, line: 366, type: !1949, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1948 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!22, !25}
!1951 = !DILocation(line: 366, column: 40, scope: !1947, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 46, column: 9, scope: !1944)
!1953 = !DILocalVariable(name: "bitpos", scope: !1947, file: !1948, line: 368, type: !22)
!1954 = !DILocation(line: 368, column: 6, scope: !1947, inlinedAt: !1952)
!1955 = !DILocalVariable(name: "size", arg: 1, scope: !1944, file: !1945, line: 29, type: !30)
!1956 = !DILocation(line: 29, column: 63, scope: !1944)
!1957 = !DILocation(line: 31, column: 27, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1944, file: !1945, line: 31, column: 6)
!1959 = !DILocation(line: 31, column: 6, scope: !1958)
!1960 = !DILocation(line: 31, column: 6, scope: !1944)
!1961 = !DILocation(line: 32, column: 8, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1945, line: 32, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 31, column: 34)
!1964 = !DILocation(line: 32, column: 7, scope: !1963)
!1965 = !DILocation(line: 33, column: 4, scope: !1962)
!1966 = !DILocation(line: 35, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !1945, line: 35, column: 7)
!1968 = !DILocation(line: 35, column: 12, scope: !1967)
!1969 = !DILocation(line: 35, column: 7, scope: !1963)
!1970 = !DILocation(line: 36, column: 4, scope: !1967)
!1971 = !DILocation(line: 38, column: 10, scope: !1963)
!1972 = !DILocation(line: 38, column: 28, scope: !1963)
!1973 = !DILocation(line: 38, column: 41, scope: !1963)
!1974 = !DILocation(line: 38, column: 3, scope: !1963)
!1975 = !DILocation(line: 41, column: 6, scope: !1944)
!1976 = !DILocation(line: 42, column: 7, scope: !1944)
!1977 = !DILocation(line: 46, column: 15, scope: !1944)
!1978 = !DILocation(line: 374, column: 2, scope: !1947, inlinedAt: !1952)
!1979 = !DILocation(line: 376, column: 14, scope: !1947, inlinedAt: !1952)
!1980 = !{i32 670740}
!1981 = !DILocation(line: 377, column: 9, scope: !1947, inlinedAt: !1952)
!1982 = !DILocation(line: 377, column: 16, scope: !1947, inlinedAt: !1952)
!1983 = !DILocation(line: 46, column: 2, scope: !1944)
!1984 = !DILocation(line: 48, column: 1, scope: !1944)
!1985 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1986, file: !1986, line: 30, type: !1987, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1986 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!22, !24}
!1989 = !DILocation(line: 366, column: 40, scope: !1947, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 32, column: 9, scope: !1985)
!1991 = !DILocation(line: 368, column: 6, scope: !1947, inlinedAt: !1990)
!1992 = !DILocalVariable(name: "n", arg: 1, scope: !1985, file: !1986, line: 30, type: !24)
!1993 = !DILocation(line: 30, column: 21, scope: !1985)
!1994 = !DILocation(line: 32, column: 15, scope: !1985)
!1995 = !DILocation(line: 374, column: 2, scope: !1947, inlinedAt: !1990)
!1996 = !DILocation(line: 376, column: 14, scope: !1947, inlinedAt: !1990)
!1997 = !DILocation(line: 377, column: 9, scope: !1947, inlinedAt: !1990)
!1998 = !DILocation(line: 377, column: 16, scope: !1947, inlinedAt: !1990)
!1999 = !DILocation(line: 32, column: 18, scope: !1985)
!2000 = !DILocation(line: 32, column: 2, scope: !1985)
!2001 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2002, file: !2002, line: 137, type: !2003, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!2002 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!27, !1655, !2005, !1647, !28}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2007 = !DILocalVariable(name: "s", arg: 1, scope: !2001, file: !2002, line: 137, type: !1655)
!2008 = !DILocation(line: 137, column: 54, scope: !2001)
!2009 = !DILocalVariable(name: "object", arg: 2, scope: !2001, file: !2002, line: 137, type: !2005)
!2010 = !DILocation(line: 137, column: 69, scope: !2001)
!2011 = !DILocalVariable(name: "size", arg: 3, scope: !2001, file: !2002, line: 138, type: !1647)
!2012 = !DILocation(line: 138, column: 12, scope: !2001)
!2013 = !DILocalVariable(name: "flags", arg: 4, scope: !2001, file: !2002, line: 138, type: !28)
!2014 = !DILocation(line: 138, column: 24, scope: !2001)
!2015 = !DILocation(line: 140, column: 17, scope: !2001)
!2016 = !DILocation(line: 140, column: 2, scope: !2001)
