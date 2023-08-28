; ModuleID = '../bcout/drivers/acpi/acpica/dspkginit.llvm.bc'
source_filename = "drivers/acpi/acpica/dspkginit.c"
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
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_pkg_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*, i8*, i32 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [10 x i8] c"dspkginit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"Expressions within package elements are not supported\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%-48s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"****DS namepath not found\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Actual Package length (%u) is larger than NumElements field (%u), truncated\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@acpi_gbl_ignore_package_resolution_errors = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"While resolving a named reference package element - %s\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Could not resolve named package element [%4.4s] in [%4.4s]\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_build_internal_package_obj(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i32 %element_count, %union.acpi_operand_object** %obj_desc_ptr) #0 !dbg !808 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %element_count.addr = alloca i32, align 4
  %obj_desc_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %parent = alloca %union.acpi_parse_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %module_level_code = alloca i8, align 1
  %reference_count = alloca i16, align 2
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store i32 %element_count, i32* %element_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element_count.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store %union.acpi_operand_object** %obj_desc_ptr, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %obj_desc_ptr.addr, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %parent, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !824, metadata !DIExpression()), !dbg !825
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata i32* %status, metadata !826, metadata !DIExpression()), !dbg !827
  store i32 0, i32* %status, align 4, !dbg !827
  call void @llvm.dbg.declare(metadata i8* %module_level_code, metadata !828, metadata !DIExpression()), !dbg !829
  store i8 0, i8* %module_level_code, align 1, !dbg !829
  call void @llvm.dbg.declare(metadata i16* %reference_count, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i32* %index, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata i32* %i, metadata !834, metadata !DIExpression()), !dbg !835
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 20, !dbg !838
  %1 = load i32, i32* %parse_flags, align 4, !dbg !838
  %and = and i32 %1, 1024, !dbg !839
  %tobool = icmp ne i32 %and, 0, !dbg !839
  br i1 %tobool, label %if.then, label %if.end, !dbg !840

if.then:                                          ; preds = %entry
  store i8 1, i8* %module_level_code, align 1, !dbg !841
  br label %if.end, !dbg !843

if.end:                                           ; preds = %if.then, %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !844
  %common = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !845
  %parent1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 0, !dbg !846
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent1, align 8, !dbg !846
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %parent, align 8, !dbg !847
  br label %while.cond, !dbg !848

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !849
  %common2 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !850
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 3, !dbg !851
  %5 = load i16, i16* %aml_opcode, align 2, !dbg !851
  %conv = zext i16 %5 to i32, !dbg !849
  %cmp = icmp eq i32 %conv, 18, !dbg !852
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !853

lor.rhs:                                          ; preds = %while.cond
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !854
  %common4 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !855
  %aml_opcode5 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 3, !dbg !856
  %7 = load i16, i16* %aml_opcode5, align 2, !dbg !856
  %conv6 = zext i16 %7 to i32, !dbg !854
  %cmp7 = icmp eq i32 %conv6, 19, !dbg !857
  br label %lor.end, !dbg !853

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp7, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end, !dbg !848

while.body:                                       ; preds = %lor.end
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !858
  %common9 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !860
  %parent10 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common9, i32 0, i32 0, !dbg !861
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent10, align 8, !dbg !861
  store %union.acpi_parse_object* %10, %union.acpi_parse_object** %parent, align 8, !dbg !862
  br label %while.cond, !dbg !848, !llvm.loop !863

while.end:                                        ; preds = %lor.end
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !865
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8, !dbg !866
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %obj_desc, align 8, !dbg !867
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !868
  %tobool11 = icmp ne %union.acpi_operand_object* %13, null, !dbg !868
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !870

if.then12:                                        ; preds = %while.end
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 92, i32 16, i32 4) #8, !dbg !871
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !873
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !874
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !875
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8, !dbg !876
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !877
  %tobool13 = icmp ne %union.acpi_operand_object* %16, null, !dbg !877
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !879

if.then14:                                        ; preds = %if.then12
  store i32 4, i32* %retval, align 4, !dbg !880
  br label %return, !dbg !880

if.end15:                                         ; preds = %if.then12
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !882
  %common16 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !883
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common16, i32 0, i32 6, !dbg !884
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !884
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !885
  %package = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_package*, !dbg !886
  %node17 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 5, !dbg !887
  store %struct.acpi_namespace_node* %18, %struct.acpi_namespace_node** %node17, align 8, !dbg !888
  br label %if.end18, !dbg !889

if.end18:                                         ; preds = %if.end15, %while.end
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !890
  %package19 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_package*, !dbg !892
  %flags = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package19, i32 0, i32 4, !dbg !893
  %21 = load i8, i8* %flags, align 4, !dbg !893
  %conv20 = zext i8 %21 to i32, !dbg !890
  %and21 = and i32 %conv20, 4, !dbg !894
  %tobool22 = icmp ne i32 %and21, 0, !dbg !894
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !895

if.then23:                                        ; preds = %if.end18
  store i32 0, i32* %retval, align 4, !dbg !896
  br label %return, !dbg !896

if.end24:                                         ; preds = %if.end18
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !898
  %package25 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_package*, !dbg !900
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package25, i32 0, i32 6, !dbg !901
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !901
  %tobool26 = icmp ne %union.acpi_operand_object** %23, null, !dbg !898
  br i1 %tobool26, label %if.end38, label %if.then27, !dbg !902

if.then27:                                        ; preds = %if.end24
  %24 = load i32, i32* %element_count.addr, align 4, !dbg !903
  %conv28 = zext i32 %24 to i64, !dbg !903
  %add = add i64 %conv28, 1, !dbg !903
  %mul = mul i64 %add, 8, !dbg !903
  %call29 = call i8* @acpi_os_allocate_zeroed(i64 %mul) #8, !dbg !903
  %25 = bitcast i8* %call29 to %union.acpi_operand_object**, !dbg !903
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !905
  %package30 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_package*, !dbg !906
  %elements31 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package30, i32 0, i32 6, !dbg !907
  store %union.acpi_operand_object** %25, %union.acpi_operand_object*** %elements31, align 8, !dbg !908
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !909
  %package32 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_package*, !dbg !911
  %elements33 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package32, i32 0, i32 6, !dbg !912
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements33, align 8, !dbg !912
  %tobool34 = icmp ne %union.acpi_operand_object** %28, null, !dbg !909
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !913

if.then35:                                        ; preds = %if.then27
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !914
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %29) #8, !dbg !916
  store i32 4, i32* %retval, align 4, !dbg !917
  br label %return, !dbg !917

if.end36:                                         ; preds = %if.then27
  %30 = load i32, i32* %element_count.addr, align 4, !dbg !918
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !919
  %package37 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_package*, !dbg !920
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package37, i32 0, i32 9, !dbg !921
  store i32 %30, i32* %count, align 4, !dbg !922
  br label %if.end38, !dbg !923

if.end38:                                         ; preds = %if.end36, %if.end24
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !924
  %common39 = bitcast %union.acpi_parse_object* %32 to %struct.acpi_parse_obj_common*, !dbg !925
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common39, i32 0, i32 7, !dbg !926
  %arg40 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !927
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg40, align 8, !dbg !927
  store %union.acpi_parse_object* %33, %union.acpi_parse_object** %arg, align 8, !dbg !928
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !929
  %common41 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !930
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common41, i32 0, i32 5, !dbg !931
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !931
  store %union.acpi_parse_object* %35, %union.acpi_parse_object** %arg, align 8, !dbg !932
  %36 = load i8, i8* %module_level_code, align 1, !dbg !933
  %tobool42 = icmp ne i8 %36, 0, !dbg !933
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !935

if.then43:                                        ; preds = %if.end38
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !936
  %aml = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 16, !dbg !938
  %38 = load i8*, i8** %aml, align 8, !dbg !938
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !939
  %package44 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_package*, !dbg !940
  %aml_start = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package44, i32 0, i32 7, !dbg !941
  store i8* %38, i8** %aml_start, align 8, !dbg !942
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !943
  %package45 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_package*, !dbg !944
  %aml_length = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package45, i32 0, i32 8, !dbg !945
  store i32 0, i32* %aml_length, align 8, !dbg !946
  br label %if.end46, !dbg !947

if.end46:                                         ; preds = %if.then43, %if.end38
  store i32 0, i32* %i, align 4, !dbg !948
  br label %for.cond, !dbg !950

for.cond:                                         ; preds = %for.inc126, %if.end46
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !951
  %tobool47 = icmp ne %union.acpi_parse_object* %41, null, !dbg !951
  br i1 %tobool47, label %land.rhs, label %land.end, !dbg !953

land.rhs:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4, !dbg !954
  %43 = load i32, i32* %element_count.addr, align 4, !dbg !955
  %cmp48 = icmp ult i32 %42, %43, !dbg !956
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %cmp48, %land.rhs ], !dbg !957
  br i1 %44, label %for.body, label %for.end128, !dbg !958

for.body:                                         ; preds = %land.end
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !959
  %common50 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !962
  %aml_opcode51 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common50, i32 0, i32 3, !dbg !963
  %46 = load i16, i16* %aml_opcode51, align 2, !dbg !963
  %conv52 = zext i16 %46 to i32, !dbg !959
  %cmp53 = icmp eq i32 %conv52, 54, !dbg !964
  br i1 %cmp53, label %if.then55, label %if.else82, !dbg !965

if.then55:                                        ; preds = %for.body
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !966
  %common56 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !969
  %node57 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common56, i32 0, i32 6, !dbg !970
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node57, align 8, !dbg !970
  %tobool58 = icmp ne %struct.acpi_namespace_node* %48, null, !dbg !966
  br i1 %tobool58, label %if.end62, label %if.then59, !dbg !971

if.then59:                                        ; preds = %if.then55
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 171, i32 15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !972
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !974
  %results = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %49, i32 0, i32 44, !dbg !975
  %50 = load %union.acpi_generic_state*, %union.acpi_generic_state** %results, align 8, !dbg !975
  %results60 = bitcast %union.acpi_generic_state* %50 to %struct.acpi_result_values*, !dbg !976
  %obj_desc61 = getelementptr inbounds %struct.acpi_result_values, %struct.acpi_result_values* %results60, i32 0, i32 5, !dbg !977
  %arrayidx = getelementptr [8 x %union.acpi_operand_object*], [8 x %union.acpi_operand_object*]* %obj_desc61, i64 0, i64 0, !dbg !974
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !974
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %51) #8, !dbg !978
  store i32 15, i32* %retval, align 4, !dbg !979
  br label %return, !dbg !979

if.end62:                                         ; preds = %if.then55
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !980
  %common63 = bitcast %union.acpi_parse_object* %52 to %struct.acpi_parse_obj_common*, !dbg !982
  %node64 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common63, i32 0, i32 6, !dbg !983
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node64, align 8, !dbg !983
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %53, i32 0, i32 2, !dbg !984
  %54 = load i8, i8* %type, align 1, !dbg !984
  %conv65 = zext i8 %54 to i32, !dbg !980
  %cmp66 = icmp eq i32 %conv65, 8, !dbg !985
  br i1 %cmp66, label %if.then68, label %if.else, !dbg !986

if.then68:                                        ; preds = %if.end62
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !987
  %common69 = bitcast %union.acpi_parse_object* %55 to %struct.acpi_parse_obj_common*, !dbg !989
  %aml_opcode70 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common69, i32 0, i32 3, !dbg !990
  store i16 45, i16* %aml_opcode70, align 2, !dbg !991
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !992
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !993
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !994
  %package71 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_package*, !dbg !995
  %elements72 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package71, i32 0, i32 6, !dbg !996
  %59 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements72, align 8, !dbg !996
  %60 = load i32, i32* %i, align 4, !dbg !997
  %idxprom = zext i32 %60 to i64, !dbg !994
  %arrayidx73 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %59, i64 %idxprom, !dbg !994
  %call74 = call i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state* %56, %union.acpi_parse_object* %57, %union.acpi_operand_object** %arrayidx73) #8, !dbg !998
  store i32 %call74, i32* %status, align 4, !dbg !999
  br label %if.end81, !dbg !1000

if.else:                                          ; preds = %if.end62
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1001
  %common75 = bitcast %union.acpi_parse_object* %61 to %struct.acpi_parse_obj_common*, !dbg !1001
  %node76 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common75, i32 0, i32 6, !dbg !1001
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node76, align 8, !dbg !1001
  %63 = bitcast %struct.acpi_namespace_node* %62 to i8*, !dbg !1001
  %64 = bitcast i8* %63 to %union.acpi_operand_object*, !dbg !1001
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1003
  %package77 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_package*, !dbg !1004
  %elements78 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package77, i32 0, i32 6, !dbg !1005
  %66 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements78, align 8, !dbg !1005
  %67 = load i32, i32* %i, align 4, !dbg !1006
  %idxprom79 = zext i32 %67 to i64, !dbg !1003
  %arrayidx80 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %66, i64 %idxprom79, !dbg !1003
  store %union.acpi_operand_object* %64, %union.acpi_operand_object** %arrayidx80, align 8, !dbg !1007
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then68
  br label %if.end104, !dbg !1008

if.else82:                                        ; preds = %for.body
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1009
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1011
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1012
  %package83 = bitcast %union.acpi_operand_object* %70 to %struct.acpi_object_package*, !dbg !1013
  %elements84 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package83, i32 0, i32 6, !dbg !1014
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements84, align 8, !dbg !1014
  %72 = load i32, i32* %i, align 4, !dbg !1015
  %idxprom85 = zext i32 %72 to i64, !dbg !1012
  %arrayidx86 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %71, i64 %idxprom85, !dbg !1012
  %call87 = call i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state* %68, %union.acpi_parse_object* %69, %union.acpi_operand_object** %arrayidx86) #8, !dbg !1016
  store i32 %call87, i32* %status, align 4, !dbg !1017
  %73 = load i32, i32* %status, align 4, !dbg !1018
  %cmp88 = icmp eq i32 %73, 5, !dbg !1020
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !1021

if.then90:                                        ; preds = %if.else82
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1022
  br label %if.end91, !dbg !1024

if.end91:                                         ; preds = %if.then90, %if.else82
  %74 = load i8, i8* %module_level_code, align 1, !dbg !1025
  %tobool92 = icmp ne i8 %74, 0, !dbg !1025
  br i1 %tobool92, label %if.end103, label %if.then93, !dbg !1027

if.then93:                                        ; preds = %if.end91
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1028
  %package94 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_package*, !dbg !1030
  %elements95 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package94, i32 0, i32 6, !dbg !1031
  %76 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements95, align 8, !dbg !1031
  %77 = load i32, i32* %i, align 4, !dbg !1032
  %idxprom96 = zext i32 %77 to i64, !dbg !1028
  %arrayidx97 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %76, i64 %idxprom96, !dbg !1028
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx97, align 8, !dbg !1028
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1033
  %package98 = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_package*, !dbg !1034
  %elements99 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package98, i32 0, i32 6, !dbg !1035
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements99, align 8, !dbg !1035
  %81 = load i32, i32* %i, align 4, !dbg !1036
  %idxprom100 = zext i32 %81 to i64, !dbg !1033
  %arrayidx101 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %80, i64 %idxprom100, !dbg !1033
  %82 = bitcast %union.acpi_operand_object** %arrayidx101 to i8*, !dbg !1037
  %call102 = call i32 @acpi_ds_init_package_element(i8 zeroext 0, %union.acpi_operand_object* %78, %union.acpi_generic_state* null, i8* %82) #8, !dbg !1038
  br label %if.end103, !dbg !1039

if.end103:                                        ; preds = %if.then93, %if.end91
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end81
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !1040
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %83, align 8, !dbg !1042
  %tobool105 = icmp ne %union.acpi_operand_object* %84, null, !dbg !1042
  br i1 %tobool105, label %if.then106, label %if.end123, !dbg !1043

if.then106:                                       ; preds = %if.end104
  %85 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %obj_desc_ptr.addr, align 8, !dbg !1044
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %85, align 8, !dbg !1046
  %common107 = bitcast %union.acpi_operand_object* %86 to %struct.acpi_object_common*, !dbg !1047
  %reference_count108 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common107, i32 0, i32 3, !dbg !1048
  %87 = load i16, i16* %reference_count108, align 2, !dbg !1048
  store i16 %87, i16* %reference_count, align 2, !dbg !1049
  %88 = load i16, i16* %reference_count, align 2, !dbg !1050
  %conv109 = zext i16 %88 to i32, !dbg !1050
  %cmp110 = icmp sgt i32 %conv109, 1, !dbg !1052
  br i1 %cmp110, label %if.then112, label %if.end122, !dbg !1053

if.then112:                                       ; preds = %if.then106
  store i32 0, i32* %index, align 4, !dbg !1054
  br label %for.cond113, !dbg !1057

for.cond113:                                      ; preds = %for.inc, %if.then112
  %89 = load i32, i32* %index, align 4, !dbg !1058
  %90 = load i16, i16* %reference_count, align 2, !dbg !1060
  %conv114 = zext i16 %90 to i32, !dbg !1061
  %sub = sub i32 %conv114, 1, !dbg !1062
  %cmp115 = icmp ult i32 %89, %sub, !dbg !1063
  br i1 %cmp115, label %for.body117, label %for.end, !dbg !1064

for.body117:                                      ; preds = %for.cond113
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1065
  %package118 = bitcast %union.acpi_operand_object* %91 to %struct.acpi_object_package*, !dbg !1067
  %elements119 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package118, i32 0, i32 6, !dbg !1068
  %92 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements119, align 8, !dbg !1068
  %93 = load i32, i32* %i, align 4, !dbg !1069
  %idxprom120 = zext i32 %93 to i64, !dbg !1065
  %arrayidx121 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %92, i64 %idxprom120, !dbg !1065
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx121, align 8, !dbg !1065
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %94) #8, !dbg !1070
  br label %for.inc, !dbg !1071

for.inc:                                          ; preds = %for.body117
  %95 = load i32, i32* %index, align 4, !dbg !1072
  %inc = add i32 %95, 1, !dbg !1072
  store i32 %inc, i32* %index, align 4, !dbg !1072
  br label %for.cond113, !dbg !1073, !llvm.loop !1074

for.end:                                          ; preds = %for.cond113
  br label %if.end122, !dbg !1076

if.end122:                                        ; preds = %for.end, %if.then106
  br label %if.end123, !dbg !1077

if.end123:                                        ; preds = %if.end122, %if.end104
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1078
  %common124 = bitcast %union.acpi_parse_object* %96 to %struct.acpi_parse_obj_common*, !dbg !1079
  %next125 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common124, i32 0, i32 5, !dbg !1080
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next125, align 8, !dbg !1080
  store %union.acpi_parse_object* %97, %union.acpi_parse_object** %arg, align 8, !dbg !1081
  br label %for.inc126, !dbg !1082

for.inc126:                                       ; preds = %if.end123
  %98 = load i32, i32* %i, align 4, !dbg !1083
  %inc127 = add i32 %98, 1, !dbg !1083
  store i32 %inc127, i32* %i, align 4, !dbg !1083
  br label %for.cond, !dbg !1084, !llvm.loop !1085

for.end128:                                       ; preds = %land.end
  %99 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1087
  %tobool129 = icmp ne %union.acpi_parse_object* %99, null, !dbg !1087
  br i1 %tobool129, label %if.then130, label %if.else147, !dbg !1089

if.then130:                                       ; preds = %for.end128
  br label %while.cond131, !dbg !1090

while.cond131:                                    ; preds = %if.end142, %if.then130
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1092
  %tobool132 = icmp ne %union.acpi_parse_object* %100, null, !dbg !1090
  br i1 %tobool132, label %while.body133, label %while.end146, !dbg !1090

