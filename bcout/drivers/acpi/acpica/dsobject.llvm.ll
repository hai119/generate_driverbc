; ModuleID = '../bcout/drivers/acpi/acpica/dsobject.llvm.bc'
source_filename = "drivers/acpi/acpica/dsobject.c"
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
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"dsobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [51 x i8] c"Expecting bytelist, found AML opcode 0x%X in op %p\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown constant opcode 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Truncated 64-bit constant found in 32-bit table: %8.8X%8.8X => %8.8X\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown Integer type 0x%X\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Unimplemented reference type for AML opcode: 0x%4.4X\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unimplemented data type: 0x%X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, %union.acpi_operand_object** %obj_desc_ptr) #0 !dbg !817 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %obj_desc_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !821, metadata !DIExpression()), !dbg !822
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !823, metadata !DIExpression()), !dbg !824
  store %union.acpi_operand_object** %obj_desc_ptr, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %obj_desc_ptr.addr, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %status, metadata !829, metadata !DIExpression()), !dbg !830
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !831
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %0, align 8, !dbg !832
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !833
  %common = bitcast %union.acpi_parse_object* %1 to %struct.acpi_parse_obj_common*, !dbg !835
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !836
  %2 = load i16, i16* %aml_opcode, align 2, !dbg !836
  %conv = zext i16 %2 to i32, !dbg !833
  %cmp = icmp eq i32 %conv, 45, !dbg !837
  br i1 %cmp, label %if.then, label %if.end29, !dbg !838

if.then:                                          ; preds = %entry
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !839
  %common2 = bitcast %union.acpi_parse_object* %3 to %struct.acpi_parse_obj_common*, !dbg !842
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 6, !dbg !843
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !843
  %tobool = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !839
  br i1 %tobool, label %if.end28, label %if.then3, !dbg !844

if.then3:                                         ; preds = %if.then
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !845
  %common4 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !848
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 0, !dbg !849
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !849
  %common5 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !850
  %aml_opcode6 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common5, i32 0, i32 3, !dbg !851
  %7 = load i16, i16* %aml_opcode6, align 2, !dbg !851
  %conv7 = zext i16 %7 to i32, !dbg !845
  %cmp8 = icmp eq i32 %conv7, 18, !dbg !852
  br i1 %cmp8, label %if.then17, label %lor.lhs.false, !dbg !853

lor.lhs.false:                                    ; preds = %if.then3
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !854
  %common10 = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !855
  %parent11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 0, !dbg !856
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent11, align 8, !dbg !856
  %common12 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !857
  %aml_opcode13 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common12, i32 0, i32 3, !dbg !858
  %10 = load i16, i16* %aml_opcode13, align 2, !dbg !858
  %conv14 = zext i16 %10 to i32, !dbg !854
  %cmp15 = icmp eq i32 %conv14, 19, !dbg !859
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !860

if.then17:                                        ; preds = %lor.lhs.false, %if.then3
  br label %create_new_object, !dbg !861

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !863
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 46, !dbg !865
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !865
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !866
  %common18 = bitcast %union.acpi_parse_object* %13 to %struct.acpi_parse_obj_common*, !dbg !867
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 7, !dbg !868
  %string = bitcast %union.acpi_parse_value* %value to i8**, !dbg !869
  %14 = load i8*, i8** %string, align 8, !dbg !869
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !870
  %common19 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !870
  %node20 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common19, i32 0, i32 6, !dbg !870
  %16 = bitcast %struct.acpi_namespace_node** %node20 to i8*, !dbg !870
  %17 = bitcast i8* %16 to %struct.acpi_namespace_node**, !dbg !870
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %12, i8* %14, i32 0, i32 3, i32 3, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %17) #9, !dbg !871
  store i32 %call, i32* %status, align 4, !dbg !872
  %18 = load i32, i32* %status, align 4, !dbg !873
  %tobool21 = icmp ne i32 %18, 0, !dbg !873
  br i1 %tobool21, label %if.then22, label %if.end, !dbg !875

if.then22:                                        ; preds = %if.else
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !876
  %scope_info23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 46, !dbg !876
  %20 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info23, align 8, !dbg !876
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !876
  %common24 = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !876
  %value25 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common24, i32 0, i32 7, !dbg !876
  %string26 = bitcast %union.acpi_parse_value* %value25 to i8**, !dbg !876
  %22 = load i8*, i8** %string26, align 8, !dbg !876
  %23 = load i32, i32* %status, align 4, !dbg !876
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 83, %union.acpi_generic_state* %20, i8* %22, i32 %23) #9, !dbg !876
  %24 = load i32, i32* %status, align 4, !dbg !878
  store i32 %24, i32* %retval, align 4, !dbg !878
  br label %return, !dbg !878

if.end:                                           ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end
  br label %if.end28, !dbg !879

if.end28:                                         ; preds = %if.end27, %if.then
  br label %if.end29, !dbg !880

if.end29:                                         ; preds = %if.end28, %entry
  br label %create_new_object, !dbg !881

create_new_object:                                ; preds = %if.end29, %if.then17
  call void @llvm.dbg.label(metadata !882), !dbg !883
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !884
  %common30 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !884
  %aml_opcode31 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common30, i32 0, i32 3, !dbg !884
  %26 = load i16, i16* %aml_opcode31, align 2, !dbg !884
  %call32 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %26) #9, !dbg !884
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %call32, i32 0, i32 3, !dbg !884
  %27 = load i8, i8* %object_type, align 2, !dbg !884
  %conv33 = zext i8 %27 to i32, !dbg !884
  %call34 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 96, i32 64, i32 %conv33) #9, !dbg !884
  store %union.acpi_operand_object* %call34, %union.acpi_operand_object** %obj_desc, align 8, !dbg !885
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !886
  %tobool35 = icmp ne %union.acpi_operand_object* %28, null, !dbg !886
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !888

if.then36:                                        ; preds = %create_new_object
  store i32 4, i32* %retval, align 4, !dbg !889
  br label %return, !dbg !889

if.end37:                                         ; preds = %create_new_object
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !891
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !892
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !893
  %common38 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !894
  %aml_opcode39 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common38, i32 0, i32 3, !dbg !895
  %32 = load i16, i16* %aml_opcode39, align 2, !dbg !895
  %call40 = call i32 @acpi_ds_init_object_from_op(%struct.acpi_walk_state* %29, %union.acpi_parse_object* %30, i16 zeroext %32, %union.acpi_operand_object** %obj_desc) #9, !dbg !896
  store i32 %call40, i32* %status, align 4, !dbg !897
  %33 = load i32, i32* %status, align 4, !dbg !898
  %tobool41 = icmp ne i32 %33, 0, !dbg !898
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !900

if.then42:                                        ; preds = %if.end37
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !901
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %34) #9, !dbg !903
  %35 = load i32, i32* %status, align 4, !dbg !904
  store i32 %35, i32* %retval, align 4, !dbg !904
  br label %return, !dbg !904

if.end43:                                         ; preds = %if.end37
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !905
  %common44 = bitcast %union.acpi_parse_object* %36 to %struct.acpi_parse_obj_common*, !dbg !907
  %parent45 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common44, i32 0, i32 0, !dbg !908
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent45, align 8, !dbg !908
  %common46 = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_common*, !dbg !909
  %aml_opcode47 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common46, i32 0, i32 3, !dbg !910
  %38 = load i16, i16* %aml_opcode47, align 2, !dbg !910
  %conv48 = zext i16 %38 to i32, !dbg !905
  %cmp49 = icmp eq i32 %conv48, 18, !dbg !911
  br i1 %cmp49, label %if.then59, label %lor.lhs.false51, !dbg !912

lor.lhs.false51:                                  ; preds = %if.end43
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !913
  %common52 = bitcast %union.acpi_parse_object* %39 to %struct.acpi_parse_obj_common*, !dbg !914
  %parent53 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common52, i32 0, i32 0, !dbg !915
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent53, align 8, !dbg !915
  %common54 = bitcast %union.acpi_parse_object* %40 to %struct.acpi_parse_obj_common*, !dbg !916
  %aml_opcode55 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common54, i32 0, i32 3, !dbg !917
  %41 = load i16, i16* %aml_opcode55, align 2, !dbg !917
  %conv56 = zext i16 %41 to i32, !dbg !913
  %cmp57 = icmp eq i32 %conv56, 19, !dbg !918
  br i1 %cmp57, label %if.then59, label %if.end79, !dbg !919

if.then59:                                        ; preds = %lor.lhs.false51, %if.end43
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !920
  %reference = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_reference*, !dbg !922
  %resolved = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 7, !dbg !923
  store i8 1, i8* %resolved, align 1, !dbg !924
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !925
  %common60 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !927
  %aml_opcode61 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common60, i32 0, i32 3, !dbg !928
  %44 = load i16, i16* %aml_opcode61, align 2, !dbg !928
  %conv62 = zext i16 %44 to i32, !dbg !925
  %cmp63 = icmp eq i32 %conv62, 45, !dbg !929
  br i1 %cmp63, label %land.lhs.true, label %if.end78, !dbg !930

land.lhs.true:                                    ; preds = %if.then59
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !931
  %reference65 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_reference*, !dbg !932
  %node66 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference65, i32 0, i32 9, !dbg !933
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node66, align 8, !dbg !933
  %tobool67 = icmp ne %struct.acpi_namespace_node* %46, null, !dbg !931
  br i1 %tobool67, label %if.end78, label %if.then68, !dbg !934

if.then68:                                        ; preds = %land.lhs.true
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !935
  %scope_info69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 46, !dbg !937
  %48 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info69, align 8, !dbg !937
  %scope = bitcast %union.acpi_generic_state* %48 to %struct.acpi_scope_state*, !dbg !938
  %node70 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !939
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node70, align 8, !dbg !939
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !940
  %reference71 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_reference*, !dbg !941
  %node72 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference71, i32 0, i32 9, !dbg !942
  store %struct.acpi_namespace_node* %49, %struct.acpi_namespace_node** %node72, align 8, !dbg !943
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !944
  %common73 = bitcast %union.acpi_parse_object* %51 to %struct.acpi_parse_obj_common*, !dbg !945
  %aml = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common73, i32 0, i32 4, !dbg !946
  %52 = load i8*, i8** %aml, align 8, !dbg !946
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !947
  %reference74 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_reference*, !dbg !948
  %aml75 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference74, i32 0, i32 12, !dbg !949
  store i8* %52, i8** %aml75, align 8, !dbg !950
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !951
  %reference76 = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_reference*, !dbg !952
  %resolved77 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference76, i32 0, i32 7, !dbg !953
  store i8 0, i8* %resolved77, align 1, !dbg !954
  br label %if.end78, !dbg !955

if.end78:                                         ; preds = %if.then68, %land.lhs.true, %if.then59
  br label %if.end79, !dbg !956

if.end79:                                         ; preds = %if.end78, %lor.lhs.false51
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !957
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !958
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %56, align 8, !dbg !959
  %57 = load i32, i32* %status, align 4, !dbg !960
  store i32 %57, i32* %retval, align 4, !dbg !960
  br label %return, !dbg !960

return:                                           ; preds = %if.end79, %if.then42, %if.then36, %if.then22
  %58 = load i32, i32* %retval, align 4, !dbg !961
  ret i32 %58, !dbg !961
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_init_object_from_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i16 zeroext %opcode, %union.acpi_operand_object** %ret_obj_desc) #0 !dbg !962 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %opcode.addr = alloca i16, align 2
  %ret_obj_desc.addr = alloca %union.acpi_operand_object**, align 8
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !965, metadata !DIExpression()), !dbg !966
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store %union.acpi_operand_object** %ret_obj_desc, %union.acpi_operand_object*** %ret_obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %ret_obj_desc.addr, metadata !971, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !973, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata i32* %status, metadata !977, metadata !DIExpression()), !dbg !978
  store i32 0, i32* %status, align 4, !dbg !978
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_obj_desc.addr, align 8, !dbg !979
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !980
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !981
  %2 = load i16, i16* %opcode.addr, align 2, !dbg !982
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %2) #9, !dbg !983
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !984
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !985
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 4, !dbg !987
  %4 = load i8, i8* %class, align 1, !dbg !987
  %conv = zext i8 %4 to i32, !dbg !985
  %cmp = icmp eq i32 %conv, 10, !dbg !988
  br i1 %cmp, label %if.then, label %if.end, !dbg !989

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !992
  %common = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !993
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !994
  %6 = load i8, i8* %type, align 1, !dbg !994
  %conv2 = zext i8 %6 to i32, !dbg !992
  switch i32 %conv2, label %sw.default132 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb6
    i32 1, label %sw.bb22
    i32 2, label %sw.bb65
    i32 8, label %sw.bb80
    i32 20, label %sw.bb81
  ], !dbg !995

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !996
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 28, !dbg !996
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !996
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !996
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !996
  %10 = bitcast i8* %9 to %struct.acpi_namespace_node*, !dbg !996
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !998
  %buffer = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_buffer*, !dbg !999
  %node = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 9, !dbg !1000
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %node, align 8, !dbg !1001
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1002
  %named = bitcast %union.acpi_parse_object* %12 to %struct.acpi_parse_obj_named*, !dbg !1003
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1004
  %13 = load i8*, i8** %data, align 8, !dbg !1004
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1005
  %buffer3 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_buffer*, !dbg !1006
  %aml_start = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer3, i32 0, i32 8, !dbg !1007
  store i8* %13, i8** %aml_start, align 8, !dbg !1008
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1009
  %named4 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_named*, !dbg !1010
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named4, i32 0, i32 11, !dbg !1011
  %16 = load i32, i32* %length, align 8, !dbg !1011
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1012
  %buffer5 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_buffer*, !dbg !1013
  %aml_length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer5, i32 0, i32 7, !dbg !1014
  store i32 %16, i32* %aml_length, align 4, !dbg !1015
  br label %sw.epilog136, !dbg !1016

sw.bb6:                                           ; preds = %if.end
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1017
  %operands7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 28, !dbg !1017
  %arrayidx8 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands7, i64 0, i64 0, !dbg !1017
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx8, align 8, !dbg !1017
  %20 = bitcast %union.acpi_operand_object* %19 to i8*, !dbg !1017
  %21 = bitcast i8* %20 to %struct.acpi_namespace_node*, !dbg !1017
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1018
  %package = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !1019
  %node9 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 5, !dbg !1020
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** %node9, align 8, !dbg !1021
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1022
  %named10 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_named*, !dbg !1024
  %data11 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named10, i32 0, i32 10, !dbg !1025
  %24 = load i8*, i8** %data11, align 8, !dbg !1025
  %tobool = icmp ne i8* %24, null, !dbg !1022
  br i1 %tobool, label %if.end13, label %if.then12, !dbg !1026

if.then12:                                        ; preds = %sw.bb6
  store i32 0, i32* %retval, align 4, !dbg !1027
  br label %return, !dbg !1027

if.end13:                                         ; preds = %sw.bb6
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1029
  %named14 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_named*, !dbg !1030
  %data15 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named14, i32 0, i32 10, !dbg !1031
  %26 = load i8*, i8** %data15, align 8, !dbg !1031
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1032
  %package16 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_package*, !dbg !1033
  %aml_start17 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package16, i32 0, i32 7, !dbg !1034
  store i8* %26, i8** %aml_start17, align 8, !dbg !1035
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1036
  %named18 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_named*, !dbg !1037
  %length19 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named18, i32 0, i32 11, !dbg !1038
  %29 = load i32, i32* %length19, align 8, !dbg !1038
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1039
  %package20 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_package*, !dbg !1040
  %aml_length21 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package20, i32 0, i32 8, !dbg !1041
  store i32 %29, i32* %aml_length21, align 8, !dbg !1042
  br label %sw.epilog136, !dbg !1043

sw.bb22:                                          ; preds = %if.end
  %31 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1044
  %type23 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %31, i32 0, i32 5, !dbg !1045
  %32 = load i8, i8* %type23, align 4, !dbg !1045
  %conv24 = zext i8 %32 to i32, !dbg !1044
  switch i32 %conv24, label %sw.default61 [
    i32 13, label %sw.bb25
    i32 12, label %sw.bb40
  ], !dbg !1046

sw.bb25:                                          ; preds = %sw.bb22
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1047
  %common26 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_common*, !dbg !1049
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common26, i32 0, i32 4, !dbg !1050
  store i8 1, i8* %flags, align 4, !dbg !1051
  %34 = load i16, i16* %opcode.addr, align 2, !dbg !1052
  %conv27 = zext i16 %34 to i32, !dbg !1052
  switch i32 %conv27, label %sw.default [
    i32 0, label %sw.bb28
    i32 1, label %sw.bb29
    i32 255, label %sw.bb32
    i32 23344, label %sw.bb36
  ], !dbg !1053

sw.bb28:                                          ; preds = %sw.bb25
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1054
  %integer = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_integer*, !dbg !1056
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1057
  store i64 0, i64* %value, align 8, !dbg !1058
  br label %sw.epilog, !dbg !1059

sw.bb29:                                          ; preds = %sw.bb25
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1060
  %integer30 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_integer*, !dbg !1061
  %value31 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer30, i32 0, i32 6, !dbg !1062
  store i64 1, i64* %value31, align 8, !dbg !1063
  br label %sw.epilog, !dbg !1064

sw.bb32:                                          ; preds = %sw.bb25
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1065
  %integer33 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_integer*, !dbg !1066
  %value34 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer33, i32 0, i32 6, !dbg !1067
  store i64 -1, i64* %value34, align 8, !dbg !1068
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1069
  %call35 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %38) #9, !dbg !1070
  br label %sw.epilog, !dbg !1071

sw.bb36:                                          ; preds = %sw.bb25
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1072
  %integer37 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !1073
  %value38 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer37, i32 0, i32 6, !dbg !1074
  store i64 538970405, i64* %value38, align 8, !dbg !1075
  br label %sw.epilog, !dbg !1076

sw.default:                                       ; preds = %sw.bb25
  %40 = load i16, i16* %opcode.addr, align 2, !dbg !1077
  %conv39 = zext i16 %40 to i32, !dbg !1077
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %conv39) #9, !dbg !1077
  store i32 12291, i32* %status, align 4, !dbg !1078
  br label %sw.epilog, !dbg !1079

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb32, %sw.bb29, %sw.bb28
  br label %sw.epilog64, !dbg !1080

sw.bb40:                                          ; preds = %sw.bb22
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1081
  %common41 = bitcast %union.acpi_parse_object* %41 to %struct.acpi_parse_obj_common*, !dbg !1082
  %value42 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common41, i32 0, i32 7, !dbg !1083
  %integer43 = bitcast %union.acpi_parse_value* %value42 to i64*, !dbg !1084
  %42 = load i64, i64* %integer43, align 8, !dbg !1084
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1085
  %integer44 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_integer*, !dbg !1086
  %value45 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer44, i32 0, i32 6, !dbg !1087
  store i64 %42, i64* %value45, align 8, !dbg !1088
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1089
  %call46 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %44) #9, !dbg !1091
  %tobool47 = icmp ne i8 %call46, 0, !dbg !1091
  br i1 %tobool47, label %if.then48, label %if.end60, !dbg !1092

if.then48:                                        ; preds = %sw.bb40
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1093
  %common49 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !1093
  %value50 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common49, i32 0, i32 7, !dbg !1093
  %integer51 = bitcast %union.acpi_parse_value* %value50 to i64*, !dbg !1093
  %46 = load i64, i64* %integer51, align 8, !dbg !1093
  %shr = lshr i64 %46, 32, !dbg !1093
  %conv52 = trunc i64 %shr to i32, !dbg !1093
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1093
  %common53 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !1093
  %value54 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common53, i32 0, i32 7, !dbg !1093
  %integer55 = bitcast %union.acpi_parse_value* %value54 to i64*, !dbg !1093
  %48 = load i64, i64* %integer55, align 8, !dbg !1093
  %conv56 = trunc i64 %48 to i32, !dbg !1093
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1093
  %integer57 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_integer*, !dbg !1093
  %value58 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer57, i32 0, i32 6, !dbg !1093
  %50 = load i64, i64* %value58, align 8, !dbg !1093
  %conv59 = trunc i64 %50 to i32, !dbg !1093
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %conv52, i32 %conv56, i32 %conv59) #9, !dbg !1093
  br label %if.end60, !dbg !1095

if.end60:                                         ; preds = %if.then48, %sw.bb40
  br label %sw.epilog64, !dbg !1096

sw.default61:                                     ; preds = %sw.bb22
  %51 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1097
  %type62 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %51, i32 0, i32 5, !dbg !1097
  %52 = load i8, i8* %type62, align 4, !dbg !1097
  %conv63 = zext i8 %52 to i32, !dbg !1097
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %conv63) #9, !dbg !1097
  store i32 12291, i32* %status, align 4, !dbg !1098
  br label %sw.epilog64, !dbg !1099

