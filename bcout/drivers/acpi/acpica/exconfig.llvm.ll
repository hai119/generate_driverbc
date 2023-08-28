; ModuleID = '../bcout/drivers/acpi/acpica/exconfig.llvm.bc'
source_filename = "drivers/acpi/acpica/exconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
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
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Dynamic OEM Table Load:\00", align 1
@_acpi_module_name = internal constant [9 x i8] c"exconfig\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [41 x i8] c"Received request to unload an ACPI table\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"AML Unload operator is not supported\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_load_table_op(%struct.acpi_walk_state* %walk_state, %union.acpi_operand_object** %return_desc) #0 !dbg !839 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %operand = alloca %union.acpi_operand_object**, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %start_node = alloca %struct.acpi_namespace_node*, align 8
  %parameter_node = alloca %struct.acpi_namespace_node*, align 8
  %ddb_handle = alloca %union.acpi_operand_object*, align 8
  %table_index = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !843, metadata !DIExpression()), !dbg !844
  store %union.acpi_operand_object** %return_desc, %union.acpi_operand_object*** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_desc.addr, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata i32* %status, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !851
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !852
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !851
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %start_node, metadata !855, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parameter_node, metadata !857, metadata !DIExpression()), !dbg !858
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %parameter_node, align 8, !dbg !858
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %ddb_handle, metadata !859, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !861, metadata !DIExpression()), !dbg !862
  call void @acpi_ex_exit_interpreter() #9, !dbg !863
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !864
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %1, i64 0, !dbg !864
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !864
  %string = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_string*, !dbg !865
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !866
  %3 = load i8*, i8** %pointer, align 8, !dbg !866
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !867
  %arrayidx2 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %4, i64 1, !dbg !867
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx2, align 8, !dbg !867
  %string3 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_string*, !dbg !868
  %pointer4 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string3, i32 0, i32 5, !dbg !869
  %6 = load i8*, i8** %pointer4, align 8, !dbg !869
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !870
  %arrayidx5 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 2, !dbg !870
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx5, align 8, !dbg !870
  %string6 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_string*, !dbg !871
  %pointer7 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string6, i32 0, i32 5, !dbg !872
  %9 = load i8*, i8** %pointer7, align 8, !dbg !872
  %call = call i32 @acpi_tb_find_table(i8* %3, i8* %6, i8* %9, i32* %table_index) #9, !dbg !873
  store i32 %call, i32* %status, align 4, !dbg !874
  call void @acpi_ex_enter_interpreter() #9, !dbg !875
  %10 = load i32, i32* %status, align 4, !dbg !876
  %tobool = icmp ne i32 %10, 0, !dbg !876
  br i1 %tobool, label %if.then, label %if.end13, !dbg !878

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %status, align 4, !dbg !879
  %cmp = icmp ne i32 %11, 5, !dbg !882
  br i1 %cmp, label %if.then8, label %if.end, !dbg !883

if.then8:                                         ; preds = %if.then
  %12 = load i32, i32* %status, align 4, !dbg !884
  store i32 %12, i32* %retval, align 4, !dbg !884
  br label %return, !dbg !884

if.end:                                           ; preds = %if.then
  %call9 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #9, !dbg !886
  store %union.acpi_operand_object* %call9, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !887
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !888
  %tobool10 = icmp ne %union.acpi_operand_object* %13, null, !dbg !888
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !890

if.then11:                                        ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !891
  br label %return, !dbg !891

if.end12:                                         ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !893
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !894
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8, !dbg !895
  store i32 0, i32* %retval, align 4, !dbg !896
  br label %return, !dbg !896

if.end13:                                         ; preds = %entry
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !897
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 46, !dbg !898
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !898
  %scope = bitcast %union.acpi_generic_state* %17 to %struct.acpi_scope_state*, !dbg !899
  %node = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !900
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !900
  store %struct.acpi_namespace_node* %18, %struct.acpi_namespace_node** %start_node, align 8, !dbg !901
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !902
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !903
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !904
  %arrayidx14 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %20, i64 3, !dbg !904
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx14, align 8, !dbg !904
  %string15 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_string*, !dbg !906
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string15, i32 0, i32 6, !dbg !907
  %22 = load i32, i32* %length, align 8, !dbg !907
  %cmp16 = icmp ugt i32 %22, 0, !dbg !908
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !909

if.then17:                                        ; preds = %if.end13
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node, align 8, !dbg !910
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !912
  %arrayidx18 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 3, !dbg !912
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx18, align 8, !dbg !912
  %string19 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_string*, !dbg !913
  %pointer20 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string19, i32 0, i32 5, !dbg !914
  %26 = load i8*, i8** %pointer20, align 8, !dbg !914
  %call21 = call i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node* %23, i8* %26, i32 1, %struct.acpi_namespace_node** %parent_node) #9, !dbg !915
  store i32 %call21, i32* %status, align 4, !dbg !916
  %27 = load i32, i32* %status, align 4, !dbg !917
  %tobool22 = icmp ne i32 %27, 0, !dbg !917
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !919

if.then23:                                        ; preds = %if.then17
  %28 = load i32, i32* %status, align 4, !dbg !920
  store i32 %28, i32* %retval, align 4, !dbg !920
  br label %return, !dbg !920

if.end24:                                         ; preds = %if.then17
  br label %if.end25, !dbg !922

if.end25:                                         ; preds = %if.end24, %if.end13
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !923
  %arrayidx26 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %29, i64 4, !dbg !923
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx26, align 8, !dbg !923
  %string27 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_string*, !dbg !925
  %length28 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string27, i32 0, i32 6, !dbg !926
  %31 = load i32, i32* %length28, align 8, !dbg !926
  %cmp29 = icmp ugt i32 %31, 0, !dbg !927
  br i1 %cmp29, label %if.then30, label %if.end53, !dbg !928

if.then30:                                        ; preds = %if.end25
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !929
  %arrayidx31 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 4, !dbg !929
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx31, align 8, !dbg !929
  %string32 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_string*, !dbg !932
  %pointer33 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string32, i32 0, i32 5, !dbg !933
  %34 = load i8*, i8** %pointer33, align 8, !dbg !933
  %arrayidx34 = getelementptr i8, i8* %34, i64 0, !dbg !929
  %35 = load i8, i8* %arrayidx34, align 1, !dbg !929
  %conv = sext i8 %35 to i32, !dbg !929
  %cmp35 = icmp ne i32 %conv, 92, !dbg !934
  br i1 %cmp35, label %land.lhs.true, label %if.end45, !dbg !935

land.lhs.true:                                    ; preds = %if.then30
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !936
  %arrayidx37 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 4, !dbg !936
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx37, align 8, !dbg !936
  %string38 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_string*, !dbg !937
  %pointer39 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string38, i32 0, i32 5, !dbg !938
  %38 = load i8*, i8** %pointer39, align 8, !dbg !938
  %arrayidx40 = getelementptr i8, i8* %38, i64 0, !dbg !936
  %39 = load i8, i8* %arrayidx40, align 1, !dbg !936
  %conv41 = sext i8 %39 to i32, !dbg !936
  %cmp42 = icmp ne i32 %conv41, 94, !dbg !939
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !940

if.then44:                                        ; preds = %land.lhs.true
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !941
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %start_node, align 8, !dbg !943
  br label %if.end45, !dbg !944

if.end45:                                         ; preds = %if.then44, %land.lhs.true, %if.then30
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node, align 8, !dbg !945
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !946
  %arrayidx46 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 4, !dbg !946
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx46, align 8, !dbg !946
  %string47 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_string*, !dbg !947
  %pointer48 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string47, i32 0, i32 5, !dbg !948
  %44 = load i8*, i8** %pointer48, align 8, !dbg !948
  %call49 = call i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node* %41, i8* %44, i32 1, %struct.acpi_namespace_node** %parameter_node) #9, !dbg !949
  store i32 %call49, i32* %status, align 4, !dbg !950
  %45 = load i32, i32* %status, align 4, !dbg !951
  %tobool50 = icmp ne i32 %45, 0, !dbg !951
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !953

if.then51:                                        ; preds = %if.end45
  %46 = load i32, i32* %status, align 4, !dbg !954
  store i32 %46, i32* %retval, align 4, !dbg !954
  br label %return, !dbg !954

if.end52:                                         ; preds = %if.end45
  br label %if.end53, !dbg !956

if.end53:                                         ; preds = %if.end52, %if.end25
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #9, !dbg !957
  call void @acpi_ex_exit_interpreter() #9, !dbg !958
  %47 = load i32, i32* %table_index, align 4, !dbg !959
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !960
  %call54 = call i32 @acpi_tb_load_table(i32 %47, %struct.acpi_namespace_node* %48) #9, !dbg !961
  store i32 %call54, i32* %status, align 4, !dbg !962
  call void @acpi_ex_enter_interpreter() #9, !dbg !963
  %49 = load i32, i32* %status, align 4, !dbg !964
  %tobool55 = icmp ne i32 %49, 0, !dbg !964
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !966

if.then56:                                        ; preds = %if.end53
  %50 = load i32, i32* %status, align 4, !dbg !967
  store i32 %50, i32* %retval, align 4, !dbg !967
  br label %return, !dbg !967

if.end57:                                         ; preds = %if.end53
  %51 = load i32, i32* %table_index, align 4, !dbg !969
  %call58 = call i32 @acpi_ex_add_table(i32 %51, %union.acpi_operand_object** %ddb_handle) #9, !dbg !970
  store i32 %call58, i32* %status, align 4, !dbg !971
  %52 = load i32, i32* %status, align 4, !dbg !972
  %tobool59 = icmp ne i32 %52, 0, !dbg !972
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !974

if.then60:                                        ; preds = %if.end57
  %53 = load i32, i32* %status, align 4, !dbg !975
  store i32 %53, i32* %retval, align 4, !dbg !975
  br label %return, !dbg !975

if.end61:                                         ; preds = %if.end57
  call void @acpi_ex_exit_interpreter() #9, !dbg !977
  %call62 = call i32 @acpi_ns_initialize_objects() #9, !dbg !978
  call void @acpi_ex_enter_interpreter() #9, !dbg !979
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parameter_node, align 8, !dbg !980
  %tobool63 = icmp ne %struct.acpi_namespace_node* %54, null, !dbg !980
  br i1 %tobool63, label %if.then64, label %if.end71, !dbg !982

if.then64:                                        ; preds = %if.end61
  %55 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !983
  %arrayidx65 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %55, i64 5, !dbg !983
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx65, align 8, !dbg !983
  %57 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parameter_node, align 8, !dbg !985
  %58 = bitcast %struct.acpi_namespace_node* %57 to i8*, !dbg !985
  %59 = bitcast i8* %58 to %union.acpi_operand_object*, !dbg !985
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !986
  %call66 = call i32 @acpi_ex_store(%union.acpi_operand_object* %56, %union.acpi_operand_object* %59, %struct.acpi_walk_state* %60) #9, !dbg !987
  store i32 %call66, i32* %status, align 4, !dbg !988
  %61 = load i32, i32* %status, align 4, !dbg !989
  %tobool67 = icmp ne i32 %61, 0, !dbg !989
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !991

if.then68:                                        ; preds = %if.then64
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !992
  %call69 = call i32 @acpi_ex_unload_table(%union.acpi_operand_object* %62) #9, !dbg !994
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !995
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %63) #9, !dbg !996
  %64 = load i32, i32* %status, align 4, !dbg !997
  store i32 %64, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end70:                                         ; preds = %if.then64
  br label %if.end71, !dbg !998

if.end71:                                         ; preds = %if.end70, %if.end61
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !999
  %66 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !1000
  store %union.acpi_operand_object* %65, %union.acpi_operand_object** %66, align 8, !dbg !1001
  %67 = load i32, i32* %status, align 4, !dbg !1002
  store i32 %67, i32* %retval, align 4, !dbg !1002
  br label %return, !dbg !1002

return:                                           ; preds = %if.end71, %if.then68, %if.then60, %if.then56, %if.then51, %if.then23, %if.end12, %if.then11, %if.then8
  %68 = load i32, i32* %retval, align 4, !dbg !1003
  ret i32 %68, !dbg !1003
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_find_table(i8*, i8*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node_unlocked(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_load_table(i32, %struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_add_table(i32 %table_index, %union.acpi_operand_object** %ddb_handle) #0 !dbg !1004 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %ddb_handle.addr = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  store %union.acpi_operand_object** %ddb_handle, %union.acpi_operand_object*** %ddb_handle.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %ddb_handle.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1011, metadata !DIExpression()), !dbg !1012
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 54, i32 128, i32 20) #9, !dbg !1013
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1014
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1015
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1015
  br i1 %tobool, label %if.end, label %if.then, !dbg !1017

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1018
  br label %return, !dbg !1018

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1020
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1021
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1022
  %2 = load i8, i8* %flags, align 4, !dbg !1023
  %conv = zext i8 %2 to i32, !dbg !1023
  %or = or i32 %conv, 4, !dbg !1023
  %conv1 = trunc i32 %or to i8, !dbg !1023
  store i8 %conv1, i8* %flags, align 4, !dbg !1023
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1024
  %reference = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_reference*, !dbg !1025
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1026
  store i8 4, i8* %class, align 1, !dbg !1027
  %4 = load i32, i32* %table_index.addr, align 4, !dbg !1028
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1029
  %reference2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_reference*, !dbg !1030
  %value = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference2, i32 0, i32 13, !dbg !1031
  store i32 %4, i32* %value, align 8, !dbg !1032
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1033
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ddb_handle.addr, align 8, !dbg !1034
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %7, align 8, !dbg !1035
  store i32 0, i32* %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1037
  ret i32 %8, !dbg !1037
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_initialize_objects() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_unload_table(%union.acpi_operand_object* %ddb_handle) #0 !dbg !1038 {
entry:
  %retval = alloca i32, align 4
  %ddb_handle.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %table_desc = alloca %union.acpi_operand_object*, align 8
  %table_index = alloca i32, align 4
  store %union.acpi_operand_object* %ddb_handle, %union.acpi_operand_object** %ddb_handle.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %ddb_handle.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1043, metadata !DIExpression()), !dbg !1044
  store i32 0, i32* %status, align 4, !dbg !1044
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %table_desc, metadata !1045, metadata !DIExpression()), !dbg !1046
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1047
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %table_desc, align 8, !dbg !1046
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 488, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1050
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 498, i32 14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1051
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1052
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1052
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1054

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1055
  %3 = bitcast %union.acpi_operand_object* %2 to i8*, !dbg !1055
  %4 = bitcast i8* %3 to %union.acpi_descriptor*, !dbg !1055
  %common = bitcast %union.acpi_descriptor* %4 to %struct.acpi_common_descriptor*, !dbg !1055
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1055
  %5 = load i8, i8* %descriptor_type, align 8, !dbg !1055
  %conv = zext i8 %5 to i32, !dbg !1055
  %cmp = icmp ne i32 %conv, 14, !dbg !1056
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1057

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1058
  %common3 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_common*, !dbg !1059
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common3, i32 0, i32 2, !dbg !1060
  %7 = load i8, i8* %type, align 1, !dbg !1060
  %conv4 = zext i8 %7 to i32, !dbg !1058
  %cmp5 = icmp ne i32 %conv4, 20, !dbg !1061
  br i1 %cmp5, label %if.then, label %lor.lhs.false7, !dbg !1062

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1063
  %common8 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !1064
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 4, !dbg !1065
  %9 = load i8, i8* %flags, align 4, !dbg !1065
  %conv9 = zext i8 %9 to i32, !dbg !1063
  %and = and i32 %conv9, 4, !dbg !1066
  %tobool10 = icmp ne i32 %and, 0, !dbg !1066
  br i1 %tobool10, label %if.end, label %if.then, !dbg !1067

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 12291, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

if.end:                                           ; preds = %lor.lhs.false7
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %table_desc, align 8, !dbg !1070
  %reference = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_reference*, !dbg !1071
  %value = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 13, !dbg !1072
  %11 = load i32, i32* %value, align 8, !dbg !1072
  store i32 %11, i32* %table_index, align 4, !dbg !1073
  call void @acpi_ex_exit_interpreter() #9, !dbg !1074
  %12 = load i32, i32* %table_index, align 4, !dbg !1075
  %call = call i32 @acpi_tb_unload_table(i32 %12) #9, !dbg !1076
  store i32 %call, i32* %status, align 4, !dbg !1077
  call void @acpi_ex_enter_interpreter() #9, !dbg !1078
  %13 = load i32, i32* %status, align 4, !dbg !1079
  %tobool11 = icmp ne i32 %13, 0, !dbg !1079
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !1081

if.then12:                                        ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle.addr, align 8, !dbg !1082
  %common13 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !1084
  %flags14 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common13, i32 0, i32 4, !dbg !1085
  %15 = load i8, i8* %flags14, align 4, !dbg !1086
  %conv15 = zext i8 %15 to i32, !dbg !1086
  %and16 = and i32 %conv15, -5, !dbg !1086
  %conv17 = trunc i32 %and16 to i8, !dbg !1086
  store i8 %conv17, i8* %flags14, align 4, !dbg !1086
  br label %if.end18, !dbg !1087

if.end18:                                         ; preds = %if.then12, %if.end
  %16 = load i32, i32* %status, align 4, !dbg !1088
  store i32 %16, i32* %retval, align 4, !dbg !1088
  br label %return, !dbg !1088

return:                                           ; preds = %if.end18, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1089
  ret i32 %17, !dbg !1089
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_load_op(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object* %target, %struct.acpi_walk_state* %walk_state) #0 !dbg !1090 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %target.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %ddb_handle = alloca %union.acpi_operand_object*, align 8
  %table_header = alloca %struct.acpi_table_header*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %table_index = alloca i32, align 4
  %status = alloca i32, align 4
  %length = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1093, metadata !DIExpression()), !dbg !1094
  store %union.acpi_operand_object* %target, %union.acpi_operand_object** %target.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %target.addr, metadata !1095, metadata !DIExpression()), !dbg !1096
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %ddb_handle, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1109, metadata !DIExpression()), !dbg !1110
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1111
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1112
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1113
  %1 = load i8, i8* %type, align 1, !dbg !1113
  %conv = zext i8 %1 to i32, !dbg !1111
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 3, label %sw.bb33
  ], !dbg !1114

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1115
  %region = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_region*, !dbg !1118
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1119
  %3 = load i8, i8* %space_id, align 1, !dbg !1119
  %conv1 = zext i8 %3 to i32, !dbg !1115
  %cmp = icmp ne i32 %conv1, 0, !dbg !1120
  br i1 %cmp, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %sw.bb
  store i32 12291, i32* %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end:                                           ; preds = %sw.bb
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1124
  %common3 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1126
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common3, i32 0, i32 4, !dbg !1127
  %5 = load i8, i8* %flags, align 4, !dbg !1127
  %conv4 = zext i8 %5 to i32, !dbg !1124
  %and = and i32 %conv4, 4, !dbg !1128
  %tobool = icmp ne i32 %and, 0, !dbg !1128
  br i1 %tobool, label %if.end9, label %if.then5, !dbg !1129