while.body133:                                    ; preds = %while.cond131
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1093
  %common134 = bitcast %union.acpi_parse_object* %101 to %struct.acpi_parse_obj_common*, !dbg !1096
  %node135 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common134, i32 0, i32 6, !dbg !1097
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node135, align 8, !dbg !1097
  %tobool136 = icmp ne %struct.acpi_namespace_node* %102, null, !dbg !1093
  br i1 %tobool136, label %if.then137, label %if.end142, !dbg !1098

if.then137:                                       ; preds = %while.body133
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1099
  %common138 = bitcast %union.acpi_parse_object* %103 to %struct.acpi_parse_obj_common*, !dbg !1099
  %node139 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common138, i32 0, i32 6, !dbg !1099
  %104 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node139, align 8, !dbg !1099
  %105 = bitcast %struct.acpi_namespace_node* %104 to i8*, !dbg !1099
  %106 = bitcast i8* %105 to %union.acpi_operand_object*, !dbg !1099
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %106) #8, !dbg !1101
  %107 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1102
  %common140 = bitcast %union.acpi_parse_object* %107 to %struct.acpi_parse_obj_common*, !dbg !1103
  %node141 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common140, i32 0, i32 6, !dbg !1104
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %node141, align 8, !dbg !1105
  br label %if.end142, !dbg !1106

if.end142:                                        ; preds = %if.then137, %while.body133
  %108 = load i32, i32* %i, align 4, !dbg !1107
  %inc143 = add i32 %108, 1, !dbg !1107
  store i32 %inc143, i32* %i, align 4, !dbg !1107
  %109 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1108
  %common144 = bitcast %union.acpi_parse_object* %109 to %struct.acpi_parse_obj_common*, !dbg !1109
  %next145 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common144, i32 0, i32 5, !dbg !1110
  %110 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next145, align 8, !dbg !1110
  store %union.acpi_parse_object* %110, %union.acpi_parse_object** %arg, align 8, !dbg !1111
  br label %while.cond131, !dbg !1090, !llvm.loop !1112

while.end146:                                     ; preds = %while.cond131
  %111 = load i32, i32* %i, align 4, !dbg !1114
  %112 = load i32, i32* %element_count.addr, align 4, !dbg !1114
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112) #8, !dbg !1114
  br label %if.end152, !dbg !1115

if.else147:                                       ; preds = %for.end128
  %113 = load i32, i32* %i, align 4, !dbg !1116
  %114 = load i32, i32* %element_count.addr, align 4, !dbg !1118
  %cmp148 = icmp ult i32 %113, %114, !dbg !1119
  br i1 %cmp148, label %if.then150, label %if.end151, !dbg !1120

if.then150:                                       ; preds = %if.else147
  br label %if.end151, !dbg !1121

if.end151:                                        ; preds = %if.then150, %if.else147
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %while.end146
  %115 = load i8, i8* %module_level_code, align 1, !dbg !1123
  %tobool153 = icmp ne i8 %115, 0, !dbg !1123
  br i1 %tobool153, label %if.end159, label %if.then154, !dbg !1125

if.then154:                                       ; preds = %if.end152
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1126
  %package155 = bitcast %union.acpi_operand_object* %116 to %struct.acpi_object_package*, !dbg !1128
  %flags156 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package155, i32 0, i32 4, !dbg !1129
  %117 = load i8, i8* %flags156, align 4, !dbg !1130
  %conv157 = zext i8 %117 to i32, !dbg !1130
  %or = or i32 %conv157, 4, !dbg !1130
  %conv158 = trunc i32 %or to i8, !dbg !1130
  store i8 %conv158, i8* %flags156, align 4, !dbg !1130
  br label %if.end159, !dbg !1131

if.end159:                                        ; preds = %if.then154, %if.end152
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1132
  %119 = bitcast %union.acpi_operand_object* %118 to i8*, !dbg !1132
  %120 = bitcast i8* %119 to %struct.acpi_namespace_node*, !dbg !1132
  %121 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1133
  %common160 = bitcast %union.acpi_parse_object* %121 to %struct.acpi_parse_obj_common*, !dbg !1134
  %node161 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common160, i32 0, i32 6, !dbg !1135
  store %struct.acpi_namespace_node* %120, %struct.acpi_namespace_node** %node161, align 8, !dbg !1136
  %122 = load i32, i32* %status, align 4, !dbg !1137
  store i32 %122, i32* %retval, align 4, !dbg !1137
  br label %return, !dbg !1137

return:                                           ; preds = %if.end159, %if.then59, %if.then35, %if.then23, %if.then14
  %123 = load i32, i32* %retval, align 4, !dbg !1138
  ret i32 %123, !dbg !1138
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1139 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1143, metadata !DIExpression()), !dbg !1149
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1153, metadata !DIExpression()), !dbg !1154
  %0 = load i64, i64* %size.addr, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1156, metadata !DIExpression()), !dbg !1157
  br label %do.body, !dbg !1157

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1158, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1162, metadata !DIExpression()), !dbg !1161
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1161
  %conv = zext i1 %cmp to i32, !dbg !1161
  store i32 1, i32* %tmp, align 4, !dbg !1161
  %1 = load i32, i32* %tmp, align 4, !dbg !1161
  %call = call i64 @arch_local_save_flags() #8, !dbg !1163
  store i64 %call, i64* %_flags, align 8, !dbg !1163
  br label %do.end, !dbg !1163

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1164, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1167, metadata !DIExpression()), !dbg !1166
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1166
  %conv6 = zext i1 %cmp5 to i32, !dbg !1166
  store i32 1, i32* %tmp7, align 4, !dbg !1166
  %2 = load i32, i32* %tmp7, align 4, !dbg !1166
  %3 = load i64, i64* %_flags, align 8, !dbg !1168
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1169
  %and.i = and i64 %4, 512, !dbg !1170
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1171
  %lnot.i = xor i1 %tobool.i, true, !dbg !1171
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1171
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1168
  %5 = load i32, i32* %tmp8, align 4, !dbg !1168
  store i32 %5, i32* %tmp1, align 4, !dbg !1163
  %6 = load i32, i32* %tmp1, align 4, !dbg !1157
  %tobool = icmp ne i32 %6, 0, !dbg !1172
  %7 = zext i1 %tobool to i64, !dbg !1172
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1172
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1173
  ret i8* %call10, !dbg !1174
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state*, %union.acpi_parse_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_init_package_element(i8 zeroext %object_type, %union.acpi_operand_object* %source_object, %union.acpi_generic_state* %state, i8* %context) #0 !dbg !1175 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca %union.acpi_operand_object*, align 8
  %state.addr = alloca %union.acpi_generic_state*, align 8
  %context.addr = alloca i8*, align 8
  %element_ptr = alloca %union.acpi_operand_object**, align 8
  store i8 %object_type, i8* %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %object_type.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store %union.acpi_operand_object* %source_object, %union.acpi_operand_object** %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_object.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store %union.acpi_generic_state* %state, %union.acpi_generic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %element_ptr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1188
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1188
  br i1 %tobool, label %if.end, label %if.then, !dbg !1190

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1191
  br label %return, !dbg !1191

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %context.addr, align 8, !dbg !1193
  %tobool1 = icmp ne i8* %1, null, !dbg !1193
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1195

if.then2:                                         ; preds = %if.end
  %2 = load i8*, i8** %context.addr, align 8, !dbg !1196
  %3 = bitcast i8* %2 to %union.acpi_operand_object**, !dbg !1198
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1199
  br label %if.end3, !dbg !1200

if.else:                                          ; preds = %if.end
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !1201
  %pkg = bitcast %union.acpi_generic_state* %4 to %struct.acpi_pkg_state*, !dbg !1203
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg, i32 0, i32 9, !dbg !1204
  %5 = load i8*, i8** %this_target_obj, align 8, !dbg !1204
  %6 = bitcast i8* %5 to %union.acpi_operand_object**, !dbg !1201
  store %union.acpi_operand_object** %6, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1205
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1206
  %common = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !1208
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1209
  %8 = load i8, i8* %type, align 1, !dbg !1209
  %conv = zext i8 %8 to i32, !dbg !1206
  %cmp = icmp eq i32 %conv, 20, !dbg !1210
  br i1 %cmp, label %if.then5, label %if.else6, !dbg !1211

if.then5:                                         ; preds = %if.end3
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr, align 8, !dbg !1212
  call void @acpi_ds_resolve_package_element(%union.acpi_operand_object** %9) #8, !dbg !1214
  br label %if.end16, !dbg !1215

if.else6:                                         ; preds = %if.end3
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1216
  %common7 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !1218
  %type8 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 2, !dbg !1219
  %11 = load i8, i8* %type8, align 1, !dbg !1219
  %conv9 = zext i8 %11 to i32, !dbg !1216
  %cmp10 = icmp eq i32 %conv9, 4, !dbg !1220
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !1221

if.then12:                                        ; preds = %if.else6
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1222
  %package = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_package*, !dbg !1224
  %flags = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 4, !dbg !1225
  %13 = load i8, i8* %flags, align 4, !dbg !1226
  %conv13 = zext i8 %13 to i32, !dbg !1226
  %or = or i32 %conv13, 4, !dbg !1226
  %conv14 = trunc i32 %or to i8, !dbg !1226
  store i8 %conv14, i8* %flags, align 4, !dbg !1226
  br label %if.end15, !dbg !1227

if.end15:                                         ; preds = %if.then12, %if.else6
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  store i32 0, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

return:                                           ; preds = %if.end16, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1229
  ret i32 %14, !dbg !1229
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ds_resolve_package_element(%union.acpi_operand_object** %element_ptr) #0 !dbg !1230 {
entry:
  %element_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %status2 = alloca i32, align 4
  %scope_info = alloca %union.acpi_generic_state, align 8
  %element = alloca %union.acpi_operand_object*, align 8
  %resolved_node = alloca %struct.acpi_namespace_node*, align 8
  %original_node = alloca %struct.acpi_namespace_node*, align 8
  %external_path = alloca i8*, align 8
  %type = alloca i32, align 4
  store %union.acpi_operand_object** %element_ptr, %union.acpi_operand_object*** %element_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %element_ptr.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %status2, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state* %scope_info, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %element, metadata !1241, metadata !DIExpression()), !dbg !1242
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1243
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1244
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %element, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %resolved_node, metadata !1245, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %original_node, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.declare(metadata i8** %external_path, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %external_path, align 8, !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1251, metadata !DIExpression()), !dbg !1253
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1254
  %reference = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_reference*, !dbg !1256
  %resolved = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 7, !dbg !1257
  %3 = load i8, i8* %resolved, align 1, !dbg !1257
  %tobool = icmp ne i8 %3, 0, !dbg !1254
  br i1 %tobool, label %if.then, label %if.end, !dbg !1258

if.then:                                          ; preds = %entry
  br label %return, !dbg !1259

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1261
  %reference1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_reference*, !dbg !1262
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference1, i32 0, i32 9, !dbg !1263
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1263
  %scope = bitcast %union.acpi_generic_state* %scope_info to %struct.acpi_scope_state*, !dbg !1264
  %node2 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1265
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %node2, align 8, !dbg !1266
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1267
  %reference3 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_reference*, !dbg !1268
  %aml = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference3, i32 0, i32 12, !dbg !1269
  %7 = load i8*, i8** %aml, align 8, !dbg !1269
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %scope_info, i8* %7, i32 0, i32 3, i32 3, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %resolved_node) #8, !dbg !1270
  store i32 %call, i32* %status, align 4, !dbg !1271
  %8 = load i32, i32* %status, align 4, !dbg !1272
  %tobool4 = icmp ne i32 %8, 0, !dbg !1272
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1274

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %status, align 4, !dbg !1275
  %cmp = icmp eq i32 %9, 5, !dbg !1278
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !1279

land.lhs.true:                                    ; preds = %if.then5
  %10 = load i8, i8* @acpi_gbl_ignore_package_resolution_errors, align 1, !dbg !1280
  %conv = zext i8 %10 to i32, !dbg !1280
  %tobool6 = icmp ne i32 %conv, 0, !dbg !1280
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1281

if.then7:                                         ; preds = %land.lhs.true
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1282
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8, !dbg !1284
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %12) #8, !dbg !1285
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1286
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %13, align 8, !dbg !1287
  br label %return, !dbg !1288

if.end8:                                          ; preds = %land.lhs.true, %if.then5
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1289
  %reference9 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_reference*, !dbg !1290
  %aml10 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference9, i32 0, i32 12, !dbg !1291
  %15 = load i8*, i8** %aml10, align 8, !dbg !1291
  %call11 = call i32 @acpi_ns_externalize_name(i32 -1, i8* %15, i32* null, i8** %external_path) #8, !dbg !1292
  store i32 %call11, i32* %status2, align 4, !dbg !1293
  %16 = load i32, i32* %status, align 4, !dbg !1294
  %17 = load i8*, i8** %external_path, align 8, !dbg !1294
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 438, i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %17) #8, !dbg !1294
  %18 = load i32, i32* %status2, align 4, !dbg !1295
  %tobool12 = icmp ne i32 %18, 0, !dbg !1295
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1297

if.then13:                                        ; preds = %if.end8
  %19 = load i8*, i8** %external_path, align 8, !dbg !1298
  call void @acpi_os_free(i8* %19) #8, !dbg !1298
  br label %if.end14, !dbg !1300

if.end14:                                         ; preds = %if.then13, %if.end8
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1301
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %20, align 8, !dbg !1302
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %21) #8, !dbg !1303
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1304
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %22, align 8, !dbg !1305
  br label %return, !dbg !1306

if.else:                                          ; preds = %if.end
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1307
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 2, !dbg !1309
  %24 = load i8, i8* %type15, align 1, !dbg !1309
  %conv16 = zext i8 %24 to i32, !dbg !1307
  %cmp17 = icmp eq i32 %conv16, 0, !dbg !1310
  br i1 %cmp17, label %if.then19, label %if.end25, !dbg !1311

if.then19:                                        ; preds = %if.else
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1312
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %25, i32 0, i32 4, !dbg !1312
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1312
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1312
  %scope20 = bitcast %union.acpi_generic_state* %scope_info to %struct.acpi_scope_state*, !dbg !1312
  %node21 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope20, i32 0, i32 5, !dbg !1312
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node21, align 8, !dbg !1312
  %name22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 4, !dbg !1312
  %ascii23 = bitcast %union.acpi_name_union* %name22 to [4 x i8]*, !dbg !1312
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii23, i64 0, i64 0, !dbg !1312
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 454, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay24) #8, !dbg !1312
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1314
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %27, align 8, !dbg !1315
  br label %return, !dbg !1316

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1317
  %type27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 2, !dbg !1319
  %29 = load i8, i8* %type27, align 1, !dbg !1319
  %conv28 = zext i8 %29 to i32, !dbg !1317
  %cmp29 = icmp eq i32 %conv28, 21, !dbg !1320
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1321

if.then31:                                        ; preds = %if.end26
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1322
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %30, i32 0, i32 0, !dbg !1322
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1322
  %32 = bitcast %union.acpi_operand_object* %31 to i8*, !dbg !1322
  %33 = bitcast i8* %32 to %struct.acpi_namespace_node*, !dbg !1322
  store %struct.acpi_namespace_node* %33, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1324
  br label %if.end32, !dbg !1325

if.end32:                                         ; preds = %if.then31, %if.end26
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1326
  %reference33 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_reference*, !dbg !1327
  %resolved34 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference33, i32 0, i32 7, !dbg !1328
  store i8 1, i8* %resolved34, align 1, !dbg !1329
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1330
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1331
  %reference35 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_reference*, !dbg !1332
  %node36 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference35, i32 0, i32 9, !dbg !1333
  store %struct.acpi_namespace_node* %35, %struct.acpi_namespace_node** %node36, align 8, !dbg !1334
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1335
  %reference37 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_reference*, !dbg !1336
  %node38 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference37, i32 0, i32 9, !dbg !1337
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node38, align 8, !dbg !1337
  %type39 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 2, !dbg !1338
  %39 = load i8, i8* %type39, align 1, !dbg !1338
  %conv40 = zext i8 %39 to i32, !dbg !1335
  store i32 %conv40, i32* %type, align 4, !dbg !1339
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1340
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %original_node, align 8, !dbg !1341
  %call41 = call i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node** %resolved_node, %struct.acpi_walk_state* null) #8, !dbg !1342
  store i32 %call41, i32* %status, align 4, !dbg !1343
  %41 = load i32, i32* %status, align 4, !dbg !1344
  %tobool42 = icmp ne i32 %41, 0, !dbg !1344
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1346

if.then43:                                        ; preds = %if.end32
  br label %return, !dbg !1347

if.end44:                                         ; preds = %if.end32
  %42 = load i32, i32* %type, align 4, !dbg !1349
  switch i32 %42, label %sw.default [
    i32 6, label %sw.bb
    i32 13, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb45
    i32 11, label %sw.bb45
    i32 12, label %sw.bb45
    i32 7, label %sw.bb45
    i32 10, label %sw.bb45
  ], !dbg !1350

sw.bb:                                            ; preds = %if.end44, %if.end44, %if.end44
  br label %sw.epilog, !dbg !1351

sw.bb45:                                          ; preds = %if.end44, %if.end44, %if.end44, %if.end44, %if.end44
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %original_node, align 8, !dbg !1353
  %object46 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %43, i32 0, i32 0, !dbg !1354
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object46, align 8, !dbg !1354
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %44) #8, !dbg !1355
  br label %sw.epilog, !dbg !1356

sw.default:                                       ; preds = %if.end44
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %element, align 8, !dbg !1357
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %45) #8, !dbg !1358
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %resolved_node, align 8, !dbg !1359
  %47 = bitcast %struct.acpi_namespace_node* %46 to %union.acpi_operand_object*, !dbg !1360
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %element_ptr.addr, align 8, !dbg !1361
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %48, align 8, !dbg !1362
  br label %sw.epilog, !dbg !1363

sw.epilog:                                        ; preds = %sw.default, %sw.bb45, %sw.bb
  br label %return, !dbg !1364