sw.epilog64:                                      ; preds = %sw.default61, %if.end60, %sw.epilog
  br label %sw.epilog136, !dbg !1100

sw.bb65:                                          ; preds = %if.end
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1101
  %common66 = bitcast %union.acpi_parse_object* %53 to %struct.acpi_parse_obj_common*, !dbg !1102
  %value67 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common66, i32 0, i32 7, !dbg !1103
  %string = bitcast %union.acpi_parse_value* %value67 to i8**, !dbg !1104
  %54 = load i8*, i8** %string, align 8, !dbg !1104
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1105
  %string68 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_string*, !dbg !1106
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string68, i32 0, i32 5, !dbg !1107
  store i8* %54, i8** %pointer, align 8, !dbg !1108
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1109
  %common69 = bitcast %union.acpi_parse_object* %56 to %struct.acpi_parse_obj_common*, !dbg !1110
  %value70 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common69, i32 0, i32 7, !dbg !1111
  %string71 = bitcast %union.acpi_parse_value* %value70 to i8**, !dbg !1112
  %57 = load i8*, i8** %string71, align 8, !dbg !1112
  %call72 = call i64 @strlen(i8* %57) #9, !dbg !1113
  %conv73 = trunc i64 %call72 to i32, !dbg !1114
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1115
  %string74 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_string*, !dbg !1116
  %length75 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string74, i32 0, i32 6, !dbg !1117
  store i32 %conv73, i32* %length75, align 8, !dbg !1118
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1119
  %common76 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_common*, !dbg !1120
  %flags77 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common76, i32 0, i32 4, !dbg !1121
  %60 = load i8, i8* %flags77, align 4, !dbg !1122
  %conv78 = zext i8 %60 to i32, !dbg !1122
  %or = or i32 %conv78, 2, !dbg !1122
  %conv79 = trunc i32 %or to i8, !dbg !1122
  store i8 %conv79, i8* %flags77, align 4, !dbg !1122
  br label %sw.epilog136, !dbg !1123

sw.bb80:                                          ; preds = %if.end
  br label %sw.epilog136, !dbg !1124

sw.bb81:                                          ; preds = %if.end
  %61 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1125
  %type82 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %61, i32 0, i32 5, !dbg !1126
  %62 = load i8, i8* %type82, align 4, !dbg !1126
  %conv83 = zext i8 %62 to i32, !dbg !1125
  switch i32 %conv83, label %sw.default105 [
    i32 15, label %sw.bb84
    i32 14, label %sw.bb93
  ], !dbg !1127

sw.bb84:                                          ; preds = %sw.bb81
  %63 = load i16, i16* %opcode.addr, align 2, !dbg !1128
  %conv85 = zext i16 %63 to i32, !dbg !1130
  %sub = sub i32 %conv85, 96, !dbg !1131
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1132
  %reference = bitcast %union.acpi_operand_object* %64 to %struct.acpi_object_reference*, !dbg !1133
  %value86 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 13, !dbg !1134
  store i32 %sub, i32* %value86, align 8, !dbg !1135
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1136
  %reference87 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_reference*, !dbg !1137
  %class88 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference87, i32 0, i32 5, !dbg !1138
  store i8 0, i8* %class88, align 1, !dbg !1139
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1140
  %reference89 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_reference*, !dbg !1141
  %value90 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference89, i32 0, i32 13, !dbg !1142
  %67 = load i32, i32* %value90, align 8, !dbg !1142
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1143
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1144
  %reference91 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_object_reference*, !dbg !1144
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference91, i32 0, i32 8, !dbg !1144
  %70 = bitcast i8** %object to i8*, !dbg !1144
  %71 = bitcast i8* %70 to %struct.acpi_namespace_node**, !dbg !1144
  %call92 = call i32 @acpi_ds_method_data_get_node(i8 zeroext 0, i32 %67, %struct.acpi_walk_state* %68, %struct.acpi_namespace_node** %71) #9, !dbg !1145
  store i32 %call92, i32* %status, align 4, !dbg !1146
  br label %sw.epilog131, !dbg !1147

sw.bb93:                                          ; preds = %sw.bb81
  %72 = load i16, i16* %opcode.addr, align 2, !dbg !1148
  %conv94 = zext i16 %72 to i32, !dbg !1149
  %sub95 = sub i32 %conv94, 104, !dbg !1150
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1151
  %reference96 = bitcast %union.acpi_operand_object* %73 to %struct.acpi_object_reference*, !dbg !1152
  %value97 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference96, i32 0, i32 13, !dbg !1153
  store i32 %sub95, i32* %value97, align 8, !dbg !1154
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1155
  %reference98 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_object_reference*, !dbg !1156
  %class99 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference98, i32 0, i32 5, !dbg !1157
  store i8 1, i8* %class99, align 1, !dbg !1158
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1159
  %reference100 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_reference*, !dbg !1160
  %value101 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference100, i32 0, i32 13, !dbg !1161
  %76 = load i32, i32* %value101, align 8, !dbg !1161
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1162
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1163
  %reference102 = bitcast %union.acpi_operand_object* %78 to %struct.acpi_object_reference*, !dbg !1163
  %object103 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference102, i32 0, i32 8, !dbg !1163
  %79 = bitcast i8** %object103 to i8*, !dbg !1163
  %80 = bitcast i8* %79 to %struct.acpi_namespace_node**, !dbg !1163
  %call104 = call i32 @acpi_ds_method_data_get_node(i8 zeroext 1, i32 %76, %struct.acpi_walk_state* %77, %struct.acpi_namespace_node** %80) #9, !dbg !1164
  store i32 %call104, i32* %status, align 4, !dbg !1165
  br label %sw.epilog131, !dbg !1166

sw.default105:                                    ; preds = %sw.bb81
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1167
  %common106 = bitcast %union.acpi_parse_object* %81 to %struct.acpi_parse_obj_common*, !dbg !1168
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common106, i32 0, i32 3, !dbg !1169
  %82 = load i16, i16* %aml_opcode, align 2, !dbg !1169
  %conv107 = zext i16 %82 to i32, !dbg !1167
  switch i32 %conv107, label %sw.default128 [
    i32 45, label %sw.bb108
    i32 23345, label %sw.bb125
  ], !dbg !1170

sw.bb108:                                         ; preds = %sw.default105
  %83 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1171
  %common109 = bitcast %union.acpi_parse_object* %83 to %struct.acpi_parse_obj_common*, !dbg !1173
  %node110 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common109, i32 0, i32 6, !dbg !1174
  %84 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node110, align 8, !dbg !1174
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1175
  %reference111 = bitcast %union.acpi_operand_object* %85 to %struct.acpi_object_reference*, !dbg !1176
  %node112 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference111, i32 0, i32 9, !dbg !1177
  store %struct.acpi_namespace_node* %84, %struct.acpi_namespace_node** %node112, align 8, !dbg !1178
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1179
  %reference113 = bitcast %union.acpi_operand_object* %86 to %struct.acpi_object_reference*, !dbg !1180
  %class114 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference113, i32 0, i32 5, !dbg !1181
  store i8 5, i8* %class114, align 1, !dbg !1182
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1183
  %common115 = bitcast %union.acpi_parse_object* %87 to %struct.acpi_parse_obj_common*, !dbg !1185
  %node116 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common115, i32 0, i32 6, !dbg !1186
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node116, align 8, !dbg !1186
  %tobool117 = icmp ne %struct.acpi_namespace_node* %88, null, !dbg !1183
  br i1 %tobool117, label %if.then118, label %if.end124, !dbg !1187

if.then118:                                       ; preds = %sw.bb108
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1188
  %common119 = bitcast %union.acpi_parse_object* %89 to %struct.acpi_parse_obj_common*, !dbg !1190
  %node120 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common119, i32 0, i32 6, !dbg !1191
  %90 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node120, align 8, !dbg !1191
  %object121 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %90, i32 0, i32 0, !dbg !1192
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object121, align 8, !dbg !1192
  %92 = bitcast %union.acpi_operand_object* %91 to i8*, !dbg !1188
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1193
  %reference122 = bitcast %union.acpi_operand_object* %93 to %struct.acpi_object_reference*, !dbg !1194
  %object123 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference122, i32 0, i32 8, !dbg !1195
  store i8* %92, i8** %object123, align 8, !dbg !1196
  br label %if.end124, !dbg !1197

if.end124:                                        ; preds = %if.then118, %sw.bb108
  br label %sw.epilog130, !dbg !1198

sw.bb125:                                         ; preds = %sw.default105
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1199
  %reference126 = bitcast %union.acpi_operand_object* %94 to %struct.acpi_object_reference*, !dbg !1200
  %class127 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference126, i32 0, i32 5, !dbg !1201
  store i8 6, i8* %class127, align 1, !dbg !1202
  br label %sw.epilog130, !dbg !1203

sw.default128:                                    ; preds = %sw.default105
  %95 = load i16, i16* %opcode.addr, align 2, !dbg !1204
  %conv129 = zext i16 %95 to i32, !dbg !1204
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %conv129) #9, !dbg !1204
  store i32 12291, i32* %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

sw.epilog130:                                     ; preds = %sw.bb125, %if.end124
  br label %sw.epilog131, !dbg !1206

sw.epilog131:                                     ; preds = %sw.epilog130, %sw.bb93, %sw.bb84
  br label %sw.epilog136, !dbg !1207

sw.default132:                                    ; preds = %if.end
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1208
  %common133 = bitcast %union.acpi_operand_object* %96 to %struct.acpi_object_common*, !dbg !1208
  %type134 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common133, i32 0, i32 2, !dbg !1208
  %97 = load i8, i8* %type134, align 1, !dbg !1208
  %conv135 = zext i8 %97 to i32, !dbg !1208
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %conv135) #9, !dbg !1208
  store i32 12291, i32* %status, align 4, !dbg !1209
  br label %sw.epilog136, !dbg !1210

sw.epilog136:                                     ; preds = %sw.default132, %sw.epilog131, %sw.bb80, %sw.bb65, %sw.epilog64, %if.end13, %sw.bb
  %98 = load i32, i32* %status, align 4, !dbg !1211
  store i32 %98, i32* %retval, align 4, !dbg !1211
  br label %return, !dbg !1211

return:                                           ; preds = %sw.epilog136, %sw.default128, %if.then12, %if.then
  %99 = load i32, i32* %retval, align 4, !dbg !1212
  ret i32 %99, !dbg !1212
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_build_internal_buffer_obj(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i32 %buffer_length, %union.acpi_operand_object** %obj_desc_ptr) #0 !dbg !1213 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %buffer_length.addr = alloca i32, align 4
  %obj_desc_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %byte_list = alloca %union.acpi_parse_object*, align 8
  %byte_list_length = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1216, metadata !DIExpression()), !dbg !1217
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1218, metadata !DIExpression()), !dbg !1219
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !1220, metadata !DIExpression()), !dbg !1221
  store %union.acpi_operand_object** %obj_desc_ptr, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %obj_desc_ptr.addr, metadata !1222, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1224, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %byte_list, metadata !1228, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.declare(metadata i32* %byte_list_length, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i32 0, i32* %byte_list_length, align 4, !dbg !1231
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !1232
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1233
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1234
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1235
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1235
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1237

if.then:                                          ; preds = %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 173, i32 64, i32 3) #9, !dbg !1238
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1240
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1241
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !1242
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %4, align 8, !dbg !1243
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1244
  %tobool1 = icmp ne %union.acpi_operand_object* %5, null, !dbg !1244
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1246

if.then2:                                         ; preds = %if.then
  store i32 4, i32* %retval, align 4, !dbg !1247
  br label %return, !dbg !1247

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1249

if.end3:                                          ; preds = %if.end, %entry
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1250
  %common = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !1251
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1252
  %arg4 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1253
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg4, align 8, !dbg !1253
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %arg, align 8, !dbg !1254
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1255
  %named = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_named*, !dbg !1256
  %next = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 5, !dbg !1257
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1257
  store %union.acpi_parse_object* %9, %union.acpi_parse_object** %byte_list, align 8, !dbg !1258
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1259
  %tobool5 = icmp ne %union.acpi_parse_object* %10, null, !dbg !1259
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !1261

if.then6:                                         ; preds = %if.end3
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1262
  %common7 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !1265
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 3, !dbg !1266
  %12 = load i16, i16* %aml_opcode, align 2, !dbg !1266
  %conv = zext i16 %12 to i32, !dbg !1262
  %cmp = icmp ne i32 %conv, 51, !dbg !1267
  br i1 %cmp, label %if.then9, label %if.end13, !dbg !1268

if.then9:                                         ; preds = %if.then6
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1269
  %common10 = bitcast %union.acpi_parse_object* %13 to %struct.acpi_parse_obj_common*, !dbg !1269
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 3, !dbg !1269
  %14 = load i16, i16* %aml_opcode11, align 2, !dbg !1269
  %conv12 = zext i16 %14 to i32, !dbg !1269
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1269
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %conv12, %union.acpi_parse_object* %15) #9, !dbg !1269
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1271
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %16) #9, !dbg !1272
  store i32 8, i32* %retval, align 4, !dbg !1273
  br label %return, !dbg !1273

if.end13:                                         ; preds = %if.then6
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1274
  %common14 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !1275
  %value15 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common14, i32 0, i32 7, !dbg !1276
  %integer = bitcast %union.acpi_parse_value* %value15 to i64*, !dbg !1277
  %18 = load i64, i64* %integer, align 8, !dbg !1277
  %conv16 = trunc i64 %18 to i32, !dbg !1278
  store i32 %conv16, i32* %byte_list_length, align 4, !dbg !1279
  br label %if.end17, !dbg !1280

if.end17:                                         ; preds = %if.end13, %if.end3
  %19 = load i32, i32* %buffer_length.addr, align 4, !dbg !1281
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1282
  %buffer = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_buffer*, !dbg !1283
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1284
  store i32 %19, i32* %length, align 8, !dbg !1285
  %21 = load i32, i32* %byte_list_length, align 4, !dbg !1286
  %22 = load i32, i32* %buffer_length.addr, align 4, !dbg !1288
  %cmp18 = icmp ugt i32 %21, %22, !dbg !1289
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !1290

if.then20:                                        ; preds = %if.end17
  %23 = load i32, i32* %byte_list_length, align 4, !dbg !1291
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1293
  %buffer21 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_buffer*, !dbg !1294
  %length22 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer21, i32 0, i32 6, !dbg !1295
  store i32 %23, i32* %length22, align 8, !dbg !1296
  br label %if.end23, !dbg !1297

if.end23:                                         ; preds = %if.then20, %if.end17
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1298
  %buffer24 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_buffer*, !dbg !1300
  %length25 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer24, i32 0, i32 6, !dbg !1301
  %26 = load i32, i32* %length25, align 8, !dbg !1301
  %cmp26 = icmp eq i32 %26, 0, !dbg !1302
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1303

if.then28:                                        ; preds = %if.end23
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1304
  %buffer29 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !1306
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer29, i32 0, i32 5, !dbg !1307
  store i8* null, i8** %pointer, align 8, !dbg !1308
  br label %if.end48, !dbg !1309

if.else:                                          ; preds = %if.end23
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1310
  %buffer30 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_buffer*, !dbg !1310
  %length31 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer30, i32 0, i32 6, !dbg !1310
  %29 = load i32, i32* %length31, align 8, !dbg !1310
  %conv32 = zext i32 %29 to i64, !dbg !1310
  %call33 = call i8* @acpi_os_allocate_zeroed(i64 %conv32) #9, !dbg !1310
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1312
  %buffer34 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_buffer*, !dbg !1313
  %pointer35 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer34, i32 0, i32 5, !dbg !1314
  store i8* %call33, i8** %pointer35, align 8, !dbg !1315
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1316
  %buffer36 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_buffer*, !dbg !1318
  %pointer37 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer36, i32 0, i32 5, !dbg !1319
  %32 = load i8*, i8** %pointer37, align 8, !dbg !1319
  %tobool38 = icmp ne i8* %32, null, !dbg !1316
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !1320

if.then39:                                        ; preds = %if.else
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1321
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %33) #9, !dbg !1323
  store i32 4, i32* %retval, align 4, !dbg !1324
  br label %return, !dbg !1324

if.end40:                                         ; preds = %if.else
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1325
  %tobool41 = icmp ne %union.acpi_parse_object* %34, null, !dbg !1325
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !1327

if.then42:                                        ; preds = %if.end40
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1328
  %buffer43 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_buffer*, !dbg !1330
  %pointer44 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer43, i32 0, i32 5, !dbg !1331
  %36 = load i8*, i8** %pointer44, align 8, !dbg !1331
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %byte_list, align 8, !dbg !1332
  %named45 = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_named*, !dbg !1333
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named45, i32 0, i32 10, !dbg !1334
  %38 = load i8*, i8** %data, align 8, !dbg !1334
  %39 = load i32, i32* %byte_list_length, align 4, !dbg !1335
  %conv46 = zext i32 %39 to i64, !dbg !1335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %38, i64 %conv46, i1 false), !dbg !1336
  br label %if.end47, !dbg !1337

if.end47:                                         ; preds = %if.then42, %if.end40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then28
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1338
  %buffer49 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_buffer*, !dbg !1339
  %flags = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer49, i32 0, i32 4, !dbg !1340
  %41 = load i8, i8* %flags, align 4, !dbg !1341
  %conv50 = zext i8 %41 to i32, !dbg !1341
  %or = or i32 %conv50, 4, !dbg !1341
  %conv51 = trunc i32 %or to i8, !dbg !1341
  store i8 %conv51, i8* %flags, align 4, !dbg !1341
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1342
  %43 = bitcast %union.acpi_operand_object* %42 to i8*, !dbg !1342
  %44 = bitcast i8* %43 to %struct.acpi_namespace_node*, !dbg !1342
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1343
  %common52 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !1344
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common52, i32 0, i32 6, !dbg !1345
  store %struct.acpi_namespace_node* %44, %struct.acpi_namespace_node** %node, align 8, !dbg !1346
  store i32 0, i32* %retval, align 4, !dbg !1347
  br label %return, !dbg !1347

return:                                           ; preds = %if.end48, %if.then39, %if.then9, %if.then2
  %46 = load i32, i32* %retval, align 4, !dbg !1348
  ret i32 %46, !dbg !1348
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1349 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1353, metadata !DIExpression()), !dbg !1359
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1363, metadata !DIExpression()), !dbg !1364
  %0 = load i64, i64* %size.addr, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1366, metadata !DIExpression()), !dbg !1367
  br label %do.body, !dbg !1367

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1372, metadata !DIExpression()), !dbg !1371
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1371
  %conv = zext i1 %cmp to i32, !dbg !1371
  store i32 1, i32* %tmp, align 4, !dbg !1371
  %1 = load i32, i32* %tmp, align 4, !dbg !1371
  %call = call i64 @arch_local_save_flags() #9, !dbg !1373
  store i64 %call, i64* %_flags, align 8, !dbg !1373
  br label %do.end, !dbg !1373

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1377, metadata !DIExpression()), !dbg !1376
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1376
  %conv6 = zext i1 %cmp5 to i32, !dbg !1376
  store i32 1, i32* %tmp7, align 4, !dbg !1376
  %2 = load i32, i32* %tmp7, align 4, !dbg !1376
  %3 = load i64, i64* %_flags, align 8, !dbg !1378
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1379
  %and.i = and i64 %4, 512, !dbg !1380
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1381
  %lnot.i = xor i1 %tobool.i, true, !dbg !1381
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1381
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1378
  %5 = load i32, i32* %tmp8, align 4, !dbg !1378
  store i32 %5, i32* %tmp1, align 4, !dbg !1373
  %6 = load i32, i32* %tmp1, align 4, !dbg !1367
  %tobool = icmp ne i32 %6, 0, !dbg !1382
  %7 = zext i1 %tobool to i64, !dbg !1382
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1382
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1383
  ret i8* %call10, !dbg !1384
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_node(%struct.acpi_walk_state* %walk_state, %struct.acpi_namespace_node* %node, %union.acpi_parse_object* %op) #0 !dbg !1385 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1390, metadata !DIExpression()), !dbg !1391
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1396, metadata !DIExpression()), !dbg !1397
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1398
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %0) #9, !dbg !1400
  %tobool = icmp ne %union.acpi_operand_object* %call, null, !dbg !1400
  br i1 %tobool, label %if.then, label %if.end, !dbg !1401

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1402
  br label %return, !dbg !1402

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1404
  %common = bitcast %union.acpi_parse_object* %1 to %struct.acpi_parse_obj_common*, !dbg !1406
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1407
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1408
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1408
  %tobool1 = icmp ne %union.acpi_parse_object* %2, null, !dbg !1404
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1409

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1410
  br label %return, !dbg !1410

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1412
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1413
  %common4 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !1414
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 7, !dbg !1415
  %arg6 = bitcast %union.acpi_parse_value* %value5 to %union.acpi_parse_object**, !dbg !1416
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg6, align 8, !dbg !1416
  %call7 = call i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state* %3, %union.acpi_parse_object* %5, %union.acpi_operand_object** %obj_desc) #9, !dbg !1417
  store i32 %call7, i32* %status, align 4, !dbg !1418
  %6 = load i32, i32* %status, align 4, !dbg !1419
  %tobool8 = icmp ne i32 %6, 0, !dbg !1419
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1421