if.then5:                                         ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1130
  %call = call i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %6) #9, !dbg !1132
  store i32 %call, i32* %status, align 4, !dbg !1133
  %7 = load i32, i32* %status, align 4, !dbg !1134
  %tobool6 = icmp ne i32 %7, 0, !dbg !1134
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1136

if.then7:                                         ; preds = %if.then5
  %8 = load i32, i32* %status, align 4, !dbg !1137
  store i32 %8, i32* %retval, align 4, !dbg !1137
  br label %return, !dbg !1137

if.end8:                                          ; preds = %if.then5
  br label %if.end9, !dbg !1139

if.end9:                                          ; preds = %if.end8, %if.end
  %call10 = call i8* @acpi_os_allocate(i64 36) #9, !dbg !1140
  %9 = bitcast i8* %call10 to %struct.acpi_table_header*, !dbg !1140
  store %struct.acpi_table_header* %9, %struct.acpi_table_header** %table_header, align 8, !dbg !1141
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1142
  %tobool11 = icmp ne %struct.acpi_table_header* %10, null, !dbg !1142
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1144

if.then12:                                        ; preds = %if.end9
  store i32 4, i32* %retval, align 4, !dbg !1145
  br label %return, !dbg !1145

if.end13:                                         ; preds = %if.end9
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1147
  %12 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1148
  %13 = bitcast %struct.acpi_table_header* %12 to i8*, !dbg !1148
  %call14 = call i32 @acpi_ex_region_read(%union.acpi_operand_object* %11, i32 36, i8* %13) #9, !dbg !1149
  store i32 %call14, i32* %status, align 4, !dbg !1150
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1151
  %length15 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %14, i32 0, i32 1, !dbg !1152
  %15 = load i32, i32* %length15, align 1, !dbg !1152
  store i32 %15, i32* %length, align 4, !dbg !1153
  %16 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1154
  %17 = bitcast %struct.acpi_table_header* %16 to i8*, !dbg !1154
  call void @acpi_os_free(i8* %17) #9, !dbg !1154
  %18 = load i32, i32* %status, align 4, !dbg !1155
  %tobool16 = icmp ne i32 %18, 0, !dbg !1155
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1157

if.then17:                                        ; preds = %if.end13
  %19 = load i32, i32* %status, align 4, !dbg !1158
  store i32 %19, i32* %retval, align 4, !dbg !1158
  br label %return, !dbg !1158

if.end18:                                         ; preds = %if.end13
  %20 = load i32, i32* %length, align 4, !dbg !1160
  %conv19 = zext i32 %20 to i64, !dbg !1160
  %cmp20 = icmp ult i64 %conv19, 36, !dbg !1162
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1163

if.then22:                                        ; preds = %if.end18
  store i32 8197, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end23:                                         ; preds = %if.end18
  %21 = load i32, i32* %length, align 4, !dbg !1166
  %conv24 = zext i32 %21 to i64, !dbg !1166
  %call25 = call i8* @acpi_os_allocate(i64 %conv24) #9, !dbg !1166
  %22 = bitcast i8* %call25 to %struct.acpi_table_header*, !dbg !1166
  store %struct.acpi_table_header* %22, %struct.acpi_table_header** %table, align 8, !dbg !1167
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1168
  %tobool26 = icmp ne %struct.acpi_table_header* %23, null, !dbg !1168
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1170

if.then27:                                        ; preds = %if.end23
  store i32 4, i32* %retval, align 4, !dbg !1171
  br label %return, !dbg !1171

if.end28:                                         ; preds = %if.end23
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1173
  %25 = load i32, i32* %length, align 4, !dbg !1174
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1175
  %27 = bitcast %struct.acpi_table_header* %26 to i8*, !dbg !1175
  %call29 = call i32 @acpi_ex_region_read(%union.acpi_operand_object* %24, i32 %25, i8* %27) #9, !dbg !1176
  store i32 %call29, i32* %status, align 4, !dbg !1177
  %28 = load i32, i32* %status, align 4, !dbg !1178
  %tobool30 = icmp ne i32 %28, 0, !dbg !1178
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1180

if.then31:                                        ; preds = %if.end28
  %29 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1181
  %30 = bitcast %struct.acpi_table_header* %29 to i8*, !dbg !1181
  call void @acpi_os_free(i8* %30) #9, !dbg !1181
  %31 = load i32, i32* %status, align 4, !dbg !1183
  store i32 %31, i32* %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

if.end32:                                         ; preds = %if.end28
  br label %sw.epilog, !dbg !1184

sw.bb33:                                          ; preds = %entry
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1185
  %buffer = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_buffer*, !dbg !1187
  %length34 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1188
  %33 = load i32, i32* %length34, align 8, !dbg !1188
  %conv35 = zext i32 %33 to i64, !dbg !1185
  %cmp36 = icmp ult i64 %conv35, 36, !dbg !1189
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1190

if.then38:                                        ; preds = %sw.bb33
  store i32 8197, i32* %retval, align 4, !dbg !1191
  br label %return, !dbg !1191

if.end39:                                         ; preds = %sw.bb33
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1193
  %buffer40 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_buffer*, !dbg !1193
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer40, i32 0, i32 5, !dbg !1193
  %35 = load i8*, i8** %pointer, align 8, !dbg !1193
  %36 = bitcast i8* %35 to %struct.acpi_table_header*, !dbg !1193
  store %struct.acpi_table_header* %36, %struct.acpi_table_header** %table_header, align 8, !dbg !1194
  %37 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1195
  %length41 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %37, i32 0, i32 1, !dbg !1196
  %38 = load i32, i32* %length41, align 1, !dbg !1196
  store i32 %38, i32* %length, align 4, !dbg !1197
  %39 = load i32, i32* %length, align 4, !dbg !1198
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1200
  %buffer42 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_buffer*, !dbg !1201
  %length43 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer42, i32 0, i32 6, !dbg !1202
  %41 = load i32, i32* %length43, align 8, !dbg !1202
  %cmp44 = icmp ugt i32 %39, %41, !dbg !1203
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1204

if.then46:                                        ; preds = %if.end39
  store i32 12298, i32* %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

if.end47:                                         ; preds = %if.end39
  %42 = load i32, i32* %length, align 4, !dbg !1207
  %conv48 = zext i32 %42 to i64, !dbg !1207
  %cmp49 = icmp ult i64 %conv48, 36, !dbg !1209
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1210

if.then51:                                        ; preds = %if.end47
  store i32 8197, i32* %retval, align 4, !dbg !1211
  br label %return, !dbg !1211

if.end52:                                         ; preds = %if.end47
  %43 = load i32, i32* %length, align 4, !dbg !1213
  %conv53 = zext i32 %43 to i64, !dbg !1213
  %call54 = call i8* @acpi_os_allocate(i64 %conv53) #9, !dbg !1213
  %44 = bitcast i8* %call54 to %struct.acpi_table_header*, !dbg !1213
  store %struct.acpi_table_header* %44, %struct.acpi_table_header** %table, align 8, !dbg !1214
  %45 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1215
  %tobool55 = icmp ne %struct.acpi_table_header* %45, null, !dbg !1215
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !1217

if.then56:                                        ; preds = %if.end52
  store i32 4, i32* %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

if.end57:                                         ; preds = %if.end52
  %46 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1220
  %47 = bitcast %struct.acpi_table_header* %46 to i8*, !dbg !1221
  %48 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !1222
  %49 = bitcast %struct.acpi_table_header* %48 to i8*, !dbg !1221
  %50 = load i32, i32* %length, align 4, !dbg !1223
  %conv58 = zext i32 %50 to i64, !dbg !1223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %49, i64 %conv58, i1 false), !dbg !1221
  br label %sw.epilog, !dbg !1224

sw.default:                                       ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !1225
  br label %return, !dbg !1225

sw.epilog:                                        ; preds = %if.end57, %if.end32
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #9, !dbg !1226
  call void @acpi_ex_exit_interpreter() #9, !dbg !1227
  %51 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1228
  %52 = bitcast %struct.acpi_table_header* %51 to i8*, !dbg !1228
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64, !dbg !1228
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !1228
  %call59 = call i32 @acpi_tb_install_and_load_table(i64 %sub.ptr.sub, i8 zeroext 2, i8 zeroext 1, i32* %table_index) #9, !dbg !1229
  store i32 %call59, i32* %status, align 4, !dbg !1230
  call void @acpi_ex_enter_interpreter() #9, !dbg !1231
  %53 = load i32, i32* %status, align 4, !dbg !1232
  %tobool60 = icmp ne i32 %53, 0, !dbg !1232
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !1234

if.then61:                                        ; preds = %sw.epilog
  %54 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1235
  %55 = bitcast %struct.acpi_table_header* %54 to i8*, !dbg !1235
  call void @acpi_os_free(i8* %55) #9, !dbg !1235
  %56 = load i32, i32* %status, align 4, !dbg !1237
  store i32 %56, i32* %retval, align 4, !dbg !1237
  br label %return, !dbg !1237

if.end62:                                         ; preds = %sw.epilog
  %57 = load i32, i32* %table_index, align 4, !dbg !1238
  %call63 = call i32 @acpi_ex_add_table(i32 %57, %union.acpi_operand_object** %ddb_handle) #9, !dbg !1239
  store i32 %call63, i32* %status, align 4, !dbg !1240
  %58 = load i32, i32* %status, align 4, !dbg !1241
  %tobool64 = icmp ne i32 %58, 0, !dbg !1241
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1243

if.then65:                                        ; preds = %if.end62
  %59 = load i32, i32* %status, align 4, !dbg !1244
  store i32 %59, i32* %retval, align 4, !dbg !1244
  br label %return, !dbg !1244

if.end66:                                         ; preds = %if.end62
  call void @acpi_ex_exit_interpreter() #9, !dbg !1246
  %call67 = call i32 @acpi_ns_initialize_objects() #9, !dbg !1247
  call void @acpi_ex_enter_interpreter() #9, !dbg !1248
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !1249
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target.addr, align 8, !dbg !1250
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1251
  %call68 = call i32 @acpi_ex_store(%union.acpi_operand_object* %60, %union.acpi_operand_object* %61, %struct.acpi_walk_state* %62) #9, !dbg !1252
  store i32 %call68, i32* %status, align 4, !dbg !1253
  %63 = load i32, i32* %status, align 4, !dbg !1254
  %tobool69 = icmp ne i32 %63, 0, !dbg !1254
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !1256

if.then70:                                        ; preds = %if.end66
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !1257
  %call71 = call i32 @acpi_ex_unload_table(%union.acpi_operand_object* %64) #9, !dbg !1259
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !1260
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %65) #9, !dbg !1261
  %66 = load i32, i32* %status, align 4, !dbg !1262
  store i32 %66, i32* %retval, align 4, !dbg !1262
  br label %return, !dbg !1262

if.end72:                                         ; preds = %if.end66
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %ddb_handle, align 8, !dbg !1263
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %67) #9, !dbg !1264
  %68 = load i32, i32* %status, align 4, !dbg !1265
  store i32 %68, i32* %retval, align 4, !dbg !1265
  br label %return, !dbg !1265

return:                                           ; preds = %if.end72, %if.then70, %if.then65, %if.then61, %sw.default, %if.then56, %if.then51, %if.then46, %if.then38, %if.then31, %if.then27, %if.then22, %if.then17, %if.then12, %if.then7, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !1266
  ret i32 %69, !dbg !1266
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !1267 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1271, metadata !DIExpression()), !dbg !1282
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1290, metadata !DIExpression()), !dbg !1291
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1292, metadata !DIExpression()), !dbg !1293
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1294, metadata !DIExpression()), !dbg !1295
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1296, metadata !DIExpression()), !dbg !1300
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1302, metadata !DIExpression()), !dbg !1306
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1308, metadata !DIExpression()), !dbg !1312
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1317, metadata !DIExpression()), !dbg !1318
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1319, metadata !DIExpression()), !dbg !1320
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1321, metadata !DIExpression()), !dbg !1322
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1323, metadata !DIExpression()), !dbg !1324
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1325, metadata !DIExpression()), !dbg !1326
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1327, metadata !DIExpression()), !dbg !1328
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !1329, metadata !DIExpression()), !dbg !1330
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1331, metadata !DIExpression()), !dbg !1332
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1333, metadata !DIExpression()), !dbg !1339
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1343, metadata !DIExpression()), !dbg !1344
  %0 = load i64, i64* %size.addr, align 8, !dbg !1345
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1346, metadata !DIExpression()), !dbg !1347
  br label %do.body, !dbg !1347

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1352, metadata !DIExpression()), !dbg !1351
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1351
  %conv = zext i1 %cmp to i32, !dbg !1351
  store i32 1, i32* %tmp, align 4, !dbg !1351
  %1 = load i32, i32* %tmp, align 4, !dbg !1351
  %call = call i64 @arch_local_save_flags() #9, !dbg !1353
  store i64 %call, i64* %_flags, align 8, !dbg !1353
  br label %do.end, !dbg !1353

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1354, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1357, metadata !DIExpression()), !dbg !1356
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1356
  %conv6 = zext i1 %cmp5 to i32, !dbg !1356
  store i32 1, i32* %tmp7, align 4, !dbg !1356
  %2 = load i32, i32* %tmp7, align 4, !dbg !1356
  %3 = load i64, i64* %_flags, align 8, !dbg !1358
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1359
  %and.i = and i64 %4, 512, !dbg !1360
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1361
  %lnot.i = xor i1 %tobool.i, true, !dbg !1361
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1361
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1358
  %5 = load i32, i32* %tmp8, align 4, !dbg !1358
  store i32 %5, i32* %tmp1, align 4, !dbg !1353
  %6 = load i32, i32* %tmp1, align 4, !dbg !1347
  %tobool = icmp ne i32 %6, 0, !dbg !1362
  %7 = zext i1 %tobool to i64, !dbg !1362
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1362
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !1363
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !1364
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !1365

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1366
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !1367
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1368

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !1369
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !1370
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !1371
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !1372
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1326
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !1373
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1374
  %16 = load i32, i32* %order.i.i, align 4, !dbg !1375
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1376
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1377
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1378
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !1379
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1379
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1379
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1379
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1379
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1380
  br label %kmalloc.exit, !dbg !1380

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !1381
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1382
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !1382
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1384

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1385
  br label %kmalloc_index.exit.i, !dbg !1385

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1386
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !1388
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1389

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1390
  br label %kmalloc_index.exit.i, !dbg !1390

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1391
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !1393
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1394

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1395
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !1396
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1397

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1398
  br label %kmalloc_index.exit.i, !dbg !1398

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1399
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1401
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1402

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1403
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1404
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1405

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1406
  br label %kmalloc_index.exit.i, !dbg !1406

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1407
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1409
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1410

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1411
  br label %kmalloc_index.exit.i, !dbg !1411

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1412
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1414
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1415

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1416
  br label %kmalloc_index.exit.i, !dbg !1416

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1417
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1419
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1420

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1421
  br label %kmalloc_index.exit.i, !dbg !1421

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1422
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1424
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1425

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1426
  br label %kmalloc_index.exit.i, !dbg !1426

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1427
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1429
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1430

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1431
  br label %kmalloc_index.exit.i, !dbg !1431

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1432
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1434
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1435

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1436
  br label %kmalloc_index.exit.i, !dbg !1436

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1437
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1439
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1440

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1441
  br label %kmalloc_index.exit.i, !dbg !1441

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1442
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1444
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1445

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1446
  br label %kmalloc_index.exit.i, !dbg !1446

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1447
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1449
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1450

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1451
  br label %kmalloc_index.exit.i, !dbg !1451

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1452
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1454
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1455

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1456
  br label %kmalloc_index.exit.i, !dbg !1456

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1457
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1459
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1460

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1461
  br label %kmalloc_index.exit.i, !dbg !1461

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1462
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1464
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1465

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1466
  br label %kmalloc_index.exit.i, !dbg !1466

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1467
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1469
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1470

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1471
  br label %kmalloc_index.exit.i, !dbg !1471

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1472
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1474
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1475

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1476
  br label %kmalloc_index.exit.i, !dbg !1476

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1477
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1479
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1480

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1481
  br label %kmalloc_index.exit.i, !dbg !1481

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1482
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1484
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1485

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1486
  br label %kmalloc_index.exit.i, !dbg !1486

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1487
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1489
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1490

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1491
  br label %kmalloc_index.exit.i, !dbg !1491

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1492
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1494
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1495

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1496
  br label %kmalloc_index.exit.i, !dbg !1496

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1497
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1499
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1500

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1501
  br label %kmalloc_index.exit.i, !dbg !1501

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1502
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1504
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1505

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1506
  br label %kmalloc_index.exit.i, !dbg !1506

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1507
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1509
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1510

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1511
  br label %kmalloc_index.exit.i, !dbg !1511

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1512
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1514
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1515

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1516
  br label %kmalloc_index.exit.i, !dbg !1516

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1517
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1519
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1520

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1521
  br label %kmalloc_index.exit.i, !dbg !1521

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1522
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1524
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1525

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1526
  br label %kmalloc_index.exit.i, !dbg !1526

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1527, !srcloc !1530
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1531, !srcloc !1534
  unreachable, !dbg !1535

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1536
  store i32 %51, i32* %index.i, align 4, !dbg !1537
  %52 = load i32, i32* %index.i, align 4, !dbg !1538
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1538
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1540

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1541
  br label %kmalloc.exit, !dbg !1541

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1542
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1543
  %and.i.i = and i32 %54, 17, !dbg !1543
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1543
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1543
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1543
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1543
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1545

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1546
  br label %kmalloc_type.exit.i, !dbg !1546

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1547
  %and2.i.i = and i32 %55, 1, !dbg !1548
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1547
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1547
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1547
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1549
  br label %kmalloc_type.exit.i, !dbg !1549

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1550
  %idxprom.i = zext i32 %57 to i64, !dbg !1551
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1551
  %58 = load i32, i32* %index.i, align 4, !dbg !1552
  %idxprom6.i = zext i32 %58 to i64, !dbg !1551
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1551
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1551
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1553
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1554
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1555
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1556
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !1557
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1557
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1557
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1557
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1557
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1295
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1558
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1559
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1560
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1561
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !1562
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1563
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1564
  store i8* %68, i8** %retval.i, align 8, !dbg !1565
  br label %kmalloc.exit, !dbg !1565

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1566
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1567
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !1568
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1568
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1568
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1568
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1568
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1569
  br label %kmalloc.exit, !dbg !1569

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1570
  ret i8* %71, !dbg !1571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_region_read(%union.acpi_operand_object* %obj_desc, i32 %length, i8* %buffer) #0 !dbg !1572 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %length.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %region_offset = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1581, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.declare(metadata i64* %value, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata i32* %region_offset, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i32 0, i32* %region_offset, align 4, !dbg !1586
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1587, metadata !DIExpression()), !dbg !1588
  store i32 0, i32* %i, align 4, !dbg !1589
  br label %for.cond, !dbg !1591

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1592
  %1 = load i32, i32* %length.addr, align 4, !dbg !1594
  %cmp = icmp ult i32 %0, %1, !dbg !1595
  br i1 %cmp, label %for.body, label %for.end, !dbg !1596