return:                                           ; preds = %sw.epilog, %if.then43, %if.then19, %if.end14, %if.then7, %if.then
  ret void, !dbg !1365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1366 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1373, metadata !DIExpression()), !dbg !1380
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1386, metadata !DIExpression()), !dbg !1387
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1388, metadata !DIExpression()), !dbg !1389
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1390, metadata !DIExpression()), !dbg !1391
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1392, metadata !DIExpression()), !dbg !1396
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1398, metadata !DIExpression()), !dbg !1402
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1404, metadata !DIExpression()), !dbg !1408
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1413, metadata !DIExpression()), !dbg !1414
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1415, metadata !DIExpression()), !dbg !1416
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1417, metadata !DIExpression()), !dbg !1418
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1419, metadata !DIExpression()), !dbg !1420
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1421, metadata !DIExpression()), !dbg !1422
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1423, metadata !DIExpression()), !dbg !1424
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1425, metadata !DIExpression()), !dbg !1426
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1427, metadata !DIExpression()), !dbg !1428
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  %0 = load i64, i64* %size.addr, align 8, !dbg !1433
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1434
  %or = or i32 %1, 256, !dbg !1435
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1436
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1437
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1438

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1439
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1440
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1441

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1442
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1443
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1444
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1445
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1422
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1446
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1447
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1448
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1449
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1450
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1451
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1452
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1452
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1452
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1452
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1452
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1453
  br label %kmalloc.exit, !dbg !1453

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1454
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1455
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1455
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1457

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1458
  br label %kmalloc_index.exit.i, !dbg !1458

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1459
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1461
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1462

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1463
  br label %kmalloc_index.exit.i, !dbg !1463

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1464
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1466
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1467

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1468
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1469
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1470

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1471
  br label %kmalloc_index.exit.i, !dbg !1471

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1472
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1474
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1475

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1476
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1477
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1478

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1479
  br label %kmalloc_index.exit.i, !dbg !1479

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1480
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1482
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1483

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1484
  br label %kmalloc_index.exit.i, !dbg !1484

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1485
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1487
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1488

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1489
  br label %kmalloc_index.exit.i, !dbg !1489

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1490
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1492
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1493

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1494
  br label %kmalloc_index.exit.i, !dbg !1494

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1495
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1497
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1498

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1499
  br label %kmalloc_index.exit.i, !dbg !1499

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1500
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1502
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1503

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1504
  br label %kmalloc_index.exit.i, !dbg !1504

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1505
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1507
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1508

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1509
  br label %kmalloc_index.exit.i, !dbg !1509

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1510
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1512
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1513

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1514
  br label %kmalloc_index.exit.i, !dbg !1514

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1515
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1517
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1518

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1519
  br label %kmalloc_index.exit.i, !dbg !1519

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1520
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1522
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1523

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1524
  br label %kmalloc_index.exit.i, !dbg !1524

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1525
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1527
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1528

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1529
  br label %kmalloc_index.exit.i, !dbg !1529

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1530
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1532
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1533

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1534
  br label %kmalloc_index.exit.i, !dbg !1534

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1535
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1537
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1538

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1539
  br label %kmalloc_index.exit.i, !dbg !1539

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1540
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1542
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1543

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1544
  br label %kmalloc_index.exit.i, !dbg !1544

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1545
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1547
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1548

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1549
  br label %kmalloc_index.exit.i, !dbg !1549

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1550
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1552
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1553

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1554
  br label %kmalloc_index.exit.i, !dbg !1554

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1555
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1557
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1558

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1559
  br label %kmalloc_index.exit.i, !dbg !1559

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1560
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1562
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1563

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1564
  br label %kmalloc_index.exit.i, !dbg !1564

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1565
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1567
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1568

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1569
  br label %kmalloc_index.exit.i, !dbg !1569

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1570
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1572
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1573

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1574
  br label %kmalloc_index.exit.i, !dbg !1574

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1575
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1577
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1578

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1579
  br label %kmalloc_index.exit.i, !dbg !1579

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1580
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1582
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1583

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1584
  br label %kmalloc_index.exit.i, !dbg !1584

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1585
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1587
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1588

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1589
  br label %kmalloc_index.exit.i, !dbg !1589

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1590
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1592
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1593

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1594
  br label %kmalloc_index.exit.i, !dbg !1594

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1595
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1597
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1598

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1599
  br label %kmalloc_index.exit.i, !dbg !1599

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1600, !srcloc !1603
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1604, !srcloc !1607
  unreachable, !dbg !1608

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1609
  store i32 %45, i32* %index.i, align 4, !dbg !1610
  %46 = load i32, i32* %index.i, align 4, !dbg !1611
  %tobool.i = icmp ne i32 %46, 0, !dbg !1611
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1613

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1614
  br label %kmalloc.exit, !dbg !1614

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1615
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1616
  %and.i.i = and i32 %48, 17, !dbg !1616
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1616
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1616
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1616
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1616
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1618

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1619
  br label %kmalloc_type.exit.i, !dbg !1619

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1620
  %and2.i.i = and i32 %49, 1, !dbg !1621
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1620
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1620
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1620
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1622
  br label %kmalloc_type.exit.i, !dbg !1622

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1623
  %idxprom.i = zext i32 %51 to i64, !dbg !1624
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1624
  %52 = load i32, i32* %index.i, align 4, !dbg !1625
  %idxprom6.i = zext i32 %52 to i64, !dbg !1624
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1624
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1624
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1626
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1627
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1628
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1629
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1630
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1630
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1630
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1630
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1630
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1391
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1631
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1632
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1633
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1634
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1635
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1636
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1637
  store i8* %62, i8** %retval.i, align 8, !dbg !1638
  br label %kmalloc.exit, !dbg !1638

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1639
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1640
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1641
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1641
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1641
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1641
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1641
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1642
  br label %kmalloc.exit, !dbg !1642

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1643
  ret i8* %65, !dbg !1644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1645 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1649, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1652, metadata !DIExpression()), !dbg !1651
  %0 = load i64, i64* %__edi, align 8, !dbg !1651
  store i64 %0, i64* %__edi, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1653, metadata !DIExpression()), !dbg !1651
  %1 = load i64, i64* %__esi, align 8, !dbg !1651
  store i64 %1, i64* %__esi, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1654, metadata !DIExpression()), !dbg !1651
  %2 = load i64, i64* %__edx, align 8, !dbg !1651
  store i64 %2, i64* %__edx, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1655, metadata !DIExpression()), !dbg !1651
  %3 = load i64, i64* %__ecx, align 8, !dbg !1651
  store i64 %3, i64* %__ecx, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1656, metadata !DIExpression()), !dbg !1651
  %4 = load i64, i64* %__eax, align 8, !dbg !1651
  store i64 %4, i64* %__eax, align 8, !dbg !1651
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1651
  %6 = call i64 @llvm.read_register.i64(metadata !802), !dbg !1657
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1657, !srcloc !1660
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1657
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1657
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1657
  call void @llvm.write_register.i64(metadata !802, i64 %asmresult1), !dbg !1657
  %8 = load i64, i64* %__eax, align 8, !dbg !1657
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1661, metadata !DIExpression()), !dbg !1663
  store i64 -1, i64* %__mask, align 8, !dbg !1663
  %9 = load i64, i64* %__mask, align 8, !dbg !1663
  store i64 %9, i64* %tmp, align 8, !dbg !1663
  %10 = load i64, i64* %tmp, align 8, !dbg !1663
  %and = and i64 %8, %10, !dbg !1657
  store i64 %and, i64* %__ret, align 8, !dbg !1657
  %11 = load i64, i64* %__ret, align 8, !dbg !1651
  store i64 %11, i64* %tmp2, align 8, !dbg !1664
  %12 = load i64, i64* %tmp2, align 8, !dbg !1651
  ret i64 %12, !dbg !1665
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1666 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1668, metadata !DIExpression()), !dbg !1673
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1675, metadata !DIExpression()), !dbg !1676
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load i64, i64* %size.addr, align 8, !dbg !1679
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1681
  br i1 %1, label %if.then, label %if.end447, !dbg !1682

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1683
  %tobool = icmp ne i64 %2, 0, !dbg !1683
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1686

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1687
  br label %return, !dbg !1687

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1688
  %cmp = icmp ult i64 %3, 4096, !dbg !1690
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1691

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1692
  br label %return, !dbg !1692

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub = sub i64 %4, 1, !dbg !1693
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1693
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1693

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub4 = sub i64 %6, 1, !dbg !1693
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1693
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1693

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub6 = sub i64 %8, 1, !dbg !1693
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1693
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1693

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1693

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub9 = sub i64 %9, 1, !dbg !1693
  %and = and i64 %sub9, -9223372036854775808, !dbg !1693
  %tobool10 = icmp ne i64 %and, 0, !dbg !1693
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1693

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1693

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub13 = sub i64 %10, 1, !dbg !1693
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1693
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1693
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1693

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1693

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub18 = sub i64 %11, 1, !dbg !1693
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1693
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1693
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1693

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1693

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub23 = sub i64 %12, 1, !dbg !1693
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1693
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1693
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1693

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1693

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub28 = sub i64 %13, 1, !dbg !1693
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1693
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1693
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1693

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1693

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub33 = sub i64 %14, 1, !dbg !1693
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1693
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1693
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1693

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1693

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub38 = sub i64 %15, 1, !dbg !1693
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1693
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1693
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1693

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1693

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub43 = sub i64 %16, 1, !dbg !1693
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1693
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1693
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1693

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1693

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub48 = sub i64 %17, 1, !dbg !1693
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1693
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1693
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1693

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1693

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub53 = sub i64 %18, 1, !dbg !1693
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1693
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1693
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1693

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1693

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub58 = sub i64 %19, 1, !dbg !1693
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1693
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1693
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1693

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1693

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub63 = sub i64 %20, 1, !dbg !1693
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1693
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1693
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1693

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1693

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub68 = sub i64 %21, 1, !dbg !1693
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1693
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1693
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1693

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1693

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub73 = sub i64 %22, 1, !dbg !1693
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1693
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1693
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1693

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1693

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub78 = sub i64 %23, 1, !dbg !1693
  %and79 = and i64 %sub78, 562949953421312, !dbg !1693
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1693
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1693

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1693

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub83 = sub i64 %24, 1, !dbg !1693
  %and84 = and i64 %sub83, 281474976710656, !dbg !1693
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1693
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1693

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1693

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub88 = sub i64 %25, 1, !dbg !1693
  %and89 = and i64 %sub88, 140737488355328, !dbg !1693
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1693
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1693

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1693

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub93 = sub i64 %26, 1, !dbg !1693
  %and94 = and i64 %sub93, 70368744177664, !dbg !1693
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1693
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1693

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1693

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub98 = sub i64 %27, 1, !dbg !1693
  %and99 = and i64 %sub98, 35184372088832, !dbg !1693
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1693
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1693

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1693

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub103 = sub i64 %28, 1, !dbg !1693
  %and104 = and i64 %sub103, 17592186044416, !dbg !1693
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1693
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1693

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1693

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub108 = sub i64 %29, 1, !dbg !1693
  %and109 = and i64 %sub108, 8796093022208, !dbg !1693
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1693
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1693

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1693

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub113 = sub i64 %30, 1, !dbg !1693
  %and114 = and i64 %sub113, 4398046511104, !dbg !1693
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1693
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1693

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1693

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub118 = sub i64 %31, 1, !dbg !1693
  %and119 = and i64 %sub118, 2199023255552, !dbg !1693
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1693
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1693

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1693

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub123 = sub i64 %32, 1, !dbg !1693
  %and124 = and i64 %sub123, 1099511627776, !dbg !1693
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1693
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1693

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1693

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub128 = sub i64 %33, 1, !dbg !1693
  %and129 = and i64 %sub128, 549755813888, !dbg !1693
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1693
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1693

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1693

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub133 = sub i64 %34, 1, !dbg !1693
  %and134 = and i64 %sub133, 274877906944, !dbg !1693
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1693
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1693

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1693

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub138 = sub i64 %35, 1, !dbg !1693
  %and139 = and i64 %sub138, 137438953472, !dbg !1693
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1693
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1693

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1693

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub143 = sub i64 %36, 1, !dbg !1693
  %and144 = and i64 %sub143, 68719476736, !dbg !1693
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1693
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1693

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1693

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub148 = sub i64 %37, 1, !dbg !1693
  %and149 = and i64 %sub148, 34359738368, !dbg !1693
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1693
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1693

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1693

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub153 = sub i64 %38, 1, !dbg !1693
  %and154 = and i64 %sub153, 17179869184, !dbg !1693
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1693
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1693

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1693

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub158 = sub i64 %39, 1, !dbg !1693
  %and159 = and i64 %sub158, 8589934592, !dbg !1693
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1693
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1693

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1693

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub163 = sub i64 %40, 1, !dbg !1693
  %and164 = and i64 %sub163, 4294967296, !dbg !1693
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1693
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1693

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1693

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub168 = sub i64 %41, 1, !dbg !1693
  %and169 = and i64 %sub168, 2147483648, !dbg !1693
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1693
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1693

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1693

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub173 = sub i64 %42, 1, !dbg !1693
  %and174 = and i64 %sub173, 1073741824, !dbg !1693
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1693
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1693

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1693

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub178 = sub i64 %43, 1, !dbg !1693
  %and179 = and i64 %sub178, 536870912, !dbg !1693
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1693
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1693

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1693

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub183 = sub i64 %44, 1, !dbg !1693
  %and184 = and i64 %sub183, 268435456, !dbg !1693
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1693
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1693

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1693

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub188 = sub i64 %45, 1, !dbg !1693
  %and189 = and i64 %sub188, 134217728, !dbg !1693
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1693
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1693

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1693

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub193 = sub i64 %46, 1, !dbg !1693
  %and194 = and i64 %sub193, 67108864, !dbg !1693
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1693
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1693

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1693

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub198 = sub i64 %47, 1, !dbg !1693
  %and199 = and i64 %sub198, 33554432, !dbg !1693
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1693
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1693

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1693

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub203 = sub i64 %48, 1, !dbg !1693
  %and204 = and i64 %sub203, 16777216, !dbg !1693
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1693
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1693

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1693

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub208 = sub i64 %49, 1, !dbg !1693
  %and209 = and i64 %sub208, 8388608, !dbg !1693
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1693
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1693

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1693

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub213 = sub i64 %50, 1, !dbg !1693
  %and214 = and i64 %sub213, 4194304, !dbg !1693
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1693
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1693

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1693

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub218 = sub i64 %51, 1, !dbg !1693
  %and219 = and i64 %sub218, 2097152, !dbg !1693
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1693
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1693

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1693

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub223 = sub i64 %52, 1, !dbg !1693
  %and224 = and i64 %sub223, 1048576, !dbg !1693
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1693
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1693

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1693

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub228 = sub i64 %53, 1, !dbg !1693
  %and229 = and i64 %sub228, 524288, !dbg !1693
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1693
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1693

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1693

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub233 = sub i64 %54, 1, !dbg !1693
  %and234 = and i64 %sub233, 262144, !dbg !1693
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1693
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1693

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1693

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub238 = sub i64 %55, 1, !dbg !1693
  %and239 = and i64 %sub238, 131072, !dbg !1693
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1693
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1693

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1693

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub243 = sub i64 %56, 1, !dbg !1693
  %and244 = and i64 %sub243, 65536, !dbg !1693
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1693
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1693

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1693

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub248 = sub i64 %57, 1, !dbg !1693
  %and249 = and i64 %sub248, 32768, !dbg !1693
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1693
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1693

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1693

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub253 = sub i64 %58, 1, !dbg !1693
  %and254 = and i64 %sub253, 16384, !dbg !1693
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1693
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1693

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1693

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub258 = sub i64 %59, 1, !dbg !1693
  %and259 = and i64 %sub258, 8192, !dbg !1693
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1693
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1693

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1693

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub263 = sub i64 %60, 1, !dbg !1693
  %and264 = and i64 %sub263, 4096, !dbg !1693
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1693
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1693

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1693

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub268 = sub i64 %61, 1, !dbg !1693
  %and269 = and i64 %sub268, 2048, !dbg !1693
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1693
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1693

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1693

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub273 = sub i64 %62, 1, !dbg !1693
  %and274 = and i64 %sub273, 1024, !dbg !1693
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1693
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1693

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1693

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub278 = sub i64 %63, 1, !dbg !1693
  %and279 = and i64 %sub278, 512, !dbg !1693
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1693
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1693

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1693

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub283 = sub i64 %64, 1, !dbg !1693
  %and284 = and i64 %sub283, 256, !dbg !1693
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1693
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1693

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1693

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub288 = sub i64 %65, 1, !dbg !1693
  %and289 = and i64 %sub288, 128, !dbg !1693
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1693
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1693

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1693

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub293 = sub i64 %66, 1, !dbg !1693
  %and294 = and i64 %sub293, 64, !dbg !1693
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1693
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1693

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1693

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub298 = sub i64 %67, 1, !dbg !1693
  %and299 = and i64 %sub298, 32, !dbg !1693
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1693
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1693

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1693

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub303 = sub i64 %68, 1, !dbg !1693
  %and304 = and i64 %sub303, 16, !dbg !1693
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1693
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1693

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1693

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub308 = sub i64 %69, 1, !dbg !1693
  %and309 = and i64 %sub308, 8, !dbg !1693
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1693
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1693

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1693

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub313 = sub i64 %70, 1, !dbg !1693
  %and314 = and i64 %sub313, 4, !dbg !1693
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1693
  %71 = zext i1 %tobool315 to i64, !dbg !1693
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1693
  br label %cond.end, !dbg !1693

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1693
  br label %cond.end317, !dbg !1693

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1693
  br label %cond.end319, !dbg !1693

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1693
  br label %cond.end321, !dbg !1693

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1693
  br label %cond.end323, !dbg !1693

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1693
  br label %cond.end325, !dbg !1693

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1693
  br label %cond.end327, !dbg !1693

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1693
  br label %cond.end329, !dbg !1693

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1693
  br label %cond.end331, !dbg !1693

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1693
  br label %cond.end333, !dbg !1693

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1693
  br label %cond.end335, !dbg !1693

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1693
  br label %cond.end337, !dbg !1693

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1693
  br label %cond.end339, !dbg !1693

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1693
  br label %cond.end341, !dbg !1693

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1693
  br label %cond.end343, !dbg !1693

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1693
  br label %cond.end345, !dbg !1693

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1693
  br label %cond.end347, !dbg !1693

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1693
  br label %cond.end349, !dbg !1693

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1693
  br label %cond.end351, !dbg !1693

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1693
  br label %cond.end353, !dbg !1693

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1693
  br label %cond.end355, !dbg !1693

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1693
  br label %cond.end357, !dbg !1693

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1693
  br label %cond.end359, !dbg !1693

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1693
  br label %cond.end361, !dbg !1693

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1693
  br label %cond.end363, !dbg !1693

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1693
  br label %cond.end365, !dbg !1693

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1693
  br label %cond.end367, !dbg !1693

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1693
  br label %cond.end369, !dbg !1693

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1693
  br label %cond.end371, !dbg !1693

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1693
  br label %cond.end373, !dbg !1693

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1693
  br label %cond.end375, !dbg !1693

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1693
  br label %cond.end377, !dbg !1693

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1693
  br label %cond.end379, !dbg !1693

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1693
  br label %cond.end381, !dbg !1693

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1693
  br label %cond.end383, !dbg !1693

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1693
  br label %cond.end385, !dbg !1693

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1693
  br label %cond.end387, !dbg !1693

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1693
  br label %cond.end389, !dbg !1693

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1693
  br label %cond.end391, !dbg !1693

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1693
  br label %cond.end393, !dbg !1693

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1693
  br label %cond.end395, !dbg !1693

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1693
  br label %cond.end397, !dbg !1693

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1693
  br label %cond.end399, !dbg !1693

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1693
  br label %cond.end401, !dbg !1693

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1693
  br label %cond.end403, !dbg !1693

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1693
  br label %cond.end405, !dbg !1693

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1693
  br label %cond.end407, !dbg !1693

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1693
  br label %cond.end409, !dbg !1693

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1693
  br label %cond.end411, !dbg !1693

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1693
  br label %cond.end413, !dbg !1693

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1693
  br label %cond.end415, !dbg !1693

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1693
  br label %cond.end417, !dbg !1693

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1693
  br label %cond.end419, !dbg !1693

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1693
  br label %cond.end421, !dbg !1693

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1693
  br label %cond.end423, !dbg !1693

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1693
  br label %cond.end425, !dbg !1693

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1693
  br label %cond.end427, !dbg !1693

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1693
  br label %cond.end429, !dbg !1693

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1693
  br label %cond.end431, !dbg !1693

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1693
  br label %cond.end433, !dbg !1693

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1693
  br label %cond.end435, !dbg !1693

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1693
  br label %cond.end437, !dbg !1693

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1693
  br label %cond.end440, !dbg !1693

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1693

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1693
  br label %cond.end444, !dbg !1693

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1693
  %sub443 = sub i64 %72, 1, !dbg !1693
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1693
  br label %cond.end444, !dbg !1693

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1693
  %sub446 = sub i32 %cond445, 12, !dbg !1694
  %add = add i32 %sub446, 1, !dbg !1695
  store i32 %add, i32* %retval, align 4, !dbg !1696
  br label %return, !dbg !1696

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1697
  %dec = add i64 %73, -1, !dbg !1697
  store i64 %dec, i64* %size.addr, align 8, !dbg !1697
  %74 = load i64, i64* %size.addr, align 8, !dbg !1698
  %shr = lshr i64 %74, 12, !dbg !1698
  store i64 %shr, i64* %size.addr, align 8, !dbg !1698
  %75 = load i64, i64* %size.addr, align 8, !dbg !1699
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1676
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1700
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1701
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1700, !srcloc !1702
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1700
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1703
  %add.i = add i32 %79, 1, !dbg !1704
  store i32 %add.i, i32* %retval, align 4, !dbg !1705
  br label %return, !dbg !1705

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1706
  ret i32 %80, !dbg !1706
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1707 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1668, metadata !DIExpression()), !dbg !1711
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1675, metadata !DIExpression()), !dbg !1713
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1714, metadata !DIExpression()), !dbg !1715
  %0 = load i64, i64* %n.addr, align 8, !dbg !1716
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1713
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1717
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1718
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1717, !srcloc !1702
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1717
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1719
  %add.i = add i32 %4, 1, !dbg !1720
  %sub = sub i32 %add.i, 1, !dbg !1721
  ret i32 %sub, !dbg !1722
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1723 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1729, metadata !DIExpression()), !dbg !1730
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1733, metadata !DIExpression()), !dbg !1734
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1735, metadata !DIExpression()), !dbg !1736
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1737
  ret i8* %0, !dbg !1738
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_externalize_name(i32, i8*, i32*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1739 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1742, metadata !DIExpression()), !dbg !1743
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1744
  call void @kfree(i8* %0) #8, !dbg !1745
  ret void, !dbg !1746
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_node_to_value(%struct.acpi_namespace_node**, %struct.acpi_walk_state*) #2

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
!llvm.named.register.rsp = !{!802}
!llvm.module.flags = !{!803, !804, !805, !806}
!llvm.ident = !{!807}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !798, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !797, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dspkginit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 116, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!19 = !{!20, !26, !29, !33, !131, !22, !87, !118, !794, !796, !70}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !21, line: 421, baseType: !22)
!21 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !21, line: 127, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !35, line: 367, size: 576, elements: !36)
!35 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !48, !61, !73, !108, !122, !132, !445, !462, !477, !490, !568, !580, !594, !604, !622, !644, !663, !682, !701, !714, !740, !757, !770, !784, !793}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !34, file: !35, line: 368, baseType: !38, size: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !35, line: 73, size: 128, elements: !39)
!39 = !{!40, !41, !45, !46, !47}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !35, line: 74, baseType: !33, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !35, line: 74, baseType: !42, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !35, line: 74, baseType: !42, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !35, line: 74, baseType: !26, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !35, line: 74, baseType: !42, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !34, file: !35, line: 369, baseType: !49, size: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !35, line: 76, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !35, line: 77, baseType: !33, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !35, line: 77, baseType: !42, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !35, line: 77, baseType: !42, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !35, line: 77, baseType: !26, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !35, line: 77, baseType: !42, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !49, file: !35, line: 77, baseType: !57, size: 24, offset: 104)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !35, line: 78, baseType: !30, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !34, file: !35, line: 370, baseType: !62, size: 256)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !35, line: 93, size: 256, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !72}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !35, line: 94, baseType: !33, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !35, line: 94, baseType: !42, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !35, line: 94, baseType: !42, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !35, line: 94, baseType: !26, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !35, line: 94, baseType: !42, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !62, file: !35, line: 94, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !35, line: 94, baseType: !22, size: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !34, file: !35, line: 371, baseType: !74, size: 384)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !35, line: 97, size: 384, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !83, !84, !85, !86}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !35, line: 98, baseType: !33, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !35, line: 98, baseType: !42, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !35, line: 98, baseType: !42, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !35, line: 98, baseType: !26, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !35, line: 98, baseType: !42, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !35, line: 98, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !35, line: 98, baseType: !22, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !74, file: !35, line: 99, baseType: !22, size: 32, offset: 224)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !74, file: !35, line: 100, baseType: !82, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !35, line: 101, baseType: !87, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !14, line: 133, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !103, !104, !105, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !88, file: !14, line: 134, baseType: !33, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !14, line: 135, baseType: !42, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !14, line: 136, baseType: !42, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !14, line: 137, baseType: !26, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !14, line: 138, baseType: !95, size: 32, offset: 96)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !96, line: 327, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !95, file: !96, line: 328, baseType: !22, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !95, file: !96, line: 329, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !14, line: 139, baseType: !87, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !88, file: !14, line: 140, baseType: !87, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !88, file: !14, line: 141, baseType: !87, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !88, file: !14, line: 142, baseType: !107, size: 16, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !21, line: 445, baseType: !26)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !34, file: !35, line: 372, baseType: !109, size: 384)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !35, line: 104, size: 384, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !119, !120, !121}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !35, line: 105, baseType: !33, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !35, line: 105, baseType: !42, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !35, line: 105, baseType: !42, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !35, line: 105, baseType: !26, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !35, line: 105, baseType: !42, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !35, line: 105, baseType: !87, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !109, file: !35, line: 106, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !109, file: !35, line: 107, baseType: !82, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !109, file: !35, line: 108, baseType: !22, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !109, file: !35, line: 109, baseType: !22, size: 32, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !34, file: !35, line: 373, baseType: !123, size: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !35, line: 118, size: 192, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !35, line: 119, baseType: !33, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !35, line: 119, baseType: !42, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !35, line: 119, baseType: !42, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !35, line: 119, baseType: !26, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !35, line: 119, baseType: !42, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !123, file: !35, line: 119, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !34, file: !35, line: 374, baseType: !133, size: 448)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !35, line: 143, size: 448, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !442, !443, !444}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !35, line: 144, baseType: !33, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !35, line: 144, baseType: !42, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !35, line: 144, baseType: !42, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !35, line: 144, baseType: !26, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !35, line: 144, baseType: !42, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !133, file: !35, line: 144, baseType: !42, size: 8, offset: 104)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !133, file: !35, line: 145, baseType: !42, size: 8, offset: 112)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !133, file: !35, line: 146, baseType: !42, size: 8, offset: 120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !35, line: 147, baseType: !33, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !35, line: 148, baseType: !33, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !35, line: 149, baseType: !82, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !133, file: !35, line: 153, baseType: !147, size: 64, offset: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !35, line: 150, size: 64, elements: !148)
!148 = !{!149, !441}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !147, file: !35, line: 151, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !14, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!20, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !156, line: 37, size: 9024, elements: !157)
!156 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !387, !388, !389, !390, !391, !395, !397, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !424, !425, !426, !427, !428, !429, !430, !431, !433, !439}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 38, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !156, line: 39, baseType: !42, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !155, file: !156, line: 40, baseType: !42, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !155, file: !156, line: 41, baseType: !26, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !155, file: !156, line: 42, baseType: !42, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !155, file: !156, line: 43, baseType: !42, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !155, file: !156, line: 44, baseType: !42, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !155, file: !156, line: 45, baseType: !107, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !155, file: !156, line: 46, baseType: !42, size: 8, offset: 144)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !155, file: !156, line: 47, baseType: !42, size: 8, offset: 152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !155, file: !156, line: 48, baseType: !42, size: 8, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !155, file: !156, line: 49, baseType: !42, size: 8, offset: 168)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !155, file: !156, line: 50, baseType: !42, size: 8, offset: 176)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !155, file: !156, line: 51, baseType: !42, size: 8, offset: 184)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !155, file: !156, line: 52, baseType: !42, size: 8, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !155, file: !156, line: 53, baseType: !42, size: 8, offset: 200)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !155, file: !156, line: 54, baseType: !82, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !155, file: !156, line: 55, baseType: !22, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !155, file: !156, line: 56, baseType: !22, size: 32, offset: 352)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !155, file: !156, line: 57, baseType: !22, size: 32, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !155, file: !156, line: 58, baseType: !22, size: 32, offset: 416)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !155, file: !156, line: 60, baseType: !180, size: 640, offset: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !14, line: 893, size: 640, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !268, !269, !385, !386}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !180, file: !14, line: 894, baseType: !82, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !180, file: !14, line: 895, baseType: !82, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !180, file: !14, line: 896, baseType: !82, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !180, file: !14, line: 897, baseType: !82, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !180, file: !14, line: 898, baseType: !82, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !180, file: !14, line: 899, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !14, line: 875, size: 1600, elements: !190)
!190 = !{!191, !211, !227}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !189, file: !14, line: 876, baseType: !192, size: 448)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !14, line: 828, size: 448, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !210}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !14, line: 829, baseType: !188, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !14, line: 829, baseType: !42, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !14, line: 829, baseType: !42, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !192, file: !14, line: 829, baseType: !26, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !14, line: 829, baseType: !82, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !14, line: 829, baseType: !188, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !14, line: 829, baseType: !87, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !192, file: !14, line: 829, baseType: !202, size: 64, offset: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !14, line: 716, size: 64, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !202, file: !14, line: 717, baseType: !30, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !202, file: !14, line: 718, baseType: !22, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !202, file: !14, line: 719, baseType: !70, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !202, file: !14, line: 720, baseType: !82, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !14, line: 721, baseType: !70, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !202, file: !14, line: 722, baseType: !188, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !192, file: !14, line: 829, baseType: !42, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !189, file: !14, line: 877, baseType: !212, size: 640)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !14, line: 835, size: 640, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !14, line: 836, baseType: !188, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !14, line: 836, baseType: !42, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !14, line: 836, baseType: !42, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !212, file: !14, line: 836, baseType: !26, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !212, file: !14, line: 836, baseType: !82, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !14, line: 836, baseType: !188, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !14, line: 836, baseType: !87, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !212, file: !14, line: 836, baseType: !202, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !212, file: !14, line: 836, baseType: !42, size: 8, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !212, file: !14, line: 836, baseType: !70, size: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !212, file: !14, line: 837, baseType: !82, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !212, file: !14, line: 838, baseType: !22, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !14, line: 839, baseType: !22, size: 32, offset: 608)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !189, file: !14, line: 878, baseType: !228, size: 1600)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !14, line: 846, size: 1600, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !14, line: 847, baseType: !188, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !14, line: 847, baseType: !42, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !14, line: 847, baseType: !42, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !228, file: !14, line: 847, baseType: !26, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !228, file: !14, line: 847, baseType: !82, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !14, line: 847, baseType: !188, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !14, line: 847, baseType: !87, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !14, line: 847, baseType: !202, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !228, file: !14, line: 847, baseType: !42, size: 8, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !228, file: !14, line: 847, baseType: !188, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !228, file: !14, line: 848, baseType: !188, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !228, file: !14, line: 849, baseType: !70, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !228, file: !14, line: 850, baseType: !42, size: 8, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !228, file: !14, line: 851, baseType: !70, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !228, file: !14, line: 852, baseType: !70, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !228, file: !14, line: 853, baseType: !70, size: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !228, file: !14, line: 854, baseType: !100, size: 32, offset: 896)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !228, file: !14, line: 855, baseType: !22, size: 32, offset: 928)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !228, file: !14, line: 856, baseType: !22, size: 32, offset: 960)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !228, file: !14, line: 857, baseType: !22, size: 32, offset: 992)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !228, file: !14, line: 858, baseType: !22, size: 32, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !228, file: !14, line: 859, baseType: !22, size: 32, offset: 1056)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !228, file: !14, line: 860, baseType: !22, size: 32, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !228, file: !14, line: 861, baseType: !22, size: 32, offset: 1120)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !228, file: !14, line: 862, baseType: !22, size: 32, offset: 1152)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !228, file: !14, line: 863, baseType: !22, size: 32, offset: 1184)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !228, file: !14, line: 864, baseType: !22, size: 32, offset: 1216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !228, file: !14, line: 865, baseType: !22, size: 32, offset: 1248)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !228, file: !14, line: 866, baseType: !22, size: 32, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !228, file: !14, line: 867, baseType: !22, size: 32, offset: 1312)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !228, file: !14, line: 868, baseType: !26, size: 16, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !228, file: !14, line: 869, baseType: !42, size: 8, offset: 1360)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !228, file: !14, line: 870, baseType: !42, size: 8, offset: 1368)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !228, file: !14, line: 871, baseType: !42, size: 8, offset: 1376)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !228, file: !14, line: 872, baseType: !265, size: 160, offset: 1384)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !180, file: !14, line: 900, baseType: !87, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !180, file: !14, line: 901, baseType: !270, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !14, line: 663, size: 640, elements: !272)
!272 = !{!273, !281, !294, !303, !312, !325, !339, !351, !363}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !271, file: !14, line: 664, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !14, line: 567, size: 128, elements: !275)
!275 = !{!276, !277, !278, !279, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !14, line: 568, baseType: !131, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !14, line: 568, baseType: !42, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !14, line: 568, baseType: !42, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !14, line: 568, baseType: !26, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !14, line: 568, baseType: !26, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !271, file: !14, line: 665, baseType: !282, size: 384)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !14, line: 593, size: 384, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !14, line: 594, baseType: !131, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !14, line: 594, baseType: !42, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !14, line: 594, baseType: !42, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !14, line: 594, baseType: !26, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !14, line: 594, baseType: !26, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !282, file: !14, line: 594, baseType: !26, size: 16, offset: 112)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !282, file: !14, line: 595, baseType: !188, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !282, file: !14, line: 596, baseType: !82, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !282, file: !14, line: 597, baseType: !82, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !282, file: !14, line: 598, baseType: !30, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !271, file: !14, line: 666, baseType: !295, size: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !14, line: 573, size: 192, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !14, line: 574, baseType: !131, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !14, line: 574, baseType: !42, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !14, line: 574, baseType: !42, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !14, line: 574, baseType: !26, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !14, line: 574, baseType: !26, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !295, file: !14, line: 574, baseType: !33, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !271, file: !14, line: 667, baseType: !304, size: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !14, line: 604, size: 192, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !14, line: 605, baseType: !131, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !14, line: 605, baseType: !42, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !14, line: 605, baseType: !42, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !14, line: 605, baseType: !26, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !14, line: 605, baseType: !26, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !304, file: !14, line: 605, baseType: !87, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !271, file: !14, line: 668, baseType: !313, size: 448)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !14, line: 608, size: 448, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !14, line: 609, baseType: !131, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !14, line: 609, baseType: !42, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !14, line: 609, baseType: !42, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !14, line: 609, baseType: !26, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !14, line: 609, baseType: !26, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !313, file: !14, line: 609, baseType: !22, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !313, file: !14, line: 610, baseType: !188, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !313, file: !14, line: 611, baseType: !82, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !313, file: !14, line: 612, baseType: !82, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !313, file: !14, line: 613, baseType: !22, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !271, file: !14, line: 669, baseType: !326, size: 512)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !14, line: 580, size: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !14, line: 581, baseType: !131, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !14, line: 581, baseType: !42, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !14, line: 581, baseType: !42, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !14, line: 581, baseType: !26, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !14, line: 581, baseType: !26, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !326, file: !14, line: 581, baseType: !22, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !326, file: !14, line: 582, baseType: !33, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !326, file: !14, line: 583, baseType: !33, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !326, file: !14, line: 584, baseType: !154, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !326, file: !14, line: 585, baseType: !131, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !326, file: !14, line: 586, baseType: !22, size: 32, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !271, file: !14, line: 670, baseType: !340, size: 320)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !14, line: 620, size: 320, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !14, line: 621, baseType: !131, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !14, line: 621, baseType: !42, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !14, line: 621, baseType: !42, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !14, line: 621, baseType: !26, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !14, line: 621, baseType: !26, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !340, file: !14, line: 621, baseType: !42, size: 8, offset: 112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !340, file: !14, line: 622, baseType: !154, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !340, file: !14, line: 623, baseType: !33, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !340, file: !14, line: 624, baseType: !30, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !271, file: !14, line: 671, baseType: !352, size: 640)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !14, line: 631, size: 640, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !14, line: 632, baseType: !131, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !14, line: 632, baseType: !42, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !14, line: 632, baseType: !42, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !14, line: 632, baseType: !26, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !14, line: 632, baseType: !26, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !352, file: !14, line: 633, baseType: !360, size: 512, offset: 128)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !271, file: !14, line: 672, baseType: !364, size: 320)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !14, line: 654, size: 320, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !14, line: 655, baseType: !131, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !14, line: 655, baseType: !42, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !14, line: 655, baseType: !42, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !14, line: 655, baseType: !26, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !14, line: 655, baseType: !26, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !364, file: !14, line: 655, baseType: !42, size: 8, offset: 112)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !364, file: !14, line: 656, baseType: !87, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !364, file: !14, line: 657, baseType: !33, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !364, file: !14, line: 658, baseType: !375, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !14, line: 645, size: 128, elements: !377)
!377 = !{!378, !384}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !376, file: !14, line: 646, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !21, line: 1052, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383, !22, !131}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !21, line: 424, baseType: !131)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !376, file: !14, line: 647, baseType: !131, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !180, file: !14, line: 902, baseType: !188, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !180, file: !14, line: 903, baseType: !22, size: 32, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !155, file: !156, line: 61, baseType: !22, size: 32, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !155, file: !156, line: 62, baseType: !22, size: 32, offset: 1120)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !155, file: !156, line: 63, baseType: !26, size: 16, offset: 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !155, file: !156, line: 64, baseType: !42, size: 8, offset: 1168)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !155, file: !156, line: 66, baseType: !392, size: 2688, offset: 1216)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2688, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 7)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !155, file: !156, line: 67, baseType: !396, size: 3072, offset: 3904)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 3072, elements: !361)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !155, file: !156, line: 68, baseType: !398, size: 576, offset: 6976)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 576, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 9)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !155, file: !156, line: 69, baseType: !118, size: 64, offset: 7552)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !155, file: !156, line: 71, baseType: !82, size: 64, offset: 7616)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !155, file: !156, line: 72, baseType: !118, size: 64, offset: 7680)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !155, file: !156, line: 73, baseType: !270, size: 64, offset: 7744)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !155, file: !156, line: 74, baseType: !87, size: 64, offset: 7808)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !155, file: !156, line: 75, baseType: !33, size: 64, offset: 7872)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !155, file: !156, line: 76, baseType: !87, size: 64, offset: 7936)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !155, file: !156, line: 77, baseType: !188, size: 64, offset: 8000)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !155, file: !156, line: 78, baseType: !33, size: 64, offset: 8064)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !155, file: !156, line: 79, baseType: !87, size: 64, offset: 8128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !155, file: !156, line: 80, baseType: !70, size: 64, offset: 8192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !155, file: !156, line: 81, baseType: !188, size: 64, offset: 8256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !155, file: !156, line: 82, baseType: !414, size: 64, offset: 8320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !14, line: 702, size: 128, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !416, file: !14, line: 706, baseType: !22, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !416, file: !14, line: 707, baseType: !22, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !14, line: 708, baseType: !26, size: 16, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !416, file: !14, line: 709, baseType: !42, size: 8, offset: 80)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !416, file: !14, line: 710, baseType: !42, size: 8, offset: 88)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !14, line: 711, baseType: !42, size: 8, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !155, file: !156, line: 83, baseType: !188, size: 64, offset: 8384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !155, file: !156, line: 84, baseType: !33, size: 64, offset: 8448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !155, file: !156, line: 85, baseType: !270, size: 64, offset: 8512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !155, file: !156, line: 86, baseType: !33, size: 64, offset: 8576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !155, file: !156, line: 87, baseType: !270, size: 64, offset: 8640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !155, file: !156, line: 88, baseType: !188, size: 64, offset: 8704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !155, file: !156, line: 89, baseType: !188, size: 64, offset: 8768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !155, file: !156, line: 90, baseType: !432, size: 64, offset: 8832)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !155, file: !156, line: 91, baseType: !434, size: 64, offset: 8896)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !14, line: 637, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!20, !154, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !155, file: !156, line: 92, baseType: !440, size: 64, offset: 8960)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !14, line: 641, baseType: !151)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !147, file: !35, line: 152, baseType: !33, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !35, line: 155, baseType: !22, size: 32, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !133, file: !35, line: 156, baseType: !107, size: 16, offset: 416)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !133, file: !35, line: 157, baseType: !42, size: 8, offset: 432)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !34, file: !35, line: 375, baseType: !446, size: 576)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !35, line: 122, size: 576, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !35, line: 123, baseType: !33, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !35, line: 123, baseType: !42, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !35, line: 123, baseType: !42, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !35, line: 123, baseType: !26, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !35, line: 123, baseType: !42, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !446, file: !35, line: 123, baseType: !42, size: 8, offset: 104)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !446, file: !35, line: 124, baseType: !26, size: 16, offset: 112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !446, file: !35, line: 125, baseType: !131, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !446, file: !35, line: 126, baseType: !30, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !446, file: !35, line: 127, baseType: !432, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !446, file: !35, line: 128, baseType: !33, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !35, line: 129, baseType: !33, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !35, line: 130, baseType: !87, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !446, file: !35, line: 131, baseType: !42, size: 8, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !34, file: !35, line: 376, baseType: !463, size: 448)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !35, line: 134, size: 448, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !476}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !35, line: 135, baseType: !33, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !35, line: 135, baseType: !42, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !35, line: 135, baseType: !42, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !35, line: 135, baseType: !26, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !35, line: 135, baseType: !42, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !463, file: !35, line: 135, baseType: !42, size: 8, offset: 104)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !35, line: 136, baseType: !87, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !35, line: 137, baseType: !33, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !35, line: 138, baseType: !33, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !463, file: !35, line: 139, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !21, line: 129, baseType: !30)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !463, file: !35, line: 140, baseType: !22, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !34, file: !35, line: 377, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !35, line: 184, size: 320, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !489}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !35, line: 185, baseType: !33, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !35, line: 185, baseType: !42, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !35, line: 185, baseType: !42, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !35, line: 185, baseType: !26, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !35, line: 185, baseType: !42, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !478, file: !35, line: 185, baseType: !486, size: 128, offset: 128)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 2)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !35, line: 185, baseType: !33, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !34, file: !35, line: 378, baseType: !491, size: 384)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !35, line: 187, size: 384, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !35, line: 188, baseType: !33, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !35, line: 188, baseType: !42, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !35, line: 188, baseType: !42, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !35, line: 188, baseType: !26, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !35, line: 188, baseType: !42, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !35, line: 189, baseType: !486, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !35, line: 189, baseType: !33, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !491, file: !35, line: 189, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !14, line: 480, size: 576, elements: !503)
!503 = !{!504, !505, !506, !507, !515, !530, !562, !563, !564, !565, !566, !567}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !14, line: 481, baseType: !87, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !502, file: !14, line: 482, baseType: !501, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !14, line: 483, baseType: !501, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !502, file: !14, line: 484, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !14, line: 497, size: 256, elements: !510)
!510 = !{!511, !512, !513, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !14, line: 498, baseType: !508, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !14, line: 499, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !509, file: !14, line: 500, baseType: !501, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !509, file: !14, line: 501, baseType: !22, size: 32, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !502, file: !14, line: 485, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !14, line: 466, size: 320, elements: !518)
!518 = !{!519, !524, !525, !526, !527, !528, !529}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !517, file: !14, line: 467, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !14, line: 459, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !520, file: !14, line: 460, baseType: !42, size: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !14, line: 461, baseType: !30, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !517, file: !14, line: 468, baseType: !520, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !517, file: !14, line: 469, baseType: !26, size: 16, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !517, file: !14, line: 470, baseType: !42, size: 8, offset: 272)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !517, file: !14, line: 471, baseType: !42, size: 8, offset: 280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !517, file: !14, line: 472, baseType: !42, size: 8, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !517, file: !14, line: 473, baseType: !42, size: 8, offset: 296)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !502, file: !14, line: 486, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !14, line: 448, size: 192, elements: !533)
!533 = !{!534, !557, !558, !559, !560, !561}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !532, file: !14, line: 449, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !14, line: 438, size: 64, elements: !536)
!536 = !{!537, !538, !551}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !535, file: !14, line: 439, baseType: !87, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !535, file: !14, line: 440, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !14, line: 419, size: 256, elements: !541)
!541 = !{!542, !547, !548, !549, !550}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !540, file: !14, line: 420, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !21, line: 1049, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!22, !383, !22, !131}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !540, file: !14, line: 421, baseType: !131, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !540, file: !14, line: 422, baseType: !87, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !540, file: !14, line: 423, baseType: !42, size: 8, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !540, file: !14, line: 424, baseType: !42, size: 8, offset: 200)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !535, file: !14, line: 441, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !14, line: 429, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !553, file: !14, line: 430, baseType: !87, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !14, line: 431, baseType: !552, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !532, file: !14, line: 450, baseType: !516, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !14, line: 451, baseType: !42, size: 8, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !532, file: !14, line: 452, baseType: !42, size: 8, offset: 136)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !532, file: !14, line: 453, baseType: !42, size: 8, offset: 144)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !532, file: !14, line: 454, baseType: !42, size: 8, offset: 152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !14, line: 487, baseType: !30, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !502, file: !14, line: 488, baseType: !22, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !502, file: !14, line: 489, baseType: !26, size: 16, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !502, file: !14, line: 490, baseType: !26, size: 16, offset: 496)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !14, line: 491, baseType: !42, size: 8, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !502, file: !14, line: 492, baseType: !42, size: 8, offset: 520)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !34, file: !35, line: 379, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !35, line: 192, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !35, line: 193, baseType: !33, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !35, line: 193, baseType: !42, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !35, line: 193, baseType: !42, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !35, line: 193, baseType: !26, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !35, line: 193, baseType: !42, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !35, line: 193, baseType: !486, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !35, line: 193, baseType: !33, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !569, file: !35, line: 193, baseType: !22, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !569, file: !35, line: 194, baseType: !22, size: 32, offset: 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !34, file: !35, line: 380, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !35, line: 197, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !35, line: 198, baseType: !33, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !35, line: 198, baseType: !42, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !35, line: 198, baseType: !42, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !35, line: 198, baseType: !26, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !35, line: 198, baseType: !42, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !581, file: !35, line: 200, baseType: !42, size: 8, offset: 104)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !581, file: !35, line: 201, baseType: !42, size: 8, offset: 112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !35, line: 202, baseType: !486, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !35, line: 202, baseType: !33, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !581, file: !35, line: 202, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !21, line: 128, baseType: !30)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !34, file: !35, line: 381, baseType: !595, size: 320)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !35, line: 205, size: 320, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !35, line: 206, baseType: !33, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !35, line: 206, baseType: !42, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !35, line: 206, baseType: !42, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !35, line: 206, baseType: !26, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !35, line: 206, baseType: !42, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !595, file: !35, line: 206, baseType: !486, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !595, file: !35, line: 206, baseType: !33, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !34, file: !35, line: 382, baseType: !605, size: 384)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !35, line: 233, size: 384, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !35, line: 234, baseType: !33, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !35, line: 234, baseType: !26, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 120)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !35, line: 234, baseType: !87, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !605, file: !35, line: 234, baseType: !22, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !605, file: !35, line: 234, baseType: !22, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !35, line: 234, baseType: !22, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !605, file: !35, line: 234, baseType: !42, size: 8, offset: 296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !605, file: !35, line: 234, baseType: !33, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !34, file: !35, line: 383, baseType: !623, size: 576)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !35, line: 237, size: 576, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !35, line: 238, baseType: !33, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !35, line: 238, baseType: !26, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !35, line: 238, baseType: !87, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !35, line: 238, baseType: !22, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !35, line: 238, baseType: !22, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !35, line: 238, baseType: !22, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !35, line: 238, baseType: !42, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !623, file: !35, line: 238, baseType: !26, size: 16, offset: 304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !623, file: !35, line: 239, baseType: !33, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !623, file: !35, line: 240, baseType: !82, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !623, file: !35, line: 241, baseType: !26, size: 16, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !623, file: !35, line: 242, baseType: !82, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !34, file: !35, line: 384, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !35, line: 262, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !35, line: 263, baseType: !33, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !35, line: 263, baseType: !26, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !35, line: 263, baseType: !87, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !35, line: 263, baseType: !22, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !35, line: 263, baseType: !22, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !35, line: 263, baseType: !22, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !645, file: !35, line: 263, baseType: !42, size: 8, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !645, file: !35, line: 264, baseType: !33, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !34, file: !35, line: 385, baseType: !664, size: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !35, line: 245, size: 448, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !35, line: 246, baseType: !33, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !35, line: 246, baseType: !26, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 120)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !664, file: !35, line: 246, baseType: !87, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !664, file: !35, line: 246, baseType: !22, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !664, file: !35, line: 246, baseType: !22, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !35, line: 246, baseType: !22, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !664, file: !35, line: 246, baseType: !42, size: 8, offset: 296)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !664, file: !35, line: 246, baseType: !33, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !664, file: !35, line: 247, baseType: !33, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !34, file: !35, line: 386, baseType: !683, size: 448)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !35, line: 250, size: 448, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !35, line: 251, baseType: !33, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !35, line: 251, baseType: !26, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 120)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !35, line: 251, baseType: !87, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !683, file: !35, line: 251, baseType: !22, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !683, file: !35, line: 251, baseType: !22, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !35, line: 251, baseType: !22, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !683, file: !35, line: 251, baseType: !42, size: 8, offset: 296)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !683, file: !35, line: 256, baseType: !33, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !683, file: !35, line: 257, baseType: !33, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !34, file: !35, line: 387, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !35, line: 273, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !35, line: 274, baseType: !33, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !35, line: 274, baseType: !42, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !35, line: 274, baseType: !42, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !35, line: 274, baseType: !26, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !35, line: 274, baseType: !42, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !35, line: 274, baseType: !87, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !702, file: !35, line: 275, baseType: !22, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !702, file: !35, line: 276, baseType: !379, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !702, file: !35, line: 277, baseType: !131, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !35, line: 278, baseType: !486, size: 128, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !34, file: !35, line: 388, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !35, line: 281, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !730, !731, !732, !738, !739}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !35, line: 282, baseType: !33, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !35, line: 282, baseType: !42, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !35, line: 282, baseType: !42, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !35, line: 282, baseType: !26, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !35, line: 282, baseType: !42, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !715, file: !35, line: 282, baseType: !42, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !715, file: !35, line: 283, baseType: !42, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !35, line: 284, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !21, line: 1084, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!20, !22, !475, !22, !729, !131, !131}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !35, line: 285, baseType: !87, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !35, line: 286, baseType: !131, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !715, file: !35, line: 287, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !21, line: 1102, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!20, !383, !22, !131, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !715, file: !35, line: 288, baseType: !33, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !35, line: 289, baseType: !33, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !34, file: !35, line: 389, baseType: !741, size: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !35, line: 307, size: 512, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !741, file: !35, line: 308, baseType: !33, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !35, line: 308, baseType: !42, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !741, file: !35, line: 308, baseType: !42, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !741, file: !35, line: 308, baseType: !26, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !35, line: 308, baseType: !42, size: 8, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !741, file: !35, line: 308, baseType: !42, size: 8, offset: 104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !741, file: !35, line: 309, baseType: !42, size: 8, offset: 112)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !741, file: !35, line: 310, baseType: !42, size: 8, offset: 120)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !741, file: !35, line: 311, baseType: !131, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !35, line: 312, baseType: !87, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !741, file: !35, line: 313, baseType: !118, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !741, file: !35, line: 314, baseType: !82, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !741, file: !35, line: 315, baseType: !82, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !741, file: !35, line: 316, baseType: !22, size: 32, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !34, file: !35, line: 390, baseType: !758, size: 448)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !35, line: 340, size: 448, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !35, line: 341, baseType: !33, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !35, line: 341, baseType: !42, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !35, line: 341, baseType: !42, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !35, line: 341, baseType: !26, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !35, line: 341, baseType: !42, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !758, file: !35, line: 341, baseType: !87, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !758, file: !35, line: 342, baseType: !87, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !758, file: !35, line: 343, baseType: !131, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !758, file: !35, line: 344, baseType: !82, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !758, file: !35, line: 345, baseType: !22, size: 32, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !35, line: 391, baseType: !771, size: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !35, line: 350, size: 256, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !783}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !35, line: 351, baseType: !33, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !35, line: 351, baseType: !42, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !35, line: 351, baseType: !42, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !35, line: 351, baseType: !26, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !35, line: 351, baseType: !42, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !771, file: !35, line: 351, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !21, line: 1055, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !383, !131}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !771, file: !35, line: 352, baseType: !131, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !34, file: !35, line: 392, baseType: !785, size: 192)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !35, line: 357, size: 192, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !35, line: 358, baseType: !33, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !35, line: 358, baseType: !42, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !35, line: 358, baseType: !42, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !35, line: 358, baseType: !26, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !35, line: 358, baseType: !42, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !35, line: 358, baseType: !33, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !34, file: !35, line: 399, baseType: !88, size: 384)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !795, line: 148, baseType: !7)
!795 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!796 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!797 = !{!0}
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 80, elements: !800)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!800 = !{!801}
!801 = !DISubrange(count: 10)
!802 = !{!"rsp"}
!803 = !{i32 7, !"Dwarf Version", i32 4}
!804 = !{i32 2, !"Debug Info Version", i32 3}
!805 = !{i32 1, !"wchar_size", i32 2}
!806 = !{i32 1, !"Code Model", i32 2}
!807 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!808 = distinct !DISubprogram(name: "acpi_ds_build_internal_package_obj", scope: !3, file: !3, line: 55, type: !809, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{!20, !154, !188, !22, !118}
!811 = !{}
!812 = !DILocalVariable(name: "walk_state", arg: 1, scope: !808, file: !3, line: 55, type: !154)
!813 = !DILocation(line: 55, column: 60, scope: !808)
!814 = !DILocalVariable(name: "op", arg: 2, scope: !808, file: !3, line: 56, type: !188)
!815 = !DILocation(line: 56, column: 33, scope: !808)
!816 = !DILocalVariable(name: "element_count", arg: 3, scope: !808, file: !3, line: 57, type: !22)
!817 = !DILocation(line: 57, column: 12, scope: !808)
!818 = !DILocalVariable(name: "obj_desc_ptr", arg: 4, scope: !808, file: !3, line: 58, type: !118)
!819 = !DILocation(line: 58, column: 36, scope: !808)
!820 = !DILocalVariable(name: "arg", scope: !808, file: !3, line: 60, type: !188)
!821 = !DILocation(line: 60, column: 27, scope: !808)
!822 = !DILocalVariable(name: "parent", scope: !808, file: !3, line: 61, type: !188)
!823 = !DILocation(line: 61, column: 27, scope: !808)
!824 = !DILocalVariable(name: "obj_desc", scope: !808, file: !3, line: 62, type: !33)
!825 = !DILocation(line: 62, column: 29, scope: !808)
!826 = !DILocalVariable(name: "status", scope: !808, file: !3, line: 63, type: !20)
!827 = !DILocation(line: 63, column: 14, scope: !808)
!828 = !DILocalVariable(name: "module_level_code", scope: !808, file: !3, line: 64, type: !42)
!829 = !DILocation(line: 64, column: 5, scope: !808)
!830 = !DILocalVariable(name: "reference_count", scope: !808, file: !3, line: 65, type: !26)
!831 = !DILocation(line: 65, column: 6, scope: !808)
!832 = !DILocalVariable(name: "index", scope: !808, file: !3, line: 66, type: !22)
!833 = !DILocation(line: 66, column: 6, scope: !808)
!834 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 67, type: !22)
!835 = !DILocation(line: 67, column: 6, scope: !808)
!836 = !DILocation(line: 73, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !808, file: !3, line: 73, column: 6)
!838 = !DILocation(line: 73, column: 18, scope: !837)
!839 = !DILocation(line: 73, column: 30, scope: !837)
!840 = !DILocation(line: 73, column: 6, scope: !808)
!841 = !DILocation(line: 74, column: 21, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 73, column: 57)
!843 = !DILocation(line: 75, column: 2, scope: !842)
!844 = !DILocation(line: 79, column: 11, scope: !808)
!845 = !DILocation(line: 79, column: 15, scope: !808)
!846 = !DILocation(line: 79, column: 22, scope: !808)
!847 = !DILocation(line: 79, column: 9, scope: !808)
!848 = !DILocation(line: 80, column: 2, scope: !808)
!849 = !DILocation(line: 80, column: 10, scope: !808)
!850 = !DILocation(line: 80, column: 18, scope: !808)
!851 = !DILocation(line: 80, column: 25, scope: !808)
!852 = !DILocation(line: 80, column: 36, scope: !808)
!853 = !DILocation(line: 80, column: 55, scope: !808)
!854 = !DILocation(line: 81, column: 10, scope: !808)
!855 = !DILocation(line: 81, column: 18, scope: !808)
!856 = !DILocation(line: 81, column: 25, scope: !808)
!857 = !DILocation(line: 81, column: 36, scope: !808)
!858 = !DILocation(line: 82, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !808, file: !3, line: 81, column: 65)
!860 = !DILocation(line: 82, column: 20, scope: !859)
!861 = !DILocation(line: 82, column: 27, scope: !859)
!862 = !DILocation(line: 82, column: 10, scope: !859)
!863 = distinct !{!863, !848, !864}
!864 = !DILocation(line: 83, column: 2, scope: !808)
!865 = !DILocation(line: 90, column: 14, scope: !808)
!866 = !DILocation(line: 90, column: 13, scope: !808)
!867 = !DILocation(line: 90, column: 11, scope: !808)
!868 = !DILocation(line: 91, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !808, file: !3, line: 91, column: 6)
!870 = !DILocation(line: 91, column: 6, scope: !808)
!871 = !DILocation(line: 92, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 91, column: 17)
!873 = !DILocation(line: 92, column: 12, scope: !872)
!874 = !DILocation(line: 93, column: 19, scope: !872)
!875 = !DILocation(line: 93, column: 4, scope: !872)
!876 = !DILocation(line: 93, column: 17, scope: !872)
!877 = !DILocation(line: 94, column: 8, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 94, column: 7)
!879 = !DILocation(line: 94, column: 7, scope: !872)
!880 = !DILocation(line: 95, column: 4, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 94, column: 18)
!882 = !DILocation(line: 98, column: 28, scope: !872)
!883 = !DILocation(line: 98, column: 36, scope: !872)
!884 = !DILocation(line: 98, column: 43, scope: !872)
!885 = !DILocation(line: 98, column: 3, scope: !872)
!886 = !DILocation(line: 98, column: 13, scope: !872)
!887 = !DILocation(line: 98, column: 21, scope: !872)
!888 = !DILocation(line: 98, column: 26, scope: !872)
!889 = !DILocation(line: 99, column: 2, scope: !872)
!890 = !DILocation(line: 101, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !808, file: !3, line: 101, column: 6)
!892 = !DILocation(line: 101, column: 16, scope: !891)
!893 = !DILocation(line: 101, column: 24, scope: !891)
!894 = !DILocation(line: 101, column: 30, scope: !891)
!895 = !DILocation(line: 101, column: 6, scope: !808)
!896 = !DILocation(line: 102, column: 3, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !3, line: 101, column: 51)
!898 = !DILocation(line: 111, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !808, file: !3, line: 111, column: 6)
!900 = !DILocation(line: 111, column: 17, scope: !899)
!901 = !DILocation(line: 111, column: 25, scope: !899)
!902 = !DILocation(line: 111, column: 6, scope: !808)
!903 = !DILocation(line: 112, column: 32, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 111, column: 35)
!905 = !DILocation(line: 112, column: 3, scope: !904)
!906 = !DILocation(line: 112, column: 13, scope: !904)
!907 = !DILocation(line: 112, column: 21, scope: !904)
!908 = !DILocation(line: 112, column: 30, scope: !904)
!909 = !DILocation(line: 119, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 119, column: 7)
!911 = !DILocation(line: 119, column: 18, scope: !910)
!912 = !DILocation(line: 119, column: 26, scope: !910)
!913 = !DILocation(line: 119, column: 7, scope: !904)
!914 = !DILocation(line: 120, column: 31, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 119, column: 36)
!916 = !DILocation(line: 120, column: 4, scope: !915)
!917 = !DILocation(line: 121, column: 4, scope: !915)
!918 = !DILocation(line: 124, column: 29, scope: !904)
!919 = !DILocation(line: 124, column: 3, scope: !904)
!920 = !DILocation(line: 124, column: 13, scope: !904)
!921 = !DILocation(line: 124, column: 21, scope: !904)
!922 = !DILocation(line: 124, column: 27, scope: !904)
!923 = !DILocation(line: 125, column: 2, scope: !904)
!924 = !DILocation(line: 129, column: 8, scope: !808)
!925 = !DILocation(line: 129, column: 12, scope: !808)
!926 = !DILocation(line: 129, column: 19, scope: !808)
!927 = !DILocation(line: 129, column: 25, scope: !808)
!928 = !DILocation(line: 129, column: 6, scope: !808)
!929 = !DILocation(line: 130, column: 8, scope: !808)
!930 = !DILocation(line: 130, column: 13, scope: !808)
!931 = !DILocation(line: 130, column: 20, scope: !808)
!932 = !DILocation(line: 130, column: 6, scope: !808)
!933 = !DILocation(line: 138, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !808, file: !3, line: 138, column: 6)
!935 = !DILocation(line: 138, column: 6, scope: !808)
!936 = !DILocation(line: 139, column: 33, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 138, column: 25)
!938 = !DILocation(line: 139, column: 45, scope: !937)
!939 = !DILocation(line: 139, column: 3, scope: !937)
!940 = !DILocation(line: 139, column: 13, scope: !937)
!941 = !DILocation(line: 139, column: 21, scope: !937)
!942 = !DILocation(line: 139, column: 31, scope: !937)
!943 = !DILocation(line: 140, column: 3, scope: !937)
!944 = !DILocation(line: 140, column: 13, scope: !937)
!945 = !DILocation(line: 140, column: 21, scope: !937)
!946 = !DILocation(line: 140, column: 32, scope: !937)
!947 = !DILocation(line: 145, column: 2, scope: !937)
!948 = !DILocation(line: 153, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !808, file: !3, line: 153, column: 2)
!950 = !DILocation(line: 153, column: 7, scope: !949)
!951 = !DILocation(line: 153, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 153, column: 2)
!953 = !DILocation(line: 153, column: 18, scope: !952)
!954 = !DILocation(line: 153, column: 22, scope: !952)
!955 = !DILocation(line: 153, column: 26, scope: !952)
!956 = !DILocation(line: 153, column: 24, scope: !952)
!957 = !DILocation(line: 0, scope: !952)
!958 = !DILocation(line: 153, column: 2, scope: !949)
!959 = !DILocation(line: 154, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 154, column: 7)
!961 = distinct !DILexicalBlock(scope: !952, file: !3, line: 153, column: 47)
!962 = !DILocation(line: 154, column: 12, scope: !960)
!963 = !DILocation(line: 154, column: 19, scope: !960)
!964 = !DILocation(line: 154, column: 30, scope: !960)
!965 = !DILocation(line: 154, column: 7, scope: !961)
!966 = !DILocation(line: 155, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 155, column: 8)
!968 = distinct !DILexicalBlock(scope: !960, file: !3, line: 154, column: 58)
!969 = !DILocation(line: 155, column: 14, scope: !967)
!970 = !DILocation(line: 155, column: 21, scope: !967)
!971 = !DILocation(line: 155, column: 8, scope: !968)
!972 = !DILocation(line: 171, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !3, line: 155, column: 27)
!974 = !DILocation(line: 176, column: 30, scope: !973)
!975 = !DILocation(line: 176, column: 42, scope: !973)
!976 = !DILocation(line: 177, column: 9, scope: !973)
!977 = !DILocation(line: 177, column: 17, scope: !973)
!978 = !DILocation(line: 176, column: 5, scope: !973)
!979 = !DILocation(line: 178, column: 5, scope: !973)
!980 = !DILocation(line: 181, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !968, file: !3, line: 181, column: 8)
!982 = !DILocation(line: 181, column: 13, scope: !981)
!983 = !DILocation(line: 181, column: 20, scope: !981)
!984 = !DILocation(line: 181, column: 26, scope: !981)
!985 = !DILocation(line: 181, column: 31, scope: !981)
!986 = !DILocation(line: 181, column: 8, scope: !968)
!987 = !DILocation(line: 186, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !3, line: 181, column: 52)
!989 = !DILocation(line: 186, column: 10, scope: !988)
!990 = !DILocation(line: 186, column: 17, scope: !988)
!991 = !DILocation(line: 186, column: 28, scope: !988)
!992 = !DILocation(line: 188, column: 39, scope: !988)
!993 = !DILocation(line: 189, column: 11, scope: !988)
!994 = !DILocation(line: 190, column: 12, scope: !988)
!995 = !DILocation(line: 191, column: 11, scope: !988)
!996 = !DILocation(line: 192, column: 11, scope: !988)
!997 = !DILocation(line: 192, column: 20, scope: !988)
!998 = !DILocation(line: 188, column: 9, scope: !988)
!999 = !DILocation(line: 187, column: 12, scope: !988)
!1000 = !DILocation(line: 193, column: 4, scope: !988)
!1001 = !DILocation(line: 197, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !981, file: !3, line: 193, column: 11)
!1003 = !DILocation(line: 196, column: 5, scope: !1002)
!1004 = !DILocation(line: 196, column: 15, scope: !1002)
!1005 = !DILocation(line: 196, column: 23, scope: !1002)
!1006 = !DILocation(line: 196, column: 32, scope: !1002)
!1007 = !DILocation(line: 196, column: 35, scope: !1002)
!1008 = !DILocation(line: 200, column: 3, scope: !968)
!1009 = !DILocation(line: 202, column: 38, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !960, file: !3, line: 200, column: 10)
!1011 = !DILocation(line: 202, column: 50, scope: !1010)
!1012 = !DILocation(line: 203, column: 11, scope: !1010)
!1013 = !DILocation(line: 203, column: 21, scope: !1010)
!1014 = !DILocation(line: 204, column: 10, scope: !1010)
!1015 = !DILocation(line: 204, column: 19, scope: !1010)
!1016 = !DILocation(line: 202, column: 8, scope: !1010)
!1017 = !DILocation(line: 201, column: 11, scope: !1010)
!1018 = !DILocation(line: 205, column: 8, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 205, column: 8)
!1020 = !DILocation(line: 205, column: 15, scope: !1019)
!1021 = !DILocation(line: 205, column: 8, scope: !1010)
!1022 = !DILocation(line: 206, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 205, column: 32)
!1024 = !DILocation(line: 208, column: 4, scope: !1023)
!1025 = !DILocation(line: 210, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 210, column: 8)
!1027 = !DILocation(line: 210, column: 8, scope: !1010)
!1028 = !DILocation(line: 218, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 210, column: 28)
!1030 = !DILocation(line: 218, column: 23, scope: !1029)
!1031 = !DILocation(line: 219, column: 13, scope: !1029)
!1032 = !DILocation(line: 219, column: 22, scope: !1029)
!1033 = !DILocation(line: 220, column: 14, scope: !1029)
!1034 = !DILocation(line: 220, column: 24, scope: !1029)
!1035 = !DILocation(line: 221, column: 13, scope: !1029)
!1036 = !DILocation(line: 221, column: 22, scope: !1029)
!1037 = !DILocation(line: 220, column: 13, scope: !1029)
!1038 = !DILocation(line: 217, column: 5, scope: !1029)
!1039 = !DILocation(line: 222, column: 4, scope: !1029)
!1040 = !DILocation(line: 225, column: 8, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !961, file: !3, line: 225, column: 7)
!1042 = !DILocation(line: 225, column: 7, scope: !1041)
!1043 = !DILocation(line: 225, column: 7, scope: !961)
!1044 = !DILocation(line: 230, column: 10, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 225, column: 22)
!1046 = !DILocation(line: 230, column: 9, scope: !1045)
!1047 = !DILocation(line: 230, column: 25, scope: !1045)
!1048 = !DILocation(line: 230, column: 32, scope: !1045)
!1049 = !DILocation(line: 229, column: 20, scope: !1045)
!1050 = !DILocation(line: 231, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 231, column: 8)
!1052 = !DILocation(line: 231, column: 24, scope: !1051)
!1053 = !DILocation(line: 231, column: 8, scope: !1045)
!1054 = !DILocation(line: 236, column: 16, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 236, column: 5)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 231, column: 29)
!1057 = !DILocation(line: 236, column: 10, scope: !1055)
!1058 = !DILocation(line: 237, column: 10, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 236, column: 5)
!1060 = !DILocation(line: 237, column: 24, scope: !1059)
!1061 = !DILocation(line: 237, column: 19, scope: !1059)
!1062 = !DILocation(line: 237, column: 40, scope: !1059)
!1063 = !DILocation(line: 237, column: 16, scope: !1059)
!1064 = !DILocation(line: 236, column: 5, scope: !1055)
!1065 = !DILocation(line: 239, column: 29, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 238, column: 19)
!1067 = !DILocation(line: 240, column: 15, scope: !1066)
!1068 = !DILocation(line: 241, column: 15, scope: !1066)
!1069 = !DILocation(line: 241, column: 24, scope: !1066)
!1070 = !DILocation(line: 239, column: 6, scope: !1066)
!1071 = !DILocation(line: 242, column: 5, scope: !1066)
!1072 = !DILocation(line: 238, column: 15, scope: !1059)
!1073 = !DILocation(line: 236, column: 5, scope: !1059)
!1074 = distinct !{!1074, !1064, !1075}
!1075 = !DILocation(line: 242, column: 5, scope: !1055)
!1076 = !DILocation(line: 243, column: 4, scope: !1056)
!1077 = !DILocation(line: 244, column: 3, scope: !1045)
!1078 = !DILocation(line: 246, column: 9, scope: !961)
!1079 = !DILocation(line: 246, column: 14, scope: !961)
!1080 = !DILocation(line: 246, column: 21, scope: !961)
!1081 = !DILocation(line: 246, column: 7, scope: !961)
!1082 = !DILocation(line: 247, column: 2, scope: !961)
!1083 = !DILocation(line: 153, column: 43, scope: !952)
!1084 = !DILocation(line: 153, column: 2, scope: !952)
!1085 = distinct !{!1085, !958, !1086}
!1086 = !DILocation(line: 247, column: 2, scope: !949)
!1087 = !DILocation(line: 251, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !808, file: !3, line: 251, column: 6)
!1089 = !DILocation(line: 251, column: 6, scope: !808)
!1090 = !DILocation(line: 264, column: 3, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 251, column: 11)
!1092 = !DILocation(line: 264, column: 10, scope: !1091)
!1093 = !DILocation(line: 269, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 269, column: 8)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 264, column: 15)
!1096 = !DILocation(line: 269, column: 13, scope: !1094)
!1097 = !DILocation(line: 269, column: 20, scope: !1094)
!1098 = !DILocation(line: 269, column: 8, scope: !1095)
!1099 = !DILocation(line: 270, column: 30, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 269, column: 26)
!1101 = !DILocation(line: 270, column: 5, scope: !1100)
!1102 = !DILocation(line: 274, column: 5, scope: !1100)
!1103 = !DILocation(line: 274, column: 10, scope: !1100)
!1104 = !DILocation(line: 274, column: 17, scope: !1100)
!1105 = !DILocation(line: 274, column: 22, scope: !1100)
!1106 = !DILocation(line: 275, column: 4, scope: !1100)
!1107 = !DILocation(line: 279, column: 5, scope: !1095)
!1108 = !DILocation(line: 280, column: 10, scope: !1095)
!1109 = !DILocation(line: 280, column: 15, scope: !1095)
!1110 = !DILocation(line: 280, column: 22, scope: !1095)
!1111 = !DILocation(line: 280, column: 8, scope: !1095)
!1112 = distinct !{!1112, !1090, !1113}
!1113 = !DILocation(line: 281, column: 3, scope: !1091)
!1114 = !DILocation(line: 283, column: 3, scope: !1091)
!1115 = !DILocation(line: 286, column: 2, scope: !1091)
!1116 = !DILocation(line: 286, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 286, column: 13)
!1118 = !DILocation(line: 286, column: 17, scope: !1117)
!1119 = !DILocation(line: 286, column: 15, scope: !1117)
!1120 = !DILocation(line: 286, column: 13, scope: !1088)
!1121 = !DILocation(line: 299, column: 2, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 286, column: 32)
!1123 = !DILocation(line: 303, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !808, file: !3, line: 303, column: 6)
!1125 = !DILocation(line: 303, column: 6, scope: !808)
!1126 = !DILocation(line: 304, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 303, column: 26)
!1128 = !DILocation(line: 304, column: 13, scope: !1127)
!1129 = !DILocation(line: 304, column: 21, scope: !1127)
!1130 = !DILocation(line: 304, column: 27, scope: !1127)
!1131 = !DILocation(line: 305, column: 2, scope: !1127)
!1132 = !DILocation(line: 307, column: 20, scope: !808)
!1133 = !DILocation(line: 307, column: 2, scope: !808)
!1134 = !DILocation(line: 307, column: 6, scope: !808)
!1135 = !DILocation(line: 307, column: 13, scope: !808)
!1136 = !DILocation(line: 307, column: 18, scope: !808)
!1137 = !DILocation(line: 308, column: 2, scope: !808)
!1138 = !DILocation(line: 309, column: 1, scope: !808)
!1139 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1140, file: !1140, line: 55, type: !1141, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1140 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!131, !29}
!1143 = !DILocalVariable(name: "flags", arg: 1, scope: !1144, file: !1145, line: 162, type: !796)
!1144 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1145, file: !1145, line: 162, type: !1146, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1145 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!1148, !796}
!1148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1149 = !DILocation(line: 162, column: 67, scope: !1144, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 57, column: 23, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1140, line: 57, column: 23)
!1152 = distinct !DILexicalBlock(scope: !1139, file: !1140, line: 57, column: 23)
!1153 = !DILocalVariable(name: "size", arg: 1, scope: !1139, file: !1140, line: 55, type: !29)
!1154 = !DILocation(line: 55, column: 55, scope: !1139)
!1155 = !DILocation(line: 57, column: 17, scope: !1139)
!1156 = !DILocalVariable(name: "_flags", scope: !1152, file: !1140, line: 57, type: !796)
!1157 = !DILocation(line: 57, column: 23, scope: !1152)
!1158 = !DILocalVariable(name: "__dummy", scope: !1159, file: !1140, line: 57, type: !796)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1140, line: 57, column: 23)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !1140, line: 57, column: 23)
!1161 = !DILocation(line: 57, column: 23, scope: !1159)
!1162 = !DILocalVariable(name: "__dummy2", scope: !1159, file: !1140, line: 57, type: !796)
!1163 = !DILocation(line: 57, column: 23, scope: !1160)
!1164 = !DILocalVariable(name: "__dummy", scope: !1165, file: !1140, line: 57, type: !796)
!1165 = distinct !DILexicalBlock(scope: !1151, file: !1140, line: 57, column: 23)
!1166 = !DILocation(line: 57, column: 23, scope: !1165)
!1167 = !DILocalVariable(name: "__dummy2", scope: !1165, file: !1140, line: 57, type: !796)
!1168 = !DILocation(line: 57, column: 23, scope: !1151)
!1169 = !DILocation(line: 164, column: 11, scope: !1144, inlinedAt: !1150)
!1170 = !DILocation(line: 164, column: 17, scope: !1144, inlinedAt: !1150)
!1171 = !DILocation(line: 164, column: 9, scope: !1144, inlinedAt: !1150)
!1172 = !DILocation(line: 57, column: 23, scope: !1139)
!1173 = !DILocation(line: 57, column: 9, scope: !1139)
!1174 = !DILocation(line: 57, column: 2, scope: !1139)
!1175 = distinct !DISubprogram(name: "acpi_ds_init_package_element", scope: !3, file: !3, line: 324, type: !1176, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!20, !42, !33, !270, !131}
!1178 = !DILocalVariable(name: "object_type", arg: 1, scope: !1175, file: !3, line: 324, type: !42)
!1179 = !DILocation(line: 324, column: 33, scope: !1175)
!1180 = !DILocalVariable(name: "source_object", arg: 2, scope: !1175, file: !3, line: 325, type: !33)
!1181 = !DILocation(line: 325, column: 36, scope: !1175)
!1182 = !DILocalVariable(name: "state", arg: 3, scope: !1175, file: !3, line: 326, type: !270)
!1183 = !DILocation(line: 326, column: 35, scope: !1175)
!1184 = !DILocalVariable(name: "context", arg: 4, scope: !1175, file: !3, line: 326, type: !131)
!1185 = !DILocation(line: 326, column: 48, scope: !1175)
!1186 = !DILocalVariable(name: "element_ptr", scope: !1175, file: !3, line: 328, type: !118)
!1187 = !DILocation(line: 328, column: 30, scope: !1175)
!1188 = !DILocation(line: 332, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 332, column: 6)
!1190 = !DILocation(line: 332, column: 6, scope: !1175)
!1191 = !DILocation(line: 333, column: 3, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 332, column: 22)
!1193 = !DILocation(line: 342, column: 6, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 342, column: 6)
!1195 = !DILocation(line: 342, column: 6, scope: !1175)
!1196 = !DILocation(line: 346, column: 47, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 342, column: 15)
!1198 = !DILocation(line: 346, column: 17, scope: !1197)
!1199 = !DILocation(line: 346, column: 15, scope: !1197)
!1200 = !DILocation(line: 347, column: 2, scope: !1197)
!1201 = !DILocation(line: 350, column: 17, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 347, column: 9)
!1203 = !DILocation(line: 350, column: 24, scope: !1202)
!1204 = !DILocation(line: 350, column: 28, scope: !1202)
!1205 = !DILocation(line: 350, column: 15, scope: !1202)
!1206 = !DILocation(line: 355, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 355, column: 6)
!1208 = !DILocation(line: 355, column: 21, scope: !1207)
!1209 = !DILocation(line: 355, column: 28, scope: !1207)
!1210 = !DILocation(line: 355, column: 33, scope: !1207)
!1211 = !DILocation(line: 355, column: 6, scope: !1175)
!1212 = !DILocation(line: 359, column: 35, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 355, column: 63)
!1214 = !DILocation(line: 359, column: 3, scope: !1213)
!1215 = !DILocation(line: 360, column: 2, scope: !1213)
!1216 = !DILocation(line: 360, column: 13, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 360, column: 13)
!1218 = !DILocation(line: 360, column: 28, scope: !1217)
!1219 = !DILocation(line: 360, column: 35, scope: !1217)
!1220 = !DILocation(line: 360, column: 40, scope: !1217)
!1221 = !DILocation(line: 360, column: 13, scope: !1207)
!1222 = !DILocation(line: 361, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 360, column: 62)
!1224 = !DILocation(line: 361, column: 18, scope: !1223)
!1225 = !DILocation(line: 361, column: 26, scope: !1223)
!1226 = !DILocation(line: 361, column: 32, scope: !1223)
!1227 = !DILocation(line: 362, column: 2, scope: !1223)
!1228 = !DILocation(line: 364, column: 2, scope: !1175)
!1229 = !DILocation(line: 365, column: 1, scope: !1175)
!1230 = distinct !DISubprogram(name: "acpi_ds_resolve_package_element", scope: !3, file: !3, line: 381, type: !1231, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !118}
!1233 = !DILocalVariable(name: "element_ptr", arg: 1, scope: !1230, file: !3, line: 381, type: !118)
!1234 = !DILocation(line: 381, column: 61, scope: !1230)
!1235 = !DILocalVariable(name: "status", scope: !1230, file: !3, line: 383, type: !20)
!1236 = !DILocation(line: 383, column: 14, scope: !1230)
!1237 = !DILocalVariable(name: "status2", scope: !1230, file: !3, line: 384, type: !20)
!1238 = !DILocation(line: 384, column: 14, scope: !1230)
!1239 = !DILocalVariable(name: "scope_info", scope: !1230, file: !3, line: 385, type: !271)
!1240 = !DILocation(line: 385, column: 27, scope: !1230)
!1241 = !DILocalVariable(name: "element", scope: !1230, file: !3, line: 386, type: !33)
!1242 = !DILocation(line: 386, column: 29, scope: !1230)
!1243 = !DILocation(line: 386, column: 40, scope: !1230)
!1244 = !DILocation(line: 386, column: 39, scope: !1230)
!1245 = !DILocalVariable(name: "resolved_node", scope: !1230, file: !3, line: 387, type: !87)
!1246 = !DILocation(line: 387, column: 30, scope: !1230)
!1247 = !DILocalVariable(name: "original_node", scope: !1230, file: !3, line: 388, type: !87)
!1248 = !DILocation(line: 388, column: 30, scope: !1230)
!1249 = !DILocalVariable(name: "external_path", scope: !1230, file: !3, line: 389, type: !70)
!1250 = !DILocation(line: 389, column: 8, scope: !1230)
!1251 = !DILocalVariable(name: "type", scope: !1230, file: !3, line: 390, type: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !21, line: 635, baseType: !22)
!1253 = !DILocation(line: 390, column: 19, scope: !1230)
!1254 = !DILocation(line: 396, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 396, column: 6)
!1256 = !DILocation(line: 396, column: 15, scope: !1255)
!1257 = !DILocation(line: 396, column: 25, scope: !1255)
!1258 = !DILocation(line: 396, column: 6, scope: !1230)
!1259 = !DILocation(line: 401, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 396, column: 35)
!1261 = !DILocation(line: 406, column: 26, scope: !1230)
!1262 = !DILocation(line: 406, column: 35, scope: !1230)
!1263 = !DILocation(line: 406, column: 45, scope: !1230)
!1264 = !DILocation(line: 406, column: 13, scope: !1230)
!1265 = !DILocation(line: 406, column: 19, scope: !1230)
!1266 = !DILocation(line: 406, column: 24, scope: !1230)
!1267 = !DILocation(line: 408, column: 47, scope: !1230)
!1268 = !DILocation(line: 408, column: 56, scope: !1230)
!1269 = !DILocation(line: 408, column: 66, scope: !1230)
!1270 = !DILocation(line: 408, column: 11, scope: !1230)
!1271 = !DILocation(line: 408, column: 9, scope: !1230)
!1272 = !DILocation(line: 412, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 412, column: 6)
!1274 = !DILocation(line: 412, column: 6, scope: !1230)
!1275 = !DILocation(line: 413, column: 8, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 413, column: 7)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 412, column: 28)
!1278 = !DILocation(line: 413, column: 15, scope: !1276)
!1279 = !DILocation(line: 414, column: 7, scope: !1276)
!1280 = !DILocation(line: 414, column: 10, scope: !1276)
!1281 = !DILocation(line: 413, column: 7, scope: !1277)
!1282 = !DILocation(line: 429, column: 30, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 414, column: 53)
!1284 = !DILocation(line: 429, column: 29, scope: !1283)
!1285 = !DILocation(line: 429, column: 4, scope: !1283)
!1286 = !DILocation(line: 430, column: 5, scope: !1283)
!1287 = !DILocation(line: 430, column: 17, scope: !1283)
!1288 = !DILocation(line: 431, column: 4, scope: !1283)
!1289 = !DILocation(line: 435, column: 18, scope: !1277)
!1290 = !DILocation(line: 435, column: 27, scope: !1277)
!1291 = !DILocation(line: 436, column: 10, scope: !1277)
!1292 = !DILocation(line: 434, column: 13, scope: !1277)
!1293 = !DILocation(line: 434, column: 11, scope: !1277)
!1294 = !DILocation(line: 438, column: 3, scope: !1277)
!1295 = !DILocation(line: 441, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 441, column: 7)
!1297 = !DILocation(line: 441, column: 7, scope: !1277)
!1298 = !DILocation(line: 442, column: 4, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 441, column: 30)
!1300 = !DILocation(line: 443, column: 3, scope: !1299)
!1301 = !DILocation(line: 447, column: 29, scope: !1277)
!1302 = !DILocation(line: 447, column: 28, scope: !1277)
!1303 = !DILocation(line: 447, column: 3, scope: !1277)
!1304 = !DILocation(line: 448, column: 4, scope: !1277)
!1305 = !DILocation(line: 448, column: 16, scope: !1277)
!1306 = !DILocation(line: 449, column: 3, scope: !1277)
!1307 = !DILocation(line: 450, column: 13, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 450, column: 13)
!1309 = !DILocation(line: 450, column: 28, scope: !1308)
!1310 = !DILocation(line: 450, column: 33, scope: !1308)
!1311 = !DILocation(line: 450, column: 13, scope: !1273)
!1312 = !DILocation(line: 454, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 450, column: 51)
!1314 = !DILocation(line: 458, column: 4, scope: !1313)
!1315 = !DILocation(line: 458, column: 16, scope: !1313)
!1316 = !DILocation(line: 459, column: 3, scope: !1313)
!1317 = !DILocation(line: 466, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 466, column: 6)
!1319 = !DILocation(line: 466, column: 21, scope: !1318)
!1320 = !DILocation(line: 466, column: 26, scope: !1318)
!1321 = !DILocation(line: 466, column: 6, scope: !1230)
!1322 = !DILocation(line: 467, column: 19, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 466, column: 52)
!1324 = !DILocation(line: 467, column: 17, scope: !1323)
!1325 = !DILocation(line: 469, column: 2, scope: !1323)
!1326 = !DILocation(line: 473, column: 2, scope: !1230)
!1327 = !DILocation(line: 473, column: 11, scope: !1230)
!1328 = !DILocation(line: 473, column: 21, scope: !1230)
!1329 = !DILocation(line: 473, column: 30, scope: !1230)
!1330 = !DILocation(line: 474, column: 28, scope: !1230)
!1331 = !DILocation(line: 474, column: 2, scope: !1230)
!1332 = !DILocation(line: 474, column: 11, scope: !1230)
!1333 = !DILocation(line: 474, column: 21, scope: !1230)
!1334 = !DILocation(line: 474, column: 26, scope: !1230)
!1335 = !DILocation(line: 475, column: 9, scope: !1230)
!1336 = !DILocation(line: 475, column: 18, scope: !1230)
!1337 = !DILocation(line: 475, column: 28, scope: !1230)
!1338 = !DILocation(line: 475, column: 34, scope: !1230)
!1339 = !DILocation(line: 475, column: 7, scope: !1230)
!1340 = !DILocation(line: 491, column: 18, scope: !1230)
!1341 = !DILocation(line: 491, column: 16, scope: !1230)
!1342 = !DILocation(line: 492, column: 11, scope: !1230)
!1343 = !DILocation(line: 492, column: 9, scope: !1230)
!1344 = !DILocation(line: 493, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 493, column: 6)
!1346 = !DILocation(line: 493, column: 6, scope: !1230)
!1347 = !DILocation(line: 494, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 493, column: 28)
!1349 = !DILocation(line: 497, column: 10, scope: !1230)
!1350 = !DILocation(line: 497, column: 2, scope: !1230)
!1351 = !DILocation(line: 506, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 497, column: 16)
!1353 = !DILocation(line: 516, column: 28, scope: !1352)
!1354 = !DILocation(line: 516, column: 43, scope: !1352)
!1355 = !DILocation(line: 516, column: 3, scope: !1352)
!1356 = !DILocation(line: 517, column: 3, scope: !1352)
!1357 = !DILocation(line: 525, column: 28, scope: !1352)
!1358 = !DILocation(line: 525, column: 3, scope: !1352)
!1359 = !DILocation(line: 526, column: 47, scope: !1352)
!1360 = !DILocation(line: 526, column: 18, scope: !1352)
!1361 = !DILocation(line: 526, column: 4, scope: !1352)
!1362 = !DILocation(line: 526, column: 16, scope: !1352)
!1363 = !DILocation(line: 527, column: 3, scope: !1352)
!1364 = !DILocation(line: 530, column: 2, scope: !1230)
!1365 = !DILocation(line: 531, column: 1, scope: !1230)
!1366 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1367, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!131, !1369, !794}
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !795, line: 55, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1371, line: 72, baseType: !1372)
!1371 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1371, line: 16, baseType: !796)
!1373 = !DILocalVariable(name: "s", arg: 1, scope: !1374, file: !6, line: 445, type: !1377)
!1374 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1375, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!131, !1377, !794, !1369}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1379, line: 117, flags: DIFlagFwdDecl)
!1379 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !DILocation(line: 445, column: 72, scope: !1374, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 552, column: 10, scope: !1382, inlinedAt: !1385)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !6, line: 540, column: 34)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !6, line: 540, column: 6)
!1384 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1367, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1385 = distinct !DILocation(line: 664, column: 9, scope: !1366)
!1386 = !DILocalVariable(name: "flags", arg: 2, scope: !1374, file: !6, line: 446, type: !794)
!1387 = !DILocation(line: 446, column: 9, scope: !1374, inlinedAt: !1381)
!1388 = !DILocalVariable(name: "size", arg: 3, scope: !1374, file: !6, line: 446, type: !1369)
!1389 = !DILocation(line: 446, column: 23, scope: !1374, inlinedAt: !1381)
!1390 = !DILocalVariable(name: "ret", scope: !1374, file: !6, line: 448, type: !131)
!1391 = !DILocation(line: 448, column: 8, scope: !1374, inlinedAt: !1381)
!1392 = !DILocalVariable(name: "flags", arg: 1, scope: !1393, file: !6, line: 318, type: !794)
!1393 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1394, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!5, !794}
!1396 = !DILocation(line: 318, column: 67, scope: !1393, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 553, column: 20, scope: !1382, inlinedAt: !1385)
!1398 = !DILocalVariable(name: "size", arg: 1, scope: !1399, file: !6, line: 346, type: !1369)
!1399 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1400, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!7, !1369}
!1402 = !DILocation(line: 346, column: 58, scope: !1399, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 547, column: 11, scope: !1382, inlinedAt: !1385)
!1404 = !DILocalVariable(name: "size", arg: 1, scope: !1405, file: !6, line: 472, type: !1369)
!1405 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1406, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!131, !1369, !794, !7}
!1408 = !DILocation(line: 472, column: 28, scope: !1405, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 481, column: 9, scope: !1410, inlinedAt: !1411)
!1410 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1367, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1411 = distinct !DILocation(line: 545, column: 11, scope: !1412, inlinedAt: !1385)
!1412 = distinct !DILexicalBlock(scope: !1382, file: !6, line: 544, column: 7)
!1413 = !DILocalVariable(name: "flags", arg: 2, scope: !1405, file: !6, line: 472, type: !794)
!1414 = !DILocation(line: 472, column: 40, scope: !1405, inlinedAt: !1409)
!1415 = !DILocalVariable(name: "order", arg: 3, scope: !1405, file: !6, line: 472, type: !7)
!1416 = !DILocation(line: 472, column: 60, scope: !1405, inlinedAt: !1409)
!1417 = !DILocalVariable(name: "size", arg: 1, scope: !1410, file: !6, line: 478, type: !1369)
!1418 = !DILocation(line: 478, column: 51, scope: !1410, inlinedAt: !1411)
!1419 = !DILocalVariable(name: "flags", arg: 2, scope: !1410, file: !6, line: 478, type: !794)
!1420 = !DILocation(line: 478, column: 63, scope: !1410, inlinedAt: !1411)
!1421 = !DILocalVariable(name: "order", scope: !1410, file: !6, line: 480, type: !7)
!1422 = !DILocation(line: 480, column: 15, scope: !1410, inlinedAt: !1411)
!1423 = !DILocalVariable(name: "size", arg: 1, scope: !1384, file: !6, line: 538, type: !1369)
!1424 = !DILocation(line: 538, column: 45, scope: !1384, inlinedAt: !1385)
!1425 = !DILocalVariable(name: "flags", arg: 2, scope: !1384, file: !6, line: 538, type: !794)
!1426 = !DILocation(line: 538, column: 57, scope: !1384, inlinedAt: !1385)
!1427 = !DILocalVariable(name: "index", scope: !1382, file: !6, line: 542, type: !7)
!1428 = !DILocation(line: 542, column: 16, scope: !1382, inlinedAt: !1385)
!1429 = !DILocalVariable(name: "size", arg: 1, scope: !1366, file: !6, line: 662, type: !1369)
!1430 = !DILocation(line: 662, column: 36, scope: !1366)
!1431 = !DILocalVariable(name: "flags", arg: 2, scope: !1366, file: !6, line: 662, type: !794)
!1432 = !DILocation(line: 662, column: 48, scope: !1366)
!1433 = !DILocation(line: 664, column: 17, scope: !1366)
!1434 = !DILocation(line: 664, column: 23, scope: !1366)
!1435 = !DILocation(line: 664, column: 29, scope: !1366)
!1436 = !DILocation(line: 540, column: 27, scope: !1383, inlinedAt: !1385)
!1437 = !DILocation(line: 540, column: 6, scope: !1383, inlinedAt: !1385)
!1438 = !DILocation(line: 540, column: 6, scope: !1384, inlinedAt: !1385)
!1439 = !DILocation(line: 544, column: 7, scope: !1412, inlinedAt: !1385)
!1440 = !DILocation(line: 544, column: 12, scope: !1412, inlinedAt: !1385)
!1441 = !DILocation(line: 544, column: 7, scope: !1382, inlinedAt: !1385)
!1442 = !DILocation(line: 545, column: 25, scope: !1412, inlinedAt: !1385)
!1443 = !DILocation(line: 545, column: 31, scope: !1412, inlinedAt: !1385)
!1444 = !DILocation(line: 480, column: 33, scope: !1410, inlinedAt: !1411)
!1445 = !DILocation(line: 480, column: 23, scope: !1410, inlinedAt: !1411)
!1446 = !DILocation(line: 481, column: 29, scope: !1410, inlinedAt: !1411)
!1447 = !DILocation(line: 481, column: 35, scope: !1410, inlinedAt: !1411)
!1448 = !DILocation(line: 481, column: 42, scope: !1410, inlinedAt: !1411)
!1449 = !DILocation(line: 474, column: 23, scope: !1405, inlinedAt: !1409)
!1450 = !DILocation(line: 474, column: 29, scope: !1405, inlinedAt: !1409)
!1451 = !DILocation(line: 474, column: 36, scope: !1405, inlinedAt: !1409)
!1452 = !DILocation(line: 474, column: 9, scope: !1405, inlinedAt: !1409)
!1453 = !DILocation(line: 545, column: 4, scope: !1412, inlinedAt: !1385)
!1454 = !DILocation(line: 547, column: 25, scope: !1382, inlinedAt: !1385)
!1455 = !DILocation(line: 348, column: 7, scope: !1456, inlinedAt: !1403)
!1456 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 348, column: 6)
!1457 = !DILocation(line: 348, column: 6, scope: !1399, inlinedAt: !1403)
!1458 = !DILocation(line: 349, column: 3, scope: !1456, inlinedAt: !1403)
!1459 = !DILocation(line: 351, column: 6, scope: !1460, inlinedAt: !1403)
!1460 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 351, column: 6)
!1461 = !DILocation(line: 351, column: 11, scope: !1460, inlinedAt: !1403)
!1462 = !DILocation(line: 351, column: 6, scope: !1399, inlinedAt: !1403)
!1463 = !DILocation(line: 352, column: 3, scope: !1460, inlinedAt: !1403)
!1464 = !DILocation(line: 354, column: 32, scope: !1465, inlinedAt: !1403)
!1465 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 354, column: 6)
!1466 = !DILocation(line: 354, column: 37, scope: !1465, inlinedAt: !1403)
!1467 = !DILocation(line: 354, column: 42, scope: !1465, inlinedAt: !1403)
!1468 = !DILocation(line: 354, column: 45, scope: !1465, inlinedAt: !1403)
!1469 = !DILocation(line: 354, column: 50, scope: !1465, inlinedAt: !1403)
!1470 = !DILocation(line: 354, column: 6, scope: !1399, inlinedAt: !1403)
!1471 = !DILocation(line: 355, column: 3, scope: !1465, inlinedAt: !1403)
!1472 = !DILocation(line: 356, column: 32, scope: !1473, inlinedAt: !1403)
!1473 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 356, column: 6)
!1474 = !DILocation(line: 356, column: 37, scope: !1473, inlinedAt: !1403)
!1475 = !DILocation(line: 356, column: 43, scope: !1473, inlinedAt: !1403)
!1476 = !DILocation(line: 356, column: 46, scope: !1473, inlinedAt: !1403)
!1477 = !DILocation(line: 356, column: 51, scope: !1473, inlinedAt: !1403)
!1478 = !DILocation(line: 356, column: 6, scope: !1399, inlinedAt: !1403)
!1479 = !DILocation(line: 357, column: 3, scope: !1473, inlinedAt: !1403)
!1480 = !DILocation(line: 358, column: 6, scope: !1481, inlinedAt: !1403)
!1481 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 358, column: 6)
!1482 = !DILocation(line: 358, column: 11, scope: !1481, inlinedAt: !1403)
!1483 = !DILocation(line: 358, column: 6, scope: !1399, inlinedAt: !1403)
!1484 = !DILocation(line: 358, column: 26, scope: !1481, inlinedAt: !1403)
!1485 = !DILocation(line: 359, column: 6, scope: !1486, inlinedAt: !1403)
!1486 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 359, column: 6)
!1487 = !DILocation(line: 359, column: 11, scope: !1486, inlinedAt: !1403)
!1488 = !DILocation(line: 359, column: 6, scope: !1399, inlinedAt: !1403)
!1489 = !DILocation(line: 359, column: 26, scope: !1486, inlinedAt: !1403)
!1490 = !DILocation(line: 360, column: 6, scope: !1491, inlinedAt: !1403)
!1491 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 360, column: 6)
!1492 = !DILocation(line: 360, column: 11, scope: !1491, inlinedAt: !1403)
!1493 = !DILocation(line: 360, column: 6, scope: !1399, inlinedAt: !1403)
!1494 = !DILocation(line: 360, column: 26, scope: !1491, inlinedAt: !1403)
!1495 = !DILocation(line: 361, column: 6, scope: !1496, inlinedAt: !1403)
!1496 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 361, column: 6)
!1497 = !DILocation(line: 361, column: 11, scope: !1496, inlinedAt: !1403)
!1498 = !DILocation(line: 361, column: 6, scope: !1399, inlinedAt: !1403)
!1499 = !DILocation(line: 361, column: 26, scope: !1496, inlinedAt: !1403)
!1500 = !DILocation(line: 362, column: 6, scope: !1501, inlinedAt: !1403)
!1501 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 362, column: 6)
!1502 = !DILocation(line: 362, column: 11, scope: !1501, inlinedAt: !1403)
!1503 = !DILocation(line: 362, column: 6, scope: !1399, inlinedAt: !1403)
!1504 = !DILocation(line: 362, column: 26, scope: !1501, inlinedAt: !1403)
!1505 = !DILocation(line: 363, column: 6, scope: !1506, inlinedAt: !1403)
!1506 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 363, column: 6)
!1507 = !DILocation(line: 363, column: 11, scope: !1506, inlinedAt: !1403)
!1508 = !DILocation(line: 363, column: 6, scope: !1399, inlinedAt: !1403)
!1509 = !DILocation(line: 363, column: 26, scope: !1506, inlinedAt: !1403)
!1510 = !DILocation(line: 364, column: 6, scope: !1511, inlinedAt: !1403)
!1511 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 364, column: 6)
!1512 = !DILocation(line: 364, column: 11, scope: !1511, inlinedAt: !1403)
!1513 = !DILocation(line: 364, column: 6, scope: !1399, inlinedAt: !1403)
!1514 = !DILocation(line: 364, column: 26, scope: !1511, inlinedAt: !1403)
!1515 = !DILocation(line: 365, column: 6, scope: !1516, inlinedAt: !1403)
!1516 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 365, column: 6)
!1517 = !DILocation(line: 365, column: 11, scope: !1516, inlinedAt: !1403)
!1518 = !DILocation(line: 365, column: 6, scope: !1399, inlinedAt: !1403)
!1519 = !DILocation(line: 365, column: 26, scope: !1516, inlinedAt: !1403)
!1520 = !DILocation(line: 366, column: 6, scope: !1521, inlinedAt: !1403)
!1521 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 366, column: 6)
!1522 = !DILocation(line: 366, column: 11, scope: !1521, inlinedAt: !1403)
!1523 = !DILocation(line: 366, column: 6, scope: !1399, inlinedAt: !1403)
!1524 = !DILocation(line: 366, column: 26, scope: !1521, inlinedAt: !1403)
!1525 = !DILocation(line: 367, column: 6, scope: !1526, inlinedAt: !1403)
!1526 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 367, column: 6)
!1527 = !DILocation(line: 367, column: 11, scope: !1526, inlinedAt: !1403)
!1528 = !DILocation(line: 367, column: 6, scope: !1399, inlinedAt: !1403)
!1529 = !DILocation(line: 367, column: 26, scope: !1526, inlinedAt: !1403)
!1530 = !DILocation(line: 368, column: 6, scope: !1531, inlinedAt: !1403)
!1531 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 368, column: 6)
!1532 = !DILocation(line: 368, column: 11, scope: !1531, inlinedAt: !1403)
!1533 = !DILocation(line: 368, column: 6, scope: !1399, inlinedAt: !1403)
!1534 = !DILocation(line: 368, column: 26, scope: !1531, inlinedAt: !1403)
!1535 = !DILocation(line: 369, column: 6, scope: !1536, inlinedAt: !1403)
!1536 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 369, column: 6)
!1537 = !DILocation(line: 369, column: 11, scope: !1536, inlinedAt: !1403)
!1538 = !DILocation(line: 369, column: 6, scope: !1399, inlinedAt: !1403)
!1539 = !DILocation(line: 369, column: 26, scope: !1536, inlinedAt: !1403)
!1540 = !DILocation(line: 370, column: 6, scope: !1541, inlinedAt: !1403)
!1541 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 370, column: 6)
!1542 = !DILocation(line: 370, column: 11, scope: !1541, inlinedAt: !1403)
!1543 = !DILocation(line: 370, column: 6, scope: !1399, inlinedAt: !1403)
!1544 = !DILocation(line: 370, column: 26, scope: !1541, inlinedAt: !1403)
!1545 = !DILocation(line: 371, column: 6, scope: !1546, inlinedAt: !1403)
!1546 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 371, column: 6)
!1547 = !DILocation(line: 371, column: 11, scope: !1546, inlinedAt: !1403)
!1548 = !DILocation(line: 371, column: 6, scope: !1399, inlinedAt: !1403)
!1549 = !DILocation(line: 371, column: 26, scope: !1546, inlinedAt: !1403)
!1550 = !DILocation(line: 372, column: 6, scope: !1551, inlinedAt: !1403)
!1551 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 372, column: 6)
!1552 = !DILocation(line: 372, column: 11, scope: !1551, inlinedAt: !1403)
!1553 = !DILocation(line: 372, column: 6, scope: !1399, inlinedAt: !1403)
!1554 = !DILocation(line: 372, column: 26, scope: !1551, inlinedAt: !1403)
!1555 = !DILocation(line: 373, column: 6, scope: !1556, inlinedAt: !1403)
!1556 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 373, column: 6)
!1557 = !DILocation(line: 373, column: 11, scope: !1556, inlinedAt: !1403)
!1558 = !DILocation(line: 373, column: 6, scope: !1399, inlinedAt: !1403)
!1559 = !DILocation(line: 373, column: 26, scope: !1556, inlinedAt: !1403)
!1560 = !DILocation(line: 374, column: 6, scope: !1561, inlinedAt: !1403)
!1561 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 374, column: 6)
!1562 = !DILocation(line: 374, column: 11, scope: !1561, inlinedAt: !1403)
!1563 = !DILocation(line: 374, column: 6, scope: !1399, inlinedAt: !1403)
!1564 = !DILocation(line: 374, column: 26, scope: !1561, inlinedAt: !1403)
!1565 = !DILocation(line: 375, column: 6, scope: !1566, inlinedAt: !1403)
!1566 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 375, column: 6)
!1567 = !DILocation(line: 375, column: 11, scope: !1566, inlinedAt: !1403)
!1568 = !DILocation(line: 375, column: 6, scope: !1399, inlinedAt: !1403)
!1569 = !DILocation(line: 375, column: 27, scope: !1566, inlinedAt: !1403)
!1570 = !DILocation(line: 376, column: 6, scope: !1571, inlinedAt: !1403)
!1571 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 376, column: 6)
!1572 = !DILocation(line: 376, column: 11, scope: !1571, inlinedAt: !1403)
!1573 = !DILocation(line: 376, column: 6, scope: !1399, inlinedAt: !1403)
!1574 = !DILocation(line: 376, column: 32, scope: !1571, inlinedAt: !1403)
!1575 = !DILocation(line: 377, column: 6, scope: !1576, inlinedAt: !1403)
!1576 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 377, column: 6)
!1577 = !DILocation(line: 377, column: 11, scope: !1576, inlinedAt: !1403)
!1578 = !DILocation(line: 377, column: 6, scope: !1399, inlinedAt: !1403)
!1579 = !DILocation(line: 377, column: 32, scope: !1576, inlinedAt: !1403)
!1580 = !DILocation(line: 378, column: 6, scope: !1581, inlinedAt: !1403)
!1581 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 378, column: 6)
!1582 = !DILocation(line: 378, column: 11, scope: !1581, inlinedAt: !1403)
!1583 = !DILocation(line: 378, column: 6, scope: !1399, inlinedAt: !1403)
!1584 = !DILocation(line: 378, column: 32, scope: !1581, inlinedAt: !1403)
!1585 = !DILocation(line: 379, column: 6, scope: !1586, inlinedAt: !1403)
!1586 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 379, column: 6)
!1587 = !DILocation(line: 379, column: 11, scope: !1586, inlinedAt: !1403)
!1588 = !DILocation(line: 379, column: 6, scope: !1399, inlinedAt: !1403)
!1589 = !DILocation(line: 379, column: 33, scope: !1586, inlinedAt: !1403)
!1590 = !DILocation(line: 380, column: 6, scope: !1591, inlinedAt: !1403)
!1591 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 380, column: 6)
!1592 = !DILocation(line: 380, column: 11, scope: !1591, inlinedAt: !1403)
!1593 = !DILocation(line: 380, column: 6, scope: !1399, inlinedAt: !1403)
!1594 = !DILocation(line: 380, column: 33, scope: !1591, inlinedAt: !1403)
!1595 = !DILocation(line: 381, column: 6, scope: !1596, inlinedAt: !1403)
!1596 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 381, column: 6)
!1597 = !DILocation(line: 381, column: 11, scope: !1596, inlinedAt: !1403)
!1598 = !DILocation(line: 381, column: 6, scope: !1399, inlinedAt: !1403)
!1599 = !DILocation(line: 381, column: 33, scope: !1596, inlinedAt: !1403)
!1600 = !DILocation(line: 382, column: 2, scope: !1601, inlinedAt: !1403)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !6, line: 382, column: 2)
!1602 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 382, column: 2)
!1603 = !{i32 -2144103841, i32 -2144103812, i32 -2144103766, i32 -2144103708, i32 -2144103654, i32 -2144103600, i32 -2144103545, i32 -2144103514}
!1604 = !DILocation(line: 382, column: 2, scope: !1605, inlinedAt: !1403)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 382, column: 2)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !6, line: 382, column: 2)
!1607 = !{i32 -2144103071, i32 -2144103064, i32 -2144103010, i32 -2144102979, i32 -2144102949}
!1608 = !DILocation(line: 382, column: 2, scope: !1606, inlinedAt: !1403)
!1609 = !DILocation(line: 386, column: 1, scope: !1399, inlinedAt: !1403)
!1610 = !DILocation(line: 547, column: 9, scope: !1382, inlinedAt: !1385)
!1611 = !DILocation(line: 549, column: 8, scope: !1612, inlinedAt: !1385)
!1612 = distinct !DILexicalBlock(scope: !1382, file: !6, line: 549, column: 7)
!1613 = !DILocation(line: 549, column: 7, scope: !1382, inlinedAt: !1385)
!1614 = !DILocation(line: 550, column: 4, scope: !1612, inlinedAt: !1385)
!1615 = !DILocation(line: 553, column: 33, scope: !1382, inlinedAt: !1385)
!1616 = !DILocation(line: 325, column: 6, scope: !1617, inlinedAt: !1397)
!1617 = distinct !DILexicalBlock(scope: !1393, file: !6, line: 325, column: 6)
!1618 = !DILocation(line: 325, column: 6, scope: !1393, inlinedAt: !1397)
!1619 = !DILocation(line: 326, column: 3, scope: !1617, inlinedAt: !1397)
!1620 = !DILocation(line: 332, column: 9, scope: !1393, inlinedAt: !1397)
!1621 = !DILocation(line: 332, column: 15, scope: !1393, inlinedAt: !1397)
!1622 = !DILocation(line: 332, column: 2, scope: !1393, inlinedAt: !1397)
!1623 = !DILocation(line: 336, column: 1, scope: !1393, inlinedAt: !1397)
!1624 = !DILocation(line: 553, column: 5, scope: !1382, inlinedAt: !1385)
!1625 = !DILocation(line: 553, column: 41, scope: !1382, inlinedAt: !1385)
!1626 = !DILocation(line: 554, column: 5, scope: !1382, inlinedAt: !1385)
!1627 = !DILocation(line: 554, column: 12, scope: !1382, inlinedAt: !1385)
!1628 = !DILocation(line: 448, column: 31, scope: !1374, inlinedAt: !1381)
!1629 = !DILocation(line: 448, column: 34, scope: !1374, inlinedAt: !1381)
!1630 = !DILocation(line: 448, column: 14, scope: !1374, inlinedAt: !1381)
!1631 = !DILocation(line: 450, column: 22, scope: !1374, inlinedAt: !1381)
!1632 = !DILocation(line: 450, column: 25, scope: !1374, inlinedAt: !1381)
!1633 = !DILocation(line: 450, column: 30, scope: !1374, inlinedAt: !1381)
!1634 = !DILocation(line: 450, column: 36, scope: !1374, inlinedAt: !1381)
!1635 = !DILocation(line: 450, column: 8, scope: !1374, inlinedAt: !1381)
!1636 = !DILocation(line: 450, column: 6, scope: !1374, inlinedAt: !1381)
!1637 = !DILocation(line: 451, column: 9, scope: !1374, inlinedAt: !1381)
!1638 = !DILocation(line: 552, column: 3, scope: !1382, inlinedAt: !1385)
!1639 = !DILocation(line: 557, column: 19, scope: !1384, inlinedAt: !1385)
!1640 = !DILocation(line: 557, column: 25, scope: !1384, inlinedAt: !1385)
!1641 = !DILocation(line: 557, column: 9, scope: !1384, inlinedAt: !1385)
!1642 = !DILocation(line: 557, column: 2, scope: !1384, inlinedAt: !1385)
!1643 = !DILocation(line: 558, column: 1, scope: !1384, inlinedAt: !1385)
!1644 = !DILocation(line: 664, column: 2, scope: !1366)
!1645 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1646, file: !1646, line: 646, type: !1647, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1646 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!796}
!1649 = !DILocalVariable(name: "__ret", scope: !1650, file: !1646, line: 648, type: !796)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !1646, line: 648, column: 9)
!1651 = !DILocation(line: 648, column: 9, scope: !1650)
!1652 = !DILocalVariable(name: "__edi", scope: !1650, file: !1646, line: 648, type: !796)
!1653 = !DILocalVariable(name: "__esi", scope: !1650, file: !1646, line: 648, type: !796)
!1654 = !DILocalVariable(name: "__edx", scope: !1650, file: !1646, line: 648, type: !796)
!1655 = !DILocalVariable(name: "__ecx", scope: !1650, file: !1646, line: 648, type: !796)
!1656 = !DILocalVariable(name: "__eax", scope: !1650, file: !1646, line: 648, type: !796)
!1657 = !DILocation(line: 648, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1646, line: 648, column: 9)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !1646, line: 648, column: 9)
!1660 = !{i32 -2145777447, i32 -2145775132, i32 -2145774898, i32 -2145774847, i32 -2145774819, i32 -2145774794, i32 -2145775110, i32 -2145775097, i32 -2145774659, i32 -2145774540, i32 -2145775005, i32 -2145774978, i32 -2145774950, i32 -2145774920}
!1661 = !DILocalVariable(name: "__mask", scope: !1662, file: !1646, line: 648, type: !796)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !1646, line: 648, column: 9)
!1663 = !DILocation(line: 648, column: 9, scope: !1662)
!1664 = !DILocation(line: 648, column: 9, scope: !1659)
!1665 = !DILocation(line: 648, column: 2, scope: !1645)
!1666 = distinct !DISubprogram(name: "get_order", scope: !1667, file: !1667, line: 29, type: !1146, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1667 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !DILocalVariable(name: "x", arg: 1, scope: !1669, file: !1670, line: 366, type: !31)
!1669 = distinct !DISubprogram(name: "fls64", scope: !1670, file: !1670, line: 366, type: !1671, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1670 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1148, !31}
!1673 = !DILocation(line: 366, column: 40, scope: !1669, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 46, column: 9, scope: !1666)
!1675 = !DILocalVariable(name: "bitpos", scope: !1669, file: !1670, line: 368, type: !1148)
!1676 = !DILocation(line: 368, column: 6, scope: !1669, inlinedAt: !1674)
!1677 = !DILocalVariable(name: "size", arg: 1, scope: !1666, file: !1667, line: 29, type: !796)
!1678 = !DILocation(line: 29, column: 63, scope: !1666)
!1679 = !DILocation(line: 31, column: 27, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1666, file: !1667, line: 31, column: 6)
!1681 = !DILocation(line: 31, column: 6, scope: !1680)
!1682 = !DILocation(line: 31, column: 6, scope: !1666)
!1683 = !DILocation(line: 32, column: 8, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !1667, line: 32, column: 7)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !1667, line: 31, column: 34)
!1686 = !DILocation(line: 32, column: 7, scope: !1685)
!1687 = !DILocation(line: 33, column: 4, scope: !1684)
!1688 = !DILocation(line: 35, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !1667, line: 35, column: 7)
!1690 = !DILocation(line: 35, column: 12, scope: !1689)
!1691 = !DILocation(line: 35, column: 7, scope: !1685)
!1692 = !DILocation(line: 36, column: 4, scope: !1689)
!1693 = !DILocation(line: 38, column: 10, scope: !1685)
!1694 = !DILocation(line: 38, column: 28, scope: !1685)
!1695 = !DILocation(line: 38, column: 41, scope: !1685)
!1696 = !DILocation(line: 38, column: 3, scope: !1685)
!1697 = !DILocation(line: 41, column: 6, scope: !1666)
!1698 = !DILocation(line: 42, column: 7, scope: !1666)
!1699 = !DILocation(line: 46, column: 15, scope: !1666)
!1700 = !DILocation(line: 374, column: 2, scope: !1669, inlinedAt: !1674)
!1701 = !DILocation(line: 376, column: 14, scope: !1669, inlinedAt: !1674)
!1702 = !{i32 667361}
!1703 = !DILocation(line: 377, column: 9, scope: !1669, inlinedAt: !1674)
!1704 = !DILocation(line: 377, column: 16, scope: !1669, inlinedAt: !1674)
!1705 = !DILocation(line: 46, column: 2, scope: !1666)
!1706 = !DILocation(line: 48, column: 1, scope: !1666)
!1707 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1708, file: !1708, line: 30, type: !1709, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1708 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1148, !30}
!1711 = !DILocation(line: 366, column: 40, scope: !1669, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 32, column: 9, scope: !1707)
!1713 = !DILocation(line: 368, column: 6, scope: !1669, inlinedAt: !1712)
!1714 = !DILocalVariable(name: "n", arg: 1, scope: !1707, file: !1708, line: 30, type: !30)
!1715 = !DILocation(line: 30, column: 21, scope: !1707)
!1716 = !DILocation(line: 32, column: 15, scope: !1707)
!1717 = !DILocation(line: 374, column: 2, scope: !1669, inlinedAt: !1712)
!1718 = !DILocation(line: 376, column: 14, scope: !1669, inlinedAt: !1712)
!1719 = !DILocation(line: 377, column: 9, scope: !1669, inlinedAt: !1712)
!1720 = !DILocation(line: 377, column: 16, scope: !1669, inlinedAt: !1712)
!1721 = !DILocation(line: 32, column: 18, scope: !1707)
!1722 = !DILocation(line: 32, column: 2, scope: !1707)
!1723 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1724, file: !1724, line: 137, type: !1725, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1724 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!131, !1377, !1727, !1369, !794}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1729 = !DILocalVariable(name: "s", arg: 1, scope: !1723, file: !1724, line: 137, type: !1377)
!1730 = !DILocation(line: 137, column: 54, scope: !1723)
!1731 = !DILocalVariable(name: "object", arg: 2, scope: !1723, file: !1724, line: 137, type: !1727)
!1732 = !DILocation(line: 137, column: 69, scope: !1723)
!1733 = !DILocalVariable(name: "size", arg: 3, scope: !1723, file: !1724, line: 138, type: !1369)
!1734 = !DILocation(line: 138, column: 12, scope: !1723)
!1735 = !DILocalVariable(name: "flags", arg: 4, scope: !1723, file: !1724, line: 138, type: !794)
!1736 = !DILocation(line: 138, column: 24, scope: !1723)
!1737 = !DILocation(line: 140, column: 17, scope: !1723)
!1738 = !DILocation(line: 140, column: 2, scope: !1723)
!1739 = distinct !DISubprogram(name: "acpi_os_free", scope: !1140, file: !1140, line: 60, type: !1740, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !131}
!1742 = !DILocalVariable(name: "memory", arg: 1, scope: !1739, file: !1140, line: 60, type: !131)
!1743 = !DILocation(line: 60, column: 39, scope: !1739)
!1744 = !DILocation(line: 62, column: 8, scope: !1739)
!1745 = !DILocation(line: 62, column: 2, scope: !1739)
!1746 = !DILocation(line: 63, column: 1, scope: !1739)