if.then9:                                         ; preds = %if.end3
  %7 = load i32, i32* %status, align 4, !dbg !1422
  store i32 %7, i32* %retval, align 4, !dbg !1422
  br label %return, !dbg !1422

if.end10:                                         ; preds = %if.end3
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1424
  %common11 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !1425
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common11, i32 0, i32 2, !dbg !1426
  %9 = load i8, i8* %type, align 1, !dbg !1426
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1427
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !1428
  store i8 %9, i8* %type12, align 1, !dbg !1429
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1430
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1431
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1432
  %type13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 2, !dbg !1433
  %14 = load i8, i8* %type13, align 1, !dbg !1433
  %conv = zext i8 %14 to i32, !dbg !1432
  %call14 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %11, %union.acpi_operand_object* %12, i32 %conv) #9, !dbg !1434
  store i32 %call14, i32* %status, align 4, !dbg !1435
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1436
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %15) #9, !dbg !1437
  %16 = load i32, i32* %status, align 4, !dbg !1438
  store i32 %16, i32* %retval, align 4, !dbg !1438
  br label %return, !dbg !1438

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1439
  ret i32 %17, !dbg !1439
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_data_get_node(i8 zeroext, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1440 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1447, metadata !DIExpression()), !dbg !1454
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1460, metadata !DIExpression()), !dbg !1461
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1462, metadata !DIExpression()), !dbg !1463
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1464, metadata !DIExpression()), !dbg !1465
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1466, metadata !DIExpression()), !dbg !1470
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1472, metadata !DIExpression()), !dbg !1476
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1478, metadata !DIExpression()), !dbg !1482
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1487, metadata !DIExpression()), !dbg !1488
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1489, metadata !DIExpression()), !dbg !1490
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1491, metadata !DIExpression()), !dbg !1492
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1493, metadata !DIExpression()), !dbg !1494
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1495, metadata !DIExpression()), !dbg !1496
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1497, metadata !DIExpression()), !dbg !1498
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1499, metadata !DIExpression()), !dbg !1500
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1501, metadata !DIExpression()), !dbg !1502
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1505, metadata !DIExpression()), !dbg !1506
  %0 = load i64, i64* %size.addr, align 8, !dbg !1507
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1508
  %or = or i32 %1, 256, !dbg !1509
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1510
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1511
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1512

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1513
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1514
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1515

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1516
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1517
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1518
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1519
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1496
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1520
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1521
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1522
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1523
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1524
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1525
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1526
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1526
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1526
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1526
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1526
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1527
  br label %kmalloc.exit, !dbg !1527

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1528
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1529
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1529
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1531

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1532
  br label %kmalloc_index.exit.i, !dbg !1532

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1533
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1535
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1536

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1537
  br label %kmalloc_index.exit.i, !dbg !1537

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1538
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1540
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1541

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1542
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1543
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1544

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1545
  br label %kmalloc_index.exit.i, !dbg !1545

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1546
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1548
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1549

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1550
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1551
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1552

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1553
  br label %kmalloc_index.exit.i, !dbg !1553

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1554
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1556
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1557

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1558
  br label %kmalloc_index.exit.i, !dbg !1558

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1559
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1561
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1562

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1563
  br label %kmalloc_index.exit.i, !dbg !1563

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1564
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1566
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1567

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1568
  br label %kmalloc_index.exit.i, !dbg !1568

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1569
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1571
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1572

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1573
  br label %kmalloc_index.exit.i, !dbg !1573

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1574
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1576
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1577

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1578
  br label %kmalloc_index.exit.i, !dbg !1578

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1579
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1581
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1582

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1583
  br label %kmalloc_index.exit.i, !dbg !1583

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1584
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1586
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1587

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1588
  br label %kmalloc_index.exit.i, !dbg !1588

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1589
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1591
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1592

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1593
  br label %kmalloc_index.exit.i, !dbg !1593

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1594
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1596
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1597

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1598
  br label %kmalloc_index.exit.i, !dbg !1598

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1599
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1601
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1602

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1603
  br label %kmalloc_index.exit.i, !dbg !1603

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1604
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1606
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1607

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1608
  br label %kmalloc_index.exit.i, !dbg !1608

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1609
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1611
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1612

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1613
  br label %kmalloc_index.exit.i, !dbg !1613

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1614
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1616
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1617

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1618
  br label %kmalloc_index.exit.i, !dbg !1618

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1619
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1621
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1622

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1623
  br label %kmalloc_index.exit.i, !dbg !1623

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1624
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1626
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1627

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1628
  br label %kmalloc_index.exit.i, !dbg !1628

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1629
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1631
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1632

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1633
  br label %kmalloc_index.exit.i, !dbg !1633

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1634
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1636
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1637

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1638
  br label %kmalloc_index.exit.i, !dbg !1638

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1639
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1641
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1642

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1643
  br label %kmalloc_index.exit.i, !dbg !1643

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1644
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1646
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1647

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1648
  br label %kmalloc_index.exit.i, !dbg !1648

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1649
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1651
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1652

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1653
  br label %kmalloc_index.exit.i, !dbg !1653

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1654
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1656
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1657

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1658
  br label %kmalloc_index.exit.i, !dbg !1658

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1659
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1661
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1662

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1663
  br label %kmalloc_index.exit.i, !dbg !1663

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1664
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1666
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1667

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1668
  br label %kmalloc_index.exit.i, !dbg !1668

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1669
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1671
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1672

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1673
  br label %kmalloc_index.exit.i, !dbg !1673

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1674, !srcloc !1677
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1678, !srcloc !1681
  unreachable, !dbg !1682

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1683
  store i32 %45, i32* %index.i, align 4, !dbg !1684
  %46 = load i32, i32* %index.i, align 4, !dbg !1685
  %tobool.i = icmp ne i32 %46, 0, !dbg !1685
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1687

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1688
  br label %kmalloc.exit, !dbg !1688

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1689
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1690
  %and.i.i = and i32 %48, 17, !dbg !1690
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1690
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1690
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1690
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1690
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1692

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1693
  br label %kmalloc_type.exit.i, !dbg !1693

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1694
  %and2.i.i = and i32 %49, 1, !dbg !1695
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1694
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1694
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1694
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1696
  br label %kmalloc_type.exit.i, !dbg !1696

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1697
  %idxprom.i = zext i32 %51 to i64, !dbg !1698
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1698
  %52 = load i32, i32* %index.i, align 4, !dbg !1699
  %idxprom6.i = zext i32 %52 to i64, !dbg !1698
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1698
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1698
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1700
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1701
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1702
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1703
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1704
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1704
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1704
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1704
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1704
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1465
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1705
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1706
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1707
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1708
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1709
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1710
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1711
  store i8* %62, i8** %retval.i, align 8, !dbg !1712
  br label %kmalloc.exit, !dbg !1712

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1713
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1714
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1715
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1715
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1715
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1715
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1715
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1716
  br label %kmalloc.exit, !dbg !1716

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1717
  ret i8* %65, !dbg !1718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1719 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1723, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1726, metadata !DIExpression()), !dbg !1725
  %0 = load i64, i64* %__edi, align 8, !dbg !1725
  store i64 %0, i64* %__edi, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1727, metadata !DIExpression()), !dbg !1725
  %1 = load i64, i64* %__esi, align 8, !dbg !1725
  store i64 %1, i64* %__esi, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1728, metadata !DIExpression()), !dbg !1725
  %2 = load i64, i64* %__edx, align 8, !dbg !1725
  store i64 %2, i64* %__edx, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1729, metadata !DIExpression()), !dbg !1725
  %3 = load i64, i64* %__ecx, align 8, !dbg !1725
  store i64 %3, i64* %__ecx, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1730, metadata !DIExpression()), !dbg !1725
  %4 = load i64, i64* %__eax, align 8, !dbg !1725
  store i64 %4, i64* %__eax, align 8, !dbg !1725
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1725
  %6 = call i64 @llvm.read_register.i64(metadata !811), !dbg !1731
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1731, !srcloc !1734
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1731
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1731
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1731
  call void @llvm.write_register.i64(metadata !811, i64 %asmresult1), !dbg !1731
  %8 = load i64, i64* %__eax, align 8, !dbg !1731
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1735, metadata !DIExpression()), !dbg !1737
  store i64 -1, i64* %__mask, align 8, !dbg !1737
  %9 = load i64, i64* %__mask, align 8, !dbg !1737
  store i64 %9, i64* %tmp, align 8, !dbg !1737
  %10 = load i64, i64* %tmp, align 8, !dbg !1737
  %and = and i64 %8, %10, !dbg !1731
  store i64 %and, i64* %__ret, align 8, !dbg !1731
  %11 = load i64, i64* %__ret, align 8, !dbg !1725
  store i64 %11, i64* %tmp2, align 8, !dbg !1738
  %12 = load i64, i64* %tmp2, align 8, !dbg !1725
  ret i64 %12, !dbg !1739
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1740 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1742, metadata !DIExpression()), !dbg !1747
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1749, metadata !DIExpression()), !dbg !1750
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1751, metadata !DIExpression()), !dbg !1752
  %0 = load i64, i64* %size.addr, align 8, !dbg !1753
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1755
  br i1 %1, label %if.then, label %if.end447, !dbg !1756

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1757
  %tobool = icmp ne i64 %2, 0, !dbg !1757
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1760

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1761
  br label %return, !dbg !1761

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1762
  %cmp = icmp ult i64 %3, 4096, !dbg !1764
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1765

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1766
  br label %return, !dbg !1766

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub = sub i64 %4, 1, !dbg !1767
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1767
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1767

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub4 = sub i64 %6, 1, !dbg !1767
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1767
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1767

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub6 = sub i64 %8, 1, !dbg !1767
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1767
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1767

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1767

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub9 = sub i64 %9, 1, !dbg !1767
  %and = and i64 %sub9, -9223372036854775808, !dbg !1767
  %tobool10 = icmp ne i64 %and, 0, !dbg !1767
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1767

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1767

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub13 = sub i64 %10, 1, !dbg !1767
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1767
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1767
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1767

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1767

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub18 = sub i64 %11, 1, !dbg !1767
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1767
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1767
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1767

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1767

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub23 = sub i64 %12, 1, !dbg !1767
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1767
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1767
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1767

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1767

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub28 = sub i64 %13, 1, !dbg !1767
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1767
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1767
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1767

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1767

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub33 = sub i64 %14, 1, !dbg !1767
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1767
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1767
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1767

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1767

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub38 = sub i64 %15, 1, !dbg !1767
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1767
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1767
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1767

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1767

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub43 = sub i64 %16, 1, !dbg !1767
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1767
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1767
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1767

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1767

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub48 = sub i64 %17, 1, !dbg !1767
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1767
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1767
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1767

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1767

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub53 = sub i64 %18, 1, !dbg !1767
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1767
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1767
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1767

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1767

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub58 = sub i64 %19, 1, !dbg !1767
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1767
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1767
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1767

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1767

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub63 = sub i64 %20, 1, !dbg !1767
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1767
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1767
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1767

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1767

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub68 = sub i64 %21, 1, !dbg !1767
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1767
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1767
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1767

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1767

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub73 = sub i64 %22, 1, !dbg !1767
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1767
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1767
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1767

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1767

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub78 = sub i64 %23, 1, !dbg !1767
  %and79 = and i64 %sub78, 562949953421312, !dbg !1767
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1767
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1767

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1767

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub83 = sub i64 %24, 1, !dbg !1767
  %and84 = and i64 %sub83, 281474976710656, !dbg !1767
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1767
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1767

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1767

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub88 = sub i64 %25, 1, !dbg !1767
  %and89 = and i64 %sub88, 140737488355328, !dbg !1767
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1767
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1767

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1767

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub93 = sub i64 %26, 1, !dbg !1767
  %and94 = and i64 %sub93, 70368744177664, !dbg !1767
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1767
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1767

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1767

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub98 = sub i64 %27, 1, !dbg !1767
  %and99 = and i64 %sub98, 35184372088832, !dbg !1767
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1767
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1767

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1767

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub103 = sub i64 %28, 1, !dbg !1767
  %and104 = and i64 %sub103, 17592186044416, !dbg !1767
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1767
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1767

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1767

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub108 = sub i64 %29, 1, !dbg !1767
  %and109 = and i64 %sub108, 8796093022208, !dbg !1767
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1767
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1767

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1767

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub113 = sub i64 %30, 1, !dbg !1767
  %and114 = and i64 %sub113, 4398046511104, !dbg !1767
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1767
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1767

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1767

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub118 = sub i64 %31, 1, !dbg !1767
  %and119 = and i64 %sub118, 2199023255552, !dbg !1767
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1767
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1767

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1767

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub123 = sub i64 %32, 1, !dbg !1767
  %and124 = and i64 %sub123, 1099511627776, !dbg !1767
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1767
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1767

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1767

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub128 = sub i64 %33, 1, !dbg !1767
  %and129 = and i64 %sub128, 549755813888, !dbg !1767
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1767
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1767

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1767

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub133 = sub i64 %34, 1, !dbg !1767
  %and134 = and i64 %sub133, 274877906944, !dbg !1767
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1767
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1767

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1767

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub138 = sub i64 %35, 1, !dbg !1767
  %and139 = and i64 %sub138, 137438953472, !dbg !1767
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1767
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1767

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1767

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub143 = sub i64 %36, 1, !dbg !1767
  %and144 = and i64 %sub143, 68719476736, !dbg !1767
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1767
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1767

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1767

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub148 = sub i64 %37, 1, !dbg !1767
  %and149 = and i64 %sub148, 34359738368, !dbg !1767
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1767
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1767

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1767

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub153 = sub i64 %38, 1, !dbg !1767
  %and154 = and i64 %sub153, 17179869184, !dbg !1767
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1767
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1767

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1767

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub158 = sub i64 %39, 1, !dbg !1767
  %and159 = and i64 %sub158, 8589934592, !dbg !1767
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1767
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1767

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1767

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub163 = sub i64 %40, 1, !dbg !1767
  %and164 = and i64 %sub163, 4294967296, !dbg !1767
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1767
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1767

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1767

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub168 = sub i64 %41, 1, !dbg !1767
  %and169 = and i64 %sub168, 2147483648, !dbg !1767
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1767
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1767

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1767

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub173 = sub i64 %42, 1, !dbg !1767
  %and174 = and i64 %sub173, 1073741824, !dbg !1767
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1767
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1767

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1767

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub178 = sub i64 %43, 1, !dbg !1767
  %and179 = and i64 %sub178, 536870912, !dbg !1767
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1767
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1767

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1767

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub183 = sub i64 %44, 1, !dbg !1767
  %and184 = and i64 %sub183, 268435456, !dbg !1767
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1767
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1767

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1767

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub188 = sub i64 %45, 1, !dbg !1767
  %and189 = and i64 %sub188, 134217728, !dbg !1767
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1767
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1767

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1767

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub193 = sub i64 %46, 1, !dbg !1767
  %and194 = and i64 %sub193, 67108864, !dbg !1767
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1767
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1767

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1767

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub198 = sub i64 %47, 1, !dbg !1767
  %and199 = and i64 %sub198, 33554432, !dbg !1767
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1767
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1767

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1767

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub203 = sub i64 %48, 1, !dbg !1767
  %and204 = and i64 %sub203, 16777216, !dbg !1767
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1767
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1767

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1767

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub208 = sub i64 %49, 1, !dbg !1767
  %and209 = and i64 %sub208, 8388608, !dbg !1767
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1767
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1767

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1767

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub213 = sub i64 %50, 1, !dbg !1767
  %and214 = and i64 %sub213, 4194304, !dbg !1767
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1767
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1767

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1767

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub218 = sub i64 %51, 1, !dbg !1767
  %and219 = and i64 %sub218, 2097152, !dbg !1767
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1767
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1767

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1767

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub223 = sub i64 %52, 1, !dbg !1767
  %and224 = and i64 %sub223, 1048576, !dbg !1767
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1767
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1767

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1767

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub228 = sub i64 %53, 1, !dbg !1767
  %and229 = and i64 %sub228, 524288, !dbg !1767
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1767
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1767

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1767

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub233 = sub i64 %54, 1, !dbg !1767
  %and234 = and i64 %sub233, 262144, !dbg !1767
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1767
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1767

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1767

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub238 = sub i64 %55, 1, !dbg !1767
  %and239 = and i64 %sub238, 131072, !dbg !1767
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1767
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1767

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1767

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub243 = sub i64 %56, 1, !dbg !1767
  %and244 = and i64 %sub243, 65536, !dbg !1767
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1767
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1767

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1767

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub248 = sub i64 %57, 1, !dbg !1767
  %and249 = and i64 %sub248, 32768, !dbg !1767
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1767
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1767

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1767

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub253 = sub i64 %58, 1, !dbg !1767
  %and254 = and i64 %sub253, 16384, !dbg !1767
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1767
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1767

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1767

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub258 = sub i64 %59, 1, !dbg !1767
  %and259 = and i64 %sub258, 8192, !dbg !1767
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1767
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1767

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1767

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub263 = sub i64 %60, 1, !dbg !1767
  %and264 = and i64 %sub263, 4096, !dbg !1767
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1767
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1767

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1767

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub268 = sub i64 %61, 1, !dbg !1767
  %and269 = and i64 %sub268, 2048, !dbg !1767
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1767
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1767

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1767

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub273 = sub i64 %62, 1, !dbg !1767
  %and274 = and i64 %sub273, 1024, !dbg !1767
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1767
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1767

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1767

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub278 = sub i64 %63, 1, !dbg !1767
  %and279 = and i64 %sub278, 512, !dbg !1767
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1767
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1767

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1767

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub283 = sub i64 %64, 1, !dbg !1767
  %and284 = and i64 %sub283, 256, !dbg !1767
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1767
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1767

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1767

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub288 = sub i64 %65, 1, !dbg !1767
  %and289 = and i64 %sub288, 128, !dbg !1767
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1767
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1767

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1767

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub293 = sub i64 %66, 1, !dbg !1767
  %and294 = and i64 %sub293, 64, !dbg !1767
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1767
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1767

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1767

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub298 = sub i64 %67, 1, !dbg !1767
  %and299 = and i64 %sub298, 32, !dbg !1767
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1767
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1767

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1767

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub303 = sub i64 %68, 1, !dbg !1767
  %and304 = and i64 %sub303, 16, !dbg !1767
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1767
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1767

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1767

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub308 = sub i64 %69, 1, !dbg !1767
  %and309 = and i64 %sub308, 8, !dbg !1767
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1767
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1767

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1767

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub313 = sub i64 %70, 1, !dbg !1767
  %and314 = and i64 %sub313, 4, !dbg !1767
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1767
  %71 = zext i1 %tobool315 to i64, !dbg !1767
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1767
  br label %cond.end, !dbg !1767

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1767
  br label %cond.end317, !dbg !1767

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1767
  br label %cond.end319, !dbg !1767

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1767
  br label %cond.end321, !dbg !1767

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1767
  br label %cond.end323, !dbg !1767

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1767
  br label %cond.end325, !dbg !1767

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1767
  br label %cond.end327, !dbg !1767

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1767
  br label %cond.end329, !dbg !1767

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1767
  br label %cond.end331, !dbg !1767

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1767
  br label %cond.end333, !dbg !1767

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1767
  br label %cond.end335, !dbg !1767

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1767
  br label %cond.end337, !dbg !1767

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1767
  br label %cond.end339, !dbg !1767

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1767
  br label %cond.end341, !dbg !1767

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1767
  br label %cond.end343, !dbg !1767

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1767
  br label %cond.end345, !dbg !1767

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1767
  br label %cond.end347, !dbg !1767

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1767
  br label %cond.end349, !dbg !1767

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1767
  br label %cond.end351, !dbg !1767

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1767
  br label %cond.end353, !dbg !1767

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1767
  br label %cond.end355, !dbg !1767

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1767
  br label %cond.end357, !dbg !1767

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1767
  br label %cond.end359, !dbg !1767

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1767
  br label %cond.end361, !dbg !1767

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1767
  br label %cond.end363, !dbg !1767

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1767
  br label %cond.end365, !dbg !1767

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1767
  br label %cond.end367, !dbg !1767

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1767
  br label %cond.end369, !dbg !1767

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1767
  br label %cond.end371, !dbg !1767

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1767
  br label %cond.end373, !dbg !1767

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1767
  br label %cond.end375, !dbg !1767

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1767
  br label %cond.end377, !dbg !1767

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1767
  br label %cond.end379, !dbg !1767

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1767
  br label %cond.end381, !dbg !1767

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1767
  br label %cond.end383, !dbg !1767

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1767
  br label %cond.end385, !dbg !1767

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1767
  br label %cond.end387, !dbg !1767

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1767
  br label %cond.end389, !dbg !1767

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1767
  br label %cond.end391, !dbg !1767

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1767
  br label %cond.end393, !dbg !1767

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1767
  br label %cond.end395, !dbg !1767

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1767
  br label %cond.end397, !dbg !1767

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1767
  br label %cond.end399, !dbg !1767

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1767
  br label %cond.end401, !dbg !1767

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1767
  br label %cond.end403, !dbg !1767

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1767
  br label %cond.end405, !dbg !1767

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1767
  br label %cond.end407, !dbg !1767

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1767
  br label %cond.end409, !dbg !1767

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1767
  br label %cond.end411, !dbg !1767

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1767
  br label %cond.end413, !dbg !1767

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1767
  br label %cond.end415, !dbg !1767

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1767
  br label %cond.end417, !dbg !1767

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1767
  br label %cond.end419, !dbg !1767

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1767
  br label %cond.end421, !dbg !1767

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1767
  br label %cond.end423, !dbg !1767

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1767
  br label %cond.end425, !dbg !1767

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1767
  br label %cond.end427, !dbg !1767

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1767
  br label %cond.end429, !dbg !1767

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1767
  br label %cond.end431, !dbg !1767

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1767
  br label %cond.end433, !dbg !1767

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1767
  br label %cond.end435, !dbg !1767

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1767
  br label %cond.end437, !dbg !1767

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1767
  br label %cond.end440, !dbg !1767

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1767

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1767
  br label %cond.end444, !dbg !1767

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1767
  %sub443 = sub i64 %72, 1, !dbg !1767
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1767
  br label %cond.end444, !dbg !1767

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1767
  %sub446 = sub i32 %cond445, 12, !dbg !1768
  %add = add i32 %sub446, 1, !dbg !1769
  store i32 %add, i32* %retval, align 4, !dbg !1770
  br label %return, !dbg !1770

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1771
  %dec = add i64 %73, -1, !dbg !1771
  store i64 %dec, i64* %size.addr, align 8, !dbg !1771
  %74 = load i64, i64* %size.addr, align 8, !dbg !1772
  %shr = lshr i64 %74, 12, !dbg !1772
  store i64 %shr, i64* %size.addr, align 8, !dbg !1772
  %75 = load i64, i64* %size.addr, align 8, !dbg !1773
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1750
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1774
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1775
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1774, !srcloc !1776
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1774
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1777
  %add.i = add i32 %79, 1, !dbg !1778
  store i32 %add.i, i32* %retval, align 4, !dbg !1779
  br label %return, !dbg !1779

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1780
  ret i32 %80, !dbg !1780
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1781 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1742, metadata !DIExpression()), !dbg !1785
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1749, metadata !DIExpression()), !dbg !1787
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1788, metadata !DIExpression()), !dbg !1789
  %0 = load i64, i64* %n.addr, align 8, !dbg !1790
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1787
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1791
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1792
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1791, !srcloc !1776
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1791
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1793
  %add.i = add i32 %4, 1, !dbg !1794
  %sub = sub i32 %add.i, 1, !dbg !1795
  ret i32 %sub, !dbg !1796
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1797 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1805, metadata !DIExpression()), !dbg !1806
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1807, metadata !DIExpression()), !dbg !1808
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1809, metadata !DIExpression()), !dbg !1810
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1811
  ret i8* %0, !dbg !1812
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
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!811}
!llvm.module.flags = !{!812, !813, !814, !815}
!llvm.ident = !{!816}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !809, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsobject.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 321, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 305, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!30 = !{!31, !36, !122, !145, !83, !804, !37, !68, !805, !807}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !39)
!39 = !{!40, !791, !792, !793, !794, !800, !801, !802, !803}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !38, file: !6, line: 134, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !13, line: 367, size: 576, elements: !43)
!43 = !{!44, !55, !71, !85, !99, !113, !123, !442, !459, !474, !487, !565, !577, !591, !601, !619, !641, !660, !679, !698, !711, !737, !754, !767, !781, !790}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !42, file: !13, line: 368, baseType: !45, size: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !13, line: 73, size: 128, elements: !46)
!46 = !{!47, !48, !52, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !45, file: !13, line: 74, baseType: !41, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !45, file: !13, line: 74, baseType: !49, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !45, file: !13, line: 74, baseType: !49, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !45, file: !13, line: 74, baseType: !31, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !13, line: 74, baseType: !49, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !42, file: !13, line: 369, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !13, line: 76, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !13, line: 77, baseType: !41, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !13, line: 77, baseType: !49, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !13, line: 77, baseType: !49, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !13, line: 77, baseType: !31, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !13, line: 77, baseType: !49, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !56, file: !13, line: 77, baseType: !64, size: 24, offset: 104)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !13, line: 78, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !70)
!70 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !42, file: !13, line: 370, baseType: !72, size: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !13, line: 93, size: 256, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !82}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !13, line: 94, baseType: !41, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !13, line: 94, baseType: !49, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !13, line: 94, baseType: !49, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !13, line: 94, baseType: !31, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !13, line: 94, baseType: !49, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !72, file: !13, line: 94, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !13, line: 94, baseType: !83, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !42, file: !13, line: 371, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !13, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !95, !96, !97, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !13, line: 98, baseType: !41, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !13, line: 98, baseType: !49, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !13, line: 98, baseType: !49, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !13, line: 98, baseType: !31, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !13, line: 98, baseType: !49, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !13, line: 98, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !13, line: 98, baseType: !83, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !13, line: 99, baseType: !83, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !13, line: 100, baseType: !94, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !13, line: 101, baseType: !37, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !42, file: !13, line: 372, baseType: !100, size: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !13, line: 104, size: 384, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !110, !111, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !13, line: 105, baseType: !41, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !13, line: 105, baseType: !49, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !13, line: 105, baseType: !49, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !13, line: 105, baseType: !31, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !13, line: 105, baseType: !49, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !13, line: 105, baseType: !37, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !100, file: !13, line: 106, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !100, file: !13, line: 107, baseType: !94, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !100, file: !13, line: 108, baseType: !83, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !13, line: 109, baseType: !83, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !42, file: !13, line: 373, baseType: !114, size: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !13, line: 118, size: 192, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !13, line: 119, baseType: !41, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !13, line: 119, baseType: !49, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !13, line: 119, baseType: !49, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !13, line: 119, baseType: !31, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !13, line: 119, baseType: !49, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !114, file: !13, line: 119, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !42, file: !13, line: 374, baseType: !124, size: 448)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !13, line: 143, size: 448, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !439, !440, !441}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !13, line: 144, baseType: !41, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !13, line: 144, baseType: !49, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !13, line: 144, baseType: !49, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !13, line: 144, baseType: !31, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !13, line: 144, baseType: !49, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !124, file: !13, line: 144, baseType: !49, size: 8, offset: 104)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !124, file: !13, line: 145, baseType: !49, size: 8, offset: 112)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !124, file: !13, line: 146, baseType: !49, size: 8, offset: 120)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !124, file: !13, line: 147, baseType: !41, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !13, line: 148, baseType: !41, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !13, line: 149, baseType: !94, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !124, file: !13, line: 153, baseType: !138, size: 64, offset: 320)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !13, line: 150, size: 64, elements: !139)
!139 = !{!140, !438}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !138, file: !13, line: 151, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !146, line: 421, baseType: !83)
!146 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !149, line: 37, size: 9024, elements: !150)
!149 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !384, !385, !386, !387, !388, !392, !394, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !421, !422, !423, !424, !425, !426, !427, !428, !430, !436}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !149, line: 38, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !149, line: 39, baseType: !49, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !148, file: !149, line: 40, baseType: !49, size: 8, offset: 72)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !148, file: !149, line: 41, baseType: !31, size: 16, offset: 80)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !148, file: !149, line: 42, baseType: !49, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !148, file: !149, line: 43, baseType: !49, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !148, file: !149, line: 44, baseType: !49, size: 8, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !148, file: !149, line: 45, baseType: !159, size: 16, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !146, line: 445, baseType: !31)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !148, file: !149, line: 46, baseType: !49, size: 8, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !148, file: !149, line: 47, baseType: !49, size: 8, offset: 152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !148, file: !149, line: 48, baseType: !49, size: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !148, file: !149, line: 49, baseType: !49, size: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !148, file: !149, line: 50, baseType: !49, size: 8, offset: 176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !148, file: !149, line: 51, baseType: !49, size: 8, offset: 184)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !148, file: !149, line: 52, baseType: !49, size: 8, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !148, file: !149, line: 53, baseType: !49, size: 8, offset: 200)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !148, file: !149, line: 54, baseType: !94, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !148, file: !149, line: 55, baseType: !83, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !148, file: !149, line: 56, baseType: !83, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !148, file: !149, line: 57, baseType: !83, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !148, file: !149, line: 58, baseType: !83, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !148, file: !149, line: 60, baseType: !174, size: 640, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !265, !266, !382, !383}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !6, line: 894, baseType: !94, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !6, line: 895, baseType: !94, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !174, file: !6, line: 896, baseType: !94, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !174, file: !6, line: 897, baseType: !94, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !174, file: !6, line: 898, baseType: !94, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !174, file: !6, line: 899, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !184)
!184 = !{!185, !205, !221}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !183, file: !6, line: 876, baseType: !186, size: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !186, file: !6, line: 829, baseType: !182, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !6, line: 829, baseType: !49, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !6, line: 829, baseType: !49, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !186, file: !6, line: 829, baseType: !31, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !6, line: 829, baseType: !94, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !6, line: 829, baseType: !182, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !6, line: 829, baseType: !37, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !186, file: !6, line: 829, baseType: !196, size: 64, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !196, file: !6, line: 717, baseType: !68, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !6, line: 718, baseType: !83, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !196, file: !6, line: 719, baseType: !80, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !196, file: !6, line: 720, baseType: !94, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !6, line: 721, baseType: !80, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !196, file: !6, line: 722, baseType: !182, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !186, file: !6, line: 829, baseType: !49, size: 8, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !183, file: !6, line: 877, baseType: !206, size: 640)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !6, line: 836, baseType: !182, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !6, line: 836, baseType: !49, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !6, line: 836, baseType: !49, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !6, line: 836, baseType: !31, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !6, line: 836, baseType: !94, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !6, line: 836, baseType: !182, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !6, line: 836, baseType: !37, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !6, line: 836, baseType: !196, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !6, line: 836, baseType: !49, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !206, file: !6, line: 836, baseType: !80, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !6, line: 837, baseType: !94, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !206, file: !6, line: 838, baseType: !83, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !6, line: 839, baseType: !83, size: 32, offset: 608)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !183, file: !6, line: 878, baseType: !222, size: 1600)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !6, line: 847, baseType: !182, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !6, line: 847, baseType: !49, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !6, line: 847, baseType: !49, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !6, line: 847, baseType: !31, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !6, line: 847, baseType: !94, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !6, line: 847, baseType: !182, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !6, line: 847, baseType: !37, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !6, line: 847, baseType: !196, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !6, line: 847, baseType: !49, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !222, file: !6, line: 847, baseType: !182, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !222, file: !6, line: 848, baseType: !182, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !222, file: !6, line: 849, baseType: !80, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !222, file: !6, line: 850, baseType: !49, size: 8, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !222, file: !6, line: 851, baseType: !80, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !222, file: !6, line: 852, baseType: !80, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !222, file: !6, line: 853, baseType: !80, size: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !222, file: !6, line: 854, baseType: !241, size: 32, offset: 896)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 4)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !222, file: !6, line: 855, baseType: !83, size: 32, offset: 928)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !222, file: !6, line: 856, baseType: !83, size: 32, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !222, file: !6, line: 857, baseType: !83, size: 32, offset: 992)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !222, file: !6, line: 858, baseType: !83, size: 32, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !222, file: !6, line: 859, baseType: !83, size: 32, offset: 1056)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !222, file: !6, line: 860, baseType: !83, size: 32, offset: 1088)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !222, file: !6, line: 861, baseType: !83, size: 32, offset: 1120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !222, file: !6, line: 862, baseType: !83, size: 32, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !222, file: !6, line: 863, baseType: !83, size: 32, offset: 1184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !222, file: !6, line: 864, baseType: !83, size: 32, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !222, file: !6, line: 865, baseType: !83, size: 32, offset: 1248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !222, file: !6, line: 866, baseType: !83, size: 32, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !222, file: !6, line: 867, baseType: !83, size: 32, offset: 1312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !222, file: !6, line: 868, baseType: !31, size: 16, offset: 1344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !222, file: !6, line: 869, baseType: !49, size: 8, offset: 1360)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !222, file: !6, line: 870, baseType: !49, size: 8, offset: 1368)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !222, file: !6, line: 871, baseType: !49, size: 8, offset: 1376)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !222, file: !6, line: 872, baseType: !262, size: 160, offset: 1384)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 20)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !174, file: !6, line: 900, baseType: !37, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !174, file: !6, line: 901, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !269)
!269 = !{!270, !278, !291, !300, !309, !322, !336, !348, !360}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !268, file: !6, line: 664, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !272)
!272 = !{!273, !274, !275, !276, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !6, line: 568, baseType: !122, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !6, line: 568, baseType: !49, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !6, line: 568, baseType: !49, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !271, file: !6, line: 568, baseType: !31, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !6, line: 568, baseType: !31, size: 16, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !268, file: !6, line: 665, baseType: !279, size: 384)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !6, line: 594, baseType: !122, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !6, line: 594, baseType: !49, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !6, line: 594, baseType: !49, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !6, line: 594, baseType: !31, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !6, line: 594, baseType: !31, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !279, file: !6, line: 594, baseType: !31, size: 16, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !279, file: !6, line: 595, baseType: !182, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !279, file: !6, line: 596, baseType: !94, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !279, file: !6, line: 597, baseType: !94, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !279, file: !6, line: 598, baseType: !68, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !268, file: !6, line: 666, baseType: !292, size: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 574, baseType: !122, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !6, line: 574, baseType: !49, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 574, baseType: !49, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !6, line: 574, baseType: !31, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !6, line: 574, baseType: !31, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !292, file: !6, line: 574, baseType: !41, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !268, file: !6, line: 667, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !6, line: 605, baseType: !122, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !6, line: 605, baseType: !49, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !6, line: 605, baseType: !49, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !6, line: 605, baseType: !31, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !6, line: 605, baseType: !31, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !301, file: !6, line: 605, baseType: !37, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !268, file: !6, line: 668, baseType: !310, size: 448)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !6, line: 609, baseType: !122, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !6, line: 609, baseType: !49, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !6, line: 609, baseType: !49, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !6, line: 609, baseType: !31, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !6, line: 609, baseType: !31, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !310, file: !6, line: 609, baseType: !83, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !310, file: !6, line: 610, baseType: !182, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !310, file: !6, line: 611, baseType: !94, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !310, file: !6, line: 612, baseType: !94, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !310, file: !6, line: 613, baseType: !83, size: 32, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !268, file: !6, line: 669, baseType: !323, size: 512)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !6, line: 581, baseType: !122, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !6, line: 581, baseType: !49, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !6, line: 581, baseType: !49, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !6, line: 581, baseType: !31, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !6, line: 581, baseType: !31, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !323, file: !6, line: 581, baseType: !83, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !323, file: !6, line: 582, baseType: !41, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !323, file: !6, line: 583, baseType: !41, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !323, file: !6, line: 584, baseType: !147, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !323, file: !6, line: 585, baseType: !122, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !323, file: !6, line: 586, baseType: !83, size: 32, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !268, file: !6, line: 670, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !6, line: 621, baseType: !122, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !6, line: 621, baseType: !49, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !6, line: 621, baseType: !49, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !6, line: 621, baseType: !31, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !6, line: 621, baseType: !31, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !337, file: !6, line: 621, baseType: !49, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !337, file: !6, line: 622, baseType: !147, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !337, file: !6, line: 623, baseType: !41, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !337, file: !6, line: 624, baseType: !68, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !268, file: !6, line: 671, baseType: !349, size: 640)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !6, line: 632, baseType: !122, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !6, line: 632, baseType: !49, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !6, line: 632, baseType: !49, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !6, line: 632, baseType: !31, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !6, line: 632, baseType: !31, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !349, file: !6, line: 633, baseType: !357, size: 512, offset: 128)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !268, file: !6, line: 672, baseType: !361, size: 320)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !6, line: 655, baseType: !122, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !6, line: 655, baseType: !49, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !6, line: 655, baseType: !49, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !6, line: 655, baseType: !31, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !6, line: 655, baseType: !31, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !361, file: !6, line: 655, baseType: !49, size: 8, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !361, file: !6, line: 656, baseType: !37, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !361, file: !6, line: 657, baseType: !41, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !361, file: !6, line: 658, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !374)
!374 = !{!375, !381}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !373, file: !6, line: 646, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !146, line: 1052, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !83, !122}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !146, line: 424, baseType: !122)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !373, file: !6, line: 647, baseType: !122, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !174, file: !6, line: 902, baseType: !182, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !174, file: !6, line: 903, baseType: !83, size: 32, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !148, file: !149, line: 61, baseType: !83, size: 32, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !148, file: !149, line: 62, baseType: !83, size: 32, offset: 1120)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !148, file: !149, line: 63, baseType: !31, size: 16, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !148, file: !149, line: 64, baseType: !49, size: 8, offset: 1168)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !148, file: !149, line: 66, baseType: !389, size: 2688, offset: 1216)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2688, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !148, file: !149, line: 67, baseType: !393, size: 3072, offset: 3904)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3072, elements: !358)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !148, file: !149, line: 68, baseType: !395, size: 576, offset: 6976)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 576, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 9)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !148, file: !149, line: 69, baseType: !109, size: 64, offset: 7552)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !148, file: !149, line: 71, baseType: !94, size: 64, offset: 7616)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !148, file: !149, line: 72, baseType: !109, size: 64, offset: 7680)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !148, file: !149, line: 73, baseType: !267, size: 64, offset: 7744)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !148, file: !149, line: 74, baseType: !37, size: 64, offset: 7808)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !148, file: !149, line: 75, baseType: !41, size: 64, offset: 7872)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !148, file: !149, line: 76, baseType: !37, size: 64, offset: 7936)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !148, file: !149, line: 77, baseType: !182, size: 64, offset: 8000)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !148, file: !149, line: 78, baseType: !41, size: 64, offset: 8064)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !148, file: !149, line: 79, baseType: !37, size: 64, offset: 8128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !148, file: !149, line: 80, baseType: !80, size: 64, offset: 8192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !148, file: !149, line: 81, baseType: !182, size: 64, offset: 8256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !148, file: !149, line: 82, baseType: !411, size: 64, offset: 8320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !413, file: !6, line: 706, baseType: !83, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !413, file: !6, line: 707, baseType: !83, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !6, line: 708, baseType: !31, size: 16, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !413, file: !6, line: 709, baseType: !49, size: 8, offset: 80)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !413, file: !6, line: 710, baseType: !49, size: 8, offset: 88)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !413, file: !6, line: 711, baseType: !49, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !148, file: !149, line: 83, baseType: !182, size: 64, offset: 8384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !148, file: !149, line: 84, baseType: !41, size: 64, offset: 8448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !148, file: !149, line: 85, baseType: !267, size: 64, offset: 8512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !148, file: !149, line: 86, baseType: !41, size: 64, offset: 8576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !148, file: !149, line: 87, baseType: !267, size: 64, offset: 8640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !148, file: !149, line: 88, baseType: !182, size: 64, offset: 8704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !148, file: !149, line: 89, baseType: !182, size: 64, offset: 8768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !148, file: !149, line: 90, baseType: !429, size: 64, offset: 8832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !148, file: !149, line: 91, baseType: !431, size: 64, offset: 8896)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!145, !147, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !148, file: !149, line: 92, baseType: !437, size: 64, offset: 8960)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !142)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !138, file: !13, line: 152, baseType: !41, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !13, line: 155, baseType: !83, size: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !124, file: !13, line: 156, baseType: !159, size: 16, offset: 416)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !124, file: !13, line: 157, baseType: !49, size: 8, offset: 432)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !42, file: !13, line: 375, baseType: !443, size: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !13, line: 122, size: 576, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !443, file: !13, line: 123, baseType: !41, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !443, file: !13, line: 123, baseType: !49, size: 8, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !443, file: !13, line: 123, baseType: !49, size: 8, offset: 72)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !443, file: !13, line: 123, baseType: !31, size: 16, offset: 80)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !13, line: 123, baseType: !49, size: 8, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !443, file: !13, line: 123, baseType: !49, size: 8, offset: 104)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !443, file: !13, line: 124, baseType: !31, size: 16, offset: 112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !443, file: !13, line: 125, baseType: !122, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !443, file: !13, line: 126, baseType: !68, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !443, file: !13, line: 127, baseType: !429, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !443, file: !13, line: 128, baseType: !41, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !13, line: 129, baseType: !41, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !443, file: !13, line: 130, baseType: !37, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !443, file: !13, line: 131, baseType: !49, size: 8, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !42, file: !13, line: 376, baseType: !460, size: 448)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !13, line: 134, size: 448, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !473}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !13, line: 135, baseType: !41, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !13, line: 135, baseType: !49, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !13, line: 135, baseType: !49, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !13, line: 135, baseType: !31, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !13, line: 135, baseType: !49, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !460, file: !13, line: 135, baseType: !49, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !13, line: 136, baseType: !37, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !13, line: 137, baseType: !41, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !13, line: 138, baseType: !41, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !460, file: !13, line: 139, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !146, line: 129, baseType: !68)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !460, file: !13, line: 140, baseType: !83, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !42, file: !13, line: 377, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !13, line: 184, size: 320, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !13, line: 185, baseType: !41, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !13, line: 185, baseType: !49, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !13, line: 185, baseType: !49, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !13, line: 185, baseType: !31, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !13, line: 185, baseType: !49, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !13, line: 185, baseType: !483, size: 128, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !13, line: 185, baseType: !41, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !42, file: !13, line: 378, baseType: !488, size: 384)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !13, line: 187, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !13, line: 188, baseType: !41, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !13, line: 188, baseType: !49, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !13, line: 188, baseType: !49, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !13, line: 188, baseType: !31, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !13, line: 188, baseType: !49, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !13, line: 189, baseType: !483, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !13, line: 189, baseType: !41, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !488, file: !13, line: 189, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !512, !527, !559, !560, !561, !562, !563, !564}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !6, line: 481, baseType: !37, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !6, line: 482, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !6, line: 483, baseType: !498, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !499, file: !6, line: 484, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !6, line: 498, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !6, line: 499, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !506, file: !6, line: 500, baseType: !498, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !506, file: !6, line: 501, baseType: !83, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !499, file: !6, line: 485, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !515)
!515 = !{!516, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !514, file: !6, line: 467, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !6, line: 460, baseType: !49, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !6, line: 461, baseType: !68, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !514, file: !6, line: 468, baseType: !517, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !514, file: !6, line: 469, baseType: !31, size: 16, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !514, file: !6, line: 470, baseType: !49, size: 8, offset: 272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !514, file: !6, line: 471, baseType: !49, size: 8, offset: 280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !514, file: !6, line: 472, baseType: !49, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !514, file: !6, line: 473, baseType: !49, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !499, file: !6, line: 486, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !530)
!530 = !{!531, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !529, file: !6, line: 449, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !533)
!533 = !{!534, !535, !548}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !6, line: 439, baseType: !37, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !6, line: 440, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !538)
!538 = !{!539, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !6, line: 420, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !146, line: 1049, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!83, !380, !83, !122}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !6, line: 421, baseType: !122, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !6, line: 422, baseType: !37, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !537, file: !6, line: 423, baseType: !49, size: 8, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !537, file: !6, line: 424, baseType: !49, size: 8, offset: 200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !6, line: 441, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !550, file: !6, line: 430, baseType: !37, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !6, line: 431, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !529, file: !6, line: 450, baseType: !513, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !6, line: 451, baseType: !49, size: 8, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !529, file: !6, line: 452, baseType: !49, size: 8, offset: 136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !529, file: !6, line: 453, baseType: !49, size: 8, offset: 144)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !529, file: !6, line: 454, baseType: !49, size: 8, offset: 152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !6, line: 487, baseType: !68, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !499, file: !6, line: 488, baseType: !83, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !499, file: !6, line: 489, baseType: !31, size: 16, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !499, file: !6, line: 490, baseType: !31, size: 16, offset: 496)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !6, line: 491, baseType: !49, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !499, file: !6, line: 492, baseType: !49, size: 8, offset: 520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !42, file: !13, line: 379, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !13, line: 192, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !13, line: 193, baseType: !41, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !13, line: 193, baseType: !49, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !13, line: 193, baseType: !49, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !13, line: 193, baseType: !31, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !13, line: 193, baseType: !49, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !13, line: 193, baseType: !483, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !13, line: 193, baseType: !41, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !566, file: !13, line: 193, baseType: !83, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !566, file: !13, line: 194, baseType: !83, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !42, file: !13, line: 380, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !13, line: 197, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !13, line: 198, baseType: !41, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !13, line: 198, baseType: !49, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !13, line: 198, baseType: !49, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !13, line: 198, baseType: !31, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !13, line: 198, baseType: !49, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !578, file: !13, line: 200, baseType: !49, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !13, line: 201, baseType: !49, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !13, line: 202, baseType: !483, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !13, line: 202, baseType: !41, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !13, line: 202, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !146, line: 128, baseType: !68)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !42, file: !13, line: 381, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !13, line: 205, size: 320, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !13, line: 206, baseType: !41, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !13, line: 206, baseType: !49, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !13, line: 206, baseType: !49, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !13, line: 206, baseType: !31, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !13, line: 206, baseType: !49, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !13, line: 206, baseType: !483, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !13, line: 206, baseType: !41, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !42, file: !13, line: 382, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !13, line: 233, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !13, line: 234, baseType: !41, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !13, line: 234, baseType: !31, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !13, line: 234, baseType: !37, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !13, line: 234, baseType: !83, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !13, line: 234, baseType: !83, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !13, line: 234, baseType: !83, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !13, line: 234, baseType: !49, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !13, line: 234, baseType: !41, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !42, file: !13, line: 383, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !13, line: 237, size: 576, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !13, line: 238, baseType: !41, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !13, line: 238, baseType: !31, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !13, line: 238, baseType: !37, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !13, line: 238, baseType: !83, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !13, line: 238, baseType: !83, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !13, line: 238, baseType: !83, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !13, line: 238, baseType: !49, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !620, file: !13, line: 238, baseType: !31, size: 16, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !13, line: 239, baseType: !41, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !620, file: !13, line: 240, baseType: !94, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !620, file: !13, line: 241, baseType: !31, size: 16, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !620, file: !13, line: 242, baseType: !94, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !42, file: !13, line: 384, baseType: !642, size: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !13, line: 262, size: 384, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !13, line: 263, baseType: !41, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !13, line: 263, baseType: !31, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !13, line: 263, baseType: !37, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !13, line: 263, baseType: !83, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !13, line: 263, baseType: !83, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !13, line: 263, baseType: !83, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !642, file: !13, line: 263, baseType: !49, size: 8, offset: 304)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !642, file: !13, line: 264, baseType: !41, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !42, file: !13, line: 385, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !13, line: 245, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !13, line: 246, baseType: !41, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !13, line: 246, baseType: !31, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !13, line: 246, baseType: !37, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !13, line: 246, baseType: !83, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !13, line: 246, baseType: !83, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !13, line: 246, baseType: !83, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !13, line: 246, baseType: !49, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !13, line: 246, baseType: !41, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !661, file: !13, line: 247, baseType: !41, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !42, file: !13, line: 386, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !13, line: 250, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !13, line: 251, baseType: !41, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !13, line: 251, baseType: !31, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !13, line: 251, baseType: !37, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !13, line: 251, baseType: !83, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !13, line: 251, baseType: !83, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !13, line: 251, baseType: !83, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !13, line: 251, baseType: !49, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !680, file: !13, line: 256, baseType: !41, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !680, file: !13, line: 257, baseType: !41, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !42, file: !13, line: 387, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !13, line: 273, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !13, line: 274, baseType: !41, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !13, line: 274, baseType: !49, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !13, line: 274, baseType: !49, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !13, line: 274, baseType: !31, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !13, line: 274, baseType: !49, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !13, line: 274, baseType: !37, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !699, file: !13, line: 275, baseType: !83, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !13, line: 276, baseType: !376, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !13, line: 277, baseType: !122, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !13, line: 278, baseType: !483, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !42, file: !13, line: 388, baseType: !712, size: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !13, line: 281, size: 512, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !727, !728, !729, !735, !736}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !13, line: 282, baseType: !41, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !13, line: 282, baseType: !49, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !13, line: 282, baseType: !49, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !13, line: 282, baseType: !31, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !13, line: 282, baseType: !49, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !712, file: !13, line: 282, baseType: !49, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !712, file: !13, line: 283, baseType: !49, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !13, line: 284, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !146, line: 1084, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!145, !83, !472, !83, !726, !122, !122}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !13, line: 285, baseType: !37, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !13, line: 286, baseType: !122, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !712, file: !13, line: 287, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !146, line: 1102, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!145, !380, !83, !122, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !712, file: !13, line: 288, baseType: !41, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !13, line: 289, baseType: !41, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !42, file: !13, line: 389, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !13, line: 307, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !13, line: 308, baseType: !41, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !13, line: 308, baseType: !49, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !13, line: 308, baseType: !49, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !13, line: 308, baseType: !31, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !13, line: 308, baseType: !49, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !738, file: !13, line: 308, baseType: !49, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !738, file: !13, line: 309, baseType: !49, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !13, line: 310, baseType: !49, size: 8, offset: 120)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !738, file: !13, line: 311, baseType: !122, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !13, line: 312, baseType: !37, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !738, file: !13, line: 313, baseType: !109, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !738, file: !13, line: 314, baseType: !94, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !13, line: 315, baseType: !94, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !13, line: 316, baseType: !83, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !42, file: !13, line: 390, baseType: !755, size: 448)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !13, line: 340, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !13, line: 341, baseType: !41, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !13, line: 341, baseType: !49, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !13, line: 341, baseType: !49, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !13, line: 341, baseType: !31, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !13, line: 341, baseType: !49, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !755, file: !13, line: 341, baseType: !37, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !755, file: !13, line: 342, baseType: !37, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !755, file: !13, line: 343, baseType: !122, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !13, line: 344, baseType: !94, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !13, line: 345, baseType: !83, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !13, line: 391, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !13, line: 350, size: 256, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !13, line: 351, baseType: !41, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !13, line: 351, baseType: !49, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !13, line: 351, baseType: !49, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !13, line: 351, baseType: !31, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !13, line: 351, baseType: !49, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !13, line: 351, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !146, line: 1055, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !380, !122}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !768, file: !13, line: 352, baseType: !122, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !42, file: !13, line: 392, baseType: !782, size: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !13, line: 357, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !13, line: 358, baseType: !41, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !13, line: 358, baseType: !49, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !13, line: 358, baseType: !49, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !13, line: 358, baseType: !31, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !13, line: 358, baseType: !49, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !13, line: 358, baseType: !41, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !42, file: !13, line: 399, baseType: !38, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !6, line: 135, baseType: !49, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !6, line: 136, baseType: !49, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !6, line: 137, baseType: !31, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !6, line: 138, baseType: !795, size: 32, offset: 96)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !796, line: 327, size: 32, elements: !797)
!796 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !795, file: !796, line: 328, baseType: !83, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !795, file: !796, line: 329, baseType: !241, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !38, file: !6, line: 139, baseType: !37, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !38, file: !6, line: 140, baseType: !37, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !38, file: !6, line: 141, baseType: !37, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !38, file: !6, line: 142, baseType: !159, size: 16, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !146, line: 127, baseType: !68)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !806, line: 148, baseType: !7)
!806 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!807 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!808 = !{!0}
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 72, elements: !396)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!811 = !{!"rsp"}
!812 = !{i32 7, !"Dwarf Version", i32 4}
!813 = !{i32 2, !"Debug Info Version", i32 3}
!814 = !{i32 1, !"wchar_size", i32 2}
!815 = !{i32 1, !"Code Model", i32 2}
!816 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!817 = distinct !DISubprogram(name: "acpi_ds_build_internal_object", scope: !3, file: !3, line: 36, type: !818, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!145, !147, !182, !109}
!820 = !{}
!821 = !DILocalVariable(name: "walk_state", arg: 1, scope: !817, file: !3, line: 36, type: !147)
!822 = !DILocation(line: 36, column: 55, scope: !817)
!823 = !DILocalVariable(name: "op", arg: 2, scope: !817, file: !3, line: 37, type: !182)
!824 = !DILocation(line: 37, column: 35, scope: !817)
!825 = !DILocalVariable(name: "obj_desc_ptr", arg: 3, scope: !817, file: !3, line: 38, type: !109)
!826 = !DILocation(line: 38, column: 38, scope: !817)
!827 = !DILocalVariable(name: "obj_desc", scope: !817, file: !3, line: 40, type: !41)
!828 = !DILocation(line: 40, column: 29, scope: !817)
!829 = !DILocalVariable(name: "status", scope: !817, file: !3, line: 41, type: !145)
!830 = !DILocation(line: 41, column: 14, scope: !817)
!831 = !DILocation(line: 45, column: 3, scope: !817)
!832 = !DILocation(line: 45, column: 16, scope: !817)
!833 = !DILocation(line: 46, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !3, line: 46, column: 6)
!835 = !DILocation(line: 46, column: 10, scope: !834)
!836 = !DILocation(line: 46, column: 17, scope: !834)
!837 = !DILocation(line: 46, column: 28, scope: !834)
!838 = !DILocation(line: 46, column: 6, scope: !817)
!839 = !DILocation(line: 52, column: 8, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 52, column: 7)
!841 = distinct !DILexicalBlock(scope: !834, file: !3, line: 46, column: 52)
!842 = !DILocation(line: 52, column: 12, scope: !840)
!843 = !DILocation(line: 52, column: 19, scope: !840)
!844 = !DILocation(line: 52, column: 7, scope: !841)
!845 = !DILocation(line: 56, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 56, column: 8)
!847 = distinct !DILexicalBlock(scope: !840, file: !3, line: 52, column: 25)
!848 = !DILocation(line: 56, column: 13, scope: !846)
!849 = !DILocation(line: 56, column: 20, scope: !846)
!850 = !DILocation(line: 56, column: 28, scope: !846)
!851 = !DILocation(line: 56, column: 35, scope: !846)
!852 = !DILocation(line: 56, column: 46, scope: !846)
!853 = !DILocation(line: 58, column: 8, scope: !846)
!854 = !DILocation(line: 58, column: 12, scope: !846)
!855 = !DILocation(line: 58, column: 16, scope: !846)
!856 = !DILocation(line: 58, column: 23, scope: !846)
!857 = !DILocation(line: 58, column: 31, scope: !846)
!858 = !DILocation(line: 58, column: 38, scope: !846)
!859 = !DILocation(line: 58, column: 49, scope: !846)
!860 = !DILocation(line: 56, column: 8, scope: !847)
!861 = !DILocation(line: 66, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !846, file: !3, line: 59, column: 31)
!863 = !DILocation(line: 68, column: 29, scope: !864)
!864 = distinct !DILexicalBlock(scope: !846, file: !3, line: 67, column: 11)
!865 = !DILocation(line: 68, column: 41, scope: !864)
!866 = !DILocation(line: 69, column: 8, scope: !864)
!867 = !DILocation(line: 69, column: 12, scope: !864)
!868 = !DILocation(line: 69, column: 19, scope: !864)
!869 = !DILocation(line: 69, column: 25, scope: !864)
!870 = !DILocation(line: 75, column: 8, scope: !864)
!871 = !DILocation(line: 68, column: 14, scope: !864)
!872 = !DILocation(line: 68, column: 12, scope: !864)
!873 = !DILocation(line: 79, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !864, file: !3, line: 79, column: 9)
!875 = !DILocation(line: 79, column: 9, scope: !864)
!876 = !DILocation(line: 80, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 79, column: 31)
!878 = !DILocation(line: 84, column: 6, scope: !877)
!879 = !DILocation(line: 87, column: 3, scope: !847)
!880 = !DILocation(line: 88, column: 2, scope: !841)
!881 = !DILocation(line: 46, column: 31, scope: !834)
!882 = !DILabel(scope: !817, name: "create_new_object", file: !3, line: 90)
!883 = !DILocation(line: 90, column: 1, scope: !817)
!884 = !DILocation(line: 94, column: 13, scope: !817)
!885 = !DILocation(line: 94, column: 11, scope: !817)
!886 = !DILocation(line: 97, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !817, file: !3, line: 97, column: 6)
!888 = !DILocation(line: 97, column: 6, scope: !817)
!889 = !DILocation(line: 98, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 97, column: 17)
!891 = !DILocation(line: 102, column: 34, scope: !817)
!892 = !DILocation(line: 102, column: 46, scope: !817)
!893 = !DILocation(line: 102, column: 50, scope: !817)
!894 = !DILocation(line: 102, column: 54, scope: !817)
!895 = !DILocation(line: 102, column: 61, scope: !817)
!896 = !DILocation(line: 102, column: 6, scope: !817)
!897 = !DILocation(line: 101, column: 9, scope: !817)
!898 = !DILocation(line: 104, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !817, file: !3, line: 104, column: 6)
!900 = !DILocation(line: 104, column: 6, scope: !817)
!901 = !DILocation(line: 105, column: 28, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 104, column: 28)
!903 = !DILocation(line: 105, column: 3, scope: !902)
!904 = !DILocation(line: 106, column: 3, scope: !902)
!905 = !DILocation(line: 113, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !817, file: !3, line: 113, column: 6)
!907 = !DILocation(line: 113, column: 11, scope: !906)
!908 = !DILocation(line: 113, column: 18, scope: !906)
!909 = !DILocation(line: 113, column: 26, scope: !906)
!910 = !DILocation(line: 113, column: 33, scope: !906)
!911 = !DILocation(line: 113, column: 44, scope: !906)
!912 = !DILocation(line: 113, column: 63, scope: !906)
!913 = !DILocation(line: 114, column: 7, scope: !906)
!914 = !DILocation(line: 114, column: 11, scope: !906)
!915 = !DILocation(line: 114, column: 18, scope: !906)
!916 = !DILocation(line: 114, column: 26, scope: !906)
!917 = !DILocation(line: 114, column: 33, scope: !906)
!918 = !DILocation(line: 114, column: 44, scope: !906)
!919 = !DILocation(line: 113, column: 6, scope: !817)
!920 = !DILocation(line: 115, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !906, file: !3, line: 114, column: 73)
!922 = !DILocation(line: 115, column: 13, scope: !921)
!923 = !DILocation(line: 115, column: 23, scope: !921)
!924 = !DILocation(line: 115, column: 32, scope: !921)
!925 = !DILocation(line: 117, column: 8, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 117, column: 7)
!927 = !DILocation(line: 117, column: 12, scope: !926)
!928 = !DILocation(line: 117, column: 19, scope: !926)
!929 = !DILocation(line: 117, column: 30, scope: !926)
!930 = !DILocation(line: 117, column: 54, scope: !926)
!931 = !DILocation(line: 118, column: 8, scope: !926)
!932 = !DILocation(line: 118, column: 18, scope: !926)
!933 = !DILocation(line: 118, column: 28, scope: !926)
!934 = !DILocation(line: 117, column: 7, scope: !921)
!935 = !DILocation(line: 124, column: 8, scope: !936)
!936 = distinct !DILexicalBlock(scope: !926, file: !3, line: 118, column: 34)
!937 = !DILocation(line: 124, column: 20, scope: !936)
!938 = !DILocation(line: 124, column: 32, scope: !936)
!939 = !DILocation(line: 124, column: 38, scope: !936)
!940 = !DILocation(line: 123, column: 4, scope: !936)
!941 = !DILocation(line: 123, column: 14, scope: !936)
!942 = !DILocation(line: 123, column: 24, scope: !936)
!943 = !DILocation(line: 123, column: 29, scope: !936)
!944 = !DILocation(line: 125, column: 30, scope: !936)
!945 = !DILocation(line: 125, column: 34, scope: !936)
!946 = !DILocation(line: 125, column: 41, scope: !936)
!947 = !DILocation(line: 125, column: 4, scope: !936)
!948 = !DILocation(line: 125, column: 14, scope: !936)
!949 = !DILocation(line: 125, column: 24, scope: !936)
!950 = !DILocation(line: 125, column: 28, scope: !936)
!951 = !DILocation(line: 126, column: 4, scope: !936)
!952 = !DILocation(line: 126, column: 14, scope: !936)
!953 = !DILocation(line: 126, column: 24, scope: !936)
!954 = !DILocation(line: 126, column: 33, scope: !936)
!955 = !DILocation(line: 127, column: 3, scope: !936)
!956 = !DILocation(line: 128, column: 2, scope: !921)
!957 = !DILocation(line: 130, column: 18, scope: !817)
!958 = !DILocation(line: 130, column: 3, scope: !817)
!959 = !DILocation(line: 130, column: 16, scope: !817)
!960 = !DILocation(line: 131, column: 2, scope: !817)
!961 = !DILocation(line: 132, column: 1, scope: !817)
!962 = distinct !DISubprogram(name: "acpi_ds_init_object_from_op", scope: !3, file: !3, line: 319, type: !963, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!963 = !DISubroutineType(types: !964)
!964 = !{!145, !147, !182, !31, !109}
!965 = !DILocalVariable(name: "walk_state", arg: 1, scope: !962, file: !3, line: 319, type: !147)
!966 = !DILocation(line: 319, column: 53, scope: !962)
!967 = !DILocalVariable(name: "op", arg: 2, scope: !962, file: !3, line: 320, type: !182)
!968 = !DILocation(line: 320, column: 33, scope: !962)
!969 = !DILocalVariable(name: "opcode", arg: 3, scope: !962, file: !3, line: 321, type: !31)
!970 = !DILocation(line: 321, column: 12, scope: !962)
!971 = !DILocalVariable(name: "ret_obj_desc", arg: 4, scope: !962, file: !3, line: 322, type: !109)
!972 = !DILocation(line: 322, column: 36, scope: !962)
!973 = !DILocalVariable(name: "op_info", scope: !962, file: !3, line: 324, type: !411)
!974 = !DILocation(line: 324, column: 33, scope: !962)
!975 = !DILocalVariable(name: "obj_desc", scope: !962, file: !3, line: 325, type: !41)
!976 = !DILocation(line: 325, column: 29, scope: !962)
!977 = !DILocalVariable(name: "status", scope: !962, file: !3, line: 326, type: !145)
!978 = !DILocation(line: 326, column: 14, scope: !962)
!979 = !DILocation(line: 330, column: 14, scope: !962)
!980 = !DILocation(line: 330, column: 13, scope: !962)
!981 = !DILocation(line: 330, column: 11, scope: !962)
!982 = !DILocation(line: 331, column: 36, scope: !962)
!983 = !DILocation(line: 331, column: 12, scope: !962)
!984 = !DILocation(line: 331, column: 10, scope: !962)
!985 = !DILocation(line: 332, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !962, file: !3, line: 332, column: 6)
!987 = !DILocation(line: 332, column: 15, scope: !986)
!988 = !DILocation(line: 332, column: 21, scope: !986)
!989 = !DILocation(line: 332, column: 6, scope: !962)
!990 = !DILocation(line: 336, column: 3, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !3, line: 332, column: 43)
!992 = !DILocation(line: 341, column: 10, scope: !962)
!993 = !DILocation(line: 341, column: 20, scope: !962)
!994 = !DILocation(line: 341, column: 27, scope: !962)
!995 = !DILocation(line: 341, column: 2, scope: !962)
!996 = !DILocation(line: 347, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !962, file: !3, line: 341, column: 33)
!998 = !DILocation(line: 346, column: 3, scope: !997)
!999 = !DILocation(line: 346, column: 13, scope: !997)
!1000 = !DILocation(line: 346, column: 20, scope: !997)
!1001 = !DILocation(line: 346, column: 25, scope: !997)
!1002 = !DILocation(line: 349, column: 32, scope: !997)
!1003 = !DILocation(line: 349, column: 36, scope: !997)
!1004 = !DILocation(line: 349, column: 42, scope: !997)
!1005 = !DILocation(line: 349, column: 3, scope: !997)
!1006 = !DILocation(line: 349, column: 13, scope: !997)
!1007 = !DILocation(line: 349, column: 20, scope: !997)
!1008 = !DILocation(line: 349, column: 30, scope: !997)
!1009 = !DILocation(line: 350, column: 33, scope: !997)
!1010 = !DILocation(line: 350, column: 37, scope: !997)
!1011 = !DILocation(line: 350, column: 43, scope: !997)
!1012 = !DILocation(line: 350, column: 3, scope: !997)
!1013 = !DILocation(line: 350, column: 13, scope: !997)
!1014 = !DILocation(line: 350, column: 20, scope: !997)
!1015 = !DILocation(line: 350, column: 31, scope: !997)
!1016 = !DILocation(line: 351, column: 3, scope: !997)
!1017 = !DILocation(line: 362, column: 7, scope: !997)
!1018 = !DILocation(line: 361, column: 3, scope: !997)
!1019 = !DILocation(line: 361, column: 13, scope: !997)
!1020 = !DILocation(line: 361, column: 21, scope: !997)
!1021 = !DILocation(line: 361, column: 26, scope: !997)
!1022 = !DILocation(line: 365, column: 8, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !997, file: !3, line: 365, column: 7)
!1024 = !DILocation(line: 365, column: 12, scope: !1023)
!1025 = !DILocation(line: 365, column: 18, scope: !1023)
!1026 = !DILocation(line: 365, column: 7, scope: !997)
!1027 = !DILocation(line: 366, column: 4, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 365, column: 24)
!1029 = !DILocation(line: 369, column: 33, scope: !997)
!1030 = !DILocation(line: 369, column: 37, scope: !997)
!1031 = !DILocation(line: 369, column: 43, scope: !997)
!1032 = !DILocation(line: 369, column: 3, scope: !997)
!1033 = !DILocation(line: 369, column: 13, scope: !997)
!1034 = !DILocation(line: 369, column: 21, scope: !997)
!1035 = !DILocation(line: 369, column: 31, scope: !997)
!1036 = !DILocation(line: 370, column: 34, scope: !997)
!1037 = !DILocation(line: 370, column: 38, scope: !997)
!1038 = !DILocation(line: 370, column: 44, scope: !997)
!1039 = !DILocation(line: 370, column: 3, scope: !997)
!1040 = !DILocation(line: 370, column: 13, scope: !997)
!1041 = !DILocation(line: 370, column: 21, scope: !997)
!1042 = !DILocation(line: 370, column: 32, scope: !997)
!1043 = !DILocation(line: 371, column: 3, scope: !997)
!1044 = !DILocation(line: 375, column: 11, scope: !997)
!1045 = !DILocation(line: 375, column: 20, scope: !997)
!1046 = !DILocation(line: 375, column: 3, scope: !997)
!1047 = !DILocation(line: 385, column: 4, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !997, file: !3, line: 375, column: 26)
!1049 = !DILocation(line: 385, column: 14, scope: !1048)
!1050 = !DILocation(line: 385, column: 21, scope: !1048)
!1051 = !DILocation(line: 385, column: 27, scope: !1048)
!1052 = !DILocation(line: 387, column: 12, scope: !1048)
!1053 = !DILocation(line: 387, column: 4, scope: !1048)
!1054 = !DILocation(line: 390, column: 5, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 387, column: 20)
!1056 = !DILocation(line: 390, column: 15, scope: !1055)
!1057 = !DILocation(line: 390, column: 23, scope: !1055)
!1058 = !DILocation(line: 390, column: 29, scope: !1055)
!1059 = !DILocation(line: 391, column: 5, scope: !1055)
!1060 = !DILocation(line: 395, column: 5, scope: !1055)
!1061 = !DILocation(line: 395, column: 15, scope: !1055)
!1062 = !DILocation(line: 395, column: 23, scope: !1055)
!1063 = !DILocation(line: 395, column: 29, scope: !1055)
!1064 = !DILocation(line: 396, column: 5, scope: !1055)
!1065 = !DILocation(line: 400, column: 5, scope: !1055)
!1066 = !DILocation(line: 400, column: 15, scope: !1055)
!1067 = !DILocation(line: 400, column: 23, scope: !1055)
!1068 = !DILocation(line: 400, column: 29, scope: !1055)
!1069 = !DILocation(line: 404, column: 43, scope: !1055)
!1070 = !DILocation(line: 404, column: 11, scope: !1055)
!1071 = !DILocation(line: 405, column: 5, scope: !1055)
!1072 = !DILocation(line: 409, column: 5, scope: !1055)
!1073 = !DILocation(line: 409, column: 15, scope: !1055)
!1074 = !DILocation(line: 409, column: 23, scope: !1055)
!1075 = !DILocation(line: 409, column: 29, scope: !1055)
!1076 = !DILocation(line: 410, column: 5, scope: !1055)
!1077 = !DILocation(line: 414, column: 5, scope: !1055)
!1078 = !DILocation(line: 417, column: 12, scope: !1055)
!1079 = !DILocation(line: 418, column: 5, scope: !1055)
!1080 = !DILocation(line: 420, column: 4, scope: !1048)
!1081 = !DILocation(line: 424, column: 30, scope: !1048)
!1082 = !DILocation(line: 424, column: 34, scope: !1048)
!1083 = !DILocation(line: 424, column: 41, scope: !1048)
!1084 = !DILocation(line: 424, column: 47, scope: !1048)
!1085 = !DILocation(line: 424, column: 4, scope: !1048)
!1086 = !DILocation(line: 424, column: 14, scope: !1048)
!1087 = !DILocation(line: 424, column: 22, scope: !1048)
!1088 = !DILocation(line: 424, column: 28, scope: !1048)
!1089 = !DILocation(line: 426, column: 40, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 426, column: 8)
!1091 = !DILocation(line: 426, column: 8, scope: !1090)
!1092 = !DILocation(line: 426, column: 8, scope: !1048)
!1093 = !DILocation(line: 430, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 426, column: 51)
!1095 = !DILocation(line: 435, column: 4, scope: !1094)
!1096 = !DILocation(line: 436, column: 4, scope: !1048)
!1097 = !DILocation(line: 440, column: 4, scope: !1048)
!1098 = !DILocation(line: 442, column: 11, scope: !1048)
!1099 = !DILocation(line: 443, column: 4, scope: !1048)
!1100 = !DILocation(line: 445, column: 3, scope: !997)
!1101 = !DILocation(line: 449, column: 30, scope: !997)
!1102 = !DILocation(line: 449, column: 34, scope: !997)
!1103 = !DILocation(line: 449, column: 41, scope: !997)
!1104 = !DILocation(line: 449, column: 47, scope: !997)
!1105 = !DILocation(line: 449, column: 3, scope: !997)
!1106 = !DILocation(line: 449, column: 13, scope: !997)
!1107 = !DILocation(line: 449, column: 20, scope: !997)
!1108 = !DILocation(line: 449, column: 28, scope: !997)
!1109 = !DILocation(line: 450, column: 41, scope: !997)
!1110 = !DILocation(line: 450, column: 45, scope: !997)
!1111 = !DILocation(line: 450, column: 52, scope: !997)
!1112 = !DILocation(line: 450, column: 58, scope: !997)
!1113 = !DILocation(line: 450, column: 34, scope: !997)
!1114 = !DILocation(line: 450, column: 29, scope: !997)
!1115 = !DILocation(line: 450, column: 3, scope: !997)
!1116 = !DILocation(line: 450, column: 13, scope: !997)
!1117 = !DILocation(line: 450, column: 20, scope: !997)
!1118 = !DILocation(line: 450, column: 27, scope: !997)
!1119 = !DILocation(line: 456, column: 3, scope: !997)
!1120 = !DILocation(line: 456, column: 13, scope: !997)
!1121 = !DILocation(line: 456, column: 20, scope: !997)
!1122 = !DILocation(line: 456, column: 26, scope: !997)
!1123 = !DILocation(line: 457, column: 3, scope: !997)
!1124 = !DILocation(line: 460, column: 3, scope: !997)
!1125 = !DILocation(line: 464, column: 11, scope: !997)
!1126 = !DILocation(line: 464, column: 20, scope: !997)
!1127 = !DILocation(line: 464, column: 3, scope: !997)
!1128 = !DILocation(line: 470, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !997, file: !3, line: 464, column: 26)
!1130 = !DILocation(line: 470, column: 9, scope: !1129)
!1131 = !DILocation(line: 470, column: 22, scope: !1129)
!1132 = !DILocation(line: 469, column: 4, scope: !1129)
!1133 = !DILocation(line: 469, column: 14, scope: !1129)
!1134 = !DILocation(line: 469, column: 24, scope: !1129)
!1135 = !DILocation(line: 469, column: 30, scope: !1129)
!1136 = !DILocation(line: 471, column: 4, scope: !1129)
!1137 = !DILocation(line: 471, column: 14, scope: !1129)
!1138 = !DILocation(line: 471, column: 24, scope: !1129)
!1139 = !DILocation(line: 471, column: 30, scope: !1129)
!1140 = !DILocation(line: 475, column: 9, scope: !1129)
!1141 = !DILocation(line: 475, column: 19, scope: !1129)
!1142 = !DILocation(line: 476, column: 9, scope: !1129)
!1143 = !DILocation(line: 476, column: 16, scope: !1129)
!1144 = !DILocation(line: 477, column: 9, scope: !1129)
!1145 = !DILocation(line: 474, column: 8, scope: !1129)
!1146 = !DILocation(line: 473, column: 11, scope: !1129)
!1147 = !DILocation(line: 482, column: 4, scope: !1129)
!1148 = !DILocation(line: 489, column: 14, scope: !1129)
!1149 = !DILocation(line: 489, column: 9, scope: !1129)
!1150 = !DILocation(line: 489, column: 22, scope: !1129)
!1151 = !DILocation(line: 488, column: 4, scope: !1129)
!1152 = !DILocation(line: 488, column: 14, scope: !1129)
!1153 = !DILocation(line: 488, column: 24, scope: !1129)
!1154 = !DILocation(line: 488, column: 30, scope: !1129)
!1155 = !DILocation(line: 490, column: 4, scope: !1129)
!1156 = !DILocation(line: 490, column: 14, scope: !1129)
!1157 = !DILocation(line: 490, column: 24, scope: !1129)
!1158 = !DILocation(line: 490, column: 30, scope: !1129)
!1159 = !DILocation(line: 493, column: 14, scope: !1129)
!1160 = !DILocation(line: 494, column: 14, scope: !1129)
!1161 = !DILocation(line: 494, column: 24, scope: !1129)
!1162 = !DILocation(line: 495, column: 14, scope: !1129)
!1163 = !DILocation(line: 496, column: 14, scope: !1129)
!1164 = !DILocation(line: 492, column: 13, scope: !1129)
!1165 = !DILocation(line: 492, column: 11, scope: !1129)
!1166 = !DILocation(line: 502, column: 4, scope: !1129)
!1167 = !DILocation(line: 506, column: 12, scope: !1129)
!1168 = !DILocation(line: 506, column: 16, scope: !1129)
!1169 = !DILocation(line: 506, column: 23, scope: !1129)
!1170 = !DILocation(line: 506, column: 4, scope: !1129)
!1171 = !DILocation(line: 511, column: 32, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 506, column: 35)
!1173 = !DILocation(line: 511, column: 36, scope: !1172)
!1174 = !DILocation(line: 511, column: 43, scope: !1172)
!1175 = !DILocation(line: 511, column: 5, scope: !1172)
!1176 = !DILocation(line: 511, column: 15, scope: !1172)
!1177 = !DILocation(line: 511, column: 25, scope: !1172)
!1178 = !DILocation(line: 511, column: 30, scope: !1172)
!1179 = !DILocation(line: 512, column: 5, scope: !1172)
!1180 = !DILocation(line: 512, column: 15, scope: !1172)
!1181 = !DILocation(line: 512, column: 25, scope: !1172)
!1182 = !DILocation(line: 512, column: 31, scope: !1172)
!1183 = !DILocation(line: 513, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 513, column: 9)
!1185 = !DILocation(line: 513, column: 13, scope: !1184)
!1186 = !DILocation(line: 513, column: 20, scope: !1184)
!1187 = !DILocation(line: 513, column: 9, scope: !1172)
!1188 = !DILocation(line: 515, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 513, column: 26)
!1190 = !DILocation(line: 515, column: 14, scope: !1189)
!1191 = !DILocation(line: 515, column: 21, scope: !1189)
!1192 = !DILocation(line: 515, column: 27, scope: !1189)
!1193 = !DILocation(line: 514, column: 6, scope: !1189)
!1194 = !DILocation(line: 514, column: 16, scope: !1189)
!1195 = !DILocation(line: 514, column: 26, scope: !1189)
!1196 = !DILocation(line: 514, column: 33, scope: !1189)
!1197 = !DILocation(line: 516, column: 5, scope: !1189)
!1198 = !DILocation(line: 517, column: 5, scope: !1172)
!1199 = !DILocation(line: 521, column: 5, scope: !1172)
!1200 = !DILocation(line: 521, column: 15, scope: !1172)
!1201 = !DILocation(line: 521, column: 25, scope: !1172)
!1202 = !DILocation(line: 521, column: 31, scope: !1172)
!1203 = !DILocation(line: 522, column: 5, scope: !1172)
!1204 = !DILocation(line: 526, column: 5, scope: !1172)
!1205 = !DILocation(line: 529, column: 5, scope: !1172)
!1206 = !DILocation(line: 531, column: 4, scope: !1129)
!1207 = !DILocation(line: 533, column: 3, scope: !997)
!1208 = !DILocation(line: 537, column: 3, scope: !997)
!1209 = !DILocation(line: 540, column: 10, scope: !997)
!1210 = !DILocation(line: 541, column: 3, scope: !997)
!1211 = !DILocation(line: 544, column: 2, scope: !962)
!1212 = !DILocation(line: 545, column: 1, scope: !962)
!1213 = distinct !DISubprogram(name: "acpi_ds_build_internal_buffer_obj", scope: !3, file: !3, line: 151, type: !1214, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!145, !147, !182, !83, !109}
!1216 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1213, file: !3, line: 151, type: !147)
!1217 = !DILocation(line: 151, column: 59, scope: !1213)
!1218 = !DILocalVariable(name: "op", arg: 2, scope: !1213, file: !3, line: 152, type: !182)
!1219 = !DILocation(line: 152, column: 32, scope: !1213)
!1220 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1213, file: !3, line: 153, type: !83)
!1221 = !DILocation(line: 153, column: 11, scope: !1213)
!1222 = !DILocalVariable(name: "obj_desc_ptr", arg: 4, scope: !1213, file: !3, line: 154, type: !109)
!1223 = !DILocation(line: 154, column: 35, scope: !1213)
!1224 = !DILocalVariable(name: "arg", scope: !1213, file: !3, line: 156, type: !182)
!1225 = !DILocation(line: 156, column: 27, scope: !1213)
!1226 = !DILocalVariable(name: "obj_desc", scope: !1213, file: !3, line: 157, type: !41)
!1227 = !DILocation(line: 157, column: 29, scope: !1213)
!1228 = !DILocalVariable(name: "byte_list", scope: !1213, file: !3, line: 158, type: !182)
!1229 = !DILocation(line: 158, column: 27, scope: !1213)
!1230 = !DILocalVariable(name: "byte_list_length", scope: !1213, file: !3, line: 159, type: !83)
!1231 = !DILocation(line: 159, column: 6, scope: !1213)
!1232 = !DILocation(line: 168, column: 14, scope: !1213)
!1233 = !DILocation(line: 168, column: 13, scope: !1213)
!1234 = !DILocation(line: 168, column: 11, scope: !1213)
!1235 = !DILocation(line: 169, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 169, column: 6)
!1237 = !DILocation(line: 169, column: 6, scope: !1213)
!1238 = !DILocation(line: 173, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 169, column: 17)
!1240 = !DILocation(line: 173, column: 12, scope: !1239)
!1241 = !DILocation(line: 174, column: 19, scope: !1239)
!1242 = !DILocation(line: 174, column: 4, scope: !1239)
!1243 = !DILocation(line: 174, column: 17, scope: !1239)
!1244 = !DILocation(line: 175, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 175, column: 7)
!1246 = !DILocation(line: 175, column: 7, scope: !1239)
!1247 = !DILocation(line: 176, column: 4, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 175, column: 18)
!1249 = !DILocation(line: 178, column: 2, scope: !1239)
!1250 = !DILocation(line: 185, column: 8, scope: !1213)
!1251 = !DILocation(line: 185, column: 12, scope: !1213)
!1252 = !DILocation(line: 185, column: 19, scope: !1213)
!1253 = !DILocation(line: 185, column: 25, scope: !1213)
!1254 = !DILocation(line: 185, column: 6, scope: !1213)
!1255 = !DILocation(line: 187, column: 14, scope: !1213)
!1256 = !DILocation(line: 187, column: 19, scope: !1213)
!1257 = !DILocation(line: 187, column: 25, scope: !1213)
!1258 = !DILocation(line: 187, column: 12, scope: !1213)
!1259 = !DILocation(line: 188, column: 6, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 188, column: 6)
!1261 = !DILocation(line: 188, column: 6, scope: !1213)
!1262 = !DILocation(line: 189, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 189, column: 7)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 188, column: 17)
!1265 = !DILocation(line: 189, column: 18, scope: !1263)
!1266 = !DILocation(line: 189, column: 25, scope: !1263)
!1267 = !DILocation(line: 189, column: 36, scope: !1263)
!1268 = !DILocation(line: 189, column: 7, scope: !1264)
!1269 = !DILocation(line: 190, column: 4, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 189, column: 60)
!1271 = !DILocation(line: 194, column: 29, scope: !1270)
!1272 = !DILocation(line: 194, column: 4, scope: !1270)
!1273 = !DILocation(line: 195, column: 4, scope: !1270)
!1274 = !DILocation(line: 198, column: 28, scope: !1264)
!1275 = !DILocation(line: 198, column: 39, scope: !1264)
!1276 = !DILocation(line: 198, column: 46, scope: !1264)
!1277 = !DILocation(line: 198, column: 52, scope: !1264)
!1278 = !DILocation(line: 198, column: 22, scope: !1264)
!1279 = !DILocation(line: 198, column: 20, scope: !1264)
!1280 = !DILocation(line: 199, column: 2, scope: !1264)
!1281 = !DILocation(line: 206, column: 28, scope: !1213)
!1282 = !DILocation(line: 206, column: 2, scope: !1213)
!1283 = !DILocation(line: 206, column: 12, scope: !1213)
!1284 = !DILocation(line: 206, column: 19, scope: !1213)
!1285 = !DILocation(line: 206, column: 26, scope: !1213)
!1286 = !DILocation(line: 207, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 207, column: 6)
!1288 = !DILocation(line: 207, column: 25, scope: !1287)
!1289 = !DILocation(line: 207, column: 23, scope: !1287)
!1290 = !DILocation(line: 207, column: 6, scope: !1213)
!1291 = !DILocation(line: 208, column: 29, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 207, column: 40)
!1293 = !DILocation(line: 208, column: 3, scope: !1292)
!1294 = !DILocation(line: 208, column: 13, scope: !1292)
!1295 = !DILocation(line: 208, column: 20, scope: !1292)
!1296 = !DILocation(line: 208, column: 27, scope: !1292)
!1297 = !DILocation(line: 209, column: 2, scope: !1292)
!1298 = !DILocation(line: 213, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 213, column: 6)
!1300 = !DILocation(line: 213, column: 16, scope: !1299)
!1301 = !DILocation(line: 213, column: 23, scope: !1299)
!1302 = !DILocation(line: 213, column: 30, scope: !1299)
!1303 = !DILocation(line: 213, column: 6, scope: !1213)
!1304 = !DILocation(line: 214, column: 3, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 213, column: 36)
!1306 = !DILocation(line: 214, column: 13, scope: !1305)
!1307 = !DILocation(line: 214, column: 20, scope: !1305)
!1308 = !DILocation(line: 214, column: 28, scope: !1305)
!1309 = !DILocation(line: 217, column: 2, scope: !1305)
!1310 = !DILocation(line: 219, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 217, column: 9)
!1312 = !DILocation(line: 218, column: 3, scope: !1311)
!1313 = !DILocation(line: 218, column: 13, scope: !1311)
!1314 = !DILocation(line: 218, column: 20, scope: !1311)
!1315 = !DILocation(line: 218, column: 28, scope: !1311)
!1316 = !DILocation(line: 220, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 220, column: 7)
!1318 = !DILocation(line: 220, column: 18, scope: !1317)
!1319 = !DILocation(line: 220, column: 25, scope: !1317)
!1320 = !DILocation(line: 220, column: 7, scope: !1311)
!1321 = !DILocation(line: 221, column: 31, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 220, column: 34)
!1323 = !DILocation(line: 221, column: 4, scope: !1322)
!1324 = !DILocation(line: 222, column: 4, scope: !1322)
!1325 = !DILocation(line: 227, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 227, column: 7)
!1327 = !DILocation(line: 227, column: 7, scope: !1311)
!1328 = !DILocation(line: 228, column: 11, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 227, column: 18)
!1330 = !DILocation(line: 228, column: 21, scope: !1329)
!1331 = !DILocation(line: 228, column: 28, scope: !1329)
!1332 = !DILocation(line: 228, column: 37, scope: !1329)
!1333 = !DILocation(line: 228, column: 48, scope: !1329)
!1334 = !DILocation(line: 228, column: 54, scope: !1329)
!1335 = !DILocation(line: 229, column: 11, scope: !1329)
!1336 = !DILocation(line: 228, column: 4, scope: !1329)
!1337 = !DILocation(line: 230, column: 3, scope: !1329)
!1338 = !DILocation(line: 233, column: 2, scope: !1213)
!1339 = !DILocation(line: 233, column: 12, scope: !1213)
!1340 = !DILocation(line: 233, column: 19, scope: !1213)
!1341 = !DILocation(line: 233, column: 25, scope: !1213)
!1342 = !DILocation(line: 234, column: 20, scope: !1213)
!1343 = !DILocation(line: 234, column: 2, scope: !1213)
!1344 = !DILocation(line: 234, column: 6, scope: !1213)
!1345 = !DILocation(line: 234, column: 13, scope: !1213)
!1346 = !DILocation(line: 234, column: 18, scope: !1213)
!1347 = !DILocation(line: 235, column: 2, scope: !1213)
!1348 = !DILocation(line: 236, column: 1, scope: !1213)
!1349 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1350, file: !1350, line: 55, type: !1351, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1350 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!122, !804}
!1353 = !DILocalVariable(name: "flags", arg: 1, scope: !1354, file: !1355, line: 162, type: !807)
!1354 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1355, file: !1355, line: 162, type: !1356, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1355 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !807}
!1358 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1359 = !DILocation(line: 162, column: 67, scope: !1354, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 57, column: 23, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1350, line: 57, column: 23)
!1362 = distinct !DILexicalBlock(scope: !1349, file: !1350, line: 57, column: 23)
!1363 = !DILocalVariable(name: "size", arg: 1, scope: !1349, file: !1350, line: 55, type: !804)
!1364 = !DILocation(line: 55, column: 55, scope: !1349)
!1365 = !DILocation(line: 57, column: 17, scope: !1349)
!1366 = !DILocalVariable(name: "_flags", scope: !1362, file: !1350, line: 57, type: !807)
!1367 = !DILocation(line: 57, column: 23, scope: !1362)
!1368 = !DILocalVariable(name: "__dummy", scope: !1369, file: !1350, line: 57, type: !807)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1350, line: 57, column: 23)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !1350, line: 57, column: 23)
!1371 = !DILocation(line: 57, column: 23, scope: !1369)
!1372 = !DILocalVariable(name: "__dummy2", scope: !1369, file: !1350, line: 57, type: !807)
!1373 = !DILocation(line: 57, column: 23, scope: !1370)
!1374 = !DILocalVariable(name: "__dummy", scope: !1375, file: !1350, line: 57, type: !807)
!1375 = distinct !DILexicalBlock(scope: !1361, file: !1350, line: 57, column: 23)
!1376 = !DILocation(line: 57, column: 23, scope: !1375)
!1377 = !DILocalVariable(name: "__dummy2", scope: !1375, file: !1350, line: 57, type: !807)
!1378 = !DILocation(line: 57, column: 23, scope: !1361)
!1379 = !DILocation(line: 164, column: 11, scope: !1354, inlinedAt: !1360)
!1380 = !DILocation(line: 164, column: 17, scope: !1354, inlinedAt: !1360)
!1381 = !DILocation(line: 164, column: 9, scope: !1354, inlinedAt: !1360)
!1382 = !DILocation(line: 57, column: 23, scope: !1349)
!1383 = !DILocation(line: 57, column: 9, scope: !1349)
!1384 = !DILocation(line: 57, column: 2, scope: !1349)
!1385 = distinct !DISubprogram(name: "acpi_ds_create_node", scope: !3, file: !3, line: 253, type: !1386, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!145, !147, !37, !182}
!1388 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1385, file: !3, line: 253, type: !147)
!1389 = !DILocation(line: 253, column: 45, scope: !1385)
!1390 = !DILocalVariable(name: "node", arg: 2, scope: !1385, file: !3, line: 254, type: !37)
!1391 = !DILocation(line: 254, column: 35, scope: !1385)
!1392 = !DILocalVariable(name: "op", arg: 3, scope: !1385, file: !3, line: 255, type: !182)
!1393 = !DILocation(line: 255, column: 32, scope: !1385)
!1394 = !DILocalVariable(name: "status", scope: !1385, file: !3, line: 257, type: !145)
!1395 = !DILocation(line: 257, column: 14, scope: !1385)
!1396 = !DILocalVariable(name: "obj_desc", scope: !1385, file: !3, line: 258, type: !41)
!1397 = !DILocation(line: 258, column: 29, scope: !1385)
!1398 = !DILocation(line: 267, column: 34, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 267, column: 6)
!1400 = !DILocation(line: 267, column: 6, scope: !1399)
!1401 = !DILocation(line: 267, column: 6, scope: !1385)
!1402 = !DILocation(line: 268, column: 3, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 267, column: 41)
!1404 = !DILocation(line: 271, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 271, column: 6)
!1406 = !DILocation(line: 271, column: 11, scope: !1405)
!1407 = !DILocation(line: 271, column: 18, scope: !1405)
!1408 = !DILocation(line: 271, column: 24, scope: !1405)
!1409 = !DILocation(line: 271, column: 6, scope: !1385)
!1410 = !DILocation(line: 275, column: 3, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 271, column: 29)
!1412 = !DILocation(line: 281, column: 36, scope: !1385)
!1413 = !DILocation(line: 281, column: 48, scope: !1385)
!1414 = !DILocation(line: 281, column: 52, scope: !1385)
!1415 = !DILocation(line: 281, column: 59, scope: !1385)
!1416 = !DILocation(line: 281, column: 65, scope: !1385)
!1417 = !DILocation(line: 281, column: 6, scope: !1385)
!1418 = !DILocation(line: 280, column: 9, scope: !1385)
!1419 = !DILocation(line: 283, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 283, column: 6)
!1421 = !DILocation(line: 283, column: 6, scope: !1385)
!1422 = !DILocation(line: 284, column: 3, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 283, column: 28)
!1424 = !DILocation(line: 289, column: 15, scope: !1385)
!1425 = !DILocation(line: 289, column: 25, scope: !1385)
!1426 = !DILocation(line: 289, column: 32, scope: !1385)
!1427 = !DILocation(line: 289, column: 2, scope: !1385)
!1428 = !DILocation(line: 289, column: 8, scope: !1385)
!1429 = !DILocation(line: 289, column: 13, scope: !1385)
!1430 = !DILocation(line: 293, column: 33, scope: !1385)
!1431 = !DILocation(line: 293, column: 39, scope: !1385)
!1432 = !DILocation(line: 293, column: 49, scope: !1385)
!1433 = !DILocation(line: 293, column: 55, scope: !1385)
!1434 = !DILocation(line: 293, column: 11, scope: !1385)
!1435 = !DILocation(line: 293, column: 9, scope: !1385)
!1436 = !DILocation(line: 297, column: 27, scope: !1385)
!1437 = !DILocation(line: 297, column: 2, scope: !1385)
!1438 = !DILocation(line: 298, column: 2, scope: !1385)
!1439 = !DILocation(line: 299, column: 1, scope: !1385)
!1440 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 662, type: !1441, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!122, !1443, !805}
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !806, line: 55, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1445, line: 72, baseType: !1446)
!1445 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1445, line: 16, baseType: !807)
!1447 = !DILocalVariable(name: "s", arg: 1, scope: !1448, file: !24, line: 445, type: !1451)
!1448 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !24, file: !24, line: 445, type: !1449, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!122, !1451, !805, !1443}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1453, line: 117, flags: DIFlagFwdDecl)
!1453 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !DILocation(line: 445, column: 72, scope: !1448, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 552, column: 10, scope: !1456, inlinedAt: !1459)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !24, line: 540, column: 34)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !24, line: 540, column: 6)
!1458 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 538, type: !1441, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1459 = distinct !DILocation(line: 664, column: 9, scope: !1440)
!1460 = !DILocalVariable(name: "flags", arg: 2, scope: !1448, file: !24, line: 446, type: !805)
!1461 = !DILocation(line: 446, column: 9, scope: !1448, inlinedAt: !1455)
!1462 = !DILocalVariable(name: "size", arg: 3, scope: !1448, file: !24, line: 446, type: !1443)
!1463 = !DILocation(line: 446, column: 23, scope: !1448, inlinedAt: !1455)
!1464 = !DILocalVariable(name: "ret", scope: !1448, file: !24, line: 448, type: !122)
!1465 = !DILocation(line: 448, column: 8, scope: !1448, inlinedAt: !1455)
!1466 = !DILocalVariable(name: "flags", arg: 1, scope: !1467, file: !24, line: 318, type: !805)
!1467 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 318, type: !1468, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!23, !805}
!1470 = !DILocation(line: 318, column: 67, scope: !1467, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 553, column: 20, scope: !1456, inlinedAt: !1459)
!1472 = !DILocalVariable(name: "size", arg: 1, scope: !1473, file: !24, line: 346, type: !1443)
!1473 = distinct !DISubprogram(name: "kmalloc_index", scope: !24, file: !24, line: 346, type: !1474, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!7, !1443}
!1476 = !DILocation(line: 346, column: 58, scope: !1473, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 547, column: 11, scope: !1456, inlinedAt: !1459)
!1478 = !DILocalVariable(name: "size", arg: 1, scope: !1479, file: !24, line: 472, type: !1443)
!1479 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !24, file: !24, line: 472, type: !1480, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!122, !1443, !805, !7}
!1482 = !DILocation(line: 472, column: 28, scope: !1479, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 481, column: 9, scope: !1484, inlinedAt: !1485)
!1484 = distinct !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 478, type: !1441, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1485 = distinct !DILocation(line: 545, column: 11, scope: !1486, inlinedAt: !1459)
!1486 = distinct !DILexicalBlock(scope: !1456, file: !24, line: 544, column: 7)
!1487 = !DILocalVariable(name: "flags", arg: 2, scope: !1479, file: !24, line: 472, type: !805)
!1488 = !DILocation(line: 472, column: 40, scope: !1479, inlinedAt: !1483)
!1489 = !DILocalVariable(name: "order", arg: 3, scope: !1479, file: !24, line: 472, type: !7)
!1490 = !DILocation(line: 472, column: 60, scope: !1479, inlinedAt: !1483)
!1491 = !DILocalVariable(name: "size", arg: 1, scope: !1484, file: !24, line: 478, type: !1443)
!1492 = !DILocation(line: 478, column: 51, scope: !1484, inlinedAt: !1485)
!1493 = !DILocalVariable(name: "flags", arg: 2, scope: !1484, file: !24, line: 478, type: !805)
!1494 = !DILocation(line: 478, column: 63, scope: !1484, inlinedAt: !1485)
!1495 = !DILocalVariable(name: "order", scope: !1484, file: !24, line: 480, type: !7)
!1496 = !DILocation(line: 480, column: 15, scope: !1484, inlinedAt: !1485)
!1497 = !DILocalVariable(name: "size", arg: 1, scope: !1458, file: !24, line: 538, type: !1443)
!1498 = !DILocation(line: 538, column: 45, scope: !1458, inlinedAt: !1459)
!1499 = !DILocalVariable(name: "flags", arg: 2, scope: !1458, file: !24, line: 538, type: !805)
!1500 = !DILocation(line: 538, column: 57, scope: !1458, inlinedAt: !1459)
!1501 = !DILocalVariable(name: "index", scope: !1456, file: !24, line: 542, type: !7)
!1502 = !DILocation(line: 542, column: 16, scope: !1456, inlinedAt: !1459)
!1503 = !DILocalVariable(name: "size", arg: 1, scope: !1440, file: !24, line: 662, type: !1443)
!1504 = !DILocation(line: 662, column: 36, scope: !1440)
!1505 = !DILocalVariable(name: "flags", arg: 2, scope: !1440, file: !24, line: 662, type: !805)
!1506 = !DILocation(line: 662, column: 48, scope: !1440)
!1507 = !DILocation(line: 664, column: 17, scope: !1440)
!1508 = !DILocation(line: 664, column: 23, scope: !1440)
!1509 = !DILocation(line: 664, column: 29, scope: !1440)
!1510 = !DILocation(line: 540, column: 27, scope: !1457, inlinedAt: !1459)
!1511 = !DILocation(line: 540, column: 6, scope: !1457, inlinedAt: !1459)
!1512 = !DILocation(line: 540, column: 6, scope: !1458, inlinedAt: !1459)
!1513 = !DILocation(line: 544, column: 7, scope: !1486, inlinedAt: !1459)
!1514 = !DILocation(line: 544, column: 12, scope: !1486, inlinedAt: !1459)
!1515 = !DILocation(line: 544, column: 7, scope: !1456, inlinedAt: !1459)
!1516 = !DILocation(line: 545, column: 25, scope: !1486, inlinedAt: !1459)
!1517 = !DILocation(line: 545, column: 31, scope: !1486, inlinedAt: !1459)
!1518 = !DILocation(line: 480, column: 33, scope: !1484, inlinedAt: !1485)
!1519 = !DILocation(line: 480, column: 23, scope: !1484, inlinedAt: !1485)
!1520 = !DILocation(line: 481, column: 29, scope: !1484, inlinedAt: !1485)
!1521 = !DILocation(line: 481, column: 35, scope: !1484, inlinedAt: !1485)
!1522 = !DILocation(line: 481, column: 42, scope: !1484, inlinedAt: !1485)
!1523 = !DILocation(line: 474, column: 23, scope: !1479, inlinedAt: !1483)
!1524 = !DILocation(line: 474, column: 29, scope: !1479, inlinedAt: !1483)
!1525 = !DILocation(line: 474, column: 36, scope: !1479, inlinedAt: !1483)
!1526 = !DILocation(line: 474, column: 9, scope: !1479, inlinedAt: !1483)
!1527 = !DILocation(line: 545, column: 4, scope: !1486, inlinedAt: !1459)
!1528 = !DILocation(line: 547, column: 25, scope: !1456, inlinedAt: !1459)
!1529 = !DILocation(line: 348, column: 7, scope: !1530, inlinedAt: !1477)
!1530 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 348, column: 6)
!1531 = !DILocation(line: 348, column: 6, scope: !1473, inlinedAt: !1477)
!1532 = !DILocation(line: 349, column: 3, scope: !1530, inlinedAt: !1477)
!1533 = !DILocation(line: 351, column: 6, scope: !1534, inlinedAt: !1477)
!1534 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 351, column: 6)
!1535 = !DILocation(line: 351, column: 11, scope: !1534, inlinedAt: !1477)
!1536 = !DILocation(line: 351, column: 6, scope: !1473, inlinedAt: !1477)
!1537 = !DILocation(line: 352, column: 3, scope: !1534, inlinedAt: !1477)
!1538 = !DILocation(line: 354, column: 32, scope: !1539, inlinedAt: !1477)
!1539 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 354, column: 6)
!1540 = !DILocation(line: 354, column: 37, scope: !1539, inlinedAt: !1477)
!1541 = !DILocation(line: 354, column: 42, scope: !1539, inlinedAt: !1477)
!1542 = !DILocation(line: 354, column: 45, scope: !1539, inlinedAt: !1477)
!1543 = !DILocation(line: 354, column: 50, scope: !1539, inlinedAt: !1477)
!1544 = !DILocation(line: 354, column: 6, scope: !1473, inlinedAt: !1477)
!1545 = !DILocation(line: 355, column: 3, scope: !1539, inlinedAt: !1477)
!1546 = !DILocation(line: 356, column: 32, scope: !1547, inlinedAt: !1477)
!1547 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 356, column: 6)
!1548 = !DILocation(line: 356, column: 37, scope: !1547, inlinedAt: !1477)
!1549 = !DILocation(line: 356, column: 43, scope: !1547, inlinedAt: !1477)
!1550 = !DILocation(line: 356, column: 46, scope: !1547, inlinedAt: !1477)
!1551 = !DILocation(line: 356, column: 51, scope: !1547, inlinedAt: !1477)
!1552 = !DILocation(line: 356, column: 6, scope: !1473, inlinedAt: !1477)
!1553 = !DILocation(line: 357, column: 3, scope: !1547, inlinedAt: !1477)
!1554 = !DILocation(line: 358, column: 6, scope: !1555, inlinedAt: !1477)
!1555 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 358, column: 6)
!1556 = !DILocation(line: 358, column: 11, scope: !1555, inlinedAt: !1477)
!1557 = !DILocation(line: 358, column: 6, scope: !1473, inlinedAt: !1477)
!1558 = !DILocation(line: 358, column: 26, scope: !1555, inlinedAt: !1477)
!1559 = !DILocation(line: 359, column: 6, scope: !1560, inlinedAt: !1477)
!1560 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 359, column: 6)
!1561 = !DILocation(line: 359, column: 11, scope: !1560, inlinedAt: !1477)
!1562 = !DILocation(line: 359, column: 6, scope: !1473, inlinedAt: !1477)
!1563 = !DILocation(line: 359, column: 26, scope: !1560, inlinedAt: !1477)
!1564 = !DILocation(line: 360, column: 6, scope: !1565, inlinedAt: !1477)
!1565 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 360, column: 6)
!1566 = !DILocation(line: 360, column: 11, scope: !1565, inlinedAt: !1477)
!1567 = !DILocation(line: 360, column: 6, scope: !1473, inlinedAt: !1477)
!1568 = !DILocation(line: 360, column: 26, scope: !1565, inlinedAt: !1477)
!1569 = !DILocation(line: 361, column: 6, scope: !1570, inlinedAt: !1477)
!1570 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 361, column: 6)
!1571 = !DILocation(line: 361, column: 11, scope: !1570, inlinedAt: !1477)
!1572 = !DILocation(line: 361, column: 6, scope: !1473, inlinedAt: !1477)
!1573 = !DILocation(line: 361, column: 26, scope: !1570, inlinedAt: !1477)
!1574 = !DILocation(line: 362, column: 6, scope: !1575, inlinedAt: !1477)
!1575 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 362, column: 6)
!1576 = !DILocation(line: 362, column: 11, scope: !1575, inlinedAt: !1477)
!1577 = !DILocation(line: 362, column: 6, scope: !1473, inlinedAt: !1477)
!1578 = !DILocation(line: 362, column: 26, scope: !1575, inlinedAt: !1477)
!1579 = !DILocation(line: 363, column: 6, scope: !1580, inlinedAt: !1477)
!1580 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 363, column: 6)
!1581 = !DILocation(line: 363, column: 11, scope: !1580, inlinedAt: !1477)
!1582 = !DILocation(line: 363, column: 6, scope: !1473, inlinedAt: !1477)
!1583 = !DILocation(line: 363, column: 26, scope: !1580, inlinedAt: !1477)
!1584 = !DILocation(line: 364, column: 6, scope: !1585, inlinedAt: !1477)
!1585 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 364, column: 6)
!1586 = !DILocation(line: 364, column: 11, scope: !1585, inlinedAt: !1477)
!1587 = !DILocation(line: 364, column: 6, scope: !1473, inlinedAt: !1477)
!1588 = !DILocation(line: 364, column: 26, scope: !1585, inlinedAt: !1477)
!1589 = !DILocation(line: 365, column: 6, scope: !1590, inlinedAt: !1477)
!1590 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 365, column: 6)
!1591 = !DILocation(line: 365, column: 11, scope: !1590, inlinedAt: !1477)
!1592 = !DILocation(line: 365, column: 6, scope: !1473, inlinedAt: !1477)
!1593 = !DILocation(line: 365, column: 26, scope: !1590, inlinedAt: !1477)
!1594 = !DILocation(line: 366, column: 6, scope: !1595, inlinedAt: !1477)
!1595 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 366, column: 6)
!1596 = !DILocation(line: 366, column: 11, scope: !1595, inlinedAt: !1477)
!1597 = !DILocation(line: 366, column: 6, scope: !1473, inlinedAt: !1477)
!1598 = !DILocation(line: 366, column: 26, scope: !1595, inlinedAt: !1477)
!1599 = !DILocation(line: 367, column: 6, scope: !1600, inlinedAt: !1477)
!1600 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 367, column: 6)
!1601 = !DILocation(line: 367, column: 11, scope: !1600, inlinedAt: !1477)
!1602 = !DILocation(line: 367, column: 6, scope: !1473, inlinedAt: !1477)
!1603 = !DILocation(line: 367, column: 26, scope: !1600, inlinedAt: !1477)
!1604 = !DILocation(line: 368, column: 6, scope: !1605, inlinedAt: !1477)
!1605 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 368, column: 6)
!1606 = !DILocation(line: 368, column: 11, scope: !1605, inlinedAt: !1477)
!1607 = !DILocation(line: 368, column: 6, scope: !1473, inlinedAt: !1477)
!1608 = !DILocation(line: 368, column: 26, scope: !1605, inlinedAt: !1477)
!1609 = !DILocation(line: 369, column: 6, scope: !1610, inlinedAt: !1477)
!1610 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 369, column: 6)
!1611 = !DILocation(line: 369, column: 11, scope: !1610, inlinedAt: !1477)
!1612 = !DILocation(line: 369, column: 6, scope: !1473, inlinedAt: !1477)
!1613 = !DILocation(line: 369, column: 26, scope: !1610, inlinedAt: !1477)
!1614 = !DILocation(line: 370, column: 6, scope: !1615, inlinedAt: !1477)
!1615 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 370, column: 6)
!1616 = !DILocation(line: 370, column: 11, scope: !1615, inlinedAt: !1477)
!1617 = !DILocation(line: 370, column: 6, scope: !1473, inlinedAt: !1477)
!1618 = !DILocation(line: 370, column: 26, scope: !1615, inlinedAt: !1477)
!1619 = !DILocation(line: 371, column: 6, scope: !1620, inlinedAt: !1477)
!1620 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 371, column: 6)
!1621 = !DILocation(line: 371, column: 11, scope: !1620, inlinedAt: !1477)
!1622 = !DILocation(line: 371, column: 6, scope: !1473, inlinedAt: !1477)
!1623 = !DILocation(line: 371, column: 26, scope: !1620, inlinedAt: !1477)
!1624 = !DILocation(line: 372, column: 6, scope: !1625, inlinedAt: !1477)
!1625 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 372, column: 6)
!1626 = !DILocation(line: 372, column: 11, scope: !1625, inlinedAt: !1477)
!1627 = !DILocation(line: 372, column: 6, scope: !1473, inlinedAt: !1477)
!1628 = !DILocation(line: 372, column: 26, scope: !1625, inlinedAt: !1477)
!1629 = !DILocation(line: 373, column: 6, scope: !1630, inlinedAt: !1477)
!1630 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 373, column: 6)
!1631 = !DILocation(line: 373, column: 11, scope: !1630, inlinedAt: !1477)
!1632 = !DILocation(line: 373, column: 6, scope: !1473, inlinedAt: !1477)
!1633 = !DILocation(line: 373, column: 26, scope: !1630, inlinedAt: !1477)
!1634 = !DILocation(line: 374, column: 6, scope: !1635, inlinedAt: !1477)
!1635 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 374, column: 6)
!1636 = !DILocation(line: 374, column: 11, scope: !1635, inlinedAt: !1477)
!1637 = !DILocation(line: 374, column: 6, scope: !1473, inlinedAt: !1477)
!1638 = !DILocation(line: 374, column: 26, scope: !1635, inlinedAt: !1477)
!1639 = !DILocation(line: 375, column: 6, scope: !1640, inlinedAt: !1477)
!1640 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 375, column: 6)
!1641 = !DILocation(line: 375, column: 11, scope: !1640, inlinedAt: !1477)
!1642 = !DILocation(line: 375, column: 6, scope: !1473, inlinedAt: !1477)
!1643 = !DILocation(line: 375, column: 27, scope: !1640, inlinedAt: !1477)
!1644 = !DILocation(line: 376, column: 6, scope: !1645, inlinedAt: !1477)
!1645 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 376, column: 6)
!1646 = !DILocation(line: 376, column: 11, scope: !1645, inlinedAt: !1477)
!1647 = !DILocation(line: 376, column: 6, scope: !1473, inlinedAt: !1477)
!1648 = !DILocation(line: 376, column: 32, scope: !1645, inlinedAt: !1477)
!1649 = !DILocation(line: 377, column: 6, scope: !1650, inlinedAt: !1477)
!1650 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 377, column: 6)
!1651 = !DILocation(line: 377, column: 11, scope: !1650, inlinedAt: !1477)
!1652 = !DILocation(line: 377, column: 6, scope: !1473, inlinedAt: !1477)
!1653 = !DILocation(line: 377, column: 32, scope: !1650, inlinedAt: !1477)
!1654 = !DILocation(line: 378, column: 6, scope: !1655, inlinedAt: !1477)
!1655 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 378, column: 6)
!1656 = !DILocation(line: 378, column: 11, scope: !1655, inlinedAt: !1477)
!1657 = !DILocation(line: 378, column: 6, scope: !1473, inlinedAt: !1477)
!1658 = !DILocation(line: 378, column: 32, scope: !1655, inlinedAt: !1477)
!1659 = !DILocation(line: 379, column: 6, scope: !1660, inlinedAt: !1477)
!1660 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 379, column: 6)
!1661 = !DILocation(line: 379, column: 11, scope: !1660, inlinedAt: !1477)
!1662 = !DILocation(line: 379, column: 6, scope: !1473, inlinedAt: !1477)
!1663 = !DILocation(line: 379, column: 33, scope: !1660, inlinedAt: !1477)
!1664 = !DILocation(line: 380, column: 6, scope: !1665, inlinedAt: !1477)
!1665 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 380, column: 6)
!1666 = !DILocation(line: 380, column: 11, scope: !1665, inlinedAt: !1477)
!1667 = !DILocation(line: 380, column: 6, scope: !1473, inlinedAt: !1477)
!1668 = !DILocation(line: 380, column: 33, scope: !1665, inlinedAt: !1477)
!1669 = !DILocation(line: 381, column: 6, scope: !1670, inlinedAt: !1477)
!1670 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 381, column: 6)
!1671 = !DILocation(line: 381, column: 11, scope: !1670, inlinedAt: !1477)
!1672 = !DILocation(line: 381, column: 6, scope: !1473, inlinedAt: !1477)
!1673 = !DILocation(line: 381, column: 33, scope: !1670, inlinedAt: !1477)
!1674 = !DILocation(line: 382, column: 2, scope: !1675, inlinedAt: !1477)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !24, line: 382, column: 2)
!1676 = distinct !DILexicalBlock(scope: !1473, file: !24, line: 382, column: 2)
!1677 = !{i32 -2144105495, i32 -2144105466, i32 -2144105420, i32 -2144105362, i32 -2144105308, i32 -2144105254, i32 -2144105199, i32 -2144105168}
!1678 = !DILocation(line: 382, column: 2, scope: !1679, inlinedAt: !1477)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !24, line: 382, column: 2)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !24, line: 382, column: 2)
!1681 = !{i32 -2144104725, i32 -2144104718, i32 -2144104664, i32 -2144104633, i32 -2144104603}
!1682 = !DILocation(line: 382, column: 2, scope: !1680, inlinedAt: !1477)
!1683 = !DILocation(line: 386, column: 1, scope: !1473, inlinedAt: !1477)
!1684 = !DILocation(line: 547, column: 9, scope: !1456, inlinedAt: !1459)
!1685 = !DILocation(line: 549, column: 8, scope: !1686, inlinedAt: !1459)
!1686 = distinct !DILexicalBlock(scope: !1456, file: !24, line: 549, column: 7)
!1687 = !DILocation(line: 549, column: 7, scope: !1456, inlinedAt: !1459)
!1688 = !DILocation(line: 550, column: 4, scope: !1686, inlinedAt: !1459)
!1689 = !DILocation(line: 553, column: 33, scope: !1456, inlinedAt: !1459)
!1690 = !DILocation(line: 325, column: 6, scope: !1691, inlinedAt: !1471)
!1691 = distinct !DILexicalBlock(scope: !1467, file: !24, line: 325, column: 6)
!1692 = !DILocation(line: 325, column: 6, scope: !1467, inlinedAt: !1471)
!1693 = !DILocation(line: 326, column: 3, scope: !1691, inlinedAt: !1471)
!1694 = !DILocation(line: 332, column: 9, scope: !1467, inlinedAt: !1471)
!1695 = !DILocation(line: 332, column: 15, scope: !1467, inlinedAt: !1471)
!1696 = !DILocation(line: 332, column: 2, scope: !1467, inlinedAt: !1471)
!1697 = !DILocation(line: 336, column: 1, scope: !1467, inlinedAt: !1471)
!1698 = !DILocation(line: 553, column: 5, scope: !1456, inlinedAt: !1459)
!1699 = !DILocation(line: 553, column: 41, scope: !1456, inlinedAt: !1459)
!1700 = !DILocation(line: 554, column: 5, scope: !1456, inlinedAt: !1459)
!1701 = !DILocation(line: 554, column: 12, scope: !1456, inlinedAt: !1459)
!1702 = !DILocation(line: 448, column: 31, scope: !1448, inlinedAt: !1455)
!1703 = !DILocation(line: 448, column: 34, scope: !1448, inlinedAt: !1455)
!1704 = !DILocation(line: 448, column: 14, scope: !1448, inlinedAt: !1455)
!1705 = !DILocation(line: 450, column: 22, scope: !1448, inlinedAt: !1455)
!1706 = !DILocation(line: 450, column: 25, scope: !1448, inlinedAt: !1455)
!1707 = !DILocation(line: 450, column: 30, scope: !1448, inlinedAt: !1455)
!1708 = !DILocation(line: 450, column: 36, scope: !1448, inlinedAt: !1455)
!1709 = !DILocation(line: 450, column: 8, scope: !1448, inlinedAt: !1455)
!1710 = !DILocation(line: 450, column: 6, scope: !1448, inlinedAt: !1455)
!1711 = !DILocation(line: 451, column: 9, scope: !1448, inlinedAt: !1455)
!1712 = !DILocation(line: 552, column: 3, scope: !1456, inlinedAt: !1459)
!1713 = !DILocation(line: 557, column: 19, scope: !1458, inlinedAt: !1459)
!1714 = !DILocation(line: 557, column: 25, scope: !1458, inlinedAt: !1459)
!1715 = !DILocation(line: 557, column: 9, scope: !1458, inlinedAt: !1459)
!1716 = !DILocation(line: 557, column: 2, scope: !1458, inlinedAt: !1459)
!1717 = !DILocation(line: 558, column: 1, scope: !1458, inlinedAt: !1459)
!1718 = !DILocation(line: 664, column: 2, scope: !1440)
!1719 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1720, file: !1720, line: 646, type: !1721, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1720 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!807}
!1723 = !DILocalVariable(name: "__ret", scope: !1724, file: !1720, line: 648, type: !807)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !1720, line: 648, column: 9)
!1725 = !DILocation(line: 648, column: 9, scope: !1724)
!1726 = !DILocalVariable(name: "__edi", scope: !1724, file: !1720, line: 648, type: !807)
!1727 = !DILocalVariable(name: "__esi", scope: !1724, file: !1720, line: 648, type: !807)
!1728 = !DILocalVariable(name: "__edx", scope: !1724, file: !1720, line: 648, type: !807)
!1729 = !DILocalVariable(name: "__ecx", scope: !1724, file: !1720, line: 648, type: !807)
!1730 = !DILocalVariable(name: "__eax", scope: !1724, file: !1720, line: 648, type: !807)
!1731 = !DILocation(line: 648, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !1720, line: 648, column: 9)
!1733 = distinct !DILexicalBlock(scope: !1724, file: !1720, line: 648, column: 9)
!1734 = !{i32 -2145779101, i32 -2145776786, i32 -2145776552, i32 -2145776501, i32 -2145776473, i32 -2145776448, i32 -2145776764, i32 -2145776751, i32 -2145776313, i32 -2145776194, i32 -2145776659, i32 -2145776632, i32 -2145776604, i32 -2145776574}
!1735 = !DILocalVariable(name: "__mask", scope: !1736, file: !1720, line: 648, type: !807)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !1720, line: 648, column: 9)
!1737 = !DILocation(line: 648, column: 9, scope: !1736)
!1738 = !DILocation(line: 648, column: 9, scope: !1733)
!1739 = !DILocation(line: 648, column: 2, scope: !1719)
!1740 = distinct !DISubprogram(name: "get_order", scope: !1741, file: !1741, line: 29, type: !1356, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1741 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1742 = !DILocalVariable(name: "x", arg: 1, scope: !1743, file: !1744, line: 366, type: !69)
!1743 = distinct !DISubprogram(name: "fls64", scope: !1744, file: !1744, line: 366, type: !1745, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1744 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1358, !69}
!1747 = !DILocation(line: 366, column: 40, scope: !1743, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 46, column: 9, scope: !1740)
!1749 = !DILocalVariable(name: "bitpos", scope: !1743, file: !1744, line: 368, type: !1358)
!1750 = !DILocation(line: 368, column: 6, scope: !1743, inlinedAt: !1748)
!1751 = !DILocalVariable(name: "size", arg: 1, scope: !1740, file: !1741, line: 29, type: !807)
!1752 = !DILocation(line: 29, column: 63, scope: !1740)
!1753 = !DILocation(line: 31, column: 27, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1740, file: !1741, line: 31, column: 6)
!1755 = !DILocation(line: 31, column: 6, scope: !1754)
!1756 = !DILocation(line: 31, column: 6, scope: !1740)
!1757 = !DILocation(line: 32, column: 8, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1741, line: 32, column: 7)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !1741, line: 31, column: 34)
!1760 = !DILocation(line: 32, column: 7, scope: !1759)
!1761 = !DILocation(line: 33, column: 4, scope: !1758)
!1762 = !DILocation(line: 35, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !1741, line: 35, column: 7)
!1764 = !DILocation(line: 35, column: 12, scope: !1763)
!1765 = !DILocation(line: 35, column: 7, scope: !1759)
!1766 = !DILocation(line: 36, column: 4, scope: !1763)
!1767 = !DILocation(line: 38, column: 10, scope: !1759)
!1768 = !DILocation(line: 38, column: 28, scope: !1759)
!1769 = !DILocation(line: 38, column: 41, scope: !1759)
!1770 = !DILocation(line: 38, column: 3, scope: !1759)
!1771 = !DILocation(line: 41, column: 6, scope: !1740)
!1772 = !DILocation(line: 42, column: 7, scope: !1740)
!1773 = !DILocation(line: 46, column: 15, scope: !1740)
!1774 = !DILocation(line: 374, column: 2, scope: !1743, inlinedAt: !1748)
!1775 = !DILocation(line: 376, column: 14, scope: !1743, inlinedAt: !1748)
!1776 = !{i32 665707}
!1777 = !DILocation(line: 377, column: 9, scope: !1743, inlinedAt: !1748)
!1778 = !DILocation(line: 377, column: 16, scope: !1743, inlinedAt: !1748)
!1779 = !DILocation(line: 46, column: 2, scope: !1740)
!1780 = !DILocation(line: 48, column: 1, scope: !1740)
!1781 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1782, file: !1782, line: 30, type: !1783, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1782 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1358, !68}
!1785 = !DILocation(line: 366, column: 40, scope: !1743, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 32, column: 9, scope: !1781)
!1787 = !DILocation(line: 368, column: 6, scope: !1743, inlinedAt: !1786)
!1788 = !DILocalVariable(name: "n", arg: 1, scope: !1781, file: !1782, line: 30, type: !68)
!1789 = !DILocation(line: 30, column: 21, scope: !1781)
!1790 = !DILocation(line: 32, column: 15, scope: !1781)
!1791 = !DILocation(line: 374, column: 2, scope: !1743, inlinedAt: !1786)
!1792 = !DILocation(line: 376, column: 14, scope: !1743, inlinedAt: !1786)
!1793 = !DILocation(line: 377, column: 9, scope: !1743, inlinedAt: !1786)
!1794 = !DILocation(line: 377, column: 16, scope: !1743, inlinedAt: !1786)
!1795 = !DILocation(line: 32, column: 18, scope: !1781)
!1796 = !DILocation(line: 32, column: 2, scope: !1781)
!1797 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1798, file: !1798, line: 137, type: !1799, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !820)
!1798 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!122, !1451, !1801, !1443, !805}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1803 = !DILocalVariable(name: "s", arg: 1, scope: !1797, file: !1798, line: 137, type: !1451)
!1804 = !DILocation(line: 137, column: 54, scope: !1797)
!1805 = !DILocalVariable(name: "object", arg: 2, scope: !1797, file: !1798, line: 137, type: !1801)
!1806 = !DILocation(line: 137, column: 69, scope: !1797)
!1807 = !DILocalVariable(name: "size", arg: 3, scope: !1797, file: !1798, line: 138, type: !1443)
!1808 = !DILocation(line: 138, column: 12, scope: !1797)
!1809 = !DILocalVariable(name: "flags", arg: 4, scope: !1797, file: !1798, line: 138, type: !805)
!1810 = !DILocation(line: 138, column: 24, scope: !1797)
!1811 = !DILocation(line: 140, column: 17, scope: !1797)
!1812 = !DILocation(line: 140, column: 2, scope: !1797)