for.body:                                         ; preds = %for.cond
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1597
  %3 = load i32, i32* %region_offset, align 4, !dbg !1599
  %call = call i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object* %2, %union.acpi_operand_object* null, i32 0, i32 %3, i32 8, i64* %value) #9, !dbg !1600
  store i32 %call, i32* %status, align 4, !dbg !1601
  %4 = load i32, i32* %status, align 4, !dbg !1602
  %tobool = icmp ne i32 %4, 0, !dbg !1602
  br i1 %tobool, label %if.then, label %if.end, !dbg !1604

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %status, align 4, !dbg !1605
  store i32 %5, i32* %retval, align 4, !dbg !1607
  br label %return, !dbg !1607

if.end:                                           ; preds = %for.body
  %6 = load i64, i64* %value, align 8, !dbg !1608
  %conv = trunc i64 %6 to i8, !dbg !1609
  %7 = load i8*, i8** %buffer.addr, align 8, !dbg !1610
  store i8 %conv, i8* %7, align 1, !dbg !1611
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !1612
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !1612
  store i8* %incdec.ptr, i8** %buffer.addr, align 8, !dbg !1612
  %9 = load i32, i32* %region_offset, align 4, !dbg !1613
  %inc = add i32 %9, 1, !dbg !1613
  store i32 %inc, i32* %region_offset, align 4, !dbg !1613
  br label %for.inc, !dbg !1614

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !1615
  %inc1 = add i32 %10, 1, !dbg !1615
  store i32 %inc1, i32* %i, align 4, !dbg !1615
  br label %for.cond, !dbg !1616, !llvm.loop !1617

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1619
  br label %return, !dbg !1619

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1620
  ret i32 %11, !dbg !1620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1621 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1624, metadata !DIExpression()), !dbg !1625
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1626
  call void @kfree(i8* %0) #9, !dbg !1627
  ret void, !dbg !1628
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_and_load_table(i64, i8 zeroext, i8 zeroext, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_unload_table(i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1629 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1633, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1636, metadata !DIExpression()), !dbg !1635
  %0 = load i64, i64* %__edi, align 8, !dbg !1635
  store i64 %0, i64* %__edi, align 8, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1637, metadata !DIExpression()), !dbg !1635
  %1 = load i64, i64* %__esi, align 8, !dbg !1635
  store i64 %1, i64* %__esi, align 8, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1638, metadata !DIExpression()), !dbg !1635
  %2 = load i64, i64* %__edx, align 8, !dbg !1635
  store i64 %2, i64* %__edx, align 8, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1639, metadata !DIExpression()), !dbg !1635
  %3 = load i64, i64* %__ecx, align 8, !dbg !1635
  store i64 %3, i64* %__ecx, align 8, !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1640, metadata !DIExpression()), !dbg !1635
  %4 = load i64, i64* %__eax, align 8, !dbg !1635
  store i64 %4, i64* %__eax, align 8, !dbg !1635
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1635
  %6 = call i64 @llvm.read_register.i64(metadata !833), !dbg !1641
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1641, !srcloc !1644
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1641
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1641
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1641
  call void @llvm.write_register.i64(metadata !833, i64 %asmresult1), !dbg !1641
  %8 = load i64, i64* %__eax, align 8, !dbg !1641
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1645, metadata !DIExpression()), !dbg !1647
  store i64 -1, i64* %__mask, align 8, !dbg !1647
  %9 = load i64, i64* %__mask, align 8, !dbg !1647
  store i64 %9, i64* %tmp, align 8, !dbg !1647
  %10 = load i64, i64* %tmp, align 8, !dbg !1647
  %and = and i64 %8, %10, !dbg !1641
  store i64 %and, i64* %__ret, align 8, !dbg !1641
  %11 = load i64, i64* %__ret, align 8, !dbg !1635
  store i64 %11, i64* %tmp2, align 8, !dbg !1648
  %12 = load i64, i64* %tmp2, align 8, !dbg !1635
  ret i64 %12, !dbg !1649
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1650 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1652, metadata !DIExpression()), !dbg !1657
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1659, metadata !DIExpression()), !dbg !1660
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1661, metadata !DIExpression()), !dbg !1662
  %0 = load i64, i64* %size.addr, align 8, !dbg !1663
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1665
  br i1 %1, label %if.then, label %if.end447, !dbg !1666

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1667
  %tobool = icmp ne i64 %2, 0, !dbg !1667
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1670

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1671
  br label %return, !dbg !1671

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1672
  %cmp = icmp ult i64 %3, 4096, !dbg !1674
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1675

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1676
  br label %return, !dbg !1676

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub = sub i64 %4, 1, !dbg !1677
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1677
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1677

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub4 = sub i64 %6, 1, !dbg !1677
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1677
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1677

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub6 = sub i64 %8, 1, !dbg !1677
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1677
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1677

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1677

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub9 = sub i64 %9, 1, !dbg !1677
  %and = and i64 %sub9, -9223372036854775808, !dbg !1677
  %tobool10 = icmp ne i64 %and, 0, !dbg !1677
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1677

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1677

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub13 = sub i64 %10, 1, !dbg !1677
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1677
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1677
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1677

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1677

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub18 = sub i64 %11, 1, !dbg !1677
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1677
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1677
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1677

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1677

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub23 = sub i64 %12, 1, !dbg !1677
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1677
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1677
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1677

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1677

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub28 = sub i64 %13, 1, !dbg !1677
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1677
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1677
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1677

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1677

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub33 = sub i64 %14, 1, !dbg !1677
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1677
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1677
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1677

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1677

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub38 = sub i64 %15, 1, !dbg !1677
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1677
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1677
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1677

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1677

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub43 = sub i64 %16, 1, !dbg !1677
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1677
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1677
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1677

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1677

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub48 = sub i64 %17, 1, !dbg !1677
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1677
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1677
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1677

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1677

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub53 = sub i64 %18, 1, !dbg !1677
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1677
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1677
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1677

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1677

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub58 = sub i64 %19, 1, !dbg !1677
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1677
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1677
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1677

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1677

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub63 = sub i64 %20, 1, !dbg !1677
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1677
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1677
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1677

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1677

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub68 = sub i64 %21, 1, !dbg !1677
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1677
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1677
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1677

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1677

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub73 = sub i64 %22, 1, !dbg !1677
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1677
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1677
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1677

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1677

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub78 = sub i64 %23, 1, !dbg !1677
  %and79 = and i64 %sub78, 562949953421312, !dbg !1677
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1677
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1677

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1677

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub83 = sub i64 %24, 1, !dbg !1677
  %and84 = and i64 %sub83, 281474976710656, !dbg !1677
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1677
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1677

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1677

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub88 = sub i64 %25, 1, !dbg !1677
  %and89 = and i64 %sub88, 140737488355328, !dbg !1677
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1677
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1677

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1677

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub93 = sub i64 %26, 1, !dbg !1677
  %and94 = and i64 %sub93, 70368744177664, !dbg !1677
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1677
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1677

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1677

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub98 = sub i64 %27, 1, !dbg !1677
  %and99 = and i64 %sub98, 35184372088832, !dbg !1677
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1677
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1677

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1677

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub103 = sub i64 %28, 1, !dbg !1677
  %and104 = and i64 %sub103, 17592186044416, !dbg !1677
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1677
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1677

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1677

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub108 = sub i64 %29, 1, !dbg !1677
  %and109 = and i64 %sub108, 8796093022208, !dbg !1677
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1677
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1677

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1677

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub113 = sub i64 %30, 1, !dbg !1677
  %and114 = and i64 %sub113, 4398046511104, !dbg !1677
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1677
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1677

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1677

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub118 = sub i64 %31, 1, !dbg !1677
  %and119 = and i64 %sub118, 2199023255552, !dbg !1677
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1677
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1677

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1677

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub123 = sub i64 %32, 1, !dbg !1677
  %and124 = and i64 %sub123, 1099511627776, !dbg !1677
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1677
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1677

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1677

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub128 = sub i64 %33, 1, !dbg !1677
  %and129 = and i64 %sub128, 549755813888, !dbg !1677
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1677
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1677

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1677

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub133 = sub i64 %34, 1, !dbg !1677
  %and134 = and i64 %sub133, 274877906944, !dbg !1677
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1677
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1677

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1677

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub138 = sub i64 %35, 1, !dbg !1677
  %and139 = and i64 %sub138, 137438953472, !dbg !1677
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1677
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1677

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1677

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub143 = sub i64 %36, 1, !dbg !1677
  %and144 = and i64 %sub143, 68719476736, !dbg !1677
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1677
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1677

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1677

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub148 = sub i64 %37, 1, !dbg !1677
  %and149 = and i64 %sub148, 34359738368, !dbg !1677
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1677
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1677

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1677

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub153 = sub i64 %38, 1, !dbg !1677
  %and154 = and i64 %sub153, 17179869184, !dbg !1677
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1677
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1677

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1677

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub158 = sub i64 %39, 1, !dbg !1677
  %and159 = and i64 %sub158, 8589934592, !dbg !1677
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1677
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1677

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1677

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub163 = sub i64 %40, 1, !dbg !1677
  %and164 = and i64 %sub163, 4294967296, !dbg !1677
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1677
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1677

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1677

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub168 = sub i64 %41, 1, !dbg !1677
  %and169 = and i64 %sub168, 2147483648, !dbg !1677
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1677
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1677

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1677

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub173 = sub i64 %42, 1, !dbg !1677
  %and174 = and i64 %sub173, 1073741824, !dbg !1677
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1677
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1677

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1677

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub178 = sub i64 %43, 1, !dbg !1677
  %and179 = and i64 %sub178, 536870912, !dbg !1677
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1677
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1677

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1677

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub183 = sub i64 %44, 1, !dbg !1677
  %and184 = and i64 %sub183, 268435456, !dbg !1677
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1677
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1677

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1677

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub188 = sub i64 %45, 1, !dbg !1677
  %and189 = and i64 %sub188, 134217728, !dbg !1677
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1677
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1677

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1677

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub193 = sub i64 %46, 1, !dbg !1677
  %and194 = and i64 %sub193, 67108864, !dbg !1677
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1677
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1677

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1677

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub198 = sub i64 %47, 1, !dbg !1677
  %and199 = and i64 %sub198, 33554432, !dbg !1677
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1677
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1677

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1677

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub203 = sub i64 %48, 1, !dbg !1677
  %and204 = and i64 %sub203, 16777216, !dbg !1677
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1677
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1677

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1677

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub208 = sub i64 %49, 1, !dbg !1677
  %and209 = and i64 %sub208, 8388608, !dbg !1677
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1677
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1677

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1677

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub213 = sub i64 %50, 1, !dbg !1677
  %and214 = and i64 %sub213, 4194304, !dbg !1677
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1677
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1677

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1677

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub218 = sub i64 %51, 1, !dbg !1677
  %and219 = and i64 %sub218, 2097152, !dbg !1677
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1677
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1677

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1677

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub223 = sub i64 %52, 1, !dbg !1677
  %and224 = and i64 %sub223, 1048576, !dbg !1677
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1677
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1677

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1677

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub228 = sub i64 %53, 1, !dbg !1677
  %and229 = and i64 %sub228, 524288, !dbg !1677
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1677
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1677

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1677

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub233 = sub i64 %54, 1, !dbg !1677
  %and234 = and i64 %sub233, 262144, !dbg !1677
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1677
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1677

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1677

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub238 = sub i64 %55, 1, !dbg !1677
  %and239 = and i64 %sub238, 131072, !dbg !1677
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1677
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1677

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1677

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub243 = sub i64 %56, 1, !dbg !1677
  %and244 = and i64 %sub243, 65536, !dbg !1677
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1677
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1677

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1677

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub248 = sub i64 %57, 1, !dbg !1677
  %and249 = and i64 %sub248, 32768, !dbg !1677
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1677
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1677

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1677

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub253 = sub i64 %58, 1, !dbg !1677
  %and254 = and i64 %sub253, 16384, !dbg !1677
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1677
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1677

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1677

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub258 = sub i64 %59, 1, !dbg !1677
  %and259 = and i64 %sub258, 8192, !dbg !1677
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1677
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1677

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1677

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub263 = sub i64 %60, 1, !dbg !1677
  %and264 = and i64 %sub263, 4096, !dbg !1677
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1677
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1677

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1677

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub268 = sub i64 %61, 1, !dbg !1677
  %and269 = and i64 %sub268, 2048, !dbg !1677
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1677
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1677

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1677

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub273 = sub i64 %62, 1, !dbg !1677
  %and274 = and i64 %sub273, 1024, !dbg !1677
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1677
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1677

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1677

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub278 = sub i64 %63, 1, !dbg !1677
  %and279 = and i64 %sub278, 512, !dbg !1677
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1677
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1677

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1677

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub283 = sub i64 %64, 1, !dbg !1677
  %and284 = and i64 %sub283, 256, !dbg !1677
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1677
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1677

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1677

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub288 = sub i64 %65, 1, !dbg !1677
  %and289 = and i64 %sub288, 128, !dbg !1677
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1677
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1677

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1677

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub293 = sub i64 %66, 1, !dbg !1677
  %and294 = and i64 %sub293, 64, !dbg !1677
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1677
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1677

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1677

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub298 = sub i64 %67, 1, !dbg !1677
  %and299 = and i64 %sub298, 32, !dbg !1677
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1677
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1677

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1677

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub303 = sub i64 %68, 1, !dbg !1677
  %and304 = and i64 %sub303, 16, !dbg !1677
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1677
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1677

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1677

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub308 = sub i64 %69, 1, !dbg !1677
  %and309 = and i64 %sub308, 8, !dbg !1677
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1677
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1677

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1677

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub313 = sub i64 %70, 1, !dbg !1677
  %and314 = and i64 %sub313, 4, !dbg !1677
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1677
  %71 = zext i1 %tobool315 to i64, !dbg !1677
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1677
  br label %cond.end, !dbg !1677

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1677
  br label %cond.end317, !dbg !1677

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1677
  br label %cond.end319, !dbg !1677

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1677
  br label %cond.end321, !dbg !1677

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1677
  br label %cond.end323, !dbg !1677

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1677
  br label %cond.end325, !dbg !1677

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1677
  br label %cond.end327, !dbg !1677

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1677
  br label %cond.end329, !dbg !1677

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1677
  br label %cond.end331, !dbg !1677

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1677
  br label %cond.end333, !dbg !1677

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1677
  br label %cond.end335, !dbg !1677

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1677
  br label %cond.end337, !dbg !1677

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1677
  br label %cond.end339, !dbg !1677

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1677
  br label %cond.end341, !dbg !1677

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1677
  br label %cond.end343, !dbg !1677

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1677
  br label %cond.end345, !dbg !1677

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1677
  br label %cond.end347, !dbg !1677

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1677
  br label %cond.end349, !dbg !1677

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1677
  br label %cond.end351, !dbg !1677

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1677
  br label %cond.end353, !dbg !1677

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1677
  br label %cond.end355, !dbg !1677

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1677
  br label %cond.end357, !dbg !1677

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1677
  br label %cond.end359, !dbg !1677

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1677
  br label %cond.end361, !dbg !1677

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1677
  br label %cond.end363, !dbg !1677

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1677
  br label %cond.end365, !dbg !1677

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1677
  br label %cond.end367, !dbg !1677

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1677
  br label %cond.end369, !dbg !1677

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1677
  br label %cond.end371, !dbg !1677

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1677
  br label %cond.end373, !dbg !1677

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1677
  br label %cond.end375, !dbg !1677

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1677
  br label %cond.end377, !dbg !1677

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1677
  br label %cond.end379, !dbg !1677

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1677
  br label %cond.end381, !dbg !1677

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1677
  br label %cond.end383, !dbg !1677

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1677
  br label %cond.end385, !dbg !1677

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1677
  br label %cond.end387, !dbg !1677

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1677
  br label %cond.end389, !dbg !1677

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1677
  br label %cond.end391, !dbg !1677

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1677
  br label %cond.end393, !dbg !1677

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1677
  br label %cond.end395, !dbg !1677

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1677
  br label %cond.end397, !dbg !1677

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1677
  br label %cond.end399, !dbg !1677

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1677
  br label %cond.end401, !dbg !1677

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1677
  br label %cond.end403, !dbg !1677

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1677
  br label %cond.end405, !dbg !1677

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1677
  br label %cond.end407, !dbg !1677

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1677
  br label %cond.end409, !dbg !1677

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1677
  br label %cond.end411, !dbg !1677

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1677
  br label %cond.end413, !dbg !1677

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1677
  br label %cond.end415, !dbg !1677

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1677
  br label %cond.end417, !dbg !1677

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1677
  br label %cond.end419, !dbg !1677

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1677
  br label %cond.end421, !dbg !1677

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1677
  br label %cond.end423, !dbg !1677

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1677
  br label %cond.end425, !dbg !1677

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1677
  br label %cond.end427, !dbg !1677

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1677
  br label %cond.end429, !dbg !1677

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1677
  br label %cond.end431, !dbg !1677

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1677
  br label %cond.end433, !dbg !1677

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1677
  br label %cond.end435, !dbg !1677

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1677
  br label %cond.end437, !dbg !1677

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1677
  br label %cond.end440, !dbg !1677

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1677

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1677
  br label %cond.end444, !dbg !1677

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1677
  %sub443 = sub i64 %72, 1, !dbg !1677
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1677
  br label %cond.end444, !dbg !1677

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1677
  %sub446 = sub i32 %cond445, 12, !dbg !1678
  %add = add i32 %sub446, 1, !dbg !1679
  store i32 %add, i32* %retval, align 4, !dbg !1680
  br label %return, !dbg !1680

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1681
  %dec = add i64 %73, -1, !dbg !1681
  store i64 %dec, i64* %size.addr, align 8, !dbg !1681
  %74 = load i64, i64* %size.addr, align 8, !dbg !1682
  %shr = lshr i64 %74, 12, !dbg !1682
  store i64 %shr, i64* %size.addr, align 8, !dbg !1682
  %75 = load i64, i64* %size.addr, align 8, !dbg !1683
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1660
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1684
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1685
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1684, !srcloc !1686
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1684
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1687
  %add.i = add i32 %79, 1, !dbg !1688
  store i32 %add.i, i32* %retval, align 4, !dbg !1689
  br label %return, !dbg !1689

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1690
  ret i32 %80, !dbg !1690
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1691 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1652, metadata !DIExpression()), !dbg !1695
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1659, metadata !DIExpression()), !dbg !1697
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1698, metadata !DIExpression()), !dbg !1699
  %0 = load i64, i64* %n.addr, align 8, !dbg !1700
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1697
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1701
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1702
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1701, !srcloc !1686
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1701
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1703
  %add.i = add i32 %4, 1, !dbg !1704
  %sub = sub i32 %add.i, 1, !dbg !1705
  ret i32 %sub, !dbg !1706
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1707 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1715, metadata !DIExpression()), !dbg !1716
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1721
  ret i8* %0, !dbg !1722
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i32, i64*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

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
!llvm.named.register.rsp = !{!833}
!llvm.module.flags = !{!834, !835, !836, !837}
!llvm.ident = !{!838}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !831, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !830, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exconfig.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 321, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 305, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!24 = !{!25, !31, !34, !37, !135, !798, !799, !85, !800, !816, !827, !829, !45}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !26, line: 421, baseType: !27)
!26 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !33)
!33 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !39)
!39 = !{!40, !51, !64, !76, !112, !126, !136, !449, !466, !481, !494, !572, !584, !598, !608, !626, !648, !667, !686, !705, !718, !744, !761, !774, !788, !797}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !6, line: 368, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !42)
!42 = !{!43, !44, !48, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !6, line: 74, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !6, line: 74, baseType: !45, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !6, line: 74, baseType: !45, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !6, line: 74, baseType: !34, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !6, line: 74, baseType: !45, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !38, file: !6, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !37, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !45, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !45, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !34, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !45, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !31, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !38, file: !6, line: 370, baseType: !65, size: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !75}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !6, line: 94, baseType: !37, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !6, line: 94, baseType: !45, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !6, line: 94, baseType: !45, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !6, line: 94, baseType: !34, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !6, line: 94, baseType: !45, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !6, line: 94, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !6, line: 94, baseType: !27, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !38, file: !6, line: 371, baseType: !77, size: 384)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86, !87, !88, !89}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !6, line: 98, baseType: !37, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !6, line: 98, baseType: !45, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !6, line: 98, baseType: !45, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !6, line: 98, baseType: !34, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !6, line: 98, baseType: !45, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !6, line: 98, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !6, line: 98, baseType: !27, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !77, file: !6, line: 99, baseType: !27, size: 32, offset: 224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !77, file: !6, line: 100, baseType: !85, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !6, line: 101, baseType: !90, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !92, line: 133, size: 384, elements: !93)
!92 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !107, !108, !109, !110}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !91, file: !92, line: 134, baseType: !37, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !92, line: 135, baseType: !45, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !92, line: 136, baseType: !45, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !92, line: 137, baseType: !34, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 138, baseType: !99, size: 32, offset: 96)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !100, line: 327, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !99, file: !100, line: 328, baseType: !27, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !99, file: !100, line: 329, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !92, line: 139, baseType: !90, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !91, file: !92, line: 140, baseType: !90, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !91, file: !92, line: 141, baseType: !90, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !91, file: !92, line: 142, baseType: !111, size: 16, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !26, line: 445, baseType: !34)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !38, file: !6, line: 372, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !123, !124, !125}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !6, line: 105, baseType: !37, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !6, line: 105, baseType: !45, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !6, line: 105, baseType: !45, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !6, line: 105, baseType: !34, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !6, line: 105, baseType: !45, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 105, baseType: !90, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !113, file: !6, line: 106, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !6, line: 107, baseType: !85, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !6, line: 108, baseType: !27, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !113, file: !6, line: 109, baseType: !27, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !38, file: !6, line: 373, baseType: !127, size: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !6, line: 119, baseType: !37, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !6, line: 119, baseType: !45, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !6, line: 119, baseType: !45, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !6, line: 119, baseType: !34, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !6, line: 119, baseType: !45, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !127, file: !6, line: 119, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !38, file: !6, line: 374, baseType: !137, size: 448)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !446, !447, !448}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !6, line: 144, baseType: !37, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !6, line: 144, baseType: !45, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !6, line: 144, baseType: !45, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !6, line: 144, baseType: !34, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !6, line: 144, baseType: !45, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !137, file: !6, line: 144, baseType: !45, size: 8, offset: 104)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !137, file: !6, line: 145, baseType: !45, size: 8, offset: 112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !137, file: !6, line: 146, baseType: !45, size: 8, offset: 120)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !6, line: 147, baseType: !37, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !6, line: 148, baseType: !37, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !137, file: !6, line: 149, baseType: !85, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !137, file: !6, line: 153, baseType: !151, size: 64, offset: 320)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !6, line: 150, size: 64, elements: !152)
!152 = !{!153, !445}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !151, file: !6, line: 151, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !92, line: 248, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!25, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !160, line: 37, size: 9024, elements: !161)
!160 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !391, !392, !393, !394, !395, !399, !401, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !428, !429, !430, !431, !432, !433, !434, !435, !437, !443}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !160, line: 38, baseType: !158, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !159, file: !160, line: 39, baseType: !45, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !159, file: !160, line: 40, baseType: !45, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !159, file: !160, line: 41, baseType: !34, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !159, file: !160, line: 42, baseType: !45, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !159, file: !160, line: 43, baseType: !45, size: 8, offset: 104)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !159, file: !160, line: 44, baseType: !45, size: 8, offset: 112)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !159, file: !160, line: 45, baseType: !111, size: 16, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !159, file: !160, line: 46, baseType: !45, size: 8, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !159, file: !160, line: 47, baseType: !45, size: 8, offset: 152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !159, file: !160, line: 48, baseType: !45, size: 8, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !159, file: !160, line: 49, baseType: !45, size: 8, offset: 168)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !159, file: !160, line: 50, baseType: !45, size: 8, offset: 176)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !159, file: !160, line: 51, baseType: !45, size: 8, offset: 184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !159, file: !160, line: 52, baseType: !45, size: 8, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !159, file: !160, line: 53, baseType: !45, size: 8, offset: 200)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !159, file: !160, line: 54, baseType: !85, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !159, file: !160, line: 55, baseType: !27, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !159, file: !160, line: 56, baseType: !27, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !159, file: !160, line: 57, baseType: !27, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !159, file: !160, line: 58, baseType: !27, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !159, file: !160, line: 60, baseType: !184, size: 640, offset: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !92, line: 893, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !272, !273, !389, !390}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !92, line: 894, baseType: !85, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !92, line: 895, baseType: !85, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !184, file: !92, line: 896, baseType: !85, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !184, file: !92, line: 897, baseType: !85, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !184, file: !92, line: 898, baseType: !85, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !184, file: !92, line: 899, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !92, line: 875, size: 1600, elements: !194)
!194 = !{!195, !215, !231}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !193, file: !92, line: 876, baseType: !196, size: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !92, line: 828, size: 448, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !92, line: 829, baseType: !192, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !92, line: 829, baseType: !45, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !92, line: 829, baseType: !45, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !196, file: !92, line: 829, baseType: !34, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !196, file: !92, line: 829, baseType: !85, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !92, line: 829, baseType: !192, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !92, line: 829, baseType: !90, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !196, file: !92, line: 829, baseType: !206, size: 64, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !92, line: 716, size: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !206, file: !92, line: 717, baseType: !31, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !92, line: 718, baseType: !27, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !206, file: !92, line: 719, baseType: !73, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !92, line: 720, baseType: !85, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !92, line: 721, baseType: !73, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !206, file: !92, line: 722, baseType: !192, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !196, file: !92, line: 829, baseType: !45, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !193, file: !92, line: 877, baseType: !216, size: 640)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !92, line: 835, size: 640, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !92, line: 836, baseType: !192, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !92, line: 836, baseType: !45, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !92, line: 836, baseType: !45, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !92, line: 836, baseType: !34, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !92, line: 836, baseType: !85, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !92, line: 836, baseType: !192, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !92, line: 836, baseType: !90, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !92, line: 836, baseType: !206, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !92, line: 836, baseType: !45, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !216, file: !92, line: 836, baseType: !73, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !92, line: 837, baseType: !85, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !216, file: !92, line: 838, baseType: !27, size: 32, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !92, line: 839, baseType: !27, size: 32, offset: 608)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !193, file: !92, line: 878, baseType: !232, size: 1600)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !92, line: 846, size: 1600, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !92, line: 847, baseType: !192, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !92, line: 847, baseType: !45, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !92, line: 847, baseType: !45, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !232, file: !92, line: 847, baseType: !34, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !232, file: !92, line: 847, baseType: !85, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !92, line: 847, baseType: !192, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !92, line: 847, baseType: !90, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !92, line: 847, baseType: !206, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !232, file: !92, line: 847, baseType: !45, size: 8, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !232, file: !92, line: 847, baseType: !192, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !232, file: !92, line: 848, baseType: !192, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !232, file: !92, line: 849, baseType: !73, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !232, file: !92, line: 850, baseType: !45, size: 8, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !232, file: !92, line: 851, baseType: !73, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !232, file: !92, line: 852, baseType: !73, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !232, file: !92, line: 853, baseType: !73, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !232, file: !92, line: 854, baseType: !104, size: 32, offset: 896)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !232, file: !92, line: 855, baseType: !27, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !232, file: !92, line: 856, baseType: !27, size: 32, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !232, file: !92, line: 857, baseType: !27, size: 32, offset: 992)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !232, file: !92, line: 858, baseType: !27, size: 32, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !232, file: !92, line: 859, baseType: !27, size: 32, offset: 1056)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !232, file: !92, line: 860, baseType: !27, size: 32, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !232, file: !92, line: 861, baseType: !27, size: 32, offset: 1120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !232, file: !92, line: 862, baseType: !27, size: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !232, file: !92, line: 863, baseType: !27, size: 32, offset: 1184)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !232, file: !92, line: 864, baseType: !27, size: 32, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !232, file: !92, line: 865, baseType: !27, size: 32, offset: 1248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !232, file: !92, line: 866, baseType: !27, size: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !232, file: !92, line: 867, baseType: !27, size: 32, offset: 1312)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !232, file: !92, line: 868, baseType: !34, size: 16, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !232, file: !92, line: 869, baseType: !45, size: 8, offset: 1360)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !232, file: !92, line: 870, baseType: !45, size: 8, offset: 1368)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !232, file: !92, line: 871, baseType: !45, size: 8, offset: 1376)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !232, file: !92, line: 872, baseType: !269, size: 160, offset: 1384)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 20)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !184, file: !92, line: 900, baseType: !90, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !184, file: !92, line: 901, baseType: !274, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !92, line: 663, size: 640, elements: !276)
!276 = !{!277, !285, !298, !307, !316, !329, !343, !355, !367}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !275, file: !92, line: 664, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !92, line: 567, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !92, line: 568, baseType: !135, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !92, line: 568, baseType: !45, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !92, line: 568, baseType: !45, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !92, line: 568, baseType: !34, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !92, line: 568, baseType: !34, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !275, file: !92, line: 665, baseType: !286, size: 384)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !92, line: 593, size: 384, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !92, line: 594, baseType: !135, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !92, line: 594, baseType: !45, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !92, line: 594, baseType: !45, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !92, line: 594, baseType: !34, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !92, line: 594, baseType: !34, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !286, file: !92, line: 594, baseType: !34, size: 16, offset: 112)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !286, file: !92, line: 595, baseType: !192, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !286, file: !92, line: 596, baseType: !85, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !286, file: !92, line: 597, baseType: !85, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !286, file: !92, line: 598, baseType: !31, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !275, file: !92, line: 666, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !92, line: 573, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !92, line: 574, baseType: !135, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !92, line: 574, baseType: !45, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !92, line: 574, baseType: !45, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !92, line: 574, baseType: !34, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !92, line: 574, baseType: !34, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !299, file: !92, line: 574, baseType: !37, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !275, file: !92, line: 667, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !92, line: 604, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !92, line: 605, baseType: !135, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !92, line: 605, baseType: !45, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !92, line: 605, baseType: !45, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !92, line: 605, baseType: !34, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !92, line: 605, baseType: !34, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !92, line: 605, baseType: !90, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !275, file: !92, line: 668, baseType: !317, size: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !92, line: 608, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !92, line: 609, baseType: !135, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !92, line: 609, baseType: !45, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !92, line: 609, baseType: !45, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !92, line: 609, baseType: !34, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !92, line: 609, baseType: !34, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !317, file: !92, line: 609, baseType: !27, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !317, file: !92, line: 610, baseType: !192, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !317, file: !92, line: 611, baseType: !85, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !317, file: !92, line: 612, baseType: !85, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !317, file: !92, line: 613, baseType: !27, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !275, file: !92, line: 669, baseType: !330, size: 512)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !92, line: 580, size: 512, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !92, line: 581, baseType: !135, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !92, line: 581, baseType: !45, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !92, line: 581, baseType: !45, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !92, line: 581, baseType: !34, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !92, line: 581, baseType: !34, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !330, file: !92, line: 581, baseType: !27, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !330, file: !92, line: 582, baseType: !37, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !330, file: !92, line: 583, baseType: !37, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !330, file: !92, line: 584, baseType: !158, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !330, file: !92, line: 585, baseType: !135, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !330, file: !92, line: 586, baseType: !27, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !275, file: !92, line: 670, baseType: !344, size: 320)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !92, line: 620, size: 320, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !92, line: 621, baseType: !135, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !92, line: 621, baseType: !45, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !92, line: 621, baseType: !45, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !92, line: 621, baseType: !34, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !92, line: 621, baseType: !34, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !344, file: !92, line: 621, baseType: !45, size: 8, offset: 112)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !344, file: !92, line: 622, baseType: !158, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !344, file: !92, line: 623, baseType: !37, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !344, file: !92, line: 624, baseType: !31, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !275, file: !92, line: 671, baseType: !356, size: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !92, line: 631, size: 640, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !92, line: 632, baseType: !135, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !92, line: 632, baseType: !45, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !92, line: 632, baseType: !45, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !92, line: 632, baseType: !34, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !92, line: 632, baseType: !34, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !356, file: !92, line: 633, baseType: !364, size: 512, offset: 128)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !275, file: !92, line: 672, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !92, line: 654, size: 320, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !92, line: 655, baseType: !135, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !92, line: 655, baseType: !45, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !92, line: 655, baseType: !45, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !92, line: 655, baseType: !34, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !92, line: 655, baseType: !34, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !368, file: !92, line: 655, baseType: !45, size: 8, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !92, line: 656, baseType: !90, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !368, file: !92, line: 657, baseType: !37, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !368, file: !92, line: 658, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !92, line: 645, size: 128, elements: !381)
!381 = !{!382, !388}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !380, file: !92, line: 646, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !26, line: 1052, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !27, !135}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !26, line: 424, baseType: !135)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !92, line: 647, baseType: !135, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !184, file: !92, line: 902, baseType: !192, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !184, file: !92, line: 903, baseType: !27, size: 32, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !159, file: !160, line: 61, baseType: !27, size: 32, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !159, file: !160, line: 62, baseType: !27, size: 32, offset: 1120)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !159, file: !160, line: 63, baseType: !34, size: 16, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !159, file: !160, line: 64, baseType: !45, size: 8, offset: 1168)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !159, file: !160, line: 66, baseType: !396, size: 2688, offset: 1216)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2688, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !159, file: !160, line: 67, baseType: !400, size: 3072, offset: 3904)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 3072, elements: !365)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !159, file: !160, line: 68, baseType: !402, size: 576, offset: 6976)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 576, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 9)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !159, file: !160, line: 69, baseType: !122, size: 64, offset: 7552)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !159, file: !160, line: 71, baseType: !85, size: 64, offset: 7616)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !159, file: !160, line: 72, baseType: !122, size: 64, offset: 7680)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !159, file: !160, line: 73, baseType: !274, size: 64, offset: 7744)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !159, file: !160, line: 74, baseType: !90, size: 64, offset: 7808)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !159, file: !160, line: 75, baseType: !37, size: 64, offset: 7872)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !159, file: !160, line: 76, baseType: !90, size: 64, offset: 7936)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !159, file: !160, line: 77, baseType: !192, size: 64, offset: 8000)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !159, file: !160, line: 78, baseType: !37, size: 64, offset: 8064)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !159, file: !160, line: 79, baseType: !90, size: 64, offset: 8128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !159, file: !160, line: 80, baseType: !73, size: 64, offset: 8192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !159, file: !160, line: 81, baseType: !192, size: 64, offset: 8256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !159, file: !160, line: 82, baseType: !418, size: 64, offset: 8320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !92, line: 702, size: 128, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !420, file: !92, line: 706, baseType: !27, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !420, file: !92, line: 707, baseType: !27, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !92, line: 708, baseType: !34, size: 16, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !420, file: !92, line: 709, baseType: !45, size: 8, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !420, file: !92, line: 710, baseType: !45, size: 8, offset: 88)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !92, line: 711, baseType: !45, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !160, line: 83, baseType: !192, size: 64, offset: 8384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !159, file: !160, line: 84, baseType: !37, size: 64, offset: 8448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !159, file: !160, line: 85, baseType: !274, size: 64, offset: 8512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !159, file: !160, line: 86, baseType: !37, size: 64, offset: 8576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !159, file: !160, line: 87, baseType: !274, size: 64, offset: 8640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !159, file: !160, line: 88, baseType: !192, size: 64, offset: 8704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !159, file: !160, line: 89, baseType: !192, size: 64, offset: 8768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !159, file: !160, line: 90, baseType: !436, size: 64, offset: 8832)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !159, file: !160, line: 91, baseType: !438, size: 64, offset: 8896)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !92, line: 637, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!25, !158, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !159, file: !160, line: 92, baseType: !444, size: 64, offset: 8960)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !92, line: 641, baseType: !155)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !151, file: !6, line: 152, baseType: !37, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !137, file: !6, line: 155, baseType: !27, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !137, file: !6, line: 156, baseType: !111, size: 16, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !137, file: !6, line: 157, baseType: !45, size: 8, offset: 432)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !6, line: 375, baseType: !450, size: 576)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !6, line: 123, baseType: !37, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !6, line: 123, baseType: !45, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !6, line: 123, baseType: !45, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !6, line: 123, baseType: !34, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !6, line: 123, baseType: !45, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !450, file: !6, line: 123, baseType: !45, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !450, file: !6, line: 124, baseType: !34, size: 16, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !450, file: !6, line: 125, baseType: !135, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !450, file: !6, line: 126, baseType: !31, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !450, file: !6, line: 127, baseType: !436, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !450, file: !6, line: 128, baseType: !37, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !6, line: 129, baseType: !37, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !6, line: 130, baseType: !90, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !450, file: !6, line: 131, baseType: !45, size: 8, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !38, file: !6, line: 376, baseType: !467, size: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !480}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !6, line: 135, baseType: !37, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !6, line: 135, baseType: !45, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !6, line: 135, baseType: !45, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !6, line: 135, baseType: !34, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !6, line: 135, baseType: !45, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !467, file: !6, line: 135, baseType: !45, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !6, line: 136, baseType: !90, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !6, line: 137, baseType: !37, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !6, line: 138, baseType: !37, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !467, file: !6, line: 139, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !26, line: 129, baseType: !31)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !467, file: !6, line: 140, baseType: !27, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !38, file: !6, line: 377, baseType: !482, size: 320)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !493}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !6, line: 185, baseType: !37, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !6, line: 185, baseType: !45, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !6, line: 185, baseType: !45, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !6, line: 185, baseType: !34, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !6, line: 185, baseType: !45, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !482, file: !6, line: 185, baseType: !490, size: 128, offset: 128)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 2)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !6, line: 185, baseType: !37, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !38, file: !6, line: 378, baseType: !495, size: 384)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !6, line: 188, baseType: !37, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !6, line: 188, baseType: !45, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !6, line: 188, baseType: !45, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !6, line: 188, baseType: !34, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !6, line: 188, baseType: !45, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !6, line: 189, baseType: !490, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !6, line: 189, baseType: !37, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !495, file: !6, line: 189, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !92, line: 480, size: 576, elements: !507)
!507 = !{!508, !509, !510, !511, !519, !534, !566, !567, !568, !569, !570, !571}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !92, line: 481, baseType: !90, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !92, line: 482, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !92, line: 483, baseType: !505, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !506, file: !92, line: 484, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !92, line: 497, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !92, line: 498, baseType: !512, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !92, line: 499, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !513, file: !92, line: 500, baseType: !505, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !513, file: !92, line: 501, baseType: !27, size: 32, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !92, line: 485, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !92, line: 466, size: 320, elements: !522)
!522 = !{!523, !528, !529, !530, !531, !532, !533}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !521, file: !92, line: 467, baseType: !524, size: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !92, line: 459, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !92, line: 460, baseType: !45, size: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !92, line: 461, baseType: !31, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !521, file: !92, line: 468, baseType: !524, size: 128, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !521, file: !92, line: 469, baseType: !34, size: 16, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !521, file: !92, line: 470, baseType: !45, size: 8, offset: 272)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !521, file: !92, line: 471, baseType: !45, size: 8, offset: 280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !521, file: !92, line: 472, baseType: !45, size: 8, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !521, file: !92, line: 473, baseType: !45, size: 8, offset: 296)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !506, file: !92, line: 486, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !92, line: 448, size: 192, elements: !537)
!537 = !{!538, !561, !562, !563, !564, !565}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !536, file: !92, line: 449, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !92, line: 438, size: 64, elements: !540)
!540 = !{!541, !542, !555}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !539, file: !92, line: 439, baseType: !90, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !539, file: !92, line: 440, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !92, line: 419, size: 256, elements: !545)
!545 = !{!546, !551, !552, !553, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !544, file: !92, line: 420, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !26, line: 1049, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!27, !387, !27, !135}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !544, file: !92, line: 421, baseType: !135, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !544, file: !92, line: 422, baseType: !90, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !544, file: !92, line: 423, baseType: !45, size: 8, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !544, file: !92, line: 424, baseType: !45, size: 8, offset: 200)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !539, file: !92, line: 441, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !92, line: 429, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !557, file: !92, line: 430, baseType: !90, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !92, line: 431, baseType: !556, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !536, file: !92, line: 450, baseType: !520, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !92, line: 451, baseType: !45, size: 8, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !536, file: !92, line: 452, baseType: !45, size: 8, offset: 136)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !536, file: !92, line: 453, baseType: !45, size: 8, offset: 144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !536, file: !92, line: 454, baseType: !45, size: 8, offset: 152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !506, file: !92, line: 487, baseType: !31, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !506, file: !92, line: 488, baseType: !27, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !506, file: !92, line: 489, baseType: !34, size: 16, offset: 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !506, file: !92, line: 490, baseType: !34, size: 16, offset: 496)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !506, file: !92, line: 491, baseType: !45, size: 8, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !506, file: !92, line: 492, baseType: !45, size: 8, offset: 520)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !38, file: !6, line: 379, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !6, line: 193, baseType: !37, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !6, line: 193, baseType: !45, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !6, line: 193, baseType: !45, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !6, line: 193, baseType: !34, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !6, line: 193, baseType: !45, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !6, line: 193, baseType: !490, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !6, line: 193, baseType: !37, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !573, file: !6, line: 193, baseType: !27, size: 32, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !573, file: !6, line: 194, baseType: !27, size: 32, offset: 352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !38, file: !6, line: 380, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !6, line: 198, baseType: !37, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !6, line: 198, baseType: !45, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !6, line: 198, baseType: !45, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !6, line: 198, baseType: !34, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !6, line: 198, baseType: !45, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !585, file: !6, line: 200, baseType: !45, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !585, file: !6, line: 201, baseType: !45, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !6, line: 202, baseType: !490, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !6, line: 202, baseType: !37, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !585, file: !6, line: 202, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !26, line: 128, baseType: !31)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !38, file: !6, line: 381, baseType: !599, size: 320)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !6, line: 206, baseType: !37, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !6, line: 206, baseType: !45, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !6, line: 206, baseType: !45, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !6, line: 206, baseType: !34, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !6, line: 206, baseType: !45, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !6, line: 206, baseType: !490, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !6, line: 206, baseType: !37, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !38, file: !6, line: 382, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !6, line: 234, baseType: !37, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !6, line: 234, baseType: !34, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 104)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 112)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 120)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !609, file: !6, line: 234, baseType: !90, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !609, file: !6, line: 234, baseType: !27, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !609, file: !6, line: 234, baseType: !27, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !6, line: 234, baseType: !27, size: 32, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !609, file: !6, line: 234, baseType: !45, size: 8, offset: 296)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !609, file: !6, line: 234, baseType: !37, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !38, file: !6, line: 383, baseType: !627, size: 576)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !6, line: 238, baseType: !37, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !6, line: 238, baseType: !34, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !6, line: 238, baseType: !90, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !6, line: 238, baseType: !27, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !6, line: 238, baseType: !27, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !6, line: 238, baseType: !27, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !6, line: 238, baseType: !45, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !627, file: !6, line: 238, baseType: !34, size: 16, offset: 304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !6, line: 239, baseType: !37, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !627, file: !6, line: 240, baseType: !85, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !627, file: !6, line: 241, baseType: !34, size: 16, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !627, file: !6, line: 242, baseType: !85, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !38, file: !6, line: 384, baseType: !649, size: 384)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !6, line: 263, baseType: !37, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !6, line: 263, baseType: !34, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !6, line: 263, baseType: !90, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !6, line: 263, baseType: !27, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !6, line: 263, baseType: !27, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !6, line: 263, baseType: !27, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !649, file: !6, line: 263, baseType: !45, size: 8, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !649, file: !6, line: 264, baseType: !37, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !38, file: !6, line: 385, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 246, baseType: !37, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 246, baseType: !34, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !6, line: 246, baseType: !90, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !6, line: 246, baseType: !27, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !6, line: 246, baseType: !27, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !6, line: 246, baseType: !27, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !6, line: 246, baseType: !45, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !668, file: !6, line: 246, baseType: !37, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !668, file: !6, line: 247, baseType: !37, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !38, file: !6, line: 386, baseType: !687, size: 448)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !6, line: 251, baseType: !37, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !6, line: 251, baseType: !34, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 104)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 120)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !6, line: 251, baseType: !90, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !687, file: !6, line: 251, baseType: !27, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !687, file: !6, line: 251, baseType: !27, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !6, line: 251, baseType: !27, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !687, file: !6, line: 251, baseType: !45, size: 8, offset: 296)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !687, file: !6, line: 256, baseType: !37, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !687, file: !6, line: 257, baseType: !37, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !38, file: !6, line: 387, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !6, line: 274, baseType: !37, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !6, line: 274, baseType: !45, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !6, line: 274, baseType: !45, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !6, line: 274, baseType: !34, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !6, line: 274, baseType: !45, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !6, line: 274, baseType: !90, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !706, file: !6, line: 275, baseType: !27, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !6, line: 276, baseType: !383, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !6, line: 277, baseType: !135, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !6, line: 278, baseType: !490, size: 128, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !38, file: !6, line: 388, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !734, !735, !736, !742, !743}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !6, line: 282, baseType: !37, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !6, line: 282, baseType: !45, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !6, line: 282, baseType: !45, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !6, line: 282, baseType: !34, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !6, line: 282, baseType: !45, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !719, file: !6, line: 282, baseType: !45, size: 8, offset: 104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !719, file: !6, line: 283, baseType: !45, size: 8, offset: 112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !6, line: 284, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !26, line: 1084, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!25, !27, !479, !27, !733, !135, !135}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !6, line: 285, baseType: !90, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !719, file: !6, line: 286, baseType: !135, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !719, file: !6, line: 287, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !26, line: 1102, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!25, !387, !27, !135, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !719, file: !6, line: 288, baseType: !37, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !6, line: 289, baseType: !37, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !38, file: !6, line: 389, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !6, line: 308, baseType: !37, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !6, line: 308, baseType: !45, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !6, line: 308, baseType: !45, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !6, line: 308, baseType: !34, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !6, line: 308, baseType: !45, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !745, file: !6, line: 308, baseType: !45, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !745, file: !6, line: 309, baseType: !45, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !745, file: !6, line: 310, baseType: !45, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !745, file: !6, line: 311, baseType: !135, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !6, line: 312, baseType: !90, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !745, file: !6, line: 313, baseType: !122, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !745, file: !6, line: 314, baseType: !85, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !745, file: !6, line: 315, baseType: !85, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !6, line: 316, baseType: !27, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !38, file: !6, line: 390, baseType: !762, size: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !6, line: 341, baseType: !37, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !6, line: 341, baseType: !45, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !6, line: 341, baseType: !45, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !6, line: 341, baseType: !34, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !6, line: 341, baseType: !45, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !762, file: !6, line: 341, baseType: !90, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !762, file: !6, line: 342, baseType: !90, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !762, file: !6, line: 343, baseType: !135, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !762, file: !6, line: 344, baseType: !85, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !762, file: !6, line: 345, baseType: !27, size: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !6, line: 391, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !787}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !6, line: 351, baseType: !37, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !6, line: 351, baseType: !45, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !6, line: 351, baseType: !45, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !6, line: 351, baseType: !34, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !6, line: 351, baseType: !45, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !775, file: !6, line: 351, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !26, line: 1055, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !387, !135}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !775, file: !6, line: 352, baseType: !135, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !38, file: !6, line: 392, baseType: !789, size: 192)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !6, line: 358, baseType: !37, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !6, line: 358, baseType: !45, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !6, line: 358, baseType: !45, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !6, line: 358, baseType: !34, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !6, line: 358, baseType: !45, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !6, line: 358, baseType: !37, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !6, line: 399, baseType: !91, size: 384)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !26, line: 805, baseType: !45)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !26, line: 127, baseType: !31)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !100, line: 68, size: 288, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !811, !813, !814, !815}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !801, file: !100, line: 69, baseType: !104, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !801, file: !100, line: 70, baseType: !27, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !801, file: !100, line: 71, baseType: !45, size: 8, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !801, file: !100, line: 72, baseType: !45, size: 8, offset: 72)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !801, file: !100, line: 73, baseType: !808, size: 48, offset: 80)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 48, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 6)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !801, file: !100, line: 74, baseType: !812, size: 64, offset: 128)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !365)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !801, file: !100, line: 75, baseType: !27, size: 32, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !801, file: !100, line: 76, baseType: !104, size: 32, offset: 224)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !801, file: !100, line: 77, baseType: !27, size: 32, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !818)
!818 = !{!819, !824, !825, !826}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !817, file: !6, line: 433, baseType: !820, size: 128)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !820, file: !6, line: 428, baseType: !135, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !820, file: !6, line: 429, baseType: !45, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !817, file: !6, line: 434, baseType: !38, size: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !817, file: !6, line: 435, baseType: !91, size: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !817, file: !6, line: 436, baseType: !193, size: 1600)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !828, line: 148, baseType: !7)
!828 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!829 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!830 = !{!0}
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 72, elements: !403)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!833 = !{!"rsp"}
!834 = !{i32 7, !"Dwarf Version", i32 4}
!835 = !{i32 2, !"Debug Info Version", i32 3}
!836 = !{i32 1, !"wchar_size", i32 2}
!837 = !{i32 1, !"Code Model", i32 2}
!838 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!839 = distinct !DISubprogram(name: "acpi_ex_load_table_op", scope: !3, file: !3, line: 82, type: !840, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!25, !158, !122}
!842 = !{}
!843 = !DILocalVariable(name: "walk_state", arg: 1, scope: !839, file: !3, line: 82, type: !158)
!844 = !DILocation(line: 82, column: 47, scope: !839)
!845 = !DILocalVariable(name: "return_desc", arg: 2, scope: !839, file: !3, line: 83, type: !122)
!846 = !DILocation(line: 83, column: 37, scope: !839)
!847 = !DILocalVariable(name: "status", scope: !839, file: !3, line: 85, type: !25)
!848 = !DILocation(line: 85, column: 14, scope: !839)
!849 = !DILocalVariable(name: "operand", scope: !839, file: !3, line: 86, type: !122)
!850 = !DILocation(line: 86, column: 30, scope: !839)
!851 = !DILocation(line: 86, column: 41, scope: !839)
!852 = !DILocation(line: 86, column: 53, scope: !839)
!853 = !DILocalVariable(name: "parent_node", scope: !839, file: !3, line: 87, type: !90)
!854 = !DILocation(line: 87, column: 30, scope: !839)
!855 = !DILocalVariable(name: "start_node", scope: !839, file: !3, line: 88, type: !90)
!856 = !DILocation(line: 88, column: 30, scope: !839)
!857 = !DILocalVariable(name: "parameter_node", scope: !839, file: !3, line: 89, type: !90)
!858 = !DILocation(line: 89, column: 30, scope: !839)
!859 = !DILocalVariable(name: "ddb_handle", scope: !839, file: !3, line: 90, type: !37)
!860 = !DILocation(line: 90, column: 29, scope: !839)
!861 = !DILocalVariable(name: "table_index", scope: !839, file: !3, line: 91, type: !27)
!862 = !DILocation(line: 91, column: 6, scope: !839)
!863 = !DILocation(line: 97, column: 2, scope: !839)
!864 = !DILocation(line: 98, column: 30, scope: !839)
!865 = !DILocation(line: 98, column: 42, scope: !839)
!866 = !DILocation(line: 98, column: 49, scope: !839)
!867 = !DILocation(line: 99, column: 9, scope: !839)
!868 = !DILocation(line: 99, column: 21, scope: !839)
!869 = !DILocation(line: 99, column: 28, scope: !839)
!870 = !DILocation(line: 100, column: 9, scope: !839)
!871 = !DILocation(line: 100, column: 21, scope: !839)
!872 = !DILocation(line: 100, column: 28, scope: !839)
!873 = !DILocation(line: 98, column: 11, scope: !839)
!874 = !DILocation(line: 98, column: 9, scope: !839)
!875 = !DILocation(line: 101, column: 2, scope: !839)
!876 = !DILocation(line: 102, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !839, file: !3, line: 102, column: 6)
!878 = !DILocation(line: 102, column: 6, scope: !839)
!879 = !DILocation(line: 103, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 103, column: 7)
!881 = distinct !DILexicalBlock(scope: !877, file: !3, line: 102, column: 28)
!882 = !DILocation(line: 103, column: 14, scope: !880)
!883 = !DILocation(line: 103, column: 7, scope: !881)
!884 = !DILocation(line: 104, column: 4, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 103, column: 31)
!886 = !DILocation(line: 109, column: 16, scope: !881)
!887 = !DILocation(line: 109, column: 14, scope: !881)
!888 = !DILocation(line: 110, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !3, line: 110, column: 7)
!890 = !DILocation(line: 110, column: 7, scope: !881)
!891 = !DILocation(line: 111, column: 4, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 110, column: 20)
!893 = !DILocation(line: 114, column: 18, scope: !881)
!894 = !DILocation(line: 114, column: 4, scope: !881)
!895 = !DILocation(line: 114, column: 16, scope: !881)
!896 = !DILocation(line: 115, column: 3, scope: !881)
!897 = !DILocation(line: 120, column: 15, scope: !839)
!898 = !DILocation(line: 120, column: 27, scope: !839)
!899 = !DILocation(line: 120, column: 39, scope: !839)
!900 = !DILocation(line: 120, column: 45, scope: !839)
!901 = !DILocation(line: 120, column: 13, scope: !839)
!902 = !DILocation(line: 121, column: 16, scope: !839)
!903 = !DILocation(line: 121, column: 14, scope: !839)
!904 = !DILocation(line: 125, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !839, file: !3, line: 125, column: 6)
!906 = !DILocation(line: 125, column: 18, scope: !905)
!907 = !DILocation(line: 125, column: 25, scope: !905)
!908 = !DILocation(line: 125, column: 32, scope: !905)
!909 = !DILocation(line: 125, column: 6, scope: !839)
!910 = !DILocation(line: 130, column: 38, scope: !911)
!911 = distinct !DILexicalBlock(scope: !905, file: !3, line: 125, column: 37)
!912 = !DILocation(line: 131, column: 10, scope: !911)
!913 = !DILocation(line: 131, column: 22, scope: !911)
!914 = !DILocation(line: 131, column: 29, scope: !911)
!915 = !DILocation(line: 130, column: 12, scope: !911)
!916 = !DILocation(line: 130, column: 10, scope: !911)
!917 = !DILocation(line: 134, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 134, column: 7)
!919 = !DILocation(line: 134, column: 7, scope: !911)
!920 = !DILocation(line: 135, column: 4, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 134, column: 29)
!922 = !DILocation(line: 137, column: 2, scope: !911)
!923 = !DILocation(line: 141, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !839, file: !3, line: 141, column: 6)
!925 = !DILocation(line: 141, column: 18, scope: !924)
!926 = !DILocation(line: 141, column: 25, scope: !924)
!927 = !DILocation(line: 141, column: 32, scope: !924)
!928 = !DILocation(line: 141, column: 6, scope: !839)
!929 = !DILocation(line: 142, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 142, column: 7)
!931 = distinct !DILexicalBlock(scope: !924, file: !3, line: 141, column: 37)
!932 = !DILocation(line: 142, column: 20, scope: !930)
!933 = !DILocation(line: 142, column: 27, scope: !930)
!934 = !DILocation(line: 142, column: 38, scope: !930)
!935 = !DILocation(line: 142, column: 58, scope: !930)
!936 = !DILocation(line: 143, column: 8, scope: !930)
!937 = !DILocation(line: 143, column: 20, scope: !930)
!938 = !DILocation(line: 143, column: 27, scope: !930)
!939 = !DILocation(line: 143, column: 38, scope: !930)
!940 = !DILocation(line: 142, column: 7, scope: !931)
!941 = !DILocation(line: 148, column: 17, scope: !942)
!942 = distinct !DILexicalBlock(scope: !930, file: !3, line: 143, column: 61)
!943 = !DILocation(line: 148, column: 15, scope: !942)
!944 = !DILocation(line: 149, column: 3, scope: !942)
!945 = !DILocation(line: 153, column: 38, scope: !931)
!946 = !DILocation(line: 154, column: 10, scope: !931)
!947 = !DILocation(line: 154, column: 22, scope: !931)
!948 = !DILocation(line: 154, column: 29, scope: !931)
!949 = !DILocation(line: 153, column: 12, scope: !931)
!950 = !DILocation(line: 153, column: 10, scope: !931)
!951 = !DILocation(line: 157, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !931, file: !3, line: 157, column: 7)
!953 = !DILocation(line: 157, column: 7, scope: !931)
!954 = !DILocation(line: 158, column: 4, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 157, column: 29)
!956 = !DILocation(line: 160, column: 2, scope: !931)
!957 = !DILocation(line: 164, column: 2, scope: !839)
!958 = !DILocation(line: 165, column: 2, scope: !839)
!959 = !DILocation(line: 166, column: 30, scope: !839)
!960 = !DILocation(line: 166, column: 43, scope: !839)
!961 = !DILocation(line: 166, column: 11, scope: !839)
!962 = !DILocation(line: 166, column: 9, scope: !839)
!963 = !DILocation(line: 167, column: 2, scope: !839)
!964 = !DILocation(line: 168, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !839, file: !3, line: 168, column: 6)
!966 = !DILocation(line: 168, column: 6, scope: !839)
!967 = !DILocation(line: 169, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 168, column: 28)
!969 = !DILocation(line: 172, column: 29, scope: !839)
!970 = !DILocation(line: 172, column: 11, scope: !839)
!971 = !DILocation(line: 172, column: 9, scope: !839)
!972 = !DILocation(line: 173, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !839, file: !3, line: 173, column: 6)
!974 = !DILocation(line: 173, column: 6, scope: !839)
!975 = !DILocation(line: 174, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 173, column: 28)
!977 = !DILocation(line: 179, column: 2, scope: !839)
!978 = !DILocation(line: 180, column: 2, scope: !839)
!979 = !DILocation(line: 181, column: 2, scope: !839)
!980 = !DILocation(line: 185, column: 6, scope: !981)
!981 = distinct !DILexicalBlock(scope: !839, file: !3, line: 185, column: 6)
!982 = !DILocation(line: 185, column: 6, scope: !839)
!983 = !DILocation(line: 189, column: 26, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 185, column: 22)
!985 = !DILocation(line: 190, column: 12, scope: !984)
!986 = !DILocation(line: 192, column: 12, scope: !984)
!987 = !DILocation(line: 189, column: 12, scope: !984)
!988 = !DILocation(line: 189, column: 10, scope: !984)
!989 = !DILocation(line: 193, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !3, line: 193, column: 7)
!991 = !DILocation(line: 193, column: 7, scope: !984)
!992 = !DILocation(line: 194, column: 31, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 193, column: 29)
!994 = !DILocation(line: 194, column: 10, scope: !993)
!995 = !DILocation(line: 196, column: 29, scope: !993)
!996 = !DILocation(line: 196, column: 4, scope: !993)
!997 = !DILocation(line: 197, column: 4, scope: !993)
!998 = !DILocation(line: 199, column: 2, scope: !984)
!999 = !DILocation(line: 201, column: 17, scope: !839)
!1000 = !DILocation(line: 201, column: 3, scope: !839)
!1001 = !DILocation(line: 201, column: 15, scope: !839)
!1002 = !DILocation(line: 202, column: 2, scope: !839)
!1003 = !DILocation(line: 203, column: 1, scope: !839)
!1004 = distinct !DISubprogram(name: "acpi_ex_add_table", scope: !3, file: !3, line: 46, type: !1005, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!25, !27, !122}
!1007 = !DILocalVariable(name: "table_index", arg: 1, scope: !1004, file: !3, line: 46, type: !27)
!1008 = !DILocation(line: 46, column: 23, scope: !1004)
!1009 = !DILocalVariable(name: "ddb_handle", arg: 2, scope: !1004, file: !3, line: 46, type: !122)
!1010 = !DILocation(line: 46, column: 64, scope: !1004)
!1011 = !DILocalVariable(name: "obj_desc", scope: !1004, file: !3, line: 48, type: !37)
!1012 = !DILocation(line: 48, column: 29, scope: !1004)
!1013 = !DILocation(line: 54, column: 13, scope: !1004)
!1014 = !DILocation(line: 54, column: 11, scope: !1004)
!1015 = !DILocation(line: 55, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 55, column: 6)
!1017 = !DILocation(line: 55, column: 6, scope: !1004)
!1018 = !DILocation(line: 56, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 55, column: 17)
!1020 = !DILocation(line: 61, column: 2, scope: !1004)
!1021 = !DILocation(line: 61, column: 12, scope: !1004)
!1022 = !DILocation(line: 61, column: 19, scope: !1004)
!1023 = !DILocation(line: 61, column: 25, scope: !1004)
!1024 = !DILocation(line: 62, column: 2, scope: !1004)
!1025 = !DILocation(line: 62, column: 12, scope: !1004)
!1026 = !DILocation(line: 62, column: 22, scope: !1004)
!1027 = !DILocation(line: 62, column: 28, scope: !1004)
!1028 = !DILocation(line: 63, column: 30, scope: !1004)
!1029 = !DILocation(line: 63, column: 2, scope: !1004)
!1030 = !DILocation(line: 63, column: 12, scope: !1004)
!1031 = !DILocation(line: 63, column: 22, scope: !1004)
!1032 = !DILocation(line: 63, column: 28, scope: !1004)
!1033 = !DILocation(line: 64, column: 16, scope: !1004)
!1034 = !DILocation(line: 64, column: 3, scope: !1004)
!1035 = !DILocation(line: 64, column: 14, scope: !1004)
!1036 = !DILocation(line: 65, column: 2, scope: !1004)
!1037 = !DILocation(line: 66, column: 1, scope: !1004)
!1038 = distinct !DISubprogram(name: "acpi_ex_unload_table", scope: !3, file: !3, line: 475, type: !1039, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!25, !37}
!1041 = !DILocalVariable(name: "ddb_handle", arg: 1, scope: !1038, file: !3, line: 475, type: !37)
!1042 = !DILocation(line: 475, column: 61, scope: !1038)
!1043 = !DILocalVariable(name: "status", scope: !1038, file: !3, line: 477, type: !25)
!1044 = !DILocation(line: 477, column: 14, scope: !1038)
!1045 = !DILocalVariable(name: "table_desc", scope: !1038, file: !3, line: 478, type: !37)
!1046 = !DILocation(line: 478, column: 29, scope: !1038)
!1047 = !DILocation(line: 478, column: 42, scope: !1038)
!1048 = !DILocalVariable(name: "table_index", scope: !1038, file: !3, line: 479, type: !27)
!1049 = !DILocation(line: 479, column: 6, scope: !1038)
!1050 = !DILocation(line: 488, column: 2, scope: !1038)
!1051 = !DILocation(line: 498, column: 2, scope: !1038)
!1052 = !DILocation(line: 511, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 511, column: 6)
!1054 = !DILocation(line: 511, column: 20, scope: !1053)
!1055 = !DILocation(line: 512, column: 7, scope: !1053)
!1056 = !DILocation(line: 512, column: 44, scope: !1053)
!1057 = !DILocation(line: 512, column: 71, scope: !1053)
!1058 = !DILocation(line: 513, column: 7, scope: !1053)
!1059 = !DILocation(line: 513, column: 19, scope: !1053)
!1060 = !DILocation(line: 513, column: 26, scope: !1053)
!1061 = !DILocation(line: 513, column: 31, scope: !1053)
!1062 = !DILocation(line: 513, column: 61, scope: !1053)
!1063 = !DILocation(line: 514, column: 9, scope: !1053)
!1064 = !DILocation(line: 514, column: 21, scope: !1053)
!1065 = !DILocation(line: 514, column: 28, scope: !1053)
!1066 = !DILocation(line: 514, column: 34, scope: !1053)
!1067 = !DILocation(line: 511, column: 6, scope: !1038)
!1068 = !DILocation(line: 515, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 514, column: 57)
!1070 = !DILocation(line: 520, column: 16, scope: !1038)
!1071 = !DILocation(line: 520, column: 28, scope: !1038)
!1072 = !DILocation(line: 520, column: 38, scope: !1038)
!1073 = !DILocation(line: 520, column: 14, scope: !1038)
!1074 = !DILocation(line: 526, column: 2, scope: !1038)
!1075 = !DILocation(line: 527, column: 32, scope: !1038)
!1076 = !DILocation(line: 527, column: 11, scope: !1038)
!1077 = !DILocation(line: 527, column: 9, scope: !1038)
!1078 = !DILocation(line: 528, column: 2, scope: !1038)
!1079 = !DILocation(line: 534, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 534, column: 6)
!1081 = !DILocation(line: 534, column: 6, scope: !1038)
!1082 = !DILocation(line: 535, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 534, column: 28)
!1084 = !DILocation(line: 535, column: 15, scope: !1083)
!1085 = !DILocation(line: 535, column: 22, scope: !1083)
!1086 = !DILocation(line: 535, column: 28, scope: !1083)
!1087 = !DILocation(line: 536, column: 2, scope: !1083)
!1088 = !DILocation(line: 537, column: 2, scope: !1038)
!1089 = !DILocation(line: 538, column: 1, scope: !1038)
!1090 = distinct !DISubprogram(name: "acpi_ex_load_op", scope: !3, file: !3, line: 268, type: !1091, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!25, !37, !37, !158}
!1093 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1090, file: !3, line: 268, type: !37)
!1094 = !DILocation(line: 268, column: 44, scope: !1090)
!1095 = !DILocalVariable(name: "target", arg: 2, scope: !1090, file: !3, line: 269, type: !37)
!1096 = !DILocation(line: 269, column: 30, scope: !1090)
!1097 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1090, file: !3, line: 270, type: !158)
!1098 = !DILocation(line: 270, column: 27, scope: !1090)
!1099 = !DILocalVariable(name: "ddb_handle", scope: !1090, file: !3, line: 272, type: !37)
!1100 = !DILocation(line: 272, column: 29, scope: !1090)
!1101 = !DILocalVariable(name: "table_header", scope: !1090, file: !3, line: 273, type: !800)
!1102 = !DILocation(line: 273, column: 28, scope: !1090)
!1103 = !DILocalVariable(name: "table", scope: !1090, file: !3, line: 274, type: !800)
!1104 = !DILocation(line: 274, column: 28, scope: !1090)
!1105 = !DILocalVariable(name: "table_index", scope: !1090, file: !3, line: 275, type: !27)
!1106 = !DILocation(line: 275, column: 6, scope: !1090)
!1107 = !DILocalVariable(name: "status", scope: !1090, file: !3, line: 276, type: !25)
!1108 = !DILocation(line: 276, column: 14, scope: !1090)
!1109 = !DILocalVariable(name: "length", scope: !1090, file: !3, line: 277, type: !27)
!1110 = !DILocation(line: 277, column: 6, scope: !1090)
!1111 = !DILocation(line: 283, column: 10, scope: !1090)
!1112 = !DILocation(line: 283, column: 20, scope: !1090)
!1113 = !DILocation(line: 283, column: 27, scope: !1090)
!1114 = !DILocation(line: 283, column: 2, scope: !1090)
!1115 = !DILocation(line: 291, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 291, column: 7)
!1117 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 283, column: 33)
!1118 = !DILocation(line: 291, column: 17, scope: !1116)
!1119 = !DILocation(line: 291, column: 24, scope: !1116)
!1120 = !DILocation(line: 291, column: 33, scope: !1116)
!1121 = !DILocation(line: 291, column: 7, scope: !1117)
!1122 = !DILocation(line: 292, column: 4, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 291, column: 66)
!1124 = !DILocation(line: 299, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 299, column: 7)
!1126 = !DILocation(line: 299, column: 19, scope: !1125)
!1127 = !DILocation(line: 299, column: 26, scope: !1125)
!1128 = !DILocation(line: 299, column: 32, scope: !1125)
!1129 = !DILocation(line: 299, column: 7, scope: !1117)
!1130 = !DILocation(line: 300, column: 42, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 299, column: 54)
!1132 = !DILocation(line: 300, column: 13, scope: !1131)
!1133 = !DILocation(line: 300, column: 11, scope: !1131)
!1134 = !DILocation(line: 301, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 301, column: 8)
!1136 = !DILocation(line: 301, column: 8, scope: !1131)
!1137 = !DILocation(line: 302, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 301, column: 30)
!1139 = !DILocation(line: 304, column: 3, scope: !1131)
!1140 = !DILocation(line: 308, column: 18, scope: !1117)
!1141 = !DILocation(line: 308, column: 16, scope: !1117)
!1142 = !DILocation(line: 309, column: 8, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 309, column: 7)
!1144 = !DILocation(line: 309, column: 7, scope: !1117)
!1145 = !DILocation(line: 310, column: 4, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 309, column: 22)
!1147 = !DILocation(line: 314, column: 27, scope: !1117)
!1148 = !DILocation(line: 316, column: 6, scope: !1117)
!1149 = !DILocation(line: 314, column: 7, scope: !1117)
!1150 = !DILocation(line: 313, column: 10, scope: !1117)
!1151 = !DILocation(line: 317, column: 12, scope: !1117)
!1152 = !DILocation(line: 317, column: 26, scope: !1117)
!1153 = !DILocation(line: 317, column: 10, scope: !1117)
!1154 = !DILocation(line: 318, column: 3, scope: !1117)
!1155 = !DILocation(line: 320, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 320, column: 7)
!1157 = !DILocation(line: 320, column: 7, scope: !1117)
!1158 = !DILocation(line: 321, column: 4, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 320, column: 29)
!1160 = !DILocation(line: 326, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 326, column: 7)
!1162 = !DILocation(line: 326, column: 14, scope: !1161)
!1163 = !DILocation(line: 326, column: 7, scope: !1117)
!1164 = !DILocation(line: 327, column: 4, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 326, column: 50)
!1166 = !DILocation(line: 348, column: 11, scope: !1117)
!1167 = !DILocation(line: 348, column: 9, scope: !1117)
!1168 = !DILocation(line: 349, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 349, column: 7)
!1170 = !DILocation(line: 349, column: 7, scope: !1117)
!1171 = !DILocation(line: 350, column: 4, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 349, column: 15)
!1173 = !DILocation(line: 355, column: 32, scope: !1117)
!1174 = !DILocation(line: 355, column: 42, scope: !1117)
!1175 = !DILocation(line: 356, column: 11, scope: !1117)
!1176 = !DILocation(line: 355, column: 12, scope: !1117)
!1177 = !DILocation(line: 355, column: 10, scope: !1117)
!1178 = !DILocation(line: 357, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 357, column: 7)
!1180 = !DILocation(line: 357, column: 7, scope: !1117)
!1181 = !DILocation(line: 358, column: 4, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 357, column: 29)
!1183 = !DILocation(line: 359, column: 4, scope: !1182)
!1184 = !DILocation(line: 361, column: 3, scope: !1117)
!1185 = !DILocation(line: 371, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 371, column: 7)
!1187 = !DILocation(line: 371, column: 17, scope: !1186)
!1188 = !DILocation(line: 371, column: 24, scope: !1186)
!1189 = !DILocation(line: 371, column: 31, scope: !1186)
!1190 = !DILocation(line: 371, column: 7, scope: !1117)
!1191 = !DILocation(line: 372, column: 4, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 371, column: 67)
!1193 = !DILocation(line: 378, column: 7, scope: !1117)
!1194 = !DILocation(line: 377, column: 16, scope: !1117)
!1195 = !DILocation(line: 380, column: 12, scope: !1117)
!1196 = !DILocation(line: 380, column: 26, scope: !1117)
!1197 = !DILocation(line: 380, column: 10, scope: !1117)
!1198 = !DILocation(line: 384, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 384, column: 7)
!1200 = !DILocation(line: 384, column: 16, scope: !1199)
!1201 = !DILocation(line: 384, column: 26, scope: !1199)
!1202 = !DILocation(line: 384, column: 33, scope: !1199)
!1203 = !DILocation(line: 384, column: 14, scope: !1199)
!1204 = !DILocation(line: 384, column: 7, scope: !1117)
!1205 = !DILocation(line: 385, column: 4, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 384, column: 41)
!1207 = !DILocation(line: 387, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 387, column: 7)
!1209 = !DILocation(line: 387, column: 14, scope: !1208)
!1210 = !DILocation(line: 387, column: 7, scope: !1117)
!1211 = !DILocation(line: 388, column: 4, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 387, column: 50)
!1213 = !DILocation(line: 395, column: 11, scope: !1117)
!1214 = !DILocation(line: 395, column: 9, scope: !1117)
!1215 = !DILocation(line: 396, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 396, column: 7)
!1217 = !DILocation(line: 396, column: 7, scope: !1117)
!1218 = !DILocation(line: 397, column: 4, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 396, column: 15)
!1220 = !DILocation(line: 400, column: 10, scope: !1117)
!1221 = !DILocation(line: 400, column: 3, scope: !1117)
!1222 = !DILocation(line: 400, column: 17, scope: !1117)
!1223 = !DILocation(line: 400, column: 31, scope: !1117)
!1224 = !DILocation(line: 401, column: 3, scope: !1117)
!1225 = !DILocation(line: 405, column: 3, scope: !1117)
!1226 = !DILocation(line: 410, column: 2, scope: !1090)
!1227 = !DILocation(line: 411, column: 2, scope: !1090)
!1228 = !DILocation(line: 412, column: 42, scope: !1090)
!1229 = !DILocation(line: 412, column: 11, scope: !1090)
!1230 = !DILocation(line: 412, column: 9, scope: !1090)
!1231 = !DILocation(line: 415, column: 2, scope: !1090)
!1232 = !DILocation(line: 416, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 416, column: 6)
!1234 = !DILocation(line: 416, column: 6, scope: !1090)
!1235 = !DILocation(line: 420, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 416, column: 28)
!1237 = !DILocation(line: 421, column: 3, scope: !1236)
!1238 = !DILocation(line: 431, column: 29, scope: !1090)
!1239 = !DILocation(line: 431, column: 11, scope: !1090)
!1240 = !DILocation(line: 431, column: 9, scope: !1090)
!1241 = !DILocation(line: 432, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 432, column: 6)
!1243 = !DILocation(line: 432, column: 6, scope: !1090)
!1244 = !DILocation(line: 436, column: 3, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 432, column: 28)
!1246 = !DILocation(line: 441, column: 2, scope: !1090)
!1247 = !DILocation(line: 442, column: 2, scope: !1090)
!1248 = !DILocation(line: 443, column: 2, scope: !1090)
!1249 = !DILocation(line: 447, column: 25, scope: !1090)
!1250 = !DILocation(line: 447, column: 37, scope: !1090)
!1251 = !DILocation(line: 447, column: 45, scope: !1090)
!1252 = !DILocation(line: 447, column: 11, scope: !1090)
!1253 = !DILocation(line: 447, column: 9, scope: !1090)
!1254 = !DILocation(line: 448, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 448, column: 6)
!1256 = !DILocation(line: 448, column: 6, scope: !1090)
!1257 = !DILocation(line: 449, column: 30, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 448, column: 28)
!1259 = !DILocation(line: 449, column: 9, scope: !1258)
!1260 = !DILocation(line: 453, column: 28, scope: !1258)
!1261 = !DILocation(line: 453, column: 3, scope: !1258)
!1262 = !DILocation(line: 454, column: 3, scope: !1258)
!1263 = !DILocation(line: 459, column: 27, scope: !1090)
!1264 = !DILocation(line: 459, column: 2, scope: !1090)
!1265 = !DILocation(line: 460, column: 2, scope: !1090)
!1266 = !DILocation(line: 461, column: 1, scope: !1090)
!1267 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1268, file: !1268, line: 50, type: !1269, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1268 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!135, !799}
!1271 = !DILocalVariable(name: "s", arg: 1, scope: !1272, file: !18, line: 445, type: !1275)
!1272 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !18, file: !18, line: 445, type: !1273, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!135, !1275, !827, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1277, line: 117, flags: DIFlagFwdDecl)
!1277 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !828, line: 55, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1280, line: 72, baseType: !1281)
!1280 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1280, line: 16, baseType: !829)
!1282 = !DILocation(line: 445, column: 72, scope: !1272, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 552, column: 10, scope: !1284, inlinedAt: !1289)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !18, line: 540, column: 34)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !18, line: 540, column: 6)
!1286 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 538, type: !1287, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!135, !1278, !827}
!1289 = distinct !DILocation(line: 52, column: 9, scope: !1267)
!1290 = !DILocalVariable(name: "flags", arg: 2, scope: !1272, file: !18, line: 446, type: !827)
!1291 = !DILocation(line: 446, column: 9, scope: !1272, inlinedAt: !1283)
!1292 = !DILocalVariable(name: "size", arg: 3, scope: !1272, file: !18, line: 446, type: !1278)
!1293 = !DILocation(line: 446, column: 23, scope: !1272, inlinedAt: !1283)
!1294 = !DILocalVariable(name: "ret", scope: !1272, file: !18, line: 448, type: !135)
!1295 = !DILocation(line: 448, column: 8, scope: !1272, inlinedAt: !1283)
!1296 = !DILocalVariable(name: "flags", arg: 1, scope: !1297, file: !18, line: 318, type: !827)
!1297 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 318, type: !1298, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!17, !827}
!1300 = !DILocation(line: 318, column: 67, scope: !1297, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 553, column: 20, scope: !1284, inlinedAt: !1289)
!1302 = !DILocalVariable(name: "size", arg: 1, scope: !1303, file: !18, line: 346, type: !1278)
!1303 = distinct !DISubprogram(name: "kmalloc_index", scope: !18, file: !18, line: 346, type: !1304, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!7, !1278}
!1306 = !DILocation(line: 346, column: 58, scope: !1303, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 547, column: 11, scope: !1284, inlinedAt: !1289)
!1308 = !DILocalVariable(name: "size", arg: 1, scope: !1309, file: !18, line: 472, type: !1278)
!1309 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !18, file: !18, line: 472, type: !1310, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!135, !1278, !827, !7}
!1312 = !DILocation(line: 472, column: 28, scope: !1309, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 481, column: 9, scope: !1314, inlinedAt: !1315)
!1314 = distinct !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 478, type: !1287, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1315 = distinct !DILocation(line: 545, column: 11, scope: !1316, inlinedAt: !1289)
!1316 = distinct !DILexicalBlock(scope: !1284, file: !18, line: 544, column: 7)
!1317 = !DILocalVariable(name: "flags", arg: 2, scope: !1309, file: !18, line: 472, type: !827)
!1318 = !DILocation(line: 472, column: 40, scope: !1309, inlinedAt: !1313)
!1319 = !DILocalVariable(name: "order", arg: 3, scope: !1309, file: !18, line: 472, type: !7)
!1320 = !DILocation(line: 472, column: 60, scope: !1309, inlinedAt: !1313)
!1321 = !DILocalVariable(name: "size", arg: 1, scope: !1314, file: !18, line: 478, type: !1278)
!1322 = !DILocation(line: 478, column: 51, scope: !1314, inlinedAt: !1315)
!1323 = !DILocalVariable(name: "flags", arg: 2, scope: !1314, file: !18, line: 478, type: !827)
!1324 = !DILocation(line: 478, column: 63, scope: !1314, inlinedAt: !1315)
!1325 = !DILocalVariable(name: "order", scope: !1314, file: !18, line: 480, type: !7)
!1326 = !DILocation(line: 480, column: 15, scope: !1314, inlinedAt: !1315)
!1327 = !DILocalVariable(name: "size", arg: 1, scope: !1286, file: !18, line: 538, type: !1278)
!1328 = !DILocation(line: 538, column: 45, scope: !1286, inlinedAt: !1289)
!1329 = !DILocalVariable(name: "flags", arg: 2, scope: !1286, file: !18, line: 538, type: !827)
!1330 = !DILocation(line: 538, column: 57, scope: !1286, inlinedAt: !1289)
!1331 = !DILocalVariable(name: "index", scope: !1284, file: !18, line: 542, type: !7)
!1332 = !DILocation(line: 542, column: 16, scope: !1284, inlinedAt: !1289)
!1333 = !DILocalVariable(name: "flags", arg: 1, scope: !1334, file: !1335, line: 162, type: !829)
!1334 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1335, file: !1335, line: 162, type: !1336, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1335 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !829}
!1338 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1339 = !DILocation(line: 162, column: 67, scope: !1334, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 52, column: 23, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1268, line: 52, column: 23)
!1342 = distinct !DILexicalBlock(scope: !1267, file: !1268, line: 52, column: 23)
!1343 = !DILocalVariable(name: "size", arg: 1, scope: !1267, file: !1268, line: 50, type: !799)
!1344 = !DILocation(line: 50, column: 48, scope: !1267)
!1345 = !DILocation(line: 52, column: 17, scope: !1267)
!1346 = !DILocalVariable(name: "_flags", scope: !1342, file: !1268, line: 52, type: !829)
!1347 = !DILocation(line: 52, column: 23, scope: !1342)
!1348 = !DILocalVariable(name: "__dummy", scope: !1349, file: !1268, line: 52, type: !829)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !1268, line: 52, column: 23)
!1350 = distinct !DILexicalBlock(scope: !1342, file: !1268, line: 52, column: 23)
!1351 = !DILocation(line: 52, column: 23, scope: !1349)
!1352 = !DILocalVariable(name: "__dummy2", scope: !1349, file: !1268, line: 52, type: !829)
!1353 = !DILocation(line: 52, column: 23, scope: !1350)
!1354 = !DILocalVariable(name: "__dummy", scope: !1355, file: !1268, line: 52, type: !829)
!1355 = distinct !DILexicalBlock(scope: !1341, file: !1268, line: 52, column: 23)
!1356 = !DILocation(line: 52, column: 23, scope: !1355)
!1357 = !DILocalVariable(name: "__dummy2", scope: !1355, file: !1268, line: 52, type: !829)
!1358 = !DILocation(line: 52, column: 23, scope: !1341)
!1359 = !DILocation(line: 164, column: 11, scope: !1334, inlinedAt: !1340)
!1360 = !DILocation(line: 164, column: 17, scope: !1334, inlinedAt: !1340)
!1361 = !DILocation(line: 164, column: 9, scope: !1334, inlinedAt: !1340)
!1362 = !DILocation(line: 52, column: 23, scope: !1267)
!1363 = !DILocation(line: 540, column: 27, scope: !1285, inlinedAt: !1289)
!1364 = !DILocation(line: 540, column: 6, scope: !1285, inlinedAt: !1289)
!1365 = !DILocation(line: 540, column: 6, scope: !1286, inlinedAt: !1289)
!1366 = !DILocation(line: 544, column: 7, scope: !1316, inlinedAt: !1289)
!1367 = !DILocation(line: 544, column: 12, scope: !1316, inlinedAt: !1289)
!1368 = !DILocation(line: 544, column: 7, scope: !1284, inlinedAt: !1289)
!1369 = !DILocation(line: 545, column: 25, scope: !1316, inlinedAt: !1289)
!1370 = !DILocation(line: 545, column: 31, scope: !1316, inlinedAt: !1289)
!1371 = !DILocation(line: 480, column: 33, scope: !1314, inlinedAt: !1315)
!1372 = !DILocation(line: 480, column: 23, scope: !1314, inlinedAt: !1315)
!1373 = !DILocation(line: 481, column: 29, scope: !1314, inlinedAt: !1315)
!1374 = !DILocation(line: 481, column: 35, scope: !1314, inlinedAt: !1315)
!1375 = !DILocation(line: 481, column: 42, scope: !1314, inlinedAt: !1315)
!1376 = !DILocation(line: 474, column: 23, scope: !1309, inlinedAt: !1313)
!1377 = !DILocation(line: 474, column: 29, scope: !1309, inlinedAt: !1313)
!1378 = !DILocation(line: 474, column: 36, scope: !1309, inlinedAt: !1313)
!1379 = !DILocation(line: 474, column: 9, scope: !1309, inlinedAt: !1313)
!1380 = !DILocation(line: 545, column: 4, scope: !1316, inlinedAt: !1289)
!1381 = !DILocation(line: 547, column: 25, scope: !1284, inlinedAt: !1289)
!1382 = !DILocation(line: 348, column: 7, scope: !1383, inlinedAt: !1307)
!1383 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 348, column: 6)
!1384 = !DILocation(line: 348, column: 6, scope: !1303, inlinedAt: !1307)
!1385 = !DILocation(line: 349, column: 3, scope: !1383, inlinedAt: !1307)
!1386 = !DILocation(line: 351, column: 6, scope: !1387, inlinedAt: !1307)
!1387 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 351, column: 6)
!1388 = !DILocation(line: 351, column: 11, scope: !1387, inlinedAt: !1307)
!1389 = !DILocation(line: 351, column: 6, scope: !1303, inlinedAt: !1307)
!1390 = !DILocation(line: 352, column: 3, scope: !1387, inlinedAt: !1307)
!1391 = !DILocation(line: 354, column: 32, scope: !1392, inlinedAt: !1307)
!1392 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 354, column: 6)
!1393 = !DILocation(line: 354, column: 37, scope: !1392, inlinedAt: !1307)
!1394 = !DILocation(line: 354, column: 42, scope: !1392, inlinedAt: !1307)
!1395 = !DILocation(line: 354, column: 45, scope: !1392, inlinedAt: !1307)
!1396 = !DILocation(line: 354, column: 50, scope: !1392, inlinedAt: !1307)
!1397 = !DILocation(line: 354, column: 6, scope: !1303, inlinedAt: !1307)
!1398 = !DILocation(line: 355, column: 3, scope: !1392, inlinedAt: !1307)
!1399 = !DILocation(line: 356, column: 32, scope: !1400, inlinedAt: !1307)
!1400 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 356, column: 6)
!1401 = !DILocation(line: 356, column: 37, scope: !1400, inlinedAt: !1307)
!1402 = !DILocation(line: 356, column: 43, scope: !1400, inlinedAt: !1307)
!1403 = !DILocation(line: 356, column: 46, scope: !1400, inlinedAt: !1307)
!1404 = !DILocation(line: 356, column: 51, scope: !1400, inlinedAt: !1307)
!1405 = !DILocation(line: 356, column: 6, scope: !1303, inlinedAt: !1307)
!1406 = !DILocation(line: 357, column: 3, scope: !1400, inlinedAt: !1307)
!1407 = !DILocation(line: 358, column: 6, scope: !1408, inlinedAt: !1307)
!1408 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 358, column: 6)
!1409 = !DILocation(line: 358, column: 11, scope: !1408, inlinedAt: !1307)
!1410 = !DILocation(line: 358, column: 6, scope: !1303, inlinedAt: !1307)
!1411 = !DILocation(line: 358, column: 26, scope: !1408, inlinedAt: !1307)
!1412 = !DILocation(line: 359, column: 6, scope: !1413, inlinedAt: !1307)
!1413 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 359, column: 6)
!1414 = !DILocation(line: 359, column: 11, scope: !1413, inlinedAt: !1307)
!1415 = !DILocation(line: 359, column: 6, scope: !1303, inlinedAt: !1307)
!1416 = !DILocation(line: 359, column: 26, scope: !1413, inlinedAt: !1307)
!1417 = !DILocation(line: 360, column: 6, scope: !1418, inlinedAt: !1307)
!1418 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 360, column: 6)
!1419 = !DILocation(line: 360, column: 11, scope: !1418, inlinedAt: !1307)
!1420 = !DILocation(line: 360, column: 6, scope: !1303, inlinedAt: !1307)
!1421 = !DILocation(line: 360, column: 26, scope: !1418, inlinedAt: !1307)
!1422 = !DILocation(line: 361, column: 6, scope: !1423, inlinedAt: !1307)
!1423 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 361, column: 6)
!1424 = !DILocation(line: 361, column: 11, scope: !1423, inlinedAt: !1307)
!1425 = !DILocation(line: 361, column: 6, scope: !1303, inlinedAt: !1307)
!1426 = !DILocation(line: 361, column: 26, scope: !1423, inlinedAt: !1307)
!1427 = !DILocation(line: 362, column: 6, scope: !1428, inlinedAt: !1307)
!1428 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 362, column: 6)
!1429 = !DILocation(line: 362, column: 11, scope: !1428, inlinedAt: !1307)
!1430 = !DILocation(line: 362, column: 6, scope: !1303, inlinedAt: !1307)
!1431 = !DILocation(line: 362, column: 26, scope: !1428, inlinedAt: !1307)
!1432 = !DILocation(line: 363, column: 6, scope: !1433, inlinedAt: !1307)
!1433 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 363, column: 6)
!1434 = !DILocation(line: 363, column: 11, scope: !1433, inlinedAt: !1307)
!1435 = !DILocation(line: 363, column: 6, scope: !1303, inlinedAt: !1307)
!1436 = !DILocation(line: 363, column: 26, scope: !1433, inlinedAt: !1307)
!1437 = !DILocation(line: 364, column: 6, scope: !1438, inlinedAt: !1307)
!1438 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 364, column: 6)
!1439 = !DILocation(line: 364, column: 11, scope: !1438, inlinedAt: !1307)
!1440 = !DILocation(line: 364, column: 6, scope: !1303, inlinedAt: !1307)
!1441 = !DILocation(line: 364, column: 26, scope: !1438, inlinedAt: !1307)
!1442 = !DILocation(line: 365, column: 6, scope: !1443, inlinedAt: !1307)
!1443 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 365, column: 6)
!1444 = !DILocation(line: 365, column: 11, scope: !1443, inlinedAt: !1307)
!1445 = !DILocation(line: 365, column: 6, scope: !1303, inlinedAt: !1307)
!1446 = !DILocation(line: 365, column: 26, scope: !1443, inlinedAt: !1307)
!1447 = !DILocation(line: 366, column: 6, scope: !1448, inlinedAt: !1307)
!1448 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 366, column: 6)
!1449 = !DILocation(line: 366, column: 11, scope: !1448, inlinedAt: !1307)
!1450 = !DILocation(line: 366, column: 6, scope: !1303, inlinedAt: !1307)
!1451 = !DILocation(line: 366, column: 26, scope: !1448, inlinedAt: !1307)
!1452 = !DILocation(line: 367, column: 6, scope: !1453, inlinedAt: !1307)
!1453 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 367, column: 6)
!1454 = !DILocation(line: 367, column: 11, scope: !1453, inlinedAt: !1307)
!1455 = !DILocation(line: 367, column: 6, scope: !1303, inlinedAt: !1307)
!1456 = !DILocation(line: 367, column: 26, scope: !1453, inlinedAt: !1307)
!1457 = !DILocation(line: 368, column: 6, scope: !1458, inlinedAt: !1307)
!1458 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 368, column: 6)
!1459 = !DILocation(line: 368, column: 11, scope: !1458, inlinedAt: !1307)
!1460 = !DILocation(line: 368, column: 6, scope: !1303, inlinedAt: !1307)
!1461 = !DILocation(line: 368, column: 26, scope: !1458, inlinedAt: !1307)
!1462 = !DILocation(line: 369, column: 6, scope: !1463, inlinedAt: !1307)
!1463 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 369, column: 6)
!1464 = !DILocation(line: 369, column: 11, scope: !1463, inlinedAt: !1307)
!1465 = !DILocation(line: 369, column: 6, scope: !1303, inlinedAt: !1307)
!1466 = !DILocation(line: 369, column: 26, scope: !1463, inlinedAt: !1307)
!1467 = !DILocation(line: 370, column: 6, scope: !1468, inlinedAt: !1307)
!1468 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 370, column: 6)
!1469 = !DILocation(line: 370, column: 11, scope: !1468, inlinedAt: !1307)
!1470 = !DILocation(line: 370, column: 6, scope: !1303, inlinedAt: !1307)
!1471 = !DILocation(line: 370, column: 26, scope: !1468, inlinedAt: !1307)
!1472 = !DILocation(line: 371, column: 6, scope: !1473, inlinedAt: !1307)
!1473 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 371, column: 6)
!1474 = !DILocation(line: 371, column: 11, scope: !1473, inlinedAt: !1307)
!1475 = !DILocation(line: 371, column: 6, scope: !1303, inlinedAt: !1307)
!1476 = !DILocation(line: 371, column: 26, scope: !1473, inlinedAt: !1307)
!1477 = !DILocation(line: 372, column: 6, scope: !1478, inlinedAt: !1307)
!1478 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 372, column: 6)
!1479 = !DILocation(line: 372, column: 11, scope: !1478, inlinedAt: !1307)
!1480 = !DILocation(line: 372, column: 6, scope: !1303, inlinedAt: !1307)
!1481 = !DILocation(line: 372, column: 26, scope: !1478, inlinedAt: !1307)
!1482 = !DILocation(line: 373, column: 6, scope: !1483, inlinedAt: !1307)
!1483 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 373, column: 6)
!1484 = !DILocation(line: 373, column: 11, scope: !1483, inlinedAt: !1307)
!1485 = !DILocation(line: 373, column: 6, scope: !1303, inlinedAt: !1307)
!1486 = !DILocation(line: 373, column: 26, scope: !1483, inlinedAt: !1307)
!1487 = !DILocation(line: 374, column: 6, scope: !1488, inlinedAt: !1307)
!1488 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 374, column: 6)
!1489 = !DILocation(line: 374, column: 11, scope: !1488, inlinedAt: !1307)
!1490 = !DILocation(line: 374, column: 6, scope: !1303, inlinedAt: !1307)
!1491 = !DILocation(line: 374, column: 26, scope: !1488, inlinedAt: !1307)
!1492 = !DILocation(line: 375, column: 6, scope: !1493, inlinedAt: !1307)
!1493 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 375, column: 6)
!1494 = !DILocation(line: 375, column: 11, scope: !1493, inlinedAt: !1307)
!1495 = !DILocation(line: 375, column: 6, scope: !1303, inlinedAt: !1307)
!1496 = !DILocation(line: 375, column: 27, scope: !1493, inlinedAt: !1307)
!1497 = !DILocation(line: 376, column: 6, scope: !1498, inlinedAt: !1307)
!1498 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 376, column: 6)
!1499 = !DILocation(line: 376, column: 11, scope: !1498, inlinedAt: !1307)
!1500 = !DILocation(line: 376, column: 6, scope: !1303, inlinedAt: !1307)
!1501 = !DILocation(line: 376, column: 32, scope: !1498, inlinedAt: !1307)
!1502 = !DILocation(line: 377, column: 6, scope: !1503, inlinedAt: !1307)
!1503 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 377, column: 6)
!1504 = !DILocation(line: 377, column: 11, scope: !1503, inlinedAt: !1307)
!1505 = !DILocation(line: 377, column: 6, scope: !1303, inlinedAt: !1307)
!1506 = !DILocation(line: 377, column: 32, scope: !1503, inlinedAt: !1307)
!1507 = !DILocation(line: 378, column: 6, scope: !1508, inlinedAt: !1307)
!1508 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 378, column: 6)
!1509 = !DILocation(line: 378, column: 11, scope: !1508, inlinedAt: !1307)
!1510 = !DILocation(line: 378, column: 6, scope: !1303, inlinedAt: !1307)
!1511 = !DILocation(line: 378, column: 32, scope: !1508, inlinedAt: !1307)
!1512 = !DILocation(line: 379, column: 6, scope: !1513, inlinedAt: !1307)
!1513 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 379, column: 6)
!1514 = !DILocation(line: 379, column: 11, scope: !1513, inlinedAt: !1307)
!1515 = !DILocation(line: 379, column: 6, scope: !1303, inlinedAt: !1307)
!1516 = !DILocation(line: 379, column: 33, scope: !1513, inlinedAt: !1307)
!1517 = !DILocation(line: 380, column: 6, scope: !1518, inlinedAt: !1307)
!1518 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 380, column: 6)
!1519 = !DILocation(line: 380, column: 11, scope: !1518, inlinedAt: !1307)
!1520 = !DILocation(line: 380, column: 6, scope: !1303, inlinedAt: !1307)
!1521 = !DILocation(line: 380, column: 33, scope: !1518, inlinedAt: !1307)
!1522 = !DILocation(line: 381, column: 6, scope: !1523, inlinedAt: !1307)
!1523 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 381, column: 6)
!1524 = !DILocation(line: 381, column: 11, scope: !1523, inlinedAt: !1307)
!1525 = !DILocation(line: 381, column: 6, scope: !1303, inlinedAt: !1307)
!1526 = !DILocation(line: 381, column: 33, scope: !1523, inlinedAt: !1307)
!1527 = !DILocation(line: 382, column: 2, scope: !1528, inlinedAt: !1307)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !18, line: 382, column: 2)
!1529 = distinct !DILexicalBlock(scope: !1303, file: !18, line: 382, column: 2)
!1530 = !{i32 -2144104830, i32 -2144104801, i32 -2144104755, i32 -2144104697, i32 -2144104643, i32 -2144104589, i32 -2144104534, i32 -2144104503}
!1531 = !DILocation(line: 382, column: 2, scope: !1532, inlinedAt: !1307)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !18, line: 382, column: 2)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !18, line: 382, column: 2)
!1534 = !{i32 -2144104060, i32 -2144104053, i32 -2144103999, i32 -2144103968, i32 -2144103938}
!1535 = !DILocation(line: 382, column: 2, scope: !1533, inlinedAt: !1307)
!1536 = !DILocation(line: 386, column: 1, scope: !1303, inlinedAt: !1307)
!1537 = !DILocation(line: 547, column: 9, scope: !1284, inlinedAt: !1289)
!1538 = !DILocation(line: 549, column: 8, scope: !1539, inlinedAt: !1289)
!1539 = distinct !DILexicalBlock(scope: !1284, file: !18, line: 549, column: 7)
!1540 = !DILocation(line: 549, column: 7, scope: !1284, inlinedAt: !1289)
!1541 = !DILocation(line: 550, column: 4, scope: !1539, inlinedAt: !1289)
!1542 = !DILocation(line: 553, column: 33, scope: !1284, inlinedAt: !1289)
!1543 = !DILocation(line: 325, column: 6, scope: !1544, inlinedAt: !1301)
!1544 = distinct !DILexicalBlock(scope: !1297, file: !18, line: 325, column: 6)
!1545 = !DILocation(line: 325, column: 6, scope: !1297, inlinedAt: !1301)
!1546 = !DILocation(line: 326, column: 3, scope: !1544, inlinedAt: !1301)
!1547 = !DILocation(line: 332, column: 9, scope: !1297, inlinedAt: !1301)
!1548 = !DILocation(line: 332, column: 15, scope: !1297, inlinedAt: !1301)
!1549 = !DILocation(line: 332, column: 2, scope: !1297, inlinedAt: !1301)
!1550 = !DILocation(line: 336, column: 1, scope: !1297, inlinedAt: !1301)
!1551 = !DILocation(line: 553, column: 5, scope: !1284, inlinedAt: !1289)
!1552 = !DILocation(line: 553, column: 41, scope: !1284, inlinedAt: !1289)
!1553 = !DILocation(line: 554, column: 5, scope: !1284, inlinedAt: !1289)
!1554 = !DILocation(line: 554, column: 12, scope: !1284, inlinedAt: !1289)
!1555 = !DILocation(line: 448, column: 31, scope: !1272, inlinedAt: !1283)
!1556 = !DILocation(line: 448, column: 34, scope: !1272, inlinedAt: !1283)
!1557 = !DILocation(line: 448, column: 14, scope: !1272, inlinedAt: !1283)
!1558 = !DILocation(line: 450, column: 22, scope: !1272, inlinedAt: !1283)
!1559 = !DILocation(line: 450, column: 25, scope: !1272, inlinedAt: !1283)
!1560 = !DILocation(line: 450, column: 30, scope: !1272, inlinedAt: !1283)
!1561 = !DILocation(line: 450, column: 36, scope: !1272, inlinedAt: !1283)
!1562 = !DILocation(line: 450, column: 8, scope: !1272, inlinedAt: !1283)
!1563 = !DILocation(line: 450, column: 6, scope: !1272, inlinedAt: !1283)
!1564 = !DILocation(line: 451, column: 9, scope: !1272, inlinedAt: !1283)
!1565 = !DILocation(line: 552, column: 3, scope: !1284, inlinedAt: !1289)
!1566 = !DILocation(line: 557, column: 19, scope: !1286, inlinedAt: !1289)
!1567 = !DILocation(line: 557, column: 25, scope: !1286, inlinedAt: !1289)
!1568 = !DILocation(line: 557, column: 9, scope: !1286, inlinedAt: !1289)
!1569 = !DILocation(line: 557, column: 2, scope: !1286, inlinedAt: !1289)
!1570 = !DILocation(line: 558, column: 1, scope: !1286, inlinedAt: !1289)
!1571 = !DILocation(line: 52, column: 2, scope: !1267)
!1572 = distinct !DISubprogram(name: "acpi_ex_region_read", scope: !3, file: !3, line: 221, type: !1573, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!25, !37, !27, !85}
!1575 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1572, file: !3, line: 221, type: !37)
!1576 = !DILocation(line: 221, column: 48, scope: !1572)
!1577 = !DILocalVariable(name: "length", arg: 2, scope: !1572, file: !3, line: 221, type: !27)
!1578 = !DILocation(line: 221, column: 62, scope: !1572)
!1579 = !DILocalVariable(name: "buffer", arg: 3, scope: !1572, file: !3, line: 221, type: !85)
!1580 = !DILocation(line: 221, column: 74, scope: !1572)
!1581 = !DILocalVariable(name: "status", scope: !1572, file: !3, line: 223, type: !25)
!1582 = !DILocation(line: 223, column: 14, scope: !1572)
!1583 = !DILocalVariable(name: "value", scope: !1572, file: !3, line: 224, type: !31)
!1584 = !DILocation(line: 224, column: 6, scope: !1572)
!1585 = !DILocalVariable(name: "region_offset", scope: !1572, file: !3, line: 225, type: !27)
!1586 = !DILocation(line: 225, column: 6, scope: !1572)
!1587 = !DILocalVariable(name: "i", scope: !1572, file: !3, line: 226, type: !27)
!1588 = !DILocation(line: 226, column: 6, scope: !1572)
!1589 = !DILocation(line: 230, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 230, column: 2)
!1591 = !DILocation(line: 230, column: 7, scope: !1590)
!1592 = !DILocation(line: 230, column: 14, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 230, column: 2)
!1594 = !DILocation(line: 230, column: 18, scope: !1593)
!1595 = !DILocation(line: 230, column: 16, scope: !1593)
!1596 = !DILocation(line: 230, column: 2, scope: !1590)
!1597 = !DILocation(line: 232, column: 38, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 230, column: 31)
!1599 = !DILocation(line: 233, column: 10, scope: !1598)
!1600 = !DILocation(line: 232, column: 7, scope: !1598)
!1601 = !DILocation(line: 231, column: 10, scope: !1598)
!1602 = !DILocation(line: 234, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 234, column: 7)
!1604 = !DILocation(line: 234, column: 7, scope: !1598)
!1605 = !DILocation(line: 235, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 234, column: 29)
!1607 = !DILocation(line: 235, column: 4, scope: !1606)
!1608 = !DILocation(line: 238, column: 17, scope: !1598)
!1609 = !DILocation(line: 238, column: 13, scope: !1598)
!1610 = !DILocation(line: 238, column: 4, scope: !1598)
!1611 = !DILocation(line: 238, column: 11, scope: !1598)
!1612 = !DILocation(line: 239, column: 9, scope: !1598)
!1613 = !DILocation(line: 240, column: 16, scope: !1598)
!1614 = !DILocation(line: 241, column: 2, scope: !1598)
!1615 = !DILocation(line: 230, column: 27, scope: !1593)
!1616 = !DILocation(line: 230, column: 2, scope: !1593)
!1617 = distinct !{!1617, !1596, !1618}
!1618 = !DILocation(line: 241, column: 2, scope: !1590)
!1619 = !DILocation(line: 243, column: 2, scope: !1572)
!1620 = !DILocation(line: 244, column: 1, scope: !1572)
!1621 = distinct !DISubprogram(name: "acpi_os_free", scope: !1268, file: !1268, line: 60, type: !1622, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !135}
!1624 = !DILocalVariable(name: "memory", arg: 1, scope: !1621, file: !1268, line: 60, type: !135)
!1625 = !DILocation(line: 60, column: 39, scope: !1621)
!1626 = !DILocation(line: 62, column: 8, scope: !1621)
!1627 = !DILocation(line: 62, column: 2, scope: !1621)
!1628 = !DILocation(line: 63, column: 1, scope: !1621)
!1629 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1630, file: !1630, line: 646, type: !1631, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1630 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!829}
!1633 = !DILocalVariable(name: "__ret", scope: !1634, file: !1630, line: 648, type: !829)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !1630, line: 648, column: 9)
!1635 = !DILocation(line: 648, column: 9, scope: !1634)
!1636 = !DILocalVariable(name: "__edi", scope: !1634, file: !1630, line: 648, type: !829)
!1637 = !DILocalVariable(name: "__esi", scope: !1634, file: !1630, line: 648, type: !829)
!1638 = !DILocalVariable(name: "__edx", scope: !1634, file: !1630, line: 648, type: !829)
!1639 = !DILocalVariable(name: "__ecx", scope: !1634, file: !1630, line: 648, type: !829)
!1640 = !DILocalVariable(name: "__eax", scope: !1634, file: !1630, line: 648, type: !829)
!1641 = !DILocation(line: 648, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1630, line: 648, column: 9)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !1630, line: 648, column: 9)
!1644 = !{i32 -2145778436, i32 -2145776121, i32 -2145775887, i32 -2145775836, i32 -2145775808, i32 -2145775783, i32 -2145776099, i32 -2145776086, i32 -2145775648, i32 -2145775529, i32 -2145775994, i32 -2145775967, i32 -2145775939, i32 -2145775909}
!1645 = !DILocalVariable(name: "__mask", scope: !1646, file: !1630, line: 648, type: !829)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !1630, line: 648, column: 9)
!1647 = !DILocation(line: 648, column: 9, scope: !1646)
!1648 = !DILocation(line: 648, column: 9, scope: !1643)
!1649 = !DILocation(line: 648, column: 2, scope: !1629)
!1650 = distinct !DISubprogram(name: "get_order", scope: !1651, file: !1651, line: 29, type: !1336, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1651 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !DILocalVariable(name: "x", arg: 1, scope: !1653, file: !1654, line: 366, type: !32)
!1653 = distinct !DISubprogram(name: "fls64", scope: !1654, file: !1654, line: 366, type: !1655, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1654 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1338, !32}
!1657 = !DILocation(line: 366, column: 40, scope: !1653, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 46, column: 9, scope: !1650)
!1659 = !DILocalVariable(name: "bitpos", scope: !1653, file: !1654, line: 368, type: !1338)
!1660 = !DILocation(line: 368, column: 6, scope: !1653, inlinedAt: !1658)
!1661 = !DILocalVariable(name: "size", arg: 1, scope: !1650, file: !1651, line: 29, type: !829)
!1662 = !DILocation(line: 29, column: 63, scope: !1650)
!1663 = !DILocation(line: 31, column: 27, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1650, file: !1651, line: 31, column: 6)
!1665 = !DILocation(line: 31, column: 6, scope: !1664)
!1666 = !DILocation(line: 31, column: 6, scope: !1650)
!1667 = !DILocation(line: 32, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1651, line: 32, column: 7)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !1651, line: 31, column: 34)
!1670 = !DILocation(line: 32, column: 7, scope: !1669)
!1671 = !DILocation(line: 33, column: 4, scope: !1668)
!1672 = !DILocation(line: 35, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !1651, line: 35, column: 7)
!1674 = !DILocation(line: 35, column: 12, scope: !1673)
!1675 = !DILocation(line: 35, column: 7, scope: !1669)
!1676 = !DILocation(line: 36, column: 4, scope: !1673)
!1677 = !DILocation(line: 38, column: 10, scope: !1669)
!1678 = !DILocation(line: 38, column: 28, scope: !1669)
!1679 = !DILocation(line: 38, column: 41, scope: !1669)
!1680 = !DILocation(line: 38, column: 3, scope: !1669)
!1681 = !DILocation(line: 41, column: 6, scope: !1650)
!1682 = !DILocation(line: 42, column: 7, scope: !1650)
!1683 = !DILocation(line: 46, column: 15, scope: !1650)
!1684 = !DILocation(line: 374, column: 2, scope: !1653, inlinedAt: !1658)
!1685 = !DILocation(line: 376, column: 14, scope: !1653, inlinedAt: !1658)
!1686 = !{i32 666372}
!1687 = !DILocation(line: 377, column: 9, scope: !1653, inlinedAt: !1658)
!1688 = !DILocation(line: 377, column: 16, scope: !1653, inlinedAt: !1658)
!1689 = !DILocation(line: 46, column: 2, scope: !1650)
!1690 = !DILocation(line: 48, column: 1, scope: !1650)
!1691 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1692, file: !1692, line: 30, type: !1693, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1692 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1338, !31}
!1695 = !DILocation(line: 366, column: 40, scope: !1653, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 32, column: 9, scope: !1691)
!1697 = !DILocation(line: 368, column: 6, scope: !1653, inlinedAt: !1696)
!1698 = !DILocalVariable(name: "n", arg: 1, scope: !1691, file: !1692, line: 30, type: !31)
!1699 = !DILocation(line: 30, column: 21, scope: !1691)
!1700 = !DILocation(line: 32, column: 15, scope: !1691)
!1701 = !DILocation(line: 374, column: 2, scope: !1653, inlinedAt: !1696)
!1702 = !DILocation(line: 376, column: 14, scope: !1653, inlinedAt: !1696)
!1703 = !DILocation(line: 377, column: 9, scope: !1653, inlinedAt: !1696)
!1704 = !DILocation(line: 377, column: 16, scope: !1653, inlinedAt: !1696)
!1705 = !DILocation(line: 32, column: 18, scope: !1691)
!1706 = !DILocation(line: 32, column: 2, scope: !1691)
!1707 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1708, file: !1708, line: 137, type: !1709, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !842)
!1708 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!135, !1275, !1711, !1278, !827}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1713 = !DILocalVariable(name: "s", arg: 1, scope: !1707, file: !1708, line: 137, type: !1275)
!1714 = !DILocation(line: 137, column: 54, scope: !1707)
!1715 = !DILocalVariable(name: "object", arg: 2, scope: !1707, file: !1708, line: 137, type: !1711)
!1716 = !DILocation(line: 137, column: 69, scope: !1707)
!1717 = !DILocalVariable(name: "size", arg: 3, scope: !1707, file: !1708, line: 138, type: !1278)
!1718 = !DILocation(line: 138, column: 12, scope: !1707)
!1719 = !DILocalVariable(name: "flags", arg: 4, scope: !1707, file: !1708, line: 138, type: !827)
!1720 = !DILocation(line: 138, column: 24, scope: !1707)
!1721 = !DILocation(line: 140, column: 17, scope: !1707)
!1722 = !DILocation(line: 140, column: 2, scope: !1707)
